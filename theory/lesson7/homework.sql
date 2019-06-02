-- 1

SELECT * FROM orders WHERE odate = '1990-03-10' ORDER BY amt ASC;

-- 2

SELECT * FROM orders ORDER BY odate DESC LIMIT 2;

-- 3

SELECT c.cname, c.rating, c.city, s.sname FROM customers c, salers s WHERE c.snum = s.snum AND c.rating > 200;

-- 4

SELECT 'Продавец: ', sname, 'Сумма продажи: ', amt, 'Размер комиссионных: ', (amt*comm) AS res FROM salers, orders WHERE salers.snum = orders.snum;