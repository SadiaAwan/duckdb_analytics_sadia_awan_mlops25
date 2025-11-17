--f) Create a new column manager_name from manager_id using the image mapping
ALTER TABLE bike_joined_table
ADD COLUMN manager_name VARCHAR;

UPDATE bike_joined_table
SET
    manager_name = CASE
        WHEN manager_id = 1 THEN 'Amy Andersson'
        WHEN manager_id = 2 THEN 'Bill Berg'
        WHEN manager_id = 5 THEN 'Cathy Larsson'
        WHEN manager_id = 7 THEN 'Davis Lam'
        ELSE NULL
    END;