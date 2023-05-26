DROP TABLE IF EXISTS friends;

CREATE TABLE friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

INSERT INTO friends (first_name, last_name)
VALUES
  ('Ryan', 'Pond'),
  ('Sky', 'Tyler'),
  ('Morgan', 'Jones'),
  ('Shannon', 'Noble'),
  ('River', 'Song');

SELECT * FROM friends;
--Solution
--Step 1
UPDATE friends
SET first_name='Ryder',
    last_name='Pond'
WHERE first_name='Ryan' AND last_name='Pond';
SELECT * FROM friends;
--Step 2
UPDATE friends
SET last_name = 'Blue'
WHERE first_name = 'Tyler'
AND last_name = 'Sky';
SELECT * FROM friends;
--Bonus
UPDATE friends
SET first_name='Empty'
WHERE id=5;
SELECT * FROM friends;

