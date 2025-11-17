--Insert rows (example from the pict)

DESC TABLE database_course;

INSERT INTO
    database_course (content, week, content_type)
VALUES
    ('00_intro', 46, 'lecture'),
    ('01_course_structure', 46, 'lecture'),
    ('02_setup_duckdb', 46, 'lecture'),
    ('exercise_0', 46, 'exercise'),
    ('exercise_1', 47, 'exercise'),
    ('exercise_2', 48, 'exercise'),
    ('exercise_3', 49, 'exercise'),
    ('tenta', 51, 'exam');