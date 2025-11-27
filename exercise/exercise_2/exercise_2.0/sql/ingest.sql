--1a)
--created schema 
CREATE SCHEMA IF NOT EXISTS refined_schema;

--schema.table
CREATE TABLE
    IF NOT EXISTS refined_schema.cleaned_table AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/sql_terms.csv')
    );