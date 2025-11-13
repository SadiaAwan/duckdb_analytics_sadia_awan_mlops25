--Exercise queries (a → j)
--a)Select all the exercises
SELECT
    *
FROM
    database_course
WHERE
    content_type = 'exercise';

--b)Select all the lectures
SELECT
    *
FROM
    database_course
WHERE
    content_type = 'lecture';

--c)Select all records for week 48
SELECT
    *
FROM
    database_course
WHERE
    week = 48;

--d)Select all records for week 47–49
SELECT
    *
FROM
    database_course
WHERE
    week BETWEEN 47 AND 49;

--e)How many lectures are in the table?
SELECT
    COUNT(*) AS num_lectures
FROM
    database_course
WHERE
    content_type = 'lecture';

--f)How many other content are there?
SELECT
    COUNT(*) AS num_non_lectures
FROM
    database_course
WHERE
    content_type <> 'lecture';

--g)Which are the unique content types in this table?
SELECT DISTINCT
    content_type
FROM
    database_course;

--h)Delete the row with content 02_setup_duckdb and add it again.
DELETE FROM database_course
WHERE
    content = '02_setup_duckdb';

-- re-insert (if you want same values)
INSERT INTO
    database_course (content, week, content_type)
VALUES
    ('02_setup_duckdb', 46, 'lecture');

--i)Rows appear at the end after re-insert — sort by week ascending
SELECT
    *
FROM
    database_course
ORDER BY
    week ASC,
    content;

--j) Choose what to explore — some useful ideas:  
--Show counts per week:
SELECT
    week,
    COUNT(*) AS items_in_week
FROM
    database_course
GROUP BY
    week
ORDER BY
    week;

--Content type distribution:
SELECT
    content_type,
    COUNT(*) AS cnt
FROM
    database_course
GROUP BY
    content_type;

