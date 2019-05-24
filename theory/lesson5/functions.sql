-- Агрегатні функції

-- 1

-- кількість рядів
SELECT COUNT(sname) FROM salers;

-- 2 

SELECT COUNT(city) FROM salers;

-- 3

-- кількість рядів в таблиці
SELECT COUNT(*) FROM salers;

-- 4

-- тільки унікальні значення (кількість)
SELECT COUNT(DISTINCT city) FROM salers;

-- 5 

-- псевдонім
SELECT COUNT(*) AS res FROM salers;

-- 6

SELECT SUM(amt) FROM orders;

-- 7

-- калькулятор
SELECT 18.69 + 767.19 as res;

-- 8

SELECT AVG(amt) FROM orders;

-- 9

SELECT MIN(amt) FROM orders;

-- 10

SELECT MAX(amt) FROM orders;

-- 11

SELECT MIN(sname) FROM salers;

-- 12

SELECT MAX(sname) FROM salers;

-- 13

-- вибрати один запис
SELECT snum, MAX(amt) FROM orders WHERE snum = 1007;

-- 14

-- групування, вибрати всі записи
SELECT snum, MAX(amt) FROM orders GROUP BY snum;

-- 15

-- покаже лише перший результат при повторі
SELECT * FROM orders GROUP BY snum;

-- 16

SELECT snum, MAX(amt) FROM orders GROUP BY snum HAVING MAX(amt) > 2000;

-- 17

SELECT snum, MAX(amt) FROM orders GROUP BY snum HAVING COUNT(snum) > 2;