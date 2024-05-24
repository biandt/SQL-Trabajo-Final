<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>Entrega de proyecto final</center>
@Alumno: Bianca Di Tomaso

@Comision: 53180

@Tutor: Carla Palermo

@Docente: Anderson Michel Torres


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
<img src="" style="width: 100% ; aspect-ratio:16/9">
</center>
## Listado de tablas y descripcion

## Estructura e ingesta de datos

## Objetos de la base de datos
fn_nombrecliente: La función fue creada para conocer el nombre de nuestros clientes 
fn_datosclientes: con el fin de obtener más detalles de nuestros clientes, creamos la función con los datos de nuestros clientes 
AgregarPedido: Este procedimiento permitirá insertar un nuevo pedido en la base de datos.
ActualizarTelefonoCliente: Este procedimiento actualizará el número de teléfono de un cliente dado su ID.
Trigger_Agregar_Pedido: Este trigger actualiza automáticamente el total de un pedido.
Trigger_Agregar_Telefono: Este trigger actualiza el número de teléfono de un cliente en la tabla de clientes.
Trigger_Eliminar_Pedido: Este trigger elimina automáticamente el total de un pedido.
Trigger_Actualizar_Pedido: Este trigger actualiza automáticamente el total de un pedido.
Trigger_Actualizar_Telefono:Este trigger actualiza el número de teléfono de un cliente en la tabla de clientes.
Trigger_Suprimir_Pedido: Este trigger elimina automáticamente los detalles de un pedido.

## Roles y permisos
Dba: Todos los permisos
Consultor_Jr. : Permiso de solo lectura
Consultor_SmS : Permiso de lectura e inserción

Bian@% : con el rol Dba
Mati@% : con el rol Consultor_Jr.
giuli@% : con el rol Consultor_SmS

## Back up de la base de datos
Este back up realiza guardado de estructura, datos, vistas, procedimientos y funciones, eventos, triggers
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
