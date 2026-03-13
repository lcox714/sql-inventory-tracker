--This query showcases the products listed alongside the supplier.

SELECT p.product_name, p.category, p.price, s.supplier_name, i.quantity_in_stock FROM Products p
JOIN Suppliers s ON s.supplier_id = p.supplier_id
JOIN Inventory i ON p.product_id = i.product_id;

--This query helps determine which products are low in stock.

SELECT p.product_name, i.quantity_in_stock, i.reorder_level FROM PRODUCTS p
JOIN Inventory i ON p.product_id = i.product_id
WHERE i.quantity_in_stock <= i.reorder_level

--This query calculates an inventory value of each product.

SELECT p.product_name, i.quantity_in_stock, p.price, (i.quantity_in_stock * p.price) AS inventory_value FROM Products p
JOIN Inventory i ON p.product_id = i.product_id

--This query calculates the total inventory value of all products.

SELECT SUM(i.quantity_in_stock * p.price) AS total_inventory_value FROM Products p
JOIN Inventory i ON p.product_id = i.product_id

--Created a view to showcase an overall report of the listed products, including the quantity in stock and the inventory value.

CREATE VIEW inventory_report AS
SELECT
	p.product_name,
	p.category,
	s.supplier_name,
	i.quantity_in_stock,
	i.reorder_level,
	p.price,
	(i.quantity_in_stock * p.price) as inventory_value
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id
JOIN Inventory i ON p.product_id = i.product_id

--To help further elaborate on whether a product is in need of a reorder or has sufficient supply, I utilize the CASE expression to determine that condition.

SELECT product_name, quantity_in_stock, reorder_level,
CASE
WHEN quantity_in_stock <= reorder_level THEN 'Reorder Needed'
ELSE 'Stock OK'
END AS stock_status
FROM inventory_report;