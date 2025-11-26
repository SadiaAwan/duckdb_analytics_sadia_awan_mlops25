--ex insight
--actor id 1 > Penelope Guiness
--plays in movies:academy dinosaur, anaconda confessions, ...
FROM
    actor;

-- >= 1 more 
FROM
    film_actor;

FROM
    film;

FROM
    address;

FROM
    city;

FROM
    country;

FROM
    customer;

FROM
    film_actor;

--bridge table between film and category
--it holds film-id and category_id
FROM
    film_category;

FROM
    category;

SELECT
    COUNT(*) AS number_movies,
    COUNT(DISTINCT title) AS unique_number_of_tiles
FROM
    film;

SELECT DISTINCT
    rating
FROM
    main.film;

DESC TABLE film_actor;

SELECT
    c.first_name || ' ' || c.last_name AS name
FROM
    customer c;--alias

-- all customer firstname staring with B
SELECT
    c.first_name || ' ' || c.last_name AS name
FROM
    customer c--alias  
WHERE
    c.first_name ILIKE 'b%';

SELECT
    'customer' AS TYPE,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIKE 'D%'
    --More EDAs left for the reader