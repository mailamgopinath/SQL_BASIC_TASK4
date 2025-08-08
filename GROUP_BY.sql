/*Here’s how you can use GROUP BY on the Orders table to categorize and apply aggregate functions:*/

/*Total sales by order status*/

SELECT 
    status,
    COUNT(order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Sales,
    AVG(total_amount) AS Average_Order_Value
FROM Orders
GROUP BY status;

/*Total sales by payment method*/

SELECT 
    payment_method,
    COUNT(order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Sales
FROM Orders
GROUP BY payment_method;

/*Total sales by customer*/

SELECT 
    customer_name,
    SUM(total_amount) AS Total_Spent
FROM Orders
GROUP BY customer_name
ORDER BY Total_Spent DESC;


