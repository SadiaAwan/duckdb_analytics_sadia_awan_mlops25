--1b
CREATE SCHEMA IF NOT EXISTS refined_schema;

CREATE TABLE
    IF NOT EXISTS refined_schema.cleaned_glossary AS (
        SELECT
            UPPER(TRIM(sql_word)) AS sql_word,
            REGEXP_REPLACE (TRIM(description), ' +', ' ', 'g') AS desriptions,
            REGEXP_REPLACE (TRIM(example), ' +', ' ', 'g') AS example,
        FROM
            refined_schema.cleaned_table
    );