-- create_schema.sql

DROP TABLE IF EXISTS actors_movies;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS actors;

CREATE TABLE directors (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE movies (
  id serial PRIMARY KEY,
  directors_id int8 references directors(id),
  name varchar(50) NOT NULL,
  release_date date DEFAULT current_date
);

CREATE TABLE actors (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE actors_movies (
  id serial PRIMARY KEY,
  actors_id int8 references actors(id),
  movies_id int8 references movies(id)
);
