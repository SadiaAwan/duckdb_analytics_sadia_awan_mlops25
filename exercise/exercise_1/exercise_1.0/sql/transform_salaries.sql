UPDATE cleaned_salaries
SET
    employment_type = CASE employment_type
        WHEN 'CT' THEN 'Contract'
        WHEN 'FL' THEN 'Freelance'
        WHEN 'PT' THEN 'Part TIME'
        WHEN 'FT' THEN 'Full time'
        ELSE employment_type
    END;

UPDATE cleaned_salaries
SET
    company_size = CASE company_size
        WHEN 'S' THEN 'Small'
        WHEN 'M' THEN 'Medium'
        WHEN 'L' THEN 'Large'
        ELSE company_size
    END;

CREATE
OR REPLACE TABLE cleaned_salaries AS
SELECT
    experience_level,
    employment_type,
    job_title,
    salary_sek AS salary_annual_sek,
    salary_sek_monthly AS salary_monthly_sek,
    remote_ratio,
    company_size,
    salary_level
FROM
    cleaned_salaries;