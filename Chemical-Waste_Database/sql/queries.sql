-- 6.1
SELECT location
FROM industry
WHERE id = 1;


-- 6.2
SELECT industry_id, chemical_name
FROM EPA
WHERE e_type = 'Pond';

SELECT COUNT(*)
FROM environment
WHERE env_type = 'Pond' AND (chemical_id % 2) != 0;

SELECT chemical_name, e_type, COUNT(*)
FROM EPA
GROUP BY chemical_name, e_type
HAVING industry_id > 1;


-- 6.3
SELECT name, id
FROM chemical as c
WHERE EXISTS
(
SELECT type, id
FROM industry as i
WHERE c.id = i.id
);

SELECT name 
FROM chemical C
WHERE NOT EXISTS
( 
SELECT * 
FROM industry
WHERE id = C.id AND type = 'toxic'
);

SELECT chemical_name, type
FROM EPA
INNER JOIN industry
ON EPA.id = industry.id;

