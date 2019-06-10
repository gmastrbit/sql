-- 1

SELECT amt FROM orders WHERE amt REGEXP '^.{1,6}$';

SELECT amt FROM orders WHERE amt REGEXP '^[0-9]{1,3}\.[0-9]{2}$';

-- 2

SELECT DISTINCT city FROM salers WHERE city REGEXP ' ';

-- 3

SELECT * FROM salers WHERE sname REGEXP '^([a-zA-Z]{1,6}|[а-яА-Я]{1,12})$' AND city REGEXP '^([a-zA-Z]{1,6}|[а-яА-Я]{1,12})$';

SELECT * FROM salers WHERE (sname REGEXP '^[a-z]{1,6}$' AND city REGEXP '^[a-z]{1,6}$') OR (sname REGEXP '^[а-яА-Я]{1,12}$' AND city REGEXP '^[а-яА-Я]{1,12}$');

-- 4

SELECT amt, ROUND(amt,0) FROM orders;

-- 5

SELECT amt, TRUNCATE(amt,0) FROM orders;