create database music_streaming_app;
USE music_streaming_app;
-- Task 2: Create table
CREATE TABLE playlists (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(100),
    created_by VARCHAR(100)
);

-- Task 3: Insert sample records
INSERT INTO playlists (playlist_id, name, created_by)
VALUES
(1, 'Bollywood Hits', 'Amit'),
(2, 'Chill Vibes', 'Priya'),
(3, 'Workout Mix', 'Rahul');

-- Check all playlists
SELECT * FROM playlists;

-- Task 4: Find playlists created by Amit
SELECT *
FROM playlists
WHERE created_by = 'Amit';