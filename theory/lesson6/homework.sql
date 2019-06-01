-- 1
SELECT SUM(amt) FROM orders;
SELECT COUNT(amt) FROM orders;

SELECT ((SELECT SUM(amt) FROM orders) / (SELECT COUNT(amt) FROM orders)) AS result;

-- 2
SELECT SUM(amt) FROM orders WHERE snum = 1007;

SELECT SUM(amt) FROM orders GROUP BY snum HAVING snum = 1007;

-- 3

SELECT DISTINCT city, MAX(rating) FROM customers GROUP BY city;

-- 4

SELECT DISTINCT city, MIN(comm) FROM salers GROUP BY city;
