DROP DATABASE IF EXISTS flow_test_db;
CREATE DATABASE flow_test_db;
\c flow_test_db;


CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE checked_in(
    patient_id INTEGER REFERENCES patients(id),
    primary_doctor_id INTEGER REFERENCES doctors(id),
    secondar_doctor_id INTEGER REFERENCES doctors(id),
    primary_disease_id INTEGER REFERENCES diseases(id),
    secondary_disease_id INTEGER REFERENCES diseases(id)

);

CREATE TABLE regions(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE,
    pref_region INTEGER REFERENCES regions(id)
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id),
    region_id INTEGER REFERENCES regions(id),
    category_id INTEGER REFERENCES categories(id)
);

CREATE TABlE teams(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    wins INTEGER
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    team_id INTEGER REFERENCES teams(id)
);

CREATE TABLE refferees(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE seasons(
    id SERIAL PRIMARY KEY, 
    beggining_date DATE,
    ending_date DATE
);

CREATE TABLE games(
    id SERIAL PRIMARY KEY,
    date DATE,
    team_1 INTEGER REFERENCES teams(id),
    team_2 INTEGER REFERENCES teams(id),
    team_1_score INTEGER,
    team_2_score INTEGER,
    winner_id INTEGER REFERENCES teams(id),
    ref_id INTEGER REFERENCES refferees(id)
);

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    player_id INTEGER REFERENCES players(id)
);



INSERT INTO teams (name, wins) VALUES ('Mean Machines',3), ('Thunder',6), ('Fishsticks',32), ('Finding Delores',4), ('Insert Team Name',6);
INSERT INTO players (first_name, team_id) VALUES ('JAKE',1), ('JAMIE',1), ('LUCAS',5), ('Kayde',5), ('Stormy',2), ('Mr. Meowington',3), ('Mario',4), ('The Rock',4), ('Albert',5), ('Damian',2);
INSERT INTO refferees(first_name, last_name) VALUES ('JEFF', 'MEOWINGTON');
INSERT INTO seasons (beggining_date, ending_date) VALUES ('1990-02-26', '1990-05-12');
INSERT INTO games (team_1, team_2, team_1_score, team_2_score, winner_id, ref_id) VALUES (1,2,2,4,2,1), (4,3,5,6,3,1), (5,2,1,0,5,1);
INSERT INTO goals(game_id, player_id) VALUES (1,4), (2,1), (3,5);

SELECT * FROM teams ORDER BY wins DESC;