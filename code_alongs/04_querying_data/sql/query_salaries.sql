--case insensitive in SQL
--by convention UPPERCASE for SQL command
--lowercase for columns
desc;

-- select all query	
-- the default namespace is main and data_jobs table is there
SELECT
    *
FROM
    data_jobs;

-- in general good practice to use namespaces to avoid name confusion
-- and to get better organization of tables

-- use fully qualified name
SELECT
	*
FROM
	salaries.main.data_jobs;

-- schema namespace
SELECT
    *
FROM
    main.data_jobs;

--fully qualified name
SELECT
    *
FROM
    data_jobs.main.data_jobs;

--limit clause to choose how many rows to return
SELECT
    *
FROM
    data_jobs
LIMIT
    5;

--offset 
SELECT
    *
FROM
    data_jobs.main.data_jobs
OFFSET
    2;

desc data_jobs;

--select spec columns
SELECT
    work_year,
    job_title,
    salary_in_usd,
    company_location
FROM
    data_jobs;

-- select all column except those spec in EXCLUDE
SELECT
    * EXCLUDE (salary, work_year)
FROM
    data_jobs;

-- getting unique values in a column
--unique -> DISTINCT
SELECT DISTINCT
    employment_type
from
    data_jobs;

SELECT DISTINCT
    experience_level
from
    data_jobs;

