# Documento de Requerimientos de software *Carica-Toons*


<div align="center">
 <img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/ahvrr-ec1p5.svg"> </div>



##
 
## Historial de Versiones

| Fecha      | Versión  |  Autor   | Organización | Descripción |
|------------|----------|----------|--------------|-------------|
| 11/06/2023 | 1.0      | Mariela Gonzalez Lopez  |   Souka           |  Desarrollo de la primera versión de Carica-Toons           |

## Información del Proyecto

| Empresa/Organización | Souka | 
|----------|----------|
|**Fecha de Preparación**   | 11/06/2023   | 
| **Cliente**   |M.T.I. Maco Antonio Ramírez Hernández  | 
| **Patrocinador principal**       |Área de TI  | 
| **Gerente / Líder de Proyecto**   | 	Mariela González López  | 
|**Gerente / Líder de Análisis de negocio y requerimientos**   | Elisama Arturo Calva Moreno  | 

## Aprobaciones
| Nombre y Apellido | Cargo | Departamento u Organización| Fecha | Firma |
|----------|----------|----------|----------|----------|
| Mariela González López   | Líder/Documentadora  | Carica-Toons  |11/06/2023   |   |
| Elisama Arturo Calva Moreno   | Desarrollador FrontEnd  | Carica-Toons  |11/06/2023   |  |
| Eliel Díaz Galindo   | Desarrollador BackEnd  | Carica-Toons  |11/06/2023  ||
|Fabricio Guzmán Vite   | DB Manager   | Carica-Toons  |11/06/2023    |   |

## Propósito 
<p align="justify"> Carica-Toons versión 1.0 es una aplicación que funciona a través de comandos de voz, proporcionando recomendaciones de animes en base a su género, popularidad, estudio, fecha de emisión, capítulos, categorías, temporadas y tendencias actuales.
En este documento se hará el análisis de los requerimientos de software necesarios para el desarrollo e implementación de la aplicación.</p>

## Alcance del producto / Software 

<p align="justify"> Desarrollar una aplicación de comandos de voz que realice recomendaciones de animes con base a las especificaciones dadas por el usuario, este proyecto está enfocado para el público en general y orientado al área de entretenimiento y ocio.</p>

<p align="justify">El objetivo es que, al implementar dicha aplicación de recomendación de animes, los usuarios realicen búsquedas en las que se les proporcionaran animes de acuerdo a sus preferencias, estratégicamente la empresa hará un análisis para conocer cuales son los animes que más les agradan a los usuarios y basarnos en ellos para recomendar animes relacionados, de esta manera obtener a más clientes potenciales.
</p>

## Funcionalidades del producto
<p align="justify"> Proporcian un conjunto de factores y elementos relativos a la interacción del usuario, generando una percepción positiva en la experiencia del usuario al utilizar nuestra aplicación.</p>

1. La aplicación mostrará un menú en el que se mostrarán las clasificaciones
    - Genero
    - Recientes
    - Populares
    - Mejor Calificación
2. La aplicación proporcionará descripciones breves sobre el anime seleccionado.

3.	La aplicación incluirá links de plataformas en donde puedes ver dicho anime.

4. 	La aplicación enviará notificaciones al usuario cuando se estrenen animes.

## Requerimientos Funcionales
1. **REQ-1:** La aplicación permitirá la visualización del menú de inicio, en el cuál se mostrarán las clasificaciones de animes: **Genero, recientes, populares y mejor calificación.** 

2. **REQ-2:** Al seleccionar la clasificación *Genero*, se visualizara los diferentes generos de animes incluidos en la aplicación:
    - Romance
    - Terror
    - Gore
    - Aventura
    - Shonen

     
 Al seleccionar un genero, se mostrarán los animes incluidos en dicho genero, con información relacionada al número de temporadas y capitulos. 


3. **REQ-3:** Al seleccionar la clasificaciín *Populares*, se visualizaran los animes más populares con información relacionada al número de temporadas y capitulos.
4. **REQ-4:** Al seleccionar la clasificación *Recientes*, se visualizarán los animes más recientes con información relacionada al número de temporadas y capitulos.
5. **REQ-5:** Al seleccionar la clasificación *Mejor calificación*, se visualizarán los animes mejores calificados con información relacionada al número de temporadas y capitulos y su puntuación (número de estrellas).
6. **REQ-6:** Al seleccionar un anime, se mostrará una sinopsis del mismo en la que se incluirán links de plataformas en donde puedes ver dicho anime.


## Requerimientos No Funcionales
1. La aplicación debe estar disponible cuando sea necesario.
2. Los datos modificados en la base de datos deben ser actualizados para todos los usuarios que acceden en menos de 10 segundos.
3. La aplicación debe ser fácil de mantener y actualizar.
4. La aplicación debera ser intuitiva para el usuario.
5. La aplicación debe ser confiable y cumplir con los requisitos del usuario.

## Reglas de Negocio





          


