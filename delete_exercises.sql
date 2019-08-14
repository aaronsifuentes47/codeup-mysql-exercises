SELECT 'albums after 1991' AS '';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'disco genres' AS '';
SELECT * FROM albums WHERE genre = "disco";
DELETE FROM albums WHERE genre = "disco";

SELECT '' AS 'albums by Whitney Houston';
SELECT * FROM albums WHERE artist = "whitney houston";
DELETE FROM albums WHERE artist = "whitney houston";