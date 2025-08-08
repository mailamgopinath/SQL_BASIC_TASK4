/*Here’s how you can filter grouped results in MySQL using HAVING (which works like WHERE, but for aggregate results):*/

/*Show only payment methods with total sales above ₹3000*/

SELECT 
    payment_method,
    SUM(total_amount) AS Total_Sales
FROM Orders
GROUP BY payment_method
HAVING SUM(total_amount) > 3000;

/*Show only statuses with more than 2 orders */

SELECT 
    status,
    COUNT(order_id) AS Total_Orders
FROM Orders
GROUP BY status
HAVING COUNT(order_id) > 2;

/*Show customers who spent more than ₹2000 in total*/

SELECT 
    customer_name,
    SUM(total_amount) AS Total_Spent
FROM Orders
GROUP BY customer_name
HAVING SUM(total_amount) > 2000;
