SELECT *
FROM movies
INNER JOIN directors ON movies.directors_id = directors.id  
WHERE directors.id = 2;