-- 4a)
SELECT
    SUM(list_price * quantity) AS TOTAL_REVENUE_PRICE
FROM
    staging.bikes;

-- 4b)
SELECT
    MIN(list_price) As MIN_PRICE 
FROM
    staging.bikes;


-- 4C)
SELECT
    MAX(list_price) As MAX_PRICE 
FROM
    staging.bikes;
