-- 1

SELECT CONCAT(sname, city) FROM salers;

-- 2

SELECT CONCAT(sname, ' ', city) as res FROM salers;

-- 3

SELECT CONCAT_WS(' ', sname, city) AS res FROM salers;

-- 4

SELECT sname, LENGTH(sname) FROM salers;

-- 5
 
SELECT sname, CHAR_LENGTH(sname) FROM salers;

-- 6 

SELECT sname, CHARACTER_LENGTH(sname) FROM salers;

-- 7

SELECT * FROM salers WHERE CHAR_LENGTH(sname) <= 6;

-- 8

SELECT LOCATE('abc', 'dbabcb');

-- 9

SELECT * FROM salers WHERE LOCATE('kin', sname);

-- 10

-- взяти 7 символів зліва

SELECT odate, LEFT(odate, 7) FROM orders;

-- 11

SELECT odate, RIGHT(odate, 3) FROM orders;

-- 12

SELECT SUBSTRING('abcdef', 3);

-- 13

SELECT odate, SUBSTRING(odate, 6) FROM orders;

-- 14

SELECT odate, SUBSTRING(odate, 1, 7) FROM orders;

-- 15

SELECT SUBSTRING_INDEX('http://dev.mysql.com/index.php', '/', 3);

-- 16 

SELECT odate, SUBSTRING_INDEX(odate, '-', 2) FROM orders;

-- 17

SELECT LTRIM('   string');

-- 18

SELECT RTRIM('string   ') as res;

-- 19

SELECT TRIM('   string   ') as res;

-- 20

SELECT TRIM(TRAILING '-10' FROM odate) FROM orders;

-- 21

SELECT TRIM(LEADING '1990-' FROM odate) FROM orders;

-- 22

SELECT TRIM(BOTH 'simple' FROM 'simple string simple');

-- 23

SELECT TRIM(TRIM(BOTH 'simple' FROM 'simple string simple'));

-- 24

SELECT REPLACE('http://www.mysql.com', 'www.', '');

-- 25

SELECT comm, REPLACE(comm, '0.', '') as res FROM salers;

-- 26

SELECT LOWER(sname) FROM salers;

-- 27
SELECT UPPER(sname) FROM salers;