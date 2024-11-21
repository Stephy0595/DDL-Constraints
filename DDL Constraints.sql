
CREATE DATABASE Sales;

USE Sales;

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(255) NOT NULL,
    Product_Category VARCHAR(255),
    Ordered_item VARCHAR(255) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);

ALTER TABLE Orders
ADD order_quantity INT;

RENAME TABLE Orders TO sales_orders;

INSERT INTO sales_orders (
Order_Id, 
Customer_name, 
Product_Category, 
Ordered_item, 
Contact_No, 
order_quantity)
VALUES
(1, 'John Philip', 'Electronics', 'Laptop', '1234567890', 2),
(2, 'Kevin George', 'Clothing', 'Jacket', '2345678901', 1),
(3, 'Emily Philip', 'Books', 'Novel', '3456789012', 3),
(4, 'Rahul Simon', 'Furniture', 'Chair', '4567890123', 5),
(5, 'Sarah Mathew', 'Electronics', 'Smartphone', '5678901234', 1),
(6, 'Leo Kurian', 'Kitchen', 'Blender', '6789012345', 1),
(7, 'Adam George', 'Sports', 'Tennis Racket', '7890123456', 2),
(8, 'Tom Abraham', 'Toys', 'Lego Set', '8901234567', 4),
(9, 'Rachel Thomas', 'Clothing', 'Shirt', '9012345678', 3),
(10, 'Chris Mathew', 'Beauty', 'Perfume', '0123456789', 2);

SELECT Customer_name, Ordered_item FROM sales_orders;

UPDATE sales_orders
SET Ordered_item = 'Smartwatch'
WHERE Order_Id = 1;

DROP TABLE sales_orders;