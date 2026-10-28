CREATE DATABASE GROUPBY;
USE GROUPBY;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    payment_method VARCHAR(30),
    amount DECIMAL(10,2)
);
INSERT INTO Orders (order_id, user_id, payment_method, amount)
VALUES
(1, 101, 'UPI', 250),
(2, 102, 'Card', 450),
(3, 101, 'UPI', 500),
(4, 103, 'Wallet', 200),
(5, 102, 'Card', 700),
(6, 104, 'COD', 400),
(7, 103, 'Wallet', 300),
(8, 101, 'UPI', 350),
(9, 104, 'COD', 200),
(10, 105, 'Card', 250);

SELECT * FROM Orders;
SELECT
    payment_method,
    COUNT(*) AS order_count
FROM Orders
GROUP BY payment_method
ORDER BY payment_method;


SELECT 
 user_id,
 SUM(amount) AS order_place_count ,
 count(*) AS order_counts
 FROM orders
 GROUP by user_id
 ORDER BY user_id;
 
 SELECT
    payment_method,
    ROUND(AVG(amount), 2) AS average_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 300;

SELECT
    payment_method,
    COUNT(*) AS order_count
FROM Orders
WHERE amount > 300
GROUP BY payment_method;

SELECT
    payment_method,
    AVG(amount) AS average_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 300;

SELECT payment_method, AVG(amount) AS average_amount
FROM Orders
WHERE amount > 100
GROUP BY payment_method
HAVING AVG(amount) > 300
ORDER BY average_amount DESC;
