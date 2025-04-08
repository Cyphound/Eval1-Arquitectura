START TRANSACTION;

-- 1. Insertar una nueva factura
INSERT INTO FACTURA (ID_FACTURA, ID_CLIENTE, ID_LOCAL, FECHA, SUBTOTAL, IMPUESTO, TOTAL_FACTURA)
VALUES (1005, 'CL002', 'L001', '2025-04-07', 220000, 0.19, 261800);

-- 2. Insertar detalle asociado (venta de 1 Monitor Curvo)
INSERT INTO DETALLE_FACTURA (ID_DETALLE, ID_FACTURA, ID_PRODUCTO, ID_SERVICIO, CANTIDAD, PRECIO_UNITARIO, TOTAL)
VALUES ('D006', 1005, 'P002', NULL, 1, 220000, 220000);

-- 3. Insertar comentario relacionado con esta factura
INSERT INTO COMENTARIO (ID_COMENTARIO, ID_FACTURA, TEXTO)
VALUES ('CM04', 1005, 'Cliente requiere garantía extendida por 1 año.');

-- Confirmar la transacción
COMMIT;
