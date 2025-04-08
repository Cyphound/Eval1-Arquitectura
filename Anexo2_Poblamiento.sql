-- Script de poblamiento de datos (Anexo 2)

-- Poblando la tabla CIUDAD
INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE_CIUDAD, ESTADO, CODIGO_POSTAL) VALUES
('C001', 'Santiago', 'Región Metropolitana', 7500000),
('C002', 'Valparaíso', 'Región de Valparaíso', 2340000),
('C003', 'Concepción', 'Región del Biobío', 4030000),
('C004', 'Antofagasta', 'Región de Antofagasta', 1240000);

-- Poblando la tabla LOCAL (sucursales/tiendas)
INSERT INTO LOCAL (ID_LOCAL, ID_CIUDAD, NOMBRE_LOCAL, DIRECCION_LOCAL, TELEFONO_LOCAL) VALUES
('L001', 'C001', 'Sucursal Central Santiago', 'Av. Libertador Bernardo O Higgins 1000', 56221234567),
('L002', 'C002', 'Bodega Puerto Valparaíso', 'Calle Blanco 500', 56322987654),
('L003', 'C003', 'Oficina Concepción Sur', 'Orompello 350', 56412345678),
('L004', 'C001', 'Tienda Providencia', 'Av. Providencia 2100', 56227654321);

-- Poblando la tabla CLIENTE
INSERT INTO CLIENTE (ID_CLIENTE, ID_CIUDAD, NOMBRE_CLIENTE, NOMBRE_COMPANIA, DIRECCION_CLIENTE, TELEFONO_CLIENTE) VALUES
('CL001', 'C001', 'Juan Pérez González', 'JP Consultores Ltda.', 'Moneda 1150, Oficina 301', 56987654321),
('CL002', 'C002', 'María Angélica Soto', NULL, 'Errázuriz 755', 56912345678),
('CL003', 'C003', 'Comercial del Sur S.A.', 'Comercial del Sur S.A.', 'Barros Arana 1098', 56412223344),
('CL004', 'C004', 'Minería del Norte Grande', 'Minería del Norte Grande', 'Arturo Prat 555', 56552889900);

-- Poblando la tabla PRODUCTO
INSERT INTO PRODUCTO (ID_PRODUCTO, NOMBRE_PRODUCTO, DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO) VALUES
('P001', 'Laptop Modelo X', 'Laptop de 14 pulgadas, 8GB RAM, 256GB SSD', 650000),
('P002', 'Monitor Curvo 27"', 'Monitor LED Curvo Full HD', 220000),
('P003', 'Teclado Mecánico RGB', 'Teclado gamer con iluminación RGB', 75000),
('P004', 'PlayStation 5', 'Consola de entretencion marca Sony', 500000);

-- Poblando la tabla SERVICIO
INSERT INTO SERVICIO (ID_SERVICIO, NOMBRE_SERVICIO, DESCRIPCION_SERVICIO, PRECIO_SERVICIO) VALUES
('S001', 'Asesoría Contable Mensual', 'Servicio de contabilidad y declaración de impuestos mensuales', 150000),
('S002', 'Desarrollo Web Básico', 'Diseño y desarrollo de sitio web informativo (hasta 5 páginas)', 450000),
('S003', 'Mantención Aire Acondicionado', 'Limpieza y revisión de unidad de aire acondicionado', 50000),
('S004', 'Hora de Soporte Técnico TI', 'Soporte técnico remoto o presencial por hora', 25000);

-- Poblando la tabla FACTURA
INSERT INTO FACTURA (ID_FACTURA, ID_CLIENTE, ID_LOCAL, FECHA, SUBTOTAL, IMPUESTO, TOTAL_FACTURA) VALUES
(1001, 'CL001', 'L001', '2025-03-15', 1300000, 0.19, 1547000),
(1002, 'CL002', 'L002', '2025-03-18', 150000, 0.19, 178500),
(1003, 'CL003', 'L003', '2025-03-20', 295000, 0.19, 351050),
(1004, 'CL001', 'L004', '2025-03-22', 50000, 0.19, 59500);

-- Poblando la tabla DETALLE_FACTURA
INSERT INTO DETALLE_FACTURA (ID_DETALLE, ID_FACTURA, ID_SERVICIO, ID_PRODUCTO, CANTIDAD, PRECIO_UNITARIO, TOTAL) VALUES
('D001', 1001, NULL, 'P001', 2, 650000, 1300000),
('D002', 1002, 'S001', NULL, 1, 150000, 150000),
('D003', 1003, NULL, 'P002', 1, 220000, 220000),
('D004', 1003, NULL, 'P003', 1, 75000, 75000),
('D005', 1004, 'S003', NULL, 1, 50000, 50000);

-- Poblando la tabla COMENTARIO
INSERT INTO COMENTARIO (ID_COMENTARIO, ID_FACTURA, TEXTO) VALUES
('CM01', 1001, 'Cliente solicita despacho express antes de las 14:00 hrs.'),
('CM02', 1002, 'Primer mes de servicio. Enviar informe resumido.'),
('CM03', 1004, 'Unidad presentaba filtro muy sucio. Se recomienda cambio en 6 meses.');

-- --- Fin del script ---
