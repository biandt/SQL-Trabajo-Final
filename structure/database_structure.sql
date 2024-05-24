
DROP DATABASE IF EXISTS panaderia;
-- DROP DATABASE panaderia;
CREATE DATABASE IF NOT EXISTS panaderia;
USE panaderia;
-- drop schema if exists panaderia;
CREATE TABLE la_linda(
id_ll INT PRIMARY KEY,
razon_social VARCHAR(20),
cuit VARCHAR(20),
tel VARCHAR(30)
);
CREATE TABLE pedidos(
id_pedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT
, id_cliente INT
, id_vendedor INT
, id_producto INT
, cantidadpedida INT 
, fecha_hora DATETIME NOT NULL
);



CREATE TABLE clientes (
id_clientes INT PRIMARY KEY NOT NULL AUTO_INCREMENT
, id_ll INT 
, nombrecliente VARCHAR(100) DEFAULT 'noexiste'
, telefono VARCHAR(20) NOT NULL
, calle VARCHAR(20) NOT NULL
, nro VARCHAR(10) NOT NULL
, cp VARCHAR(10)
);
CREATE TABLE detallepedidos(
id_detallepedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT
, id_pedido INT
, total FLOAT
);
CREATE TABLE vendedores(
id_vendedores INT PRIMARY KEY NOT NULL AUTO_INCREMENT
, nombrevendedor VARCHAR(20) NOT NULL
);
CREATE TABLE productos(
id_productos INT PRIMARY KEY NOT NULL AUTO_INCREMENT
, id_ll INT
, nombreproducto VARCHAR(20)
, precio INT
);

-- ALTER TABLE NOMBRE TABLA
-- ADD CONSTRAINT NOMBRE DE LA CONSTRAINT DE LA FK
-- FOREIGN KEY(NOMBRE DE LA COLUMNA EN LA TABLA ELEGIDA) REFERENCES TABLA PADRE(PK DE LA TABLA PADRE)

ALTER TABLE pedidos
ADD CONSTRAINT FK_pedidos_clientes 
FOREIGN KEY(id_cliente) REFERENCES clientes(id_clientes);

ALTER TABLE pedidos 
ADD CONSTRAINT FK_pedidos_vendedores
FOREIGN KEY(id_vendedor) REFERENCES vendedores(id_vendedores);

ALTER TABLE pedidos
ADD CONSTRAINT FK_pedidos_productos
FOREIGN KEY(id_producto) REFERENCES productos(id_productos);

ALTER TABLE detallepedidos
ADD CONSTRAINT FK_detallepedidos_pedidos
FOREIGN KEY(id_pedido) REFERENCES pedidos(id_pedido);

ALTER TABLE productos
ADD CONSTRAINT FK_productos_LL
FOREIGN KEY(id_ll) REFERENCES la_linda(id_ll);

ALTER TABLE clientes
ADD CONSTRAINT FK_clientes_LL
FOREIGN KEY(id_ll) REFERENCES la_linda(id_ll);









