Create database product_company;
USE product_company;

SELECT *
FROM products
ORDER BY price ASC;

SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    rating DECIMAL(3,1)
);
INSERT INTO movies (movie_id, title, release_year, rating)
VALUES
(1, 'Movie A', 2023, 8.2),
(2, 'Movie B', 2025, 7.8),
(3, 'Movie C', 2024, 9.1),
(4, 'Movie D', 2025, 9.0),
(5, 'Movie E', 2024, 7.5),
(6, 'Movie F', 2022, 8.5);

SELECT title, release_year, rating
FROM movies
ORDER BY release_year DESC, rating DESC;

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);
INSERT INTO restaurants
(restaurant_id, name, cuisine, rating, city)
VALUES
(1, 'Zesty Bites', 'Indian', 4.2, 'Ahmedabad'),
(2, 'Cafe Coffee', 'Cafe', 4.0, 'Surat'),
(3, 'Burger House', 'Fast Food', 4.3, 'Ahmedabad'),
(4, 'Food Corner', 'Indian', 3.8, 'Vadodara'),
(5, 'Green Garden', 'Chinese', 4.5, 'Surat'),
(6, 'Dominos', 'Pizza', 4.1, 'Ahmedabad'),
(7, 'Royal Dine', 'Indian', 4.4, 'Surat'),
(8, 'Pizza Palace', 'Italian', 4.2, 'Ahmedabad'),
(9, 'Urban Cafe', 'Cafe', 3.9, 'Vadodara'),
(10, 'Sweet House', 'Dessert', 4.6, 'Surat'),
(11, 'Tasty Treats', 'Indian', 4.0, 'Ahmedabad'),
(12, 'Annapurna', 'Gujarati', 4.3, 'Surat');


SELECT *
FROM restaurants
ORDER BY name ASC
LIMIT 10;

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(100),
    play_count INT,
    added_at DATE
);
INSERT INTO songs (song_id, song_name, play_count, added_at)
VALUES
(1, 'Song A', 5000, '2026-10-10'),
(2, 'Song B', 8000, '2026-10-15'),
(3, 'Song C', 8000, '2026-10-25'),
(4, 'Song D', 3000, '2026-10-26'),
(5, 'Song E', 10000, '2026-10-20'),
(6, 'Song F', 5000, '2026-10-28');

SELECT * FROM 
songs
ORDER BY play_count DESC
,  added_at DESC
LIMIT 3;