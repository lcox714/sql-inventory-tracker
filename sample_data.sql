INSERT INTO Suppliers (supplier_name, contact_email) VALUES
('CPU Source', 'sales@cpusupplier.com'),
('GPU Goods', 'contact@gpusupplier.com'),
('Peripherals n More', 'support@peripheralsnmore.com');

INSERT INTO Products (product_name, category,price, supplier_id) VALUES
('8-Core CPU','CPU',279.99,1),
('12-Core CPU','CPU',489.99,1),
('8GB GPU','GPU',349.99,2),
('16GB GPU','GPU',499.99,2),
('RGB Mechanical Keyboard','Peripherals',99.99,3),
('RGB Optical Lense Mouse','Peripherals',89.99,3);

INSERT INTO Inventory (product_id, quantity_in_stock, reorder_level) VALUES
(1, 5, 15),
(2, 25, 5),
(3, 20, 5),
(4, 10, 12),
(5, 15, 10),
(6, 20, 5);