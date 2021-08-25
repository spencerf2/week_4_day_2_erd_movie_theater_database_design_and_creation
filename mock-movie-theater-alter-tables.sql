-- View data in movie Table
SELECT *
FROM movie;

-- Change movie Date from NULL to a specific date and time
UPDATE movie
SET show_time = '2021-08-26 18:00:00'
WHERE show_time IS NULL AND movie_id = 1;

UPDATE movie
SET show_time = '2021-08-26 12:00:00'
WHERE show_time IS NULL AND movie_id = 2;

UPDATE movie
SET show_time = '2021-08-26 14:00:00'
WHERE show_time IS NULL AND movie_id = 3;

UPDATE movie
SET show_time = '2021-08-26 15:30:00'
WHERE show_time IS NULL AND movie_id = 4;

UPDATE movie
SET show_time = '2021-08-26 21:00:00'
WHERE show_time IS NULL AND movie_id = 5;

-- Change data type of show_time column of movie Table to allow for date AND time
ALTER TABLE movie ALTER COLUMN show_time TYPE TIMESTAMP;

-- Update show_time column values
UPDATE movie
SET show_time = '2021-08-26 18:00:00'
WHERE show_time = '2021-08-26 00:00:00' AND movie_id = 1;

UPDATE movie
SET show_time = '2021-08-26 12:00:00'
WHERE show_time = '2021-08-26 00:00:00' AND movie_id = 2;

UPDATE movie
SET show_time = '2021-08-26 14:00:00'
WHERE show_time = '2021-08-26 00:00:00' AND movie_id = 3;

UPDATE movie
SET show_time = '2021-08-26 15:30:00'
WHERE show_time = '2021-08-26 00:00:00' AND movie_id = 4;

UPDATE movie
SET show_time = '2021-08-26 21:00:00'
WHERE show_time = '2021-08-26 00:00:00' AND movie_id = 5;