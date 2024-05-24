<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>Entrega de proyecto final</center>
@Alumno

@Comision

@Tutor

@Docente


## Tematica del proyecto
El siguiente trabajo está enfocado en la Panadería "La Linda", una pyme que distribuye sus productos por mayor a las panaderías de una zona.
El comercio experimentó un gran crecimiento en su tamaño, clientes y facturación. Necesita mantener en una base de datos la información de todos sus clientes y productos. 

Tablas de hechos: clientes, pedidos, productos, vendedores
Tablas dimensión: contacto de clientes

El objetivo principal es la gestión y control de pedidos por cliente en un mes.
Esta base de datos nos permitirá tener información concreta sobre nuestros clientes, vendedores y productos. Además, en un futuro lograr reducir los plazos de entrega para nuestros clientes.


## Modelo de negocio

## Diagrama entidad relacion (DER)
<center>
<img src="/workspaces/SQL-Trabajo-Final/DER.png" style="width: 100% ; aspect-ratio:16/9">
</center>
## Listado de tablas y descripcion

## Estructura e ingesta de datos

## Objetos de la base de datos
FN_nombrecliente

## Roles y permisos

## Back up de la base de datos

## Herramientas y tecnologias usadas
Git
Github
MySql Workbench 8.0
Word

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto

* En la terminal de linux escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make test-db` para mirar los datos de cada tabla
    - `make backup-db` para realizar un backup de mi base de datos
    - `make access-db` para acceder a la base de datos
