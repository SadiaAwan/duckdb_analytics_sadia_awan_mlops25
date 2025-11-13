--b)Wildcard selection (show everything)
SELECT
    *
FROM
    hemnet
LIMIT
    10;

--c)Count number of rows
SELECT
    COUNT(*) AS total_rows
FROM
    hemnet;

--d) Describe the table (columns and types)
desc hemnet;

--e) 5 most expensive homes sold
SELECT
    *
FROM
    hemnet
ORDER BY
    final_price DESC
LIMIT
    5;

--f) 5 cheapest homes sold
SELECT
    *
FROM
    hemnet
ORDER BY
    final_price ASC
LIMIT
    5;




