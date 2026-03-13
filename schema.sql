CREATE TABLE Suppliers (
supplier_id INT PRIMARY KEY,
supplier_name VARCHAR(100),
contact_email VARCHAR(100)
);

CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2),
supplier_id INT,
FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Inventory (
inventory_id INT PRIMARY KEY,
product_id INT,
quantity_in_stock INT,
reorder_level INT,
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);