--subqueries for list of toys for a cat named Garfield
SELECT toys.name FROM toys WHERE cat_id IN(
SELECT id FROM cats WHERE name='Garfield');
