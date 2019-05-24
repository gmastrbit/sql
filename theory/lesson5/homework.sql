-- 1
SELECT * FROM orders where odate IN('1990-03-10', '1990-04-10');

-- 2
SELECT snum FROM salers WHERE sname IN('Peel', 'Motika');
SELECT cname FROM customers WHERE snum IN('1001', '1004');

-- вкладений запит
SELECT cname FROM customers WHERE snum IN(SELECT snum FROM salers WHERE sname IN('Peel', 'Motika'));

-- 3
SELECT cname FROM customers WHERE cname BETWEEN 'A' AND 'H';

-- 4
SELECT sname FROM salers WHERE sname LIKE 'C%';

-- 5
SELECT sname FROM salers WHERE sname LIKE 'D%' AND sname LIKE '%n';
	
SELECT sname FROM salers WHERE sname LIKE 'D%n';

-- 6
SELECT sname FROM salers WHERE sname LIKE '%n' AND sname NOT LIKE 'D%';

-- 7 
SELECT * FROM salers where sname IS NULL;