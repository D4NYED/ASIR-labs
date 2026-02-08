CREATE DATABASE IF NOT EXISTS TiendaMuebles;
USE TiendaMuebles;

CREATE TABLE Productos (
    idproducto INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(255) NOT NULL,
    cantidad INT NOT NULL DEFAULT 0 CHECK (cantidad >= 0),
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0)
);
