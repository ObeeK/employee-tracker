
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE  employees;

-- creating database 

-- department table Created ================================================================================
CREATE TABLE department (
-- columns
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL UNIQUE
);

-- roles table Created ====================================================================================
CREATE TABLE roles(
-- columns
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INTEGER NOT NULL,
-- Fkeys
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

-- employee table Created ==================================================================================
CREATE TABLE employee(
-- columns
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER,
-- Fkeys
  CONSTRAINT fk_roles FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
  CONSTRAINT fk_employee FOREIGN KEY (manager_id) REFERENCES employee(id)
);

