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
1. El usuario deberá usar la aplicación correctamente para que esta funcione de una manera adecuada.
2. Los cambios en la base de datos serán realizados únicamente cuando se registe un porcentaje bajo de usuarios haciendo uso de la aplicación.
4. Se realizarán respaldos en la base de datos siempre y cuando se realizen cambios significativos en la misma.
5. Se realizarán analisis estadisticos con el fin de mantener actualizado el catálogo de animes.

## Diagrama de Arquitectura
<div align="center">
 <img src=https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/Arquitectura%20carica-toons.png> </div>


## Clases y características de usuario
1. Usuarios Principales:
    - Usuarios Finales: Son los usuarios finales que interactúan directamente con la aplicación de voz. Pueden tener diferentes niveles de familiaridad con la tecnología y diferentes habilidades de interacción por voz.
    - Administradores: Si la aplicación de voz requiere administración o configuración, puede haber usuarios con privilegios especiales para realizar estas tareas.
2. Usuarios de Perfil:
    - Usuarios Registrados: Aquellos que han creado una cuenta en la aplicación de voz y tienen perfiles individuales.
    - Invitados: Usuarios que utilizan la aplicación sin una cuenta registrada.
3. Características de Usuario:
    - Habilidades de Interacción por Voz: Algunos usuarios pueden tener diferentes niveles de experiencia o habilidades en la interacción por voz. Esto puede variar desde principiantes hasta expertos en el uso de comandos de voz.
    - Preferencias de Configuración: Los usuarios pueden tener preferencias específicas en cuanto a configuración de idioma, voz, nivel de volumen, etc.
    - Perfiles de Usuario: Los usuarios pueden tener perfiles de usuario con información personalizada, preferencias y configuraciones guardadas.
4. Experiencia de Usuario:
    - Navegación por Voz: Los usuarios pueden utilizar comandos de voz para navegar por la aplicación, acceder a diferentes funciones o realizar acciones específicas.
    - Retroalimentación por Voz: La aplicación puede proporcionar retroalimentación auditiva en forma de respuestas de voz o indicaciones para guiar a los usuarios durante su interacción.
    - Personalización de la Experiencia: La aplicación puede adaptarse y personalizarse según las preferencias y comportamientos de los usuarios, brindando una experiencia más individualizada.
  
 ## Entorno operativo
1. Sistema Operativo: La aplicación esta diseñada para funcionar en diferentes sistemas operativos, como Android y Windows.  El sistema operativo proporciona el entorno en el que se ejecuta la aplicación y brinda acceso a los recursos del dispositivo.

2. Plataforma de Desarrollo: La aplicación utiliza el entorno de desarrollo integrado oficial para la plataforma Android **Android Studio** (para Android), esta plataforma proporciona herramientas, bibliotecas y entornos de desarrollo integrados para crear y compilar la aplicación.

3. APIs: La aplicación consume la API (FastAPI) para habilitar funcionalidades adicionales.
   
   **WearOS** : El entorno operativo en el que se desenvolverá la app Wear OS ofrece una plataforma adaptada para dispositivos portátiles con funcionalidades específicas y una interfaz de usuario diseñada para su uso en pantallas pequeñas.
 
   **Web**: Puede ser accedida y utilizada en una amplia gama de dispositivos, incluyendo computadoras de escritorio, laptops, tabletas y teléfonos móviles. Los usuarios pueden acceder a la aplicación a través de un navegador web en estos dispositivos.
 
   **Voice Assistant Alexa**: Los usuarios interactúan con la aplicación a través de comandos de voz.




## Requerimientos de interfaces externas

**Interfaz para Wear Os**
| Interfaz de Usuario (UI) | Descripción |
| :----------------------------------: | :----------------------------------: |
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/smartwatch_1.png" alt="Inicio" width="110" />|  **Bienvenida** <br>Al iniciar la aplicación, el usuario visualizará la pantalla de bienvenida<br> (interfaz con el logo de la aplicación)|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/smartwatch_2.png" alt="Inicio" width="110" />|  **Clasificaciones** <br>El usuario puede seleccionar cualquier <br> clasificación de anime|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/smartwatch_3.png" alt="Inicio" width="110" />|  **Animes Recomendados** <br>Se mostrará la pantalla con información relacionada <br>al anime seleccionado por el usuario|


 
**Interfaz para Smart Tv**
| Interfaz de Usuario (UI) | Descripción |
| :----------------------------------: | :----------------------------------: |
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_1.png" alt="Inicio" width="180" />|  **Bienvenida** <br>Al iniciar la aplicación, el usuario visualizará la pantalla de bienvenida<br> en la que se le invita a registrarse en la aplicación|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_2.png" alt="Inicio" width="180" />|  **Inicio de Sesión** <br>El usuario podrá iniciar sesión en la aplicación <br>con su correo electronico y contraseña|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_3.png" alt="Inicio" width="180" />|  **Registro** <br>Si el usuario no tiene una cuenta de acceso a la aplicación<br> podrá registrarse |
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_4.png" alt="Inicio" width="180" />|  **Clasificaciones** <br>El usuario puede seleccionar cualquier <br> clasificación de anime de su interés|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_5.png" alt="Inicio" width="180" />|  **Animes Recomendados** <br>Al iniciar la aplicación, el usuario visualizará la pantalla de bienvenida<br> en la que se le invita a registrarse en la aplicación|
|<img src="https://github.com/ElisamaCalva/DDI_INTEGRADORA_CaricaToons/blob/main/Documentacion/tv_6.png" alt="Inicio" width="180" />|  **Calificación de Anime** <br>Se mostrará la pantalla con información relacionada <br>al anime seleccionado por el usuario|

          


