-- 1

-- INNER JOIN = JOIN - внутрішнє об'єднання
-- беруться лише зв'язані ряди

-- LEFT OUTER JOIN - ліве зовнішнє об'єдання
-- з лівої таблиці вибираютсья всі дані, а з правої беруться всі дані також, а якщо їх нема, то заміняються на NULL

-- RIGHT OUTER JOIN - праве зовнішнє об'єдання

-- !FULL OUTER JOIN - суміщує LEFT i RIGHT JOIN

-- CROSS JOIN - перехресне об'єднання

SELECT * FROM salers INNER JOIN customers ON customers.snum = salers.snum;

-- 2

SELECT * FROM salers JOIN customers ON customers.snum = salers.snum;

-- 3

SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum;

-- 4

-- об'єднання на основі довідкової цілісності

SELECT s.sname, c.cname, s.city FROM salers s, customers c WHERE c.snum = s.snum; 

-- 5

SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum WHERE s.city = 'London';

-- 6

SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum;

-- 7

SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;

-- 8

-- не працює

SELECT s.sname, c.cname, s.city FROM salers s FULL OUTER JOIN customers c ON c.snum = s.snum;

-- 9

SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum UNION SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;

-- 10

SELECT s.sname, c.cname, s.city FROM salers s CROSS JOIN customers c;

-- 11

-- повнотекстовий пошук

SELECT * FROM customers WHERE MATCH(text) AGAINST('test');

-- 12

-- NATURAL LANGUAGE MODE

SELECT * FROM customers WHERE MATCH(text) AGAINST('программирование');

-- 13

SELECT * FROM customers WHERE MATCH(text) AGAINST('php' IN NATURAL LANGUAGE MODE);

-- 14

-- булевий режим з підтримкою морфології

SELECT * FROM customers WHERE MATCH(text) AGAINST('программ*' IN BOOLEAN MODE);

-- 15

SELECT * FROM customers WHERE MATCH(text) AGAINST('+php -mysql' IN BOOLEAN MODE);

