CREATE DATABASE customer;
USE customer;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50),
    shipping_address TEXT
);
DESC Orders;   /*TO DESCRIBE THE STRUCTURE OF AN TABLE WE CAN USE THE DESC COMMAND*/



/*INSERTING THE DATA INTO THE TABLE WE CAN USE THE INSERT COMMAND*/



INSERT INTO Orders (customer_name, order_date, status, total_amount, payment_method, shipping_address)
VALUES
('Ravi Kumar', '2025-08-01', 'Pending', 1500.50, 'UPI', 'Hyderabad, Telangana'),
('Anita Sharma', '2025-08-02', 'Shipped', 2500.00, 'Credit Card', 'Pune, Maharashtra'),
('Rahul Verma', '2025-08-03', 'Delivered', 1200.75, 'Cash', 'Delhi, Delhi'),
('Sonia Mehta', '2025-08-04', 'Cancelled', 999.99, 'Debit Card', 'Mumbai, Maharashtra'),
('Vikram Singh', '2025-08-05', 'Pending', 1800.20, 'UPI', 'Chennai, Tamil Nadu'),
('Priya Nair', '2025-08-06', 'Shipped', 2100.00, 'Credit Card', 'Kochi, Kerala'),
('Amit Patel', '2025-08-06', 'Delivered', 3000.00, 'Net Banking', 'Ahmedabad, Gujarat'),
('Neha Gupta', '2025-08-07', 'Pending', 500.00, 'Cash', 'Lucknow, Uttar Pradesh'),
('Manoj Yadav', '2025-08-07', 'Shipped', 750.50, 'Debit Card', 'Jaipur, Rajasthan'),
('Deepa Reddy', '2025-08-08', 'Delivered', 1450.00, 'UPI', 'Bengaluru, Karnataka');



/*TO FETCH THE ALL THE RECORDS FROM THE TABLE WE CAN USE SELECT COMMAND*/


SELECT * FROM Orders;


-- 1. Find total sales


SELECT SUM(total_amount) AS Total_Sales
FROM Orders;

-- 2. Find average order value


SELECT AVG(total_amount) AS Average_Order_Value
FROM Orders;

-- 3. Find highest order amount


SELECT MAX(total_amount) AS Highest_Order
FROM Orders;

-- 4. Find lowest order amount


SELECT MIN(total_amount) AS Lowest_Order
FROM Orders;

-- 5. Count total orders


SELECT COUNT(order_id) AS Total_Orders
FROM Orders;

/*You can also combine them in one query:*/


SELECT 
    COUNT(order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Sales,
    AVG(total_amount) AS Average_Order_Value,
    MAX(total_amount) AS Highest_Order,
    MIN(total_amount) AS Lowest_Order
FROM Orders;

