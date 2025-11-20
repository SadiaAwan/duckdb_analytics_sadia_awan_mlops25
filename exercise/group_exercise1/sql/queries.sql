-- 1b)
/*SELECT
    *
FROM
    staging.bikes;

PRAGMA table_info ('staging.bikes');
*/

SHOW TABLE staging.bikes;

--3b)
SELECT
    order_date,
    customer_first_name,
    customer_last_name,
    product_name
FROM
    staging.bikes;

--3c)
SELECT
    *
FROM
    staging.bikes
WHERE
    customer_first_name LIKE 'Marvin';

--ALT. customer_first_name = 'Marvin';

-- 3d)
SELECT DISTINCT
    customer_first_name || ' ' || customer_last_name AS FULL_NAME
FROM
    staging.bikes;