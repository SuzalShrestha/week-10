--subqueries for list of toys for a cat named Garfield
SELECT toys.name FROM toys WHERE cat_id IN(
SELECT id FROM cats WHERE name='Garfield');
--dynamic insert using subqueries
INSERT INTO toys(name,cat_id)
SELECT 'Pepperoni',id FROM cats WHERE name='Garfield';
--bonus
--1
INSERT INTO toys(name,cat_id)
SELECT "Cat Bed",id FROM cats WHERE birth_year<2013;
--2
INSERT INTO cats_backup
SELECT * FROM cats;