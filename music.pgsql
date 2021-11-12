-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE producers(
    id SERIAL PRIMARY KEY,
    producer_name TEXT
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists TEXT[] NOT NULL,
  album TEXT NOT NULL,
  main_producer INTEGER NOT NULL REFERENCES producers(id),
  secondary_producer INTEGER REFERENCES producers(id)
);

INSERT INTO producers(producer_name)
VALUES
    ('Stephen Lironi'),
    ('Dust Brothers'),
    ('Roy Thomas Baker'),
    ('Al Shux');

INSERT INTO songs
  (title, duration_in_seconds, release_date, artists, album, main_producer, secondary_producer)
VALUES
  ('MMMBop', 238, '04-15-1997', '{"Hanson"}', 'Middle of Nowhere', 1,2),
  ('Bohemian Rhapsody', 355, '10-31-1975', '{"Queen"}', 'A Night at the Opera', 1,2),
  ('One Sweet Day', 282, '11-14-1995', '{"Mariah Cary", "Boyz II Men"}', 'Daydream', 1,4),
  ('Shallow', 216, '09-27-2018', '{"Lady Gaga", "Bradley Cooper"}', 'A Star Is Born', 2,2),
  ('How You Remind Me', 223, '08-21-2001', '{"Nickelback"}', 'Silver Side Up', 3,4),
  ('New York State of Mind', 276, '10-20-2009', '{"Jay Z", "Alicia Keys"}', 'The Blueprint 3', 3,1),
  ('Dark Horse', 215, '12-17-2013', '{"Katy Perry", "Juicy J"}', 'Prism', 2,1),
  ('Moves Like Jagger', 201, '06-21-2011', '{"Maroon 5", "Christina Aguilera"}', 'Hands All Over', 3,1),
  ('Complicated', 244, '05-14-2002', '{"Avril Lavigne"}', 'Let Go', 2,1),
  ('Say My Name', 240, '11-07-1999', '{"Destiny''s Child"}', 'The Writing''s on the Wall', 1,3);
