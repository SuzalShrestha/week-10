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
    score INTEGER,
    FOREIGN KEY (employee_id) REFERENCES Employees(id)
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
    ('Pam', 'Beesly', 'Reception', 'Receptionist'),
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
    (
        'Roy',
        'Anderson',
        'Warehouse',
        'Warehouse Staff'
    );

--Roy and Pam are in relation
INSERT INTO
    relationships (employee1_id, employee2_id)
SELECT
    e1.id,
    e2.id
FROM
    employees e1,
    employees e2
WHERE
    e1.first_name = 'Roy'
    AND e2.first_name = 'Pam';

--ryan is hired in reception
INSERT INTO
    employees(first_name, last_name, department, role)
VALUES
    ('Ryan', 'Howard', 'Reception', 'Temp');

--onsite party is scheduled
INSERT INTO
    parties(budget, type)
VALUES
    (1000, 'onsite');

--dwight performs well
INSERT INTO
    performance_reviews(employee_id, score)
SELECT
    e.id,
    3.3
FROM
    employees e
WHERE
    e.first_name = 'Dwight';

--jim performs well
INSERT INTO
    performance_reviews(employee_id, score)
SELECT
    e.id,
    4.2
FROM
    employees e
WHERE
    e.first_name = 'Jim';

--dwight performance update
UPDATE
    performance_reviews
SET
    score = 9.0
WHERE
    employee_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Dwight'
    );

--jim is promoted
UPDATE
    employees
SET
    role = 'Assistant Regional Manager'
WHERE
    first_name = 'Jim';

--jim performance update
UPDATE
    performance_reviews
SET
    score = 9.3
WHERE
    employee_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Jim'
    );

--ryan is promoted
UPDATE
    employees
SET
    role = 'Sales Representative',
    department = 'Sales'
WHERE
    first_name = 'Ryan';

--onsite party
INSERT INTO
    parties(budget, type)
VALUES
    (2000, 'onsite');

--angela and dwight are in relation
INSERT INTO
    relationships (employee1_id, employee2_id)
SELECT
    e1.id,
    e2.id
FROM
    employees e1,
    employees e2
WHERE
    e1.first_name = 'Angela'
    AND e2.first_name = 'Dwight';

--angela gets performance review
INSERT INTO
    performance_reviews(employee_id, score)
SELECT
    e.id,
    6.2
FROM
    employees e
WHERE
    e.first_name = 'Angela';

--ryan and kelly are in relation
INSERT INTO
    relationships (employee1_id, employee2_id)
SELECT
    e1.id,
    e2.id
FROM
    employees e1,
    employees e2
WHERE
    e1.first_name = 'Ryan'
    AND e2.first_name = 'Kelly';

--onsite party
INSERT INTO
    parties(budget, type)
VALUES
    (50, 'onsite');

--jim moves to another branch
UPDATE
    employees
SET
    department = 'Other'
WHERE
    first_name = 'Jim';

--delete relationships of jim
DELETE FROM
    relationships
WHERE
    employee1_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Jim'
    )
    OR employee2_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Jim'
    );

--delete performance reviews of jim
DELETE FROM
    performance_reviews
WHERE
    employee_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Jim'
    );

--roy and pam are no longer in relation
DELETE FROM
    relationships
WHERE
    employee1_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Roy'
    )
    OR employee2_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Roy'
    );

--pam gets performance review
INSERT INTO
    performance_reviews(employee_id, score)
SELECT
    e.id,
    7.6
FROM
    employees e
WHERE
    e.first_name = 'Pam';

--dwight gets performance review
INSERT INTO
    performance_reviews(employee_id, score)
SELECT
    e.id,
    8.7
FROM
    employees e
WHERE
    e.first_name = 'Dwight';

--ryan quits and leaves the company
DELETE FROM
    employees
WHERE
    first_name = 'Ryan';

DELETE FROM
    relationships
WHERE
    employee1_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Ryan'
    )
    OR employee2_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Ryan'
    );

DELETE FROM
    performance_reviews
WHERE
    employee_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Ryan'
    );

--jim moves back to sales
UPDATE
    employees
SET
    department = 'Sales',
    role = 'Sales Representative'
WHERE
    first_name = 'Jim';

--insert new employee
INSERT INTO
    employees(first_name, last_name, department, role)
VALUES
    (
        'Karen',
        'Filippelli',
        'Sales',
        'Sales Representative'
    );

--karen and jim are in relation
INSERT INTO
    relationships (employee1_id, employee2_id)
SELECT
    e1.id,
    e2.id
FROM
    employees e1,
    employees e2
WHERE
    e1.first_name = 'Karen'
    AND e2.first_name = 'Jim';

--onsite party
INSERT INTO
    parties(budget, type)
VALUES
    (120, 'onsite');

--delete 2nd last party
DELETE FROM
    parties
WHERE
    id =(
        SELECT
            id
        FROM
            parties
        ORDER BY
            id DESC
        LIMIT
            1 OFFSET 1
    );

--offsite party
INSERT INTO
    parties(budget, type)
VALUES
    (300, 'offsite');

--karen and jim are no longer in relation
DELETE FROM
    relationships
WHERE
    employee1_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Karen'
    )
    OR employee2_id =(
        SELECT
            e.id
        FROM
            employees e
        WHERE
            e.first_name = 'Karen'
    );

--pam and jim are in relation
INSERT INTO
    relationships (employee1_id, employee2_id)
SELECT
    e1.id,
    e2.id
FROM
    employees e1,
    employees e2
WHERE
    e1.first_name = 'Pam'
    AND e2.first_name = 'Jim';
    SELECT * FROM employees;
    SELECT * FROM relationships;
    SELECT * FROM performance_reviews;
    SELECT * FROM parties;