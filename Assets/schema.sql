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
  department_id INT(10) NOT NULL,
  INDEX dept_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY  (department_id) REFERENCES  department(id)
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id INT(10) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT(10) NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id),
  manager_id INT(10),
  INDEX manager_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY (id)
);

