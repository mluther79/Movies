create_schema.sql

CREATE TABLE Movie (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  released_date date NOT NULL, 
);


DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

CREATE TABLE movies (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  date DEFAULT current_date
);

CREATE TABLE directors (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE actors (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE actors_movies (
  id serial PRIMARY KEY,
  actor_id int8 references actor(id),
  movie_id int8 references movie(id)
);