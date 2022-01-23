CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
release_year INTEGER,
rating TEXT,
director TEXT
);

CREATE TABLE cast (
id INTEGER PRIMARY KEY AUTOINCREMENT,
actor TEXT,
character TEXT
);

CREATE TABLE movie_cast (
id INTEGER PRIMARY KEY AUTOINCREMENT,
movie_id INTEGER,
cast_id INTEGER
);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
title,
release_year,
rating,
director
) 
VALUES (
"Batman Begins", 
2005,
"PG-13",
"Christopher Nolan"
),
(
"The Dark Knight",
2008,
"PG-13",
"Christopher Nolan"
),
(
"The Dark Knight Rises",
2012,
"PG-13",
"Christopher Nolan"
);

INSERT INTO cast (
actor,
character
) 
VALUES (
"Christian Bale",
"Bruce Wayne"
),
(
"Michael Caine",
"Alfred"
),
(
"Liam Neeson",
"Ra's Al Ghul"
),
(
"Katie Holmes",
"Rachel Dawes"
),
(
"Gary Oldman",
"Commissioner Gordon"
),
(
"Heath Ledger",
"Joker"
),
(
"Aaron Eckhart",
"Harvey Dent"
),
(
"Maggie Gyllenhaal",
"Rachel Dawes"
),
(
"Tom Hardy",
"Bane"
),
(
"Joseph Gordon-Levitt",
"John Blake"
),
(
"Anne Hathaway",
"Selina Kyle"
);


-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

INSERT INTO movie_cast (
movie_id,
cast_id
)
VALUES (
1,
1
),
(
1,
2
),
(
1,
3
),
(
1,
4
),
(
1,
5
),
(
2,
1
),
(
2,
6
),
(
2,
7
),
(
2,
2
),
(
3,
1
),
(
3,
5
),
(
3,
9
),
(
3,
10
),
(
3,
11
);

-- The SQL statement for the movies output
-- TODO!

SELECT * FROM movies;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

SELECT movies.title, cast.actor, cast.character 
FROM movies 
INNER JOIN movie_cast ON cast.id = movie_cast.cast_id
INNER JOIN movie_cast ON movies.id = movie_cast.movie_id
;


should the movie model have a cast id, since 1 person can be in multiple movies? 
But a movie can have multiple people? so the movie cast model is created to tie them together?
or since 1 movie has multiple people, there should be a movie id under the cast model?