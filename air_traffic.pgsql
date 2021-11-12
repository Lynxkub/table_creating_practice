-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE countries(
    id SERIAL PRIMARY KEY,
    country_name TEXT UNIQUE
);

CREATE TABLE airlines(
    id SERIAL PRIMARY KEY,
    airline_name TEXT UNIQUE
);

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline_id INTEGER REFERENCES airlines(id),
  from_city TEXT NOT NULL,
  from_country INTEGER REFERENCES countries(id),
  to_city TEXT NOT NULL,
  to_country INTEGER REFERENCES countries(id)
);

INSERT INTO airlines
    (airline_name)
VALUES
    ('American Airlines'),
    ('Southwest'),
    ('Air Canada'),
    ('British Airways');

INSERT INTO countries
    (country_name)
VALUES 
    ('United States of America'),
    ('Japan'),
    ('Brazil'),
    ('France')

INSERT INTO tickets
  (first_name, last_name, seat, departure, arrival, airline_id, from_city, from_country, to_city, to_country)
VALUES
  ('Jennifer', 'Finch', '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 1 , 'Washington DC', 1, 'Seattle', 1),
  ('Thadeus', 'Gathercoal', '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 1, 'Tokyo', 3, 'London', 2),
  ('Sonja', 'Pauley', '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 2 , 'Los Angeles', 1 , 'Las Vegas', 1),
  ('Jennifer', 'Finch', '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00',  2, 'Seattle', 1, 'Mexico City', 3),
  ('Waneta', 'Skeleton', '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 3, 'Paris', 2, 'Casablanca', 3),
  ('Thadeus', 'Gathercoal', '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 3, 'Dubai', 3, 'Beijing', 2),
  ('Berkie', 'Wycliff', '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 2, 'New York', 1, 'Charlotte', 1),
  ('Alvin', 'Leathes', '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 1, 'Cedar Rapids', 1, 'Chicago', 1),
  ('Berkie', 'Wycliff', '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 1, 'Charlotte', 1, 'New Orleans', 1),
  ('Cory', 'Squibbes', '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 2 , 'Sao Paolo', 2, 'Santiago', 2);