--b) How many unique orders (order_id)
SELECT
    COUNT(DISTINCT order_id) AS unique_orders
FROM
    bike_joined_table;

--c) How many unique products (product_id)
SELECT
    COUNT(DISTINCT product_id) AS unique_products
FROM
    bike_joined_table;

--d) how many customers ordered it, and what is total sales
SELECT
    *
FROM
    bike_joined_table
LIMIT
    5;

SELECT
    COUNT(DISTINCT customer_id) AS customers_who_bought,
    SUM(list_price) AS total_sales_value
FROM
    bike_joined_table
WHERE
    product_name = 'Surly Straggler - 2016';

--e) How many customers are from these cities: San Angelo, Orchard Park, Merrick
SELECT
    customer_city,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM
    bike_joined_table
WHERE
    customer_city IN ('San Angelo', 'Orchard Park', 'Merrick')
GROUP BY
    customer_city;