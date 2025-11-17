-- change name of id into food = id -> food
-- remove google topic column = remove googleTopic
-- change value into number_of_seraches = value-> nr_of_search
-- change week_id into week = 
-- extract a year column
CREATE TABLE
    IF NOT EXISTS cleaned_food AS (
        SELECT
            id as food,
            week_id as week,
            SUBSTRING(week, 1, 4) as year,
            value as number_of_seraches
        FROM
            food
    );