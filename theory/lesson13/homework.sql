-- 1

SELECT s.sname, c.cname, o.amt, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum INNER JOIN orders o ON o.cnum = c.cnum;