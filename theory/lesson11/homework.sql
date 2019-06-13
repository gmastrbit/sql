-- 1

SELECT c.cnum, c.cname, o.amt, o.odate FROM customers c, orders o WHERE c.cnum = o.cnum;

-- 2

SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM customers GROUP BY snum HAVING COUNT(snum) = 1);

-- 3

SELECT snum, sname FROM salers WHERE snum = (SELECT snum FROM orders WHERE amt = (SELECT MAX(amt) FROM orders));

-- 4

SELECT snum, sname FROM salers WHERE snum = (SELECT snum FROM orders WHERE amt = (SELECT MIN(amt) FROM orders));

-- 5

SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM orders WHERE amt IN ((SELECT MAX(amt) FROM orders), (SELECT MIN(amt) FROM orders) ));