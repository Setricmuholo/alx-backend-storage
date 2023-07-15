-- Script that creates a table users

CREATE TABLE IF NOT EXISTS users(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255),
	country CHAR(2) NOT NULL DEFAULT 'US' CHECK (country IN ('US`', 'CO', 'TN'))
);
