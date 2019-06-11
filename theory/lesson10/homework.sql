-- 1

SELECT DATEDIFF('2012-03-18', '2012-03-16');

SELECT TO_DAYS('2007-10-07');

-- 2

SELECT DATEDIFF(MAX(odate), MIN(odate)) FROM orders;

SELECT TO_DAYS(MAX(odate)) - TO_DAYS(MIN(odate)) FROM orders;

-- 3 

SET lc_time_names = 'ru_RU';
SELECT odate, CONCAT(DATE_FORMAT(odate, '%e %M %Y'), ' года') FROM orders;

-- 4 

SELECT DATEDIFF(NOW(), '2012-01-01');

SELECT TO_DAYS(NOW()) - TO_DAYS('2012-01-01');