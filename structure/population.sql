USE panaderia;
INSERT INTO la_linda VALUES(1,'BIANCA','2735899221','115643987');
INSERT INTO clientes(id_ll,nombrecliente,telefono,calle,nro,cp)VALUES(1,'PABLO','118796543','LAFINUR','2991','1425'),
(1,'FABRICIO','8878302','GURRUCHAGA','2198','1425'),
(1,'JULIAN','987719','LAS HERAS','876','1425'),(1,'MATIAS','7659021','LOMAS','987','1425'),
(1,'DANIELA','98178332','BLAQUIER','987','7240');
INSERT INTO vendedores(nombrevendedor)VALUES('PATRICIO'),('AGUSTIN'),('AUGUSTO'),('FRANCO');
INSERT INTO productos(id_ll,nombreproducto,precio)VALUES(1,'ALFAJOR',200),(1,'TORTA',500),(1,'SANDWICH',300),(1,'MILANESA',1000),(1,'TARTA',1000),(1,'EMPANADAS',1000);
INSERT INTO pedidos(id_cliente,id_vendedor,id_producto,cantidadpedida,fecha_hora)
VALUES (1,1,1,20,curdate()),(1,1,2,30,curdate()),(1,2,2,40,curdate()),(2,3,2,40,curdate()),
(4,2,2,40,curdate()),(4,3,3,40,curdate()),(1,3,3,20,curdate()),(1,3,3,20,curdate()),(1,2,3,30,curdate()),
(1,3,4,30,curdate()),(5,3,4,30,curdate()),(5,2,3,40,curdate());
INSERT INTO detallepedidos(id_pedido)VALUES(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);
