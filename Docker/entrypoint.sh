#!/bin/bash

# Debugging: Print environment variables
env

# Database connection parameters
db_host="postgresql"          # Replace with the hostname of the PostgreSQL container
db_port="5432"                # Replace with the port number of the PostgreSQL container
db_name="IntegralDW"          # Replace with the name of your PostgreSQL database
db_user="postgres"            # Replace with the PostgreSQL username
db_password="1988"            # Replace with the PostgreSQL password

# Wait for PostgreSQL to be fully ready (you can customize this loop if needed)
until psql "postgresql://${db_user}:${db_password}@${db_host}:${db_port}/${db_name}" -c '\l'; do
  >&2 echo "PostgreSQL is unavailable - sleeping"
  sleep 2
done

# Execute the SQL script to create tables in the PostgreSQL database
echo "Creating tables in the database..."
psql "postgresql://${db_user}:${db_password}@${db_host}:${db_port}/${db_name}" -f /docker-entrypoint-initdb.d/IntegralDW.sql


# Execute the Kettle Transformation (KTR)
echo "Running KTR transformation..."
/opt/pentaho/data-integration/pan.sh -file=/opt/pentaho/data-integration/IntegralETL.ktr

