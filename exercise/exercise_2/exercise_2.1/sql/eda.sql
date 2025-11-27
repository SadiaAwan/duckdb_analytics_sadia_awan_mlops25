--1a)Describe all tables
-- Lista tabeller
SHOW TABLES;

--Beskrinver kolumner i varje tabell ( ex för film)
DESCRIBE actor;

DESCRIBE address;

DESCRIBE category;

DESCRIBE city;

DESCRIBE country;

DESCRIBE customer;

DESCRIBE customer_list;

DESCRIBE film;

DESCRIBE film_actor;

DESCRIBE film_category;

DESCRIBE film_list;

DESCRIBE film_text;

DESCRIBE inventory;

DESCRIBE language;

DESCRIBE payment;

DESCRIBE rental;

DESCRIBE sales_by_film_category;

DESCRIBE sales_by_store;

DESCRIBE staff;

DESCRIBE staff_list;

DESCRIBE store;

--1b) Select all data on all tables
SELECT * FROM actor LIMIT 5; 

SELECT * FROM address LIMIT 5;

SELECT * FROM category LIMIT 5;

SELECT * FROM city LIMIT 5;

SELECT * FROM country LIMIT 5;   

SELECT * FROM customer LIMIT 5;   

SELECT * FROM customer_list LIMIT 5;  

SELECT * FROM film LIMIT 5;   

SELECT * FROM film_actor LIMIT 5;   

SELECT * FROM film_category LIMIT 5;   

SELECT * FROM film_list LIMIT 5;   

SELECT * FROM film_text LIMIT 5;   

SELECT * FROM inventory LIMIT 5;   

SELECT * FROM language LIMIT 5;   

SELECT * FROM payment LIMIT 5;   

SELECT * FROM rental LIMIT 5;   

SELECT * FROM sales_by_film_category LIMIT 5;   

SELECT * FROM sales_by_store LIMIT 5; 

SELECT * FROM staff LIMIT 5;  

SELECT * FROM staff_list LIMIT 5;  

SELECT * FROM store LIMIT 5;  



 --1c) Find out how many rows there are in each table.
SELECT 'actor' AS table_name, COUNT(*) AS rows FROM actor;

SELECT 'address'  AS table_name, COUNT(*) AS rows FROM address;

SELECT 'category'  AS table_name, COUNT(*) AS rows FROM category;

SELECT 'city'  AS table_name, COUNT(*) AS rows FROM city;

SELECT 'country'  AS table_name, COUNT(*) AS rows FROM country;

SELECT 'customer'  AS table_name, COUNT(*) AS rows FROM customer;

SELECT 'customer_list'  AS table_name, COUNT(*) AS rows FROM customer_list;

SELECT 'film'  AS table_name, COUNT(*) AS rows FROM film;

SELECT 'film_actor'  AS table_name, COUNT(*) AS rows FROM film_actor;

SELECT 'film_category'  AS table_name, COUNT(*) AS rows FROM film_category;

SELECT 'film_list'  AS table_name, COUNT(*) AS rows FROM film_list;

SELECT 'film_text'  AS table_name, COUNT(*) AS rows FROM film_text;

SELECT 'inventory'  AS table_name, COUNT(*) AS rows FROM inventory;

SELECT 'language'  AS table_name, COUNT(*) AS rows FROM language;

SELECT 'payment'  AS table_name, COUNT(*) AS rows FROM payment;

SELECT 'rental'  AS table_name, COUNT(*) AS rows FROM rental;

SELECT 'sales_by_film_category'  AS table_name, COUNT(*) AS rows FROM sales_by_film_category;

SELECT 'sales_by_store'  AS table_name, COUNT(*) AS rows FROM sales_by_store;

SELECT 'staff'  AS table_name, COUNT(*) AS rows FROM staff;

SELECT 'staff_list'  AS table_name, COUNT(*) AS rows FROM staff_list;

SELECT 'store'  AS table_name, COUNT(*) AS rows FROM store;


--1e)What are the peak rental times?
SELECT HOUR(rental_date) AS hour_of_day, COUNT(*) AS rentals
FROM rental
GROUP BY hour_of_day
ORDER BY hour_of_day;

--1f) What is the distribution of film ratings?
SELECT rating, COUNT(*) AS cnt
FROM film
GROUP BY rating
ORDER BY cnt DESC;

--1g) Who are the top 10 customers by number of rentals?
SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rentals
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY rentals DESC
LIMIT 10;

 --1h) Retrieve a list of all customers and what films they have rented.
 SELECT c.customer_id, c.first_name, c.last_name,
       f.film_id, f.title, r.rental_date
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
ORDER BY c.customer_id, r.rental_date;

--1i) Make a more extensive EDA of your choice on the Sakila database.

--Top N mest hyrda filmer (populäraste titlarna)

SELECT f.film_id, f.title, COUNT(*) AS rentals
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY rentals DESC
LIMIT 20;

--Korrelation: film length vs rental count

SELECT f.length, COUNT(r.rental_id) AS rentals
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.length
ORDER BY f.length;

