-- Crear base de datos
CREATE DATABASE IF NOT EXISTS Empresa;
USE Empresa;

-- Tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL
);

-- Tabla Articulos
CREATE TABLE Articulos (
    ID_Articulo INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);

-- Tabla Ventas (relación)
CREATE TABLE Ventas (
    ID_Venta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    ID_Articulo INT NOT NULL,
    Fecha DATE NOT NULL,
    Abonado BOOLEAN NOT NULL,
    Cantidad INT NOT NULL CHECK (Cantidad > 0),

    FOREIGN KEY (ID_Cliente)
        REFERENCES Clientes(ID_Cliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ID_Articulo)
        REFERENCES Articulos(ID_Articulo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
