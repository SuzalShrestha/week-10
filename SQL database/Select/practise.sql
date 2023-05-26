--Step 1
SELECT * FROM puppies;
--Step 2
SELECT name FROM puppies;
--Step 3
SELECT * FROM puppies WHERE id=5;
--Step 4
SELECT * FROM puppies WHERE microchipped=1;
--Step 5
SELECT * FROM puppies WHERE weight_lbs>10;
--Step 6
SELECT * FROM puppies WHERE weight_lbs>10 AND microchipped=1;