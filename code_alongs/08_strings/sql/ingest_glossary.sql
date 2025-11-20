CREATE SCHEMA IF NOT EXISTS staging;

--schema.table
CREATE TABLE
    IF NOT EXISTS staging.glossary
     AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/sql_terms.csv')
    );