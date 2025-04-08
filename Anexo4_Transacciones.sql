-- Iniciar transacción
START TRANSACTION;

-- 1. Insertar nueva factura
INSERT INTO FACTURA (ID_FACTURA, ID_CLIENTE, ID_LOCAL, FECHA, SUBTOTAL, IMPUESTO, TOTAL_FACTURA)
VALUES (1006, 'CL004', 'L003', '2025-04-07', 500000, 0.19, 595000);

-- 2. Insertar detalle de factura con un servicio técnico y un producto
INSERT INTO DETALLE_FACTURA (ID_DETALLE, ID_FACTURA, ID_PRODUCTO, ID_SERVICIO, CANTIDAD, PRECIO_UNITARIO, TOTAL)
VALUES
('D007', 1006, NULL, 'S004', 2, 25000, 50000),  -- 2 horas de soporte técnico
('D008', 1006, 'P003', NULL, 1, 75000, 75000);  -- 1 teclado mecánico

-- 3. Insertar comentario del cliente
INSERT INTO COMENTARIO (ID_COMENTARIO, ID_FACTURA, TEXTO)
VALUES ('CM05', 1006, 'Cliente requiere instalación y capacitación post venta.');

-- 4. Se simula que el cliente canceló el producto por error. Se elimina:
DELETE FROM DETALLE_FACTURA WHERE ID_DETALLE = 'D008';

-- 5. Se actualiza el subtotal y total de la factura (solo quedó el servicio)
UPDATE FACTURA
SET SUBTOTAL = 50000, TOTAL_FACTURA = 59500
WHERE ID_FACTURA = 1006;

-- Confirmar todos los cambios
COMMIT;
