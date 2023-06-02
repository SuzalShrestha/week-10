--number of cats
SELECT
    COUNT(name) AS count_cats
FROM
    cats;

--youngest cat
SELECT
    cats.name,
    MAX(birth_year)
FROM
    cats;

--oldest cat
SELECT
    cats.name,
    MIN(birth_year)
FROM
    cats;

--bonus
--no of toys per cat
SELECT
    cats.name,
    COUNT(toys.name) AS toys_count
FROM
    toys
    JOIN cats ON toys.cat_id = cats.id
GROUP BY
    cats.name;
--spoiled cats with more than 1 toy
SELECT
    cats.name,
    COUNT(toys.name) AS toys_count
FROM
    toys
    JOIN cats ON toys.cat_id = cats.id
GROUP BY
    cats.name
HAVING
    toys_count > 1;