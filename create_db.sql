CREATE DATABASE Jaegers;

CREATE TABLE JaegersTable (
	id SERIAL PRIMARY KEY, 
	modelName TEXT,
	mark TEXT,
	height REAL,
	weight REAL,
	status TEXT,
	origin TEXT,
	launch DATE,
	kaijuKill INTEGER
);