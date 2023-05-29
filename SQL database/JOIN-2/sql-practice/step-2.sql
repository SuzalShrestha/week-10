-- Step 2
-- Just like with one-to-many relationships, you can filter one table by any
-- associated data on a conected table.
-- Your code here
SELECT first_name,last_name FROM musician_instruments
JOIN musicians on (musician_instruments.musician_id=musicians.id)
JOIN instruments on (musician_instruments.instrument_id=instruments.id)
WHERE type='piano';