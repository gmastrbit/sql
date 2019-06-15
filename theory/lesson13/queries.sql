-- 1

-- створення БД
CREATE DATABASE IF NOT EXISTS `sql1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- 2

-- використання певної БД

USE `sql1`;

-- 3 

-- створення таблиць

CREATE TABLE IF NOT EXISTS `customers`(
	`cnum` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
	`cname` varchar(50) NOT NULL,
	`city` varchar(50) NOT NULL,
	`rating` smallint(5) unsigned NOT NULL,
	`snum` smallint(5) unsigned NOT NULL,
	`text` text NOT NULL,
	PRIMARY KEY (`cnum`),
	FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 4

-- створення копії таблиці

CREATE TABLE customers2 SELECT * FROM sql;

-- 4

-- перегляд структури таблиці

DESCRIBE `customers2`;
DESC `customers2`;

-- 5

INSERT INTO `customers2` (cname, city, rating, snum, text) VALUES ("Вася Пупкин", "Васюки", 150, 1002, "Текст");

-- 6 

INSERT INTO customers2 SET cname = 'Вася Пупкин 2', city = 'Васюки', rating = 150, snum = 1002, text = 'some text';

-- 7

UPDATE customers2 SET cname = 'John Doe', city = 'LA' WHERE cnum = 2013;

-- 8

DELETE FROM customers2 WHERE cname = 'Вася Пупкин';

-- 9

DROP TABLE `customers2`;

-- 10

DROP DATABASE `sql2`;