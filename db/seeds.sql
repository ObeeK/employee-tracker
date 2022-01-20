
-- seeding the database

-- Derpartments rows data ============================================================
INSERT INTO department (department_name)
  VALUES
    ('Finance'),
    ('Marketing'),
    ('Management');

-- Roles rows data ==================================================================
INSERT INTO roles (title, salary, department_id)
  VALUES
    ('CEO', 250000.00, 1),
    ('CPA', 100000.00, 1),
    ('Marketing Manager', 150000.00, 2),
    ('General Manager', 125000.00, 3);

-- Employees rows data ==============================================================
INSERT INTO employee (first_name, last_name, role_id, manager_id)
  VALUES
    ('Claudia', 'Perez', 2, NULL),
    ('Ashley', 'Benson', 1, 1),
    ('Bob', 'Thomas', 2, 2 ),
    ('John', 'Doe', 3, 2);
  
