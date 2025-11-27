--1c)
-- Hitta rader där sql_word innehåller 'SELECT'
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    sql_word = 'SELECT';


-- Hitta rader där description innehåller 'records'
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    description ILIKE '%records%';

-- Hitta rader där description innehåller 'filters'
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    description ILIKE '%filters%';

-- Hitta rader där description innehåller rörligsa text som kanske blev dåligt städat
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    description LIKE '% %';

-- Hitta rader där description ord som borde finnas i kodexp
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    description ILIKE '%FROM';

-- Leta efter rader som saknar viss info
SELECT
    *
FROM
    refined_schema.cleaned_glossary
WHERE
    description is NULL or example is NULL;


