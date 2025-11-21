CREATE TABLE
    IF NOT EXISTS raw_salaries AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/salaries.csv')
    );