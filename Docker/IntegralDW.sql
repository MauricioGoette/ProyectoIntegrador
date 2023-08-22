--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;



SET default_tablespace = '';

SET default_with_oids = false;


---
--- drop tables
---


DROP TABLE IF EXISTS prestacion_fact;
DROP TABLE IF EXISTS afiliado_dim;
DROP TABLE IF EXISTS profesional_efector_dim;
DROP TABLE IF EXISTS profesional_solicitante_dim;
DROP TABLE IF EXISTS convenio_facturacion_dim;
DROP TABLE IF EXISTS fecha_emision_dim;
DROP TABLE IF EXISTS capitulo_prestaciones_dim;
DROP TABLE IF EXISTS grupo_prestaciones_dim;
DROP TABLE IF EXISTS tipo_componente_dim;
DROP TABLE IF EXISTS estado_prestacion_dim;
DROP TABLE IF EXISTS orden_dim;


--
-- Name: prestacion_fact; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE prestacion_fact (
    prestacion_id integer NOT NULL,
    prestacion varchar(20) NOT NULL,
    afiliado_id integer NOT NULL,
    profesional_efector_id integer NOT NULL,
    profesional_solicitante_id integer NOT NULL,
    convenio_facturacion_id integer NOT NULL,
    fecha_emision_id integer NOT NULL,
    orden_id integer NOT NULL,
    estado_prestacion_id integer NOT NULL,
    tipo_componente_id integer NOT NULL,
    grupo_prestaciones_id integer NOT NULL,
    capitulo_prestaciones_id integer NOT NULL,
    PRIMARY KEY(prestacion_id)
);


--
-- Name: afiliado_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE afiliado_dim (
    afiliado_id integer NOT NULL,
    codigo_afiliado numeric,
    edad smallint,
    convenio_prestacion integer,
    PRIMARY KEY(afiliado_id)
);

--
-- Name: profesional_efector_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE profesional_efector_dim (
    profesional_efector_id integer NOT NULL,
    codigo_efector numeric,
    PRIMARY KEY(profesional_efector_id)
);

--
-- Name: profesional_solicitante_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE profesional_solicitante_dim (
    profesional_solicitante_id integer NOT NULL,
    codigo_solicitante numeric,
    PRIMARY KEY(profesional_solicitante_id)
);

--
-- Name: convenio_facturacion_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE convenio_facturacion_dim (
    convenio_facturacion_id integer NOT NULL,
    convenio_facturacion integer,
    PRIMARY KEY(convenio_facturacion_id)
);

--
-- Name: fecha_emision_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE fecha_emision_dim (
    fecha_emision_id integer NOT NULL,
    fecha_emision date,
    hora_emision time,
    PRIMARY KEY(fecha_emision_id)
);

--
-- Name: capitulo_prestaciones_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE capitulo_prestaciones_dim (
    capitulo_prestaciones_id integer NOT NULL,
    capitulo_prestaciones smallint,
    PRIMARY KEY(capitulo_prestaciones_id)
);

--
-- Name: grupo_prestaciones_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE grupo_prestaciones_dim (
    grupo_prestaciones_id integer NOT NULL,
    grupo_prestaciones smallint,
    PRIMARY KEY(grupo_prestaciones_id)
);

--
-- Name: tipo_componente_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tipo_componente_dim (
    tipo_componente_id integer NOT NULL,
    tipo_componente smallint,
    PRIMARY KEY(tipo_componente_id)
);

--
-- Name: estado_prestacion_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE estado_prestacion_dim (
    estado_prestacion_id integer NOT NULL,
    estado_prestacion varchar(5),
    PRIMARY KEY(estado_prestacion_id)
);

--
-- Name: orden_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE orden_dim (
    orden_id integer NOT NULL,
    orden smallint,
    PRIMARY KEY(orden_id)
);

------------------------------- Foreign Keys -------------------------------


--
-- Name: fk_prestacion_fact_afiliado_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_afiliado_dim FOREIGN KEY (afiliado_id) REFERENCES afiliado_dim;



--
-- Name: fk_prestacion_fact_profesional_efector_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_profesional_efector_dim FOREIGN KEY (profesional_efector_id) REFERENCES profesional_efector_dim;


--
-- Name: fk_prestacion_fact_profesional_solicitante_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_profesional_solicitante_dim FOREIGN KEY (profesional_solicitante_id) REFERENCES profesional_solicitante_dim;



--
-- Name: fk_prestacion_fact_convenio_facturacion_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_convenio_facturacion_dim FOREIGN KEY (convenio_facturacion_id) REFERENCES convenio_facturacion_dim;


--
-- Name: fk_prestacion_fact_fecha_emision_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_fecha_emision_dim FOREIGN KEY (fecha_emision_id) REFERENCES fecha_emision_dim;


--
-- Name: fk_prestacion_fact_capitulo_prestaciones_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_capitulo_prestaciones_dim FOREIGN KEY (capitulo_prestaciones_id) REFERENCES capitulo_prestaciones_dim;



--
-- Name: fk_prestacion_fact_grupo_prestaciones_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_grupo_prestaciones_dim FOREIGN KEY (grupo_prestaciones_id) REFERENCES grupo_prestaciones_dim;


--
-- Name: fk_prestacion_fact_tipo_componente_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_tipo_componente_dim FOREIGN KEY (tipo_componente_id) REFERENCES tipo_componente_dim;



--
-- Name: fk_prestacion_fact_estado_prestacion_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_estado_prestacion_dim FOREIGN KEY (estado_prestacion_id) REFERENCES estado_prestacion_dim;


--
-- Name: fk_prestacion_fact_orden_dim; Type: Constraint; Schema: -; Owner: -
--

ALTER TABLE ONLY prestacion_fact
    ADD CONSTRAINT fk_prestacion_fact_orden_dim FOREIGN KEY (orden_id) REFERENCES orden_dim;      

