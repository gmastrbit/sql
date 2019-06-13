-- 1

-- вибірка з таблиці продаців, якщо є клієнти з рейтингом більше 100

-- true 

SELECT * FROM salers WHERE EXISTS (SELECT * FROM customers WHERE rating > 100);

-- 2

-- false

SELECT * FROM salers WHERE EXISTS (SELECT * FROM customers WHERE rating < 100);

-- 3 

-- вибірка продавців з Сан-Хосе тільки в тому випадку, якщо є клієнти з рейтингом більше 100

-- true 

SELECT * FROM salers WHERE city = 'San Jose' AND EXISTS (SELECT cnum FROM customers WHERE rating > 100);

-- false 

SELECT * FROM salers WHERE city = 'San Jose' AND EXISTS (SELECT cnum FROM customers WHERE rating > 300);

-- 4

-- EXISTS з відношеним підзапитом

-- отримуємо продавців, у яких є клієнти

SELECT * FROM salers s WHERE EXISTS (SELECT * FROM customers c WHERE s.snum = c.snum);

-- 5 

SELECT snum, sname FROM salers s WHERE NOT EXISTS (SELECT cnum FROM customers c WHERE s.snum = c.snum);

-- 6

-- UNION вибірка продавців і клієнтів

SELECT snum, sname FROM salers UNION SELECT cnum, cname FROM customers;

-- 7

-- дублікати опускаються (лише повні дублікати)

SELECT snum, city FROM salers UNION SELECT snum, city FROM customers;

-- 8 

-- включення дублікатів

SELECT snum, city FROM salers UNION ALL SELECT snum, city FROM customers;