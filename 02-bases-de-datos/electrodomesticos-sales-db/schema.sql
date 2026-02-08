CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Electrodomesticos (
    id_electrodomestico INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    marca VARCHAR(100),
    modelo VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad_stock INT,
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    cargo VARCHAR(100)
);

CREATE TABLE Venta (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    total DECIMAL(10,2),
    id_cliente INT,
    id_empleado INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

CREATE TABLE Detalles_Ventas (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    id_venta INT,
    id_electrodomestico INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    FOREIGN KEY (id_electrodomestico) REFERENCES Electrodomesticos(id_electrodomestico)
);
