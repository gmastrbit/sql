-- 1
SELECT sname, city FROM salers WHERE city = 'London' OR city = 'New York';

-- 2
SLECT sname, city FROM salers WHERE city IN ('London', 'New York', 'Barcelona');

-- 3
SELECT * FROM salers WHERE comm IN (0.11, 0.12, 0.13, 0.15);

-- 4 
SELECT * FROM salers WHERE comm BETWEEN 0.11 AND 0.15;

-- 5 
SELECT * FROM salers WHERE (comm BETWEEN 0.11 AND 0.15) AND comm NOT IN (0.11, 0.15);

-- 6
SELECT sname FROM salers WHERE sname BETWEEN 'A' and 'N';

-- 7 
SELECT * FROM salers WHERE sname IS NULL;

-- 8
SELECT sname FROM salers WHERE sname IS NOT NULL;

-- 9
SELECT * FROM salers WHERE sname LIKE 'mot%';

-- 10
SELECT * FROM salers WHERE sname LIKE '%kin';

-- 11
SELECT * FROM salers WHERE sname LIKE '%rr%';

-- 12
SELECT * FROM salers WHERE sname LIKE 'P__l';

-- 13
SELECT * FROM salers WHERE sname LIKE '\_';

-- 14
SELECT * FROM salers WHERE sname = 'd\'Art';

-- 15
SELECT * FROM salers WHERE sname LIKE '%fk%';

-- 16
SELECT * FROM salers WHERE sname NOT LIKE '%fk%';