USE codeup_test_db;

SELECT 'All Albums' AS '';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;

SELECT 'Released before 1980' AS '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 where release_date < 1980;

SELECT 'All albums by Michael Jackson' AS '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
