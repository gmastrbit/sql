-- 1

SELECT 'a' REGEXP 'a';

-- 2

SELECT 'a' REGEXP 'b';

-- 3

SELECT * FROM salers WHERE sname REGEXP '[a-z]';

-- 4

SELECT * FROM salers WHERE sname REGEXP '[а-я]';

-- 5 

SELECT * FROM salers WHERE sname REGEXP '[а-яa-z]';

-- 6

SELECT * FROM salers WHERE sname REGEXP '^s';

-- 7

SELECT * FROM salers WHERE sname REGEXP 'n$';

-- 8

SELECT * FROM salers WHERE NOT sname REGEXP '^r';

-- 9

SELECT * FROM salers WHERE  sname REGEXP '^[^r].*';

-- 10

SELECT * FROM salers WHERE  sname REGEXP '[^r]*';

-- 11

SELECT * FROM salers WHERE  sname REGEXP '[r]{2}';

-- 12

SELECT * FROM salers WHERE  sname REGEXP '\'';

-- 13

SELECT * FROM salers WHERE  sname REGEXP '(r){2}';

-- 14

SELECT * FROM salers WHERE  sname REGEXP '(rr)';

-- 15

SELECT * FROM salers WHERE  sname REGEXP '(r)+';

-- 16

SELECT comm, ABS(comm) AS res FROM salers;

--  17

SELECT comm, SIGN(comm) AS res FROM salers;

-- 18

SELECT * FROM salers WHERE SIGN(comm) = -1; 

-- 19

SELECT * FROM salers WHERE NOT SIGN(comm); 

-- 20

SELECT MOD(5, 2);

-- 21

SELECT MOD(6, 2);

-- 22

SELECT comm, FLOOR(comm) FROM salers;

-- 23

SELECT comm, CEIL(comm) FROM salers;

-- 24

SELECT ROUND(2.6);

-- 25

SELECT comm, ROUND(comm, 1) FROM salers;

-- 26

SELECT POW(3, 2);

-- 27

SELECT SQRT(25);

-- 28

SELECT RAND();

-- 29

SELECT * FROM salers ORDER BY RAND() LIMIT 3;

-- 30

SELECT comm, TRUNCATE(comm, 1) FROM salers;