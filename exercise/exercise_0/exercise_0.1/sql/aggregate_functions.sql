--g) Price statistics (min, mean, median, max)
SELECT
    MIN(final_price) AS min_price,
    AVG(final_price) AS mean_price,
    MEDIAN (final_price) AS median_price,
    MAX(final_price) AS max_price
FROM
    hemnet;

--h) Price per area statistics (min, mean, median, max)
SELECT
    MIN(price_per_area) AS min_price_area,
    AVG(price_per_area) AS mean_price_area_area,
    MEDIAN (price_per_area) AS median_price_area,
    MAX(price_per_area) AS max_price_area
FROM
    hemnet;

