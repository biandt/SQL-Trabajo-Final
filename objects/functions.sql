USE panaderia;
DELIMITER //
CREATE FUNCTION FN_nombrecliente(P_id INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE NOMBRE VARCHAR(50);
	SELECT nombrecliente INTO NOMBRE FROM clientes WHERE id_clientes=P_id;
RETURN NOMBRE;
END //
DELIMITER ; 
SELECT FN_nombrecliente(1);

DELIMITER //
CREATE FUNCTION FN_DATOSclientes(P_id INT)
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
SELECT FN_DATOSclientes(1);