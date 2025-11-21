--Convert to sek
ALTER TABLE cleaned_salaries
ADD COLUMN salary_sek BIGINT;

UPDATE cleaned_salaries
SET
    salary_sek = salary_in_usd * 11;

-- Divide by 12 to get monthly
ALTER TABLE cleaned_salaries
ADD COLUMN salary_sek_monthly DOUBLE;

UPDATE cleaned_salaries
SET
    salary_sek_monthly = salary_sek / 12;

-- Define low/medium/high/insanely high salary category
ALTER TABLE cleaned_salaries
ADD COLUMN salary_level VARCHAR;

UPDATE cleaned_salaries
SET
    salary_level = CASE
        WHEN salary_sek_monthly < 40000 THEN 'low'
        WHEN salary_sek_monthly < 70000 THEN 'medium'
        WHEN salary_sek_monthly < 100000 THEN 'high'
        ELSE 'insanely_high'
    END;