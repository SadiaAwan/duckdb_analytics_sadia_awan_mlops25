-- a)
CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE
    IF NOT EXISTS staging.bikes AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/joined_table.csv')
    );