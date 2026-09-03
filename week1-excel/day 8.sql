DROP TABLE IF EXISTS USERS;

CREATE TABLE IF NOT EXISTS USERS (
	USER_ID SERIAL PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(100) UNIQUE,
	AGE INT,
	CITY VARCHAR(50)
);

SELECT * FROM USERS;

INSERT INTO
	USERS (NAME, EMAIL, AGE, CITY)
VALUES
	('abhi', 'abh1234@hotmail.com', 20, 'Manglore'),
	('bhuvi', 'bhuv1234@gmail.com', 33, 'mumbai'),
	('chandu', 'chan24@hotmail.com', 43, 'hydrabhad'),
	('darshan', 'darsh4@hotmail.com', 21, 'banglore'),
	('harshi', 'harshi34@gmail.com', 23, 'mysore');

ALTER TABLE users
RENAME COLUMN name to user_name;




ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;


ALTER TABLE users
ALTER COLUMN city SET NOT NULL ;

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

INSERT INTO
	USERS (USER_NAME, EMAIL, AGE, CITY)
VALUES
	('manju', 'abh34@hotmail.com', 22, 'Manglore');