USE codeup_test_db;

SELECT 'the name of all albums by Pink Floyd' AS '';
SELECT name FROM albums WHERE artist = 'pink floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date FROM albums WHERE name = 'sgt. pepper''s lonely hearts club band';

SELECT 'The genre of ''Nevermind''' AS '';
SELECT genre FROM albums WHERE name = 'nevermind';

SELECT 'albums that were released in the 1990s' AS '';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'albums that had less than 20 million certified sales' AS '';
SELECT * FROM albums WHERE sales < 20.0;

SELECT 'albums with the genre of Rock' AS '';
SELECT * FROM albums WHERE genre = 'rock';