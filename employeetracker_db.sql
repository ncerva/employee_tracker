DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;
USE employeetracker_db;

CREATE TABLE employee(
id INT NOT_NULL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT,
manager_id  INT
);
CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
);
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
);
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 200000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 120000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 100000, 2);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Micheal", "Scott", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Stanley", "Hudson", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Creed","Bratton",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Dwight", "Schrute", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jim", "Halpert", 1, 6);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;