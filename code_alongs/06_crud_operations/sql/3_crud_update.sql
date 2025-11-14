-- Checkmark for glossary which we have learnt
SELECT
    *
FROM
    database.duckdb
WHERE
    if IN (3, 6, 7);

UPDATE database.duckdb
SET
    learn = TRUE
WHERE
    if in (3, 6, 7);