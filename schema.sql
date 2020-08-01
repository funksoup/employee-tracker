DROP DATABASE IF EXISTS employeeTrackerDB;
CREATE database employeeTrackerDB;

USE employeeTrackerDB;

CREATE TABLE department (
  id INT(10) AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT(10) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL(10),
  department_id INT(10),
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id INT(10) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT(10),
  manager_id INT(10),
  PRIMARY KEY (id)
);

