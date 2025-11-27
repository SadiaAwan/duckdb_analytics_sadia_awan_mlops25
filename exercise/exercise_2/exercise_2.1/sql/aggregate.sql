--1d) Calculate descriptive statistics on film length.
SELECT
    MIN(length) AS min_length,
    MAX(length) AS max_length,
    AVG(length) AS avg_length,
FROM
    film;