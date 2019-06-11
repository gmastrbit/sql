-- 1 

-- об'єднання таблиці з собою
-- отримуємо пари замовників з однаковим рейтингом
-- збитковий запит

SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating ORDER BY rating;

-- 2

-- без збитковості

SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating AND f.cname > s.cname ORDER BY rating;

-- 3

-- вибір декількох продавців з одного міста

SELECT f.sname, s.sname, s.city FROM salers f, salers s WHERE f.city = s.city AND f.sname < s.sname;

-- 4

-- вкладені запити
-- вибірка всіх клієнтів продавця 

SELECT cname FROM customers WHERE snum = (SELECT snum FROM salers WHERE sname = 'Peel');

-- 5 

-- запит, повертаючий помилку, оскільки в результаті підзапиту є множина

SELECT * FROM orders WHERE snum = (SELECT snum FROM salers WHERE city = 'London'); 

-- error 1242: subquery return more than 1 row

-- 6

-- той же 5 запит, але без помилки

SELECT * FROM orders WHERE snum IN (SELECT snum FROM salers WHERE city = 'London'); 

-- 7 

-- вибірка продавців з більш ніж 1 клієнтом

SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM customers GROUP BY snum HAVING COUNT(snum) > 1);

-- 8

-- вибір продавців без клієнтів

SELECT snum, sname FROM salers WHERE snum NOT IN (SELECT snum FROM customers);

-- 9 

-- відношений підзапит 

-- вибрати всіх клієнтів, які здійснювали покупки в квітні

SELECT * FROM customers c WHERE '1990-04-10' IN (SELECT odate FROM orders o WHERE o.cnum = c.cnum);

-- 10 

-- той же результат, але з об'єднанням таблиць на основі довідкової цілісності

SELECT o.cnum, c.cname, c.city, c.rating, c.snum FROM orders o, customers c WHERE c.cnum = o.cnum AND odate = '1990-04-10';