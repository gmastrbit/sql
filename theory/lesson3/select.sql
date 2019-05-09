-- 1

-- синтаксично більш правильне оформлення
SELECT * FROM `orders`;

SELECT * FROM orders;
-- вибрати все з таблиці tableName

-- 2
SELECT onum, amt, odate, cnum, snum FROM orders;
-- вибрати все з таблиці tableName

SELECT odate, amt, onum, cnum, snum FROM orders;

-- 3
SELECT amt, odate FROM orders;

-- 4 
SELECT DISTINCT odate FROM orders;

-- 5
SELECT odate, amt FROM orders WHERE odate = '1990-04-10';

-- == 

SELECT odate, amt FROM orders WHERE odate = '19900410';

-- == 

SELECT odate, amt FROM orders WHERE odate = '1990#04#10';

-- == 

SELECT odate, amt FROM orders WHERE odate = '1990.04.10';

-- == 

SELECT odate, amt FROM orders WHERE odate = '1990/04/10';

-- 6

-- встановлення кодування
SET NAMES utf8; 

-- 7

SELECT amt FROM orders WHERE amt > 1000;

-- реляційні оператори або оператори порівняння

-- "="
-- ">"
-- "<"
-- ">="
-- "<="
-- "<>"
-- "!="

-- 8

SELECT sname, city FROM salers WHERE city <> 'London';

-- 9 

SELECT sname, city FROM salers WHERE sname > 'Motika';

-- можна порівнювати і рядки

-- 0123ABCD...Zabcd...zА-Яа-я
-- A < D, A > 3

-- 10

SELECT * FROM orders WHERE odate > '1990-04-10';

-- AND, OR, NOT 

-- 11

SELECT * FROM orders WHERE amt > 1000 AND odate = '1990-06-10';

-- 12

SELECT amt FROM orders WHERE amt > 1000 AND amt < 4000;

-- 13

SELECT * FROM salers WHERE city = 'London' AND comm > 0.11; 

-- 14 

SELECT * FROM salers WHERE city = 'London' OR comm > 0.11; 

-- 15

SELECT * FROM customers WHERE NOT city = 'London';

-- 16

SELECT * FROM orders WHERE NOT ((odate = '10-03-1990' AND snum > 1002) OR amt > 2000.00);