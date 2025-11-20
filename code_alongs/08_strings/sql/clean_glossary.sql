CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE
    IF NOT EXISTS refined.sql_glossary AS (
        SELECT
            UPPER(TRIM(sql_word)) AS sql_word,
            REGEXP_REPLACE (TRIM(description), ' +', ' ', 'g') AS desriptions,
        FROM
            staging.glossary
    );

-- TOOD for the reader do more cleaning