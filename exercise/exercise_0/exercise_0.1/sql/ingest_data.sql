--a)Create the table FROM THE FILE
CREATE TABLE
    IF NOT EXISTS hemnet AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/hemnet_data_clean.csv')
    );