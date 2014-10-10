INSERT INTO directors (id, first, last) VALUES
  (1, 'David', 'Fincher'),
  (2, 'Steven', 'Spielberg'),
  (3, 'Mel', 'Gibson');

INSERT INTO actors (id, first, last) VALUES
  (1, 'Brad', 'Pitt'),
  (2, 'Henry', 'Thomas'),
  (3, 'Mel', 'Gibson'),
  (4, 'Morgan', 'Freeman'),
  (5, 'Sean', 'Astin');

INSERT INTO movies (id, directors_id, name, release_date) VALUES
  (1, 1, 'Fight Club', 'January 21 2014'),
  (2, 2, 'ET', 'March 21 2014'),
  (3, 3, 'Braveheart', 'May 21 2014'),
  (4, 2, 'Goonies', 'April 21 2014');

INSERT INTO actors_movies(movies_id, actors_id) VALUES
  (1, 1),
  (1, 4),
  (2, 2),
  (3, 3),
  (4, 5);
