CREATE DATABASE foodie_app;
USE foodie_app;
CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    location VARCHAR(100)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Verify both tables
SHOW TABLES;
DESCRIBE restaurants;
DESCRIBE users;