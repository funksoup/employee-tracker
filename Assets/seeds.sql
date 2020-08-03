USE database employeeTrackerDB;

INSERT INTO department (name) 
VALUES
    ('Executive'),
    ('Sales and Marketing'),
    ('Engineering'),
    ('Customer Service')
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Chief Troublemaker', 440000, 1),
    ('Growth Hacker', 180000, 2),
    ('Senior Web Engineer', 250000, 3),
    ('Account Manager', 160000, 1),
    ('Chief Accountant', 260000, 5),
    ('Customer Success Manager', 250000, 4),
    ('Chief Counsel', 390000, 6);

INSERT INTO employees
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Alexis', 'Hunt', 1, NULL),
    ('Jane', 'Doe', 2, 1),
    ('Wilson', 'Warrington', 3, NULL),
    ('Blake', 'Smythe', 4, 3),
    ('Ken', 'Singer', 5, NULL),
    ('Ashton', 'Kutcheropolis', 6, 5),
    ('Sarah', 'Malley', 7, NULL),
    ('Thomas', 'Barber', 8, 7);


