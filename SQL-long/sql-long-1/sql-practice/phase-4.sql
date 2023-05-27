-- Your code here
CREATE TABLE employees(
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT,
    role TEXT
);

CREATE TABLE relationships(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee1_id INTEGER,
    employee2_id INTEGER,
    FOREIGN KEY (employee1_id) REFERENCES Employees(id),
    FOREIGN KEY (employee2_id) REFERENCES Employees(id)
);

CREATE TABLE performance_reviews(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    score INTEGER
);

CREATE TABLE parties(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget INTEGER,
    type TEXT
);

INSERT INTO
    employees(first_name, last_name, department, role)
VALUES
    (
        'Michael',
        'Scott',
        'Management',
        'Regional Manager'
    ),
    (
        'Dwight',
        'Schrute',
        'Sales',
        'Assistant Regional Manager'
    ),
    (
        'Jim',
        'Halpert',
        'Sales',
        'Sales Representative'
    ),
    ('Pam', 'Beesly', 'Sales', 'Receptionist'),
    (
        'Kelly',
        'Kapoor',
        'Product Oversight',
        'Customer Service Representative'
    ),
    (
        'Angela',
        'Martin',
        'Accounting',
        'Head of Accounting'
    ),
    ('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');