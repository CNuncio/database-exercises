USE employees;

SHOW TABLES;

DESCRIBE departments;

SELECT * FROM departments;

DESCRIBE dept_emp;

DESCRIBE dept_emp_latest_date;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

USE codeup_test_db;

#Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
ALTER TABLE albums ADD UNIQUE unique_artist_and_name (artist, name);

SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, sales, genre) VALUES ('Michael Jackson', 'Thriller', 1982, 48.9, 'Pop, post-disco, funk, rock');