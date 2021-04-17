CREATE DATABASE crudPHPFetch;
USE crudPHPFetch;

CREATE TABLE productos (
  codigo int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50),
  marca varchar(50),
  precio decimal(10, 2),
  stock int (10)
);

ALTER TABLE productos CONVERT TO CHARACTER SET utf8mb4;

CREATE PROCEDURE sp_mostrar_datos()
BEGIN
  SELECT
    codigo,
    nombre,
    marca precio,
    stock
  FROM
    productos;
END

CREATE PROCEDURE sp_insertar_datos(
  in codigoI int,
  in nombreI varchar(50),
  in marcaI varchar(50),
  in precioI decimal(10,2),
  in stockI int(10)
)
BEGIN
  INSERT INTO productos(
    codigo,
    nombre,
    marca,
    precio,
    stock
  ) VALUES (
    codigoI,
    nombreI,
    marcaI,
    precioI,
    stockI
  );
END

CREATE PROCEDURE sp_actualizar_datos(
  in codigoI int,
  in nombreI varchar(50),
  in marcaI varchar(50),
  in precioI decimal(10,2),
  in stockI int(10)
)
BEGIN
  UPDATE productos SET
    codigo = codigoI,
    nombre = nombreI,
    marca = marcaI,
    precio = precioI,
    stock = stockI
  WHERE codigo = codigoI;
END

CREATE PROCEDURE sp_eliminar_datos(
  in codigoI int
)
BEGIN
  DELETE FROM productos
  WHERE codigo = codigoI;
END

CREATE PROCEDURE sp_obtener_datos(
  in codigoI int
)
BEGIN
  SELECT * FROM productos
  WHERE codigo = codigoI;
END