CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);
INSERT INTO Restaurants (id, name, cuisine, rating, city)
VALUES
(1, 'Swagat', 'South Indian', 4.5, 'Ahmedabad'),
(2, 'Swadisht', 'Gujarati', 4.2, 'Surat'),
(3, 'Dragon House', 'Chinese', 4.1, 'Ahmedabad'),
(4, 'Pizza Palace', 'Italian', 3.8, 'Surat'),
(5, 'Food Junction', 'North Indian', 3.2, 'Vadodara'),
(6, 'Swaad Restaurant', 'Gujarati', 4.7, 'Ahmedabad'),
(7, 'Pasta Corner', 'Italian', 4.4, 'Surat');
SELECT * FROM Restaurants;

select *
from Restaurants
WHERE rating > 4.0
AND city IN ('Ahmedabad', 'Surat');

select *
from Restaurants
WHERE name LIKE 'Swa%';


select * from 
Restaurants
where rating between 3.5 and 4.5;


select* from Restaurants 
where cuisine IN ('Chinese', 'Italian', 'South Indian' );