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

SELECT name AS Имя, last_name AS Фамилия FROM employee ORDER BY last_name, name;

SELECT * FROM employee WHERE age < 30 OR age > 50;

SELECT * FROM employee WHERE age > 30 AND age < 50;

SELECT name, last_name, age FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee ORDER BY last_name DESC, name;

SELECT * FROM employee WHERE length(name) > 4 ORDER BY length(name) DESC, id;

UPDATE employee SET name='Alex' WHERE name='Semen' OR name='Nikolay';

UPDATE employee SET name='Dasha' WHERE last_name='Petrova';

SELECT * FROM employee WHERE name='Alex';

SELECT * FROM employee WHERE name IN ('Dasha');

SELECT name AS Имя, sum(age) AS Суммарный_возраст FROM employee GROUP BY name HAVING count(name) > 1 ORDER BY sum(age) desc;

SELECT name AS youngest_employee, age FROM employee WHERE age = (SELECT min(age) FROM employee);

SELECT name, age FROM employee WHERE age = (SELECT min(age) FROM employee) OR age = (SELECT max(age) FROM employee);

INSERT INTO employee(name, last_name, age) VALUES ('Igor', 'Sidorov', 65);

SELECT * FROM employee WHERE name LIKE ('I%');

SELECT * FROM employee WHERE last_name IN ('Sidorov');

SELECT name, age FROM employee WHERE age = (SELECT max(age) FROM employee);

SELECT name, max(age) FROM employee GROUP BY name HAVING count(name) > 1 ORDER BY max(age);
