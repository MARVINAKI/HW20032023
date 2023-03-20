CREATE TABLE employee(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	age INTEGER NOT NULL
);

INSERT INTO employee(name, last_name, age) VALUES ('Konstantin', 'Ivanov', 34);
INSERT INTO employee(name, last_name, age) VALUES ('Yuri', 'Ivanov', 38);
INSERT INTO employee(name, last_name, age) VALUES ('Dasha', 'Ivanova', 26);
INSERT INTO employee(name, last_name, age) VALUES ('Alex', 'Ivanov', 64);
INSERT INTO employee(name, last_name, age) VALUES ('Nadejda', 'Ivanova', 60);
INSERT INTO employee(name, last_name, age) VALUES ('Ivan', 'Petrov', 25);
INSERT INTO employee(name, last_name, age) VALUES ('Anna', 'Petrova', 22);
INSERT INTO employee(name, last_name, age) VALUES ('Nikolay', 'Petrov', 50);
INSERT INTO employee(name, last_name, age) VALUES ('Olga', 'Petrova', 49);
INSERT INTO employee(name, last_name, age) VALUES ('Semen', 'Petrov', 35);

SELECT * FROM employee;