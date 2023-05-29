-- Step 1
-- Connecting both sides of a many-to-many relationship involves JOINing the
-- join table on to one side of the relationship, then JOINing the other side
-- on to the join table.
-- Your code here
SELECT first_name,type FROM musician_instruments
JOIN musicians on (musician_instruments.musician_id=musicians.id)
JOIN instruments on (musician_instruments.instrument_id=instruments.id);