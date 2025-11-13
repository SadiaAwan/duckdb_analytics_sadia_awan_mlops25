--a)Create the table FROM THE FILE
CREATE TABLE
    IF NOT EXISTS bike_joined_table AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/bike_joined_table.csv')
    );