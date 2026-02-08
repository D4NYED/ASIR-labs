-- Clientes
INSERT INTO Clientes (Nombre, Apellidos) VALUES
('Sergio', 'González'),
('Francisco', 'García'),
('Felipe', 'Ruiz');

-- Articulos
INSERT INTO Articulos (Nombre, Precio) VALUES
('tomates', 0.10),
('pimientos', 3.00),
('sandias', 1.00);

-- Ventas
INSERT INTO Ventas (ID_Cliente, ID_Articulo, Fecha, Abonado, Cantidad) VALUES
(1, 1, '2012-01-01', 0, 8),
(1, 2, '2011-04-05', 1, 10),
(2, 1, '2010-06-01', 0, 75);
