# Proyecto Integrador de Procesamiento y Explotación de datos 
 
## Como optimizar y beneficiarse de los datos de una mutual a través de un proceso de Business Intelligence

# Índice

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

![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/e1b8564e-681f-4a69-a24e-2a5a8928fbc9)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/a19c8fce-2515-483a-81f0-642036c8ae82)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/50e33500-3643-4e3a-a7db-8cd40d26e970)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/a0e29843-1e34-4030-99aa-565dcf3aaa96)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/38da3d0d-f029-4c91-9a12-c060a1db7ed6)
![imagen](https://github.com/MauricioGoette/ProyectoIntegrador/assets/142920755/bb66847a-56da-41fa-b9c4-fed9d7eb2a5a)


Dashboard Interactivo [aquí](https://app.powerbi.com/reportEmbed?reportId=d5afc21d-af61-4620-ac29-6fc0e23e8e47&autoAuth=true&ctid=583d1b29-a65e-46bc-be09-3f602a9ed6c6).










