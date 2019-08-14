USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ("Led Zeppelin", "Led Zeppelin IV", 1971, 29.0, "Hard Rock"),
       ("Michael Jackson", "Bad", 1987, 19.3, "Pop"),
       ("Alanis Morissette", "Jagged Little Pill", 1995, 24.4, "Alt Rock"),
       ("Celine Dion", "Falling Into You", 1996, 20.2, "Pop"),
       ("The Beatles","Sgt. Pepper''s Lonely Hearts Club Band", 1967, 18.2, "Rock"),
       ("Michael Jackson", "Dangerous", 1991, 17.9, "Rock"),
       ("Adele", "21", 2011, 25.3, "Pop"),
       ("Celine Dion", "Let''s Talk About Love", 1997, 19.3, "Pop"),
       ("The Beatles", "1", 2000, 23.4, "Rock"),
       ("ABBA", "Gold: Greatest Hits", 1992, 23.0, "Pop"),
       ("Madonna", "The Immaculate Collection", 1990, 19.4, "Pop"),
       ("The Beatles", "Abbey Road", 1969, 14.4, "Rock"),
       ("Bruce Springsteen", "Born in the U.S.A.", 1984, 19.6, "Heartland Rock"),
       ("Dire Straits", "Brothers in Arms", 1985, 17.7, "Soft Rock"),
       ("Metallica", "Metallica", 1991, 25.2, "Heavy Metal"),
       ("Nirvana", "Nevermind", 1991, 16.7, "Grunge"),
       ("Pink Floyd", "The Wall", 1979, 18.7, "Progressive Rock"),
       ("Santana", "Supernatural", 1999, 20.5,"Latin Rock"),
       ("Guns ''n Roses", "Appetite For Destruction", 1987, 21.6, "Hard Rock");