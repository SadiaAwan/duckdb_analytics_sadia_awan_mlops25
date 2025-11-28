--2a) Retrieve a list of all customers and actors which last name starts with G.
SELECT
    'customer' AS person_type,
    customer_id AS id,
    first_name,
    last_name
FROM
    customer
WHERE
    last_name ILIKE 'G%'
UNION all
SELECT
    'actor' AS person_type,
    actor_id AS id,
    first_name,
    last_name
FROM
    actor
WHERE
    last_name ILIKE 'G%'
ORDER BY
    person_type,
    last_name,
    first_name;

--2b) How many customers and actors starts have the the letters 'ann' in there first names?
-- customers
SELECT
    'customer' AS person_type,
    COUNT(*) AS customers_with_ann
FROM
    customer
WHERE
    first_name ILIKE '%ann%'
UNION ALL
SELECT
    'actor' AS person_type,
    COUNT(*) AS actors_with_ann
FROM
    actor
WHERE
    first_name ILIKE '%ann%';

--2c) In which cities and countries do the customers live in?
SELECT DISTINCT
    ci.city,
    co.country
FROM
    customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ci ON a.city_id = ci.city_id
    JOIN country co ON ci.country_id = co.country_id
ORDER BY
    co.country,
    ci.city;

--2d) In which cities and countries do the customers with initials JD live in?
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name,
    ci.city,
    co.country
FROM
    customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ci ON a.city_id = ci.city_id
    JOIN country co ON ci.country_id = co.country_id
WHERE
    c.first_name ILIKE 'J%'
    AND c.last_name ILIKE 'D%'
ORDER BY
    c.last_name,
    c.first_name;

--2e) Retrieve a list of all customers and what films they have rented
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    f.film_id,
    f.title AS film_title,
    r.rental_date
FROM
    customer c
    LEFT JOIN rental r on c.customer_id = r.customer_id
    LEFT JOIN inventory i on r.inventory_id = i.inventory_id
    LEFT JOIN film f on i.film_id = f.film_id
ORDER BY
    c.customer_id,
    r.rental_date,
    film_title

--2f) What else cool information can you find out with this database using what you know about SQL.

--Top 10 most rented films:
 SELECT f.film_id, f.title, COUNT(r.rental_id) AS rentals
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY rentals DESC, f.title
LIMIT 10;  

--Top 10 customers by total payments:
SELECT cu.customer_id, cu.first_name || ' ' || cu.last_name AS customer_name,
       SUM(p.amount) AS total_paid, COUNT(p.payment_id) AS payments_count
FROM payment p
JOIN customer cu ON p.customer_id = cu.customer_id
GROUP BY cu.customer_id, customer_name
ORDER BY total_paid DESC
LIMIT 10;