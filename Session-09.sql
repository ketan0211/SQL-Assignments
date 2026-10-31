CREATE DATABASE JOINS_1;
USE JOINS_1;
CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO restaurants (id, name, city)
VALUES
(1, 'Shree Gujarati Thali', 'Ahmedabad'),
(2, 'Pizza Corner', 'Surat'),
(3, 'South Spice', 'Ahmedabad'),
(4, 'Empty Cafe', 'Vadodara');

SELECT * FROM restaurants;

CREATE TABLE dishes (
    id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(100),
    price DECIMAL(10,2)
);


INSERT INTO dishes (id, restaurant_id, dish_name, price)
VALUES
(1, 1, 'Gujarati Thali', 250),
(2, 1, 'Khaman Dhokla', 80),
(3, 2, 'Margherita Pizza', 350),
(4, 2, 'White Sauce Pasta', 300),
(5, 3, 'Masala Dosa', 120),
(6, 3, 'Idli Sambhar', 70),
(7, 99, 'Mystery Dish', 150);
SELECT * FROM dishes;

SELECT
    d.dish_name,
    d.price,
    r.name AS restaurant_name,
    r.city
FROM restaurants AS r
INNER JOIN dishes AS d
    ON r.id = d.restaurant_id;
    


select
r.name as restaurant_name,
d.dish_name,
d.price
from restaurants as r
left join dishes as d
   on r.id =d.restaurant_id;

SELECT
    d.dish_name,
    d.restaurant_id,
    d.price,
    r.name AS restaurant_name,
    r.city
FROM restaurants AS r
RIGHT JOIN dishes AS d
    ON r.id = d.restaurant_id;
    
    
SELECT
    p.name AS playlist_name,
    s.song_name
FROM playlists AS p
LEFT JOIN songs AS s
ON p.playlist_id = s.playlist_id;