-- Find Hermione's cats
-- Your code here
SELECT cats.name FROM cat_owners
JOIN cats ON cats.id = cat_owners.cat_id
JOIN owners ON owners.id = cat_owners.owner_id
WHERE owners.first_name = 'Hermione';