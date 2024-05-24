USE panaderia;
DELIMITER //
CREATE FUNCTION fn_nombrecliente(P_id INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE NOMBRE VARCHAR(50);
	SELECT nombrecliente INTO NOMBRE FROM clientes WHERE id_clientes=P_id;
RETURN NOMBRE;
END //
DELIMITER ; 
SELECT fn_nombrecliente(1);

DELIMITER //
CREATE FUNCTION fn_datosclientes(P_id INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE NOMBRE VARCHAR(50);
	SELECT concat(nombrecliente
					
                    ,' '
                    , telefono
                    ,' '
                    ,calle
                    ,' '
                    ,nro
                    ,' '
                    ,cp) INTO NOMBRE FROM clientes WHERE id_clientes=P_id;
RETURN NOMBRE;
END //
DELIMITER ; 
SELECT fn_datosclientes(1);