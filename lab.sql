USE Bank;
SELECT * FROM district;
USE sakila;
SELECT * FROM actor;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS employee_count FROM employee;
SELECT
  (SELECT COUNT(*) FROM film) AS total_films,
  (SELECT COUNT(*) FROM inventory) AS films_available_for_rent,
  (SELECT COUNT(*) FROM rental) AS films_rented;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';