# Use openjdk as base image
FROM openjdk:8

# Install additional dependencies
RUN apt-get update && apt-get install -y wget unzip postgresql-client

# Download and Install PDI
ENV PDI_VERSION=9.2
ENV PDI_BUILD=9.2.0.0-290
ENV PDI_HOME=/opt/pentaho
ENV PATH=$PDI_HOME/data-integration:$PATH

RUN mkdir -p $PDI_HOME \
    && wget --progress=dot:giga "https://privatefilesbucket-community-edition.s3.us-west-2.amazonaws.com/$PDI_BUILD/ce/client-tools/pdi-ce-$PDI_BUILD.zip" \
    && unzip -q "pdi-ce-$PDI_BUILD.zip" -d $PDI_HOME \
    && rm "pdi-ce-$PDI_BUILD.zip"

RUN mkdir -p /opt/pentaho/data-integration/lib

# Install additional dependencies for PDI
RUN apt-get install -y libwebkit2gtk-4.0-37

# Copy Transformation Files
COPY IntegralETL.ktr $PDI_HOME/data-integration/IntegralETL.ktr
COPY DataSet_OSUNL.csv $PDI_HOME/data-integration/DataSet_OSUNL.csv

# Copy the SQL script to the PDI container's initdb directory
COPY IntegralDW.sql /docker-entrypoint-initdb.d/

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set working directory
WORKDIR $PDI_HOME/data-integration

# Define the ENTRYPOINT to execute the custom entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
