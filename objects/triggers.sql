USE panaderia;
CREATE TABLE LOG_CAMBIOS (
    ID_LOG INT AUTO_INCREMENT PRIMARY KEY,
    TABLA_AFECTADA VARCHAR(50),
    OPERACION_REALIZADA VARCHAR(50),
    FECHA_HORA TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER Trigger_Agregar_Pedido
AFTER INSERT ON pedidos
FOR EACH ROW

    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, OPERACION_REALIZADA)
    VALUES ('pedidos', 'Inserción de nuevo pedido');
    
CREATE TRIGGER Trigger_Agregar_Telefono
AFTER UPDATE ON clientes
FOR EACH ROW

    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, OPERACION_REALIZADA)
    VALUES ('clientes', 'Actualización de teléfono de cliente');

CREATE TRIGGER Trigger_Eliminar_Pedido
AFTER DELETE ON pedidos
FOR EACH ROW

    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, OPERACION_REALIZADA)
    VALUES ('pedidos', 'Eliminación de pedido');


CREATE TRIGGER Trigger_Actualizar_Pedido
AFTER INSERT ON pedidos
FOR EACH ROW

    UPDATE detallepedidos
    SET total = CalcularTotalPedido(NEW.id_pedido)
    WHERE id_pedido = NEW.id_pedido;

CREATE TRIGGER Trigger_Actualizar_Telefono
AFTER UPDATE ON clientes
FOR EACH ROW

    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, OPERACION_REALIZADA)
    VALUES ('clientes', 'Actualización de teléfono de cliente');

CREATE TRIGGER Trigger_Suprimir_Pedido
AFTER DELETE ON pedidos
FOR EACH ROW

    INSERT INTO LOG_CAMBIOS (TABLA_AFECTADA, OPERACION_REALIZADA)
    VALUES ('pedidos', 'Suprimir pedido');
