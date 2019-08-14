USE codeup_test_db;

SELECT * FROM albums WHERE artist = "pink floyd";
SELECT release_date FROM albums WHERE name = "sgt. pepper''s lonely hearts club band";
SELECT genre FROM albums WHERE name = "nevermind";
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20.0;
SELECT * FROM albums WHERE genre = "rock";