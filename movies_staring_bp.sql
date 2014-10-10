SELECT movies.*
FROM movies
INNER JOIN actors_movies ON actors_movies.movies_id = movies.id
INNER JOIN actors        ON actors_movies.actors_id = actors.id
WHERE actors.id = 1
ORDER BY movies.name;