USE codeup_test_db;

SELECT name, sales FROM albums;
UPDATE albums
SET sales = (sales * 10);

SELECT name AS album, release_date AS 'Release Date' FROM albums
WHERE release_date <= 1980;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1979;