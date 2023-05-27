-- Your code here
--1
INSERT INTO
    customers(name, phone, email)
VALUES
    ('Rachel', 111111111, 'rachel@gmail.com');

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--2
-- Rachel purchases a coffee
UPDATE
    customers
SET
    points = points + 1
WHERE
    name = 'Rachel';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--3
INSERT INTO
    customers(name, phone, email)
VALUES
    ('Monica', 222222222, 'monica@friends.show'),
('Phoebe', 333333333, 'phoebe@friends');

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--4
-- Phoebe purchases a coffee
UPDATE
    customers
SET
    points = points + 3
WHERE
    name = 'Phoebe';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0),
(0),
(0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--5
--Rachel and Monica each purchase 4 a coffee
UPDATE
    customers
SET
    points = points + 4
WHERE
    name = 'Rachel'
    OR name = 'Monica';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0),
(0),
(0),
(0),
(0),
(0),
(0),
(0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--6
SELECT
    points
FROM
    customers
WHERE
    name = 'Monica';

--7
SELECT
    points
FROM
    customers
WHERE
    name = 'Rachel';

--Rachel wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
UPDATE
    customers
SET
    points = points -10
WHERE
    name = 'Rachel'
    AND points >= 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (1);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--8
INSERT INTO
    customers(name, email)
VALUES
    ('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--9
UPDATE
    customers
SET
    points = points + 6
WHERE
    name = 'Ross';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0),
(0),
(0),
(0),
(0),
(0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--10
UPDATE
    customers
SET
    points = points + 3
WHERE
    name = 'Monica';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0),
(0),
(0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--11
SELECT
    points
FROM
    customers
WHERE
    name = 'Phoebe';

--Redeem Phoebe's points for a coffee if she has enough points.
UPDATE
    customers
SET
    points = points -10
WHERE
    name = 'Phoebe'
    AND points >= 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (1);

--Purchase a coffee for Phoebe if she doesn't have enough points.
UPDATE
    customers
SET
    points = points + 1
WHERE
    name = 'Phoebe'
    AND points < 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0);

--12
--delete ross last 2 coffee orders
DELETE FROM
    coffee_orders
WHERE
    id IN (
        SELECT
            id
        FROM
            coffee_orders
        WHERE
            is_redeemed = 0
        ORDER BY
            id DESC
        LIMIT
            2
    );

--update ross points
UPDATE
    customers
SET
    points = points - 2
WHERE
    name = 'Ross';

--13
UPDATE
    customers
SET
    points = points + 2
WHERE
    name = 'Joey';

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0),
(0);

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--14
SELECT
    points
FROM
    customers
WHERE
    name = 'Monica';

--Redeem Monica's points for a coffee if she has enough points.
UPDATE
    customers
SET
    points = points -10
WHERE
    name = 'Monica'
    AND points >= 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (1);

--Purchase a coffee for Monica if she doesn't have enough points.
UPDATE
    customers
SET
    points = points + 1
WHERE
    name = 'Monica'
    AND points < 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0);

--15
DELETE FROM
    customers
WHERE
    name = 'Chandler';

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;

--16
SELECT
    points
FROM
    customers
WHERE
    name = 'Ross';

--Redeem Ross's points for a coffee if he has enough points.
UPDATE
    customers
SET
    points = points -10
WHERE
    name = 'Ross'
    AND points >= 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (1);

--Purchase a coffee for Ross if he doesn't have enough points.
UPDATE
    customers
SET
    points = points + 1
WHERE
    name = 'Ross'
    AND points < 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0);

--17
SELECT
    points
FROM
    customers
WHERE
    name = 'Joey';

--Redeem Joey's points for a coffee if he has enough points.
UPDATE
    customers
SET
    points = points -10
WHERE
    name = 'Joey'
    AND points >= 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (1);

--Purchase a coffee for Joey if he doesn't have enough points.
UPDATE
    customers
SET
    points = points + 1
WHERE
    name = 'Joey'
    AND points < 10;

INSERT INTO
    coffee_orders(is_redeemed)
VALUES
    (0);

--18
UPDATE
    customers
SET
    email = 'p_as_in_pheobe@friends.show'
WHERE
    name = 'Phoebe';

SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    coffee_orders;