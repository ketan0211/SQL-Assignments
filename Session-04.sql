
create table MusicPlaylist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    duration INT
);

Insert into MusicPlaylist (id, song_name, artist, genre, duration)
VALUES
(1, 'Brown Munde', 'AP Dhillon', 'Punjabi', 240),
(2, 'Excuses', 'AP Dhillon', 'Punjabi', 176),
(3, 'Kesariya', 'Arijit Singh', 'Bollywood', 268),
(4, 'Heeriye', 'Jasleen Royal', 'Pop', 194),
(5, 'With You', 'AP Dhillon', 'Punjabi', 200);

select*from MusicPlaylist;
SELECT song_name, artist
FROM MusicPlaylist
LIMIT 3;

CREATE TABLE FoodOrders (
    id INT PRIMARY KEY,
    restaurant VARCHAR(100),
    food_item VARCHAR(100),
    order_date DATE
);
INSERT INTO FoodOrders (id, restaurant, food_item, order_date)
VALUES
(1, 'Dominos', 'Pizza', '2026-10-20'),
(2, 'Zomato Cafe', 'Burger', '2026-10-21'),
(3, 'Dominos', 'Pasta', '2026-10-22'),
(4, 'McDonalds', 'Burger', '2026-10-23'),
(5, 'Zomato Cafe', 'Sandwich', '2026-10-24');

SELECT DISTINCT restaurant
FROM FoodOrders;

SELECT
    food_item AS 'Dish',
    order_date AS 'Date Ordered'
FROM FoodOrders;

SELECT DISTINCT food_item, restaurant
FROM FoodOrders
LIMIT 2;