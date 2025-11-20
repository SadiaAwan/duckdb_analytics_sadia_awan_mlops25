FROM
    actor;

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
    'customer' AS TYPE,
    c.first_name,
    c.last_name
FROM
    customer c
WHERE
    c.first_name LIKE 'D%'

--More EDAs left for the reader