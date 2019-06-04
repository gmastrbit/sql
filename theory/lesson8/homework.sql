-- 1

SELECT sname, CHAR_LENGTH(sname) FROM salers WHERE CHAR_LENGTH(sname) >= 6;

-- 2

SELECT onum, amt, REPLACE(odate, '-', '/') AS odate, cnum, snum FROM orders; 

-- 3

SELECT amt, SUBSTRING_INDEX(amt, '.', 1) AS amt FROM orders;

-- 4

SELECT SUBSTRING_INDEX(REPLACE(odate, '-', '/'), '/', -2) FROM orders;

-- 5

SELECT * FROM salers WHERE CHAR_LENGTH(sname) <> LENGTH(sname);