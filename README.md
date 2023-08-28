# Proyecto Integrador de Procesamiento y Explotación de datos 
 
## Como optimizar y beneficiarse de los datos de una mutual a través de un proceso de Business Intelligence

# Índice (ProyectoIntegrador.pdf)

- [Introducción](#introducción)
- [Marco teórico](#marco-teórico)
  - [Fuente de Datos](#fuente-de-datos)
  - [Selección, limpieza y transformación](#selección-limpieza-y-transformación)
  - [Bases de datos relacionales](#bases-de-datos-relacionales)
  - [Bases de datos multidimensionales](#bases-de-datos-multidimensionales)
  - [Datawarehouse](#datawarehouse)
  - [Diseño datawarehouse](#diseño-datawarehouse)
  - [Esquema estrella](#esquema-estrella)
  - [Métricas e Indicadores (KPI)](#métricas-e-indicadores-kpi)
  - [Dashboard](#dashboard)
- [Objetivos](#objetivos)
  1. [Seleccionar variables e indicadores de interés para cada cliente](#1-seleccionar-variables-e-indicadores-de-interés-para-cada-cliente)
  2. [Analizar la homogeneidad de los datos y detectar incongruencias, datos faltantes o erróneos](#2-analizar-la-homogeneidad-de-los-datos-y-detectar-incongruencias-datos-faltantes-o-erróneos)
  3. [Generar gráficos adecuados a las variables de interés](#3-generar-gráficos-adecuados-a-las-variables-de-interés)
- [Metodología - Desarrollo](#metodología---desarrollo)
  - [Obtención de Datos](#obtención-de-datos)
  - [Variables del dataset](#variables-del-dataset)
  - [Selección, limpieza y transformación](#selección-limpieza-y-transformación-1)
  - [Valores faltantes](#valores-faltantes)
  - [Outliers](#outliers)
  - [Valores erróneos](#valores-erróneos)
  - [DataWarehouse](#datawarehouse-1)
  - [Diagrama datawarehouse](#diagrama-datawarehouse)
  - [Tabla de hechos, mediciones, dimensiones y niveles](#tabla-de-hechos-mediciones-dimensiones-y-niveles)
  - [ETL](#etl)
    - [Extracción (Extract)](#extracción-extract)
    - [Transformación (Transform)](#transformación-transform)
    - [Carga (Load)](#carga-load)
  - [Dashboard](#dashboard-1)
  - [Pasos previos](#pasos-previos)
  - [Comprensión del usuario](#comprension-del-usuario)
  - [Visualización](#visualización)
  - [Microsoft Power BI](#microsoft-power-bi)
  - [Medidas](#medidas)
  - [Resultados obtenidos](#resultados-obtenidos)
  - [Menú Principal](#menú-principal)
  - [Segmentación de datos](#segmentación-de-datos)
  - [Prestaciones](#prestaciones)
  - [Afiliados](#afiliados)
  - [Órdenes](#órdenes)
  - [Componentes](#componentes)
  - [Búsquedas](#búsquedas)
  - [Dashboard interactivo](#dashboard-interactivo)
- [Proyecto como Microservicio](#proyecto-como-microservicio)
  - [Implementación con Docker](#implementación-con-docker)
  - [Algunos de los conceptos básicos de Docker](#algunos-de-los-conceptos-básicos-de-docker)
    - [Imagen](#imagen)
    - [Contenedor](#contenedor)
    - [Dockerfile](#dockerfile)
    - [Docker Compose](#docker-compose)
- [Conclusiones](#conclusiones)
- [Bibliografía](#bibliografía)
  - [Business Intelligence](#business-intelligence)
  - [Datawarehouse](#datawarehouse-2)
  - [Dashboard](#dashboard-2)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/4ae4a633-3bfc-4549-a8a5-e9cdd781c129)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/8f028dac-594f-4ac2-9c46-a5efda993480)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/5c7d8755-3446-4fe7-aeeb-c84965aa8ade)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/b45f4a3a-0879-42c5-9cfe-15350ee9e3a9)


![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/57b1290f-c264-4ba0-bedb-017e9b9805c2)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/574c4cd7-80fb-444d-82fc-0926e45564e2)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/2cde86fa-86e5-4ad7-87d3-b49cdf75ec52)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/047c0237-7880-4f6f-a14f-836b94e6acc9)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/ac9c2d59-ac14-48c6-9964-a1ec1632ddf6)

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/9be9f176-ba6a-44a4-8add-845dbba5b656)



Dashboard Interactivo [aquí](https://app.powerbi.com/reportEmbed?reportId=d5afc21d-af61-4620-ac29-6fc0e23e8e47&autoAuth=true&ctid=583d1b29-a65e-46bc-be09-3f602a9ed6c6).










