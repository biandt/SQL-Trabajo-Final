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
Una panadería con un sistema de gestión de pedidos y clientes.

Venta de productos de panadería: La empresa vende productos de panadería, la tabla llamada productos almacena información sobre los productos que ofrece la panadería, como nombre y precio.

Gestión de pedidos: El sistema está diseñado para gestionar pedidos de clientes. La tabla pedidos almacena información sobre los pedidos realizados, incluidos los detalles como el cliente que realiza el pedido, el vendedor asignado al pedido, los productos pedidos y la cantidad solicitada.

Registro de clientes: El sistema permite el registro y seguimiento de clientes. La tabla clientes almacena información sobre los clientes, incluidos detalles como nombre, teléfono y dirección.

Gestión de proveedores:  la panadería tiene proveedores asociados, ya que almacena información sobre empresas o proveedores externos. 



## Diagrama entidad relacion (DER)
<center>
<img src="/workspaces/SQL-Trabajo-Final/DER.png" style="width: 100% ; aspect-ratio:16/9">
</center>



## Listado de tablas y descripcion
Tabla la_linda:

id_ll: Es el identificador único de cada entrada en esta tabla.
razon_social: Almacena la razón social de la empresa o proveedor.
cuit: Contiene el número de CUIT  de la empresa o proveedor.
tel: Almacena el número de teléfono de contacto de la empresa o proveedor.

Tabla pedidos:

id_pedido: Identificador único para cada pedido
id_cliente: Es la clave externa que hace referencia al cliente que realizó el pedido.
id_vendedor: Clave externa que indica qué vendedor se encargó del pedido.
id_producto: Clave externa que especifica el producto incluido en el pedido.
cantidadpedida: La cantidad del producto solicitada en el pedido.
fecha_hora: La fecha y hora en que se realizó el pedido.

Tabla clientes:

id_clientes: Identificador único para cada cliente
id_ll: Clave externa que indica la empresa o proveedor asociado al cliente.
nombrecliente: El nombre del cliente.
telefono: Número de teléfono de contacto del cliente.
calle: La calle donde vive el cliente.
nro: El número de la dirección del cliente.
cp: Código postal de la dirección del cliente.
Tabla detallepedidos:

id_detallepedido: Identificador único para cada entrada en esta tabla
id_pedido: Clave externa que indica a qué pedido se refiere este detalle.
total: El monto total del pedido.

Tabla vendedores:

id_vendedores: Identificador único para cada vendedor
nombrevendedor: Nombre del vendedor.

Tabla productos:

id_productos: Identificador único para cada producto
id_ll: Clave externa que indica la empresa o proveedor asociado al producto.
nombreproducto: Nombre del producto.
precio: Precio del producto.

## Estructura e ingesta de datos
Captura Inicial: Los datos son ingresados manualmente.

Validación: Los datos son validados para asegurar que cumplen con los formatos y restricciones de la base de datos.

Inserción/Actualización: Los datos son insertados en las tablas correspondientes usando comandos SQL.

Verificación: Después de la inserción/actualización, se realizan verificaciones para asegurar que los datos se han ingresado correctamente.

Monitoreo y Mantenimiento: Se monitorean los datos para detectar y corregir cualquier inconsistencia, además de realizar mantenimientos periódicos para optimizar la base de datos.

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
