CREATE DATABASE calculator
DEFAULT CHARSET = utf8mb4;

USE calculator;

CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30),
passwd VARCHAR(60)
);

CREATE TABLE hist (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idUser INT NOT NULL,
som VARCHAR(150),
sub VARCHAR(150),
mul VARCHAR(150),
divi VARCHAR(150),
rai VARCHAR(150),
pot VARCHAR(150),
FOREIGN KEY (idUser) REFERENCES users (username)
);

INSERT INTO users VALUES (DEFAULT, 'teste', 'teste');

DELETE FROM users WHERE username = 'teste' AND passwd = 'teste';

SELECT * FROM users;

DROP TABLE users;
DROP DATABASE calculator;