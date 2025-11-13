-- i) How many unique communes are represented
SELECT
    COUNT(DISTINCT commune) AS unique_communes
FROM
    hemnet;

--j) What percentage of homes cost more than 10 million?
SELECT
    (
        SELECT
            COUNT(*)
        FROM
            hemnet
        WHERE
            final_price > 10000000
    ) * 100.0 / (
        SELECT
            COUNT(*)
        FROM
            hemnet
    ) AS pct_over_10M;