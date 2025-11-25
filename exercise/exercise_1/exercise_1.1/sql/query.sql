desc;

from
    salaries_raw;

--1a) 
SELECT
    COUNT(*) AS data_engineer_count
FROM
    salaries_raw
WHERE
    job_title = 'Data Engineer';

--1a) ALT
SELECT
    job_title
FROM
    salaries_raw
WHERE
    job_title = 'Data Engineer';

--1b)
SELECT
    COUNT(DISTINCT job_title) AS unique_job_titles
FROM
    salaries_raw;

--1c)
SELECT
    salary,
    COUNT(*) AS jobs_in_level
FROM
    salaries_raw
GROUP BY
    salary
ORDER BY
    jobs_in_level DESC;

--1d)
SELECT
    ROUND(AVG(salary_in_usd)) AS mean_salary,
    MEDIAN (salary_in_usd) AS median_salary
FROM
    salaries_raw
WHERE
    Experience_level = 'SE';

--1e)
SELECT
    job_title,
    MEDIAN (salary_in_usd) AS median_salary
FROM
    salaries_raw
GROUP BY
    job_title
ORDER BY
    median_salary DESC
LIMIT
    15;

--1f)
SELECT
    remote_ratio,
    COUNT(*) AS job_count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage_of_jobs
FROM
    salaries_raw
GROUP BY
    remote_ratio
ORDER BY
    remote_ratio;

--1g)
SELECT
    company_size,
    count(*) AS n_jobs,
    MEDIAN (salary_in_usd) AS median_salary,
    AVG(salary_in_usd) AS avg_salary
FROM
    salaries_raw
WHERE
    job_title = 'Data Engineer'
GROUP BY
    company_size
ORDER BY
    company_size;

--1h)
SELECT
    company_location,
    AVG(salary_in_usd) AS mean_salary,
    PERCENTILE_CONT(0.5) WITHIN GROUP (
        ORDER BY
            salary_in_usd
    ) AS median_salary,
    COUNT(*) AS n
FROM
    salaries_raw
GROUP BY
    company_location
ORDER BY
    median_salary DESC
LIMIT
    20;