-- Insertar datos en la tabla Paises
INSERT INTO Paises (PaisID, Nombre) VALUES
(1, 'México'),
(2, 'Estados Unidos'),
(3, 'Canadá');

-- Insertar datos en la tabla Estados
INSERT INTO Estados (EstadoID, Nombre, PaisID) VALUES
(1, 'Ciudad de México', 1),
(2, 'Jalisco', 1),
(3, 'Nuevo León', 1),
(4, 'California', 2),
(5, 'Ontario', 3);

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (ProveedorID, RazonSocial, Domicilio_Calle, Domicilio_Numero, Domicilio_Colonia, Domicilio_CodigoPostal, Domicilio_EstadoID, Nombre, RFC) VALUES
(1, 'Papelerías del Norte S.A. de C.V.', 'Av. Universidad', '123', 'Centro', '06000', 1, 'Juan Pérez', 'PAP010101AAA'),
(2, 'Artículos Escolares S.A.', 'Calle Reforma', '456', 'Zona Rosa', '06600', 1, 'María López', 'ART020202BBB'),
(3, 'Tecnología y Papeles S.A.', 'Calle Tecnológica', '321', 'Polanco', '11550', 1, 'Pedro Gómez', 'TEC050505EEE');

-- Insertar datos en la tabla ProveedorTelefonos
INSERT INTO ProveedorTelefonos (TelefonoID, ProveedorID, NumeroTelefono, TipoTelefono) VALUES
(1, 1, '5551234567', 'Móvil'),
(2, 1, '5557654321', 'Oficina'),
(3, 2, '5559876543', 'Móvil'),
(4, 3, '5558765432', 'Oficina');

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (EmpleadoID, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, FechaIngreso) VALUES
(1, 'Carlos', 'García', 'Hernández', '1990-05-15', '2015-06-01'),
(2, 'Ana', 'Martínez', 'Díaz', '1985-08-20', '2010-09-15');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (ClienteID, Nombre, ApellidoPaterno, ApellidoMaterno, Domicilio_Calle, Domicilio_Numero, Domicilio_Colonia, Domicilio_CodigoPostal, Domicilio_EstadoID, Email, RFC) VALUES
(1, 'Luis', 'Ramírez', 'Sánchez', 'Calle Sur', '789', 'Doctores', '06720', 1, 'luis.ramirez@example.com', 'RAM030303CCC'),
(2, 'Sofía', 'Torres', 'Flores', 'Calle Norte', '101', 'Roma', '06700', 1, 'sofia.torres@example.com', 'TOR040404DDD');

-- Insertar datos en la tabla ClienteEmails
INSERT INTO ClienteEmails (ClienteID, Email) VALUES
(1, 'luis.ramirez2@example.com'),
(2, 'sofia.torres2@example.com');

-- Insertar datos en la tabla Categorias
INSERT INTO Categorias (CategoriaID, Nombre, Descripcion) VALUES
(1, 'Papelería', 'Artículos de papelería'),
(2, 'Regalos', 'Artículos para regalo'),
(3, 'Impresiones', 'Servicios de impresión'),
(4, 'Recargas', 'Servicios de recarga telefónica');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (ProductoID, CodigoBarras, Nombre, PrecioCompra, PrecioVenta, Foto, CantidadStock, CategoriaID, ProveedorID) VALUES
(1, '7501000111111', 'Cuaderno Profesional', 15.00, 25.00, NULL, 100, 1, 1),
(2, '7501000222222', 'Pluma Azul', 3.00, 5.00, NULL, 200, 1, 2),
(3, '7501000333333', 'Taza de Café', 50.00, 80.00, NULL, 50, 2, 1),
(4, '7501000666666', 'USB 16GB', 80.00, 120.00, NULL, 75, 2, 3),
(5, '7501000444444', 'Impresión a Color', 1.00, 2.00, NULL, 1000, 3, NULL),
(6, '7501000555555', 'Recarga Telcel $100', 95.00, 100.00, NULL, 500, 4, NULL);

-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (VentaID, Folio, FechaVenta, CantidadTotalPagar, EmpleadoID) VALUES
(1, 'V001', '2023-10-01', 155.00, 1),
(2, 'V002', '2023-10-02', 55.00, 2);

-- Insertar datos en la tabla DetalleVenta
INSERT INTO DetalleVenta (DetalleVentaID, VentaID, ProductoID, CantidadProducto, PrecioTotalArticulo) VALUES
(1, 1, 1, 2, 50.00),
(2, 1, 2, 5, 25.00),
(3, 1, 3, 1, 80.00),
(4, 2, 2, 5, 25.00),
(5, 2, 5, 15, 30.00);

-- Insertar datos en la tabla StockBajo
INSERT INTO StockBajo (ProductoID, EnBajoStock) VALUES
(3, TRUE),
(5, TRUE),
(6, FALSE);

