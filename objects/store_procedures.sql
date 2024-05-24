DELIMITER $$

CREATE PROCEDURE AgregarPedido(
    IN cliente_id INT,
    IN vendedor_id INT,
    IN producto_id INT,
    IN cantidad INT
)
BEGIN
    INSERT INTO PEDIDOS (ID_CLIENTE, ID_VENDEDOR, ID_PRODUCTO, CANTIDADPEDIDA, FECHA_HORA)
    VALUES (cliente_id, vendedor_id, producto_id, cantidad, NOW());
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE ActualizarTelefonoCliente(
    IN cliente_id INT,
    IN nuevo_telefono VARCHAR(20)
)
BEGIN
    UPDATE CLIENTES
    SET TELEFONO = nuevo_telefono
    WHERE ID_CLIENTES = cliente_id;
END$$

DELIMITER ;