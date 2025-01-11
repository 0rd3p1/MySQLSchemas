CREATE DATABASE calculator
DEFAULT CHARSET = utf8mb4;

USE calculator;

CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(20),
passwd VARCHAR(20)
);

CREATE TABLE operations (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idUser INT NOT NULL,
hist VARCHAR(70),
FOREIGN KEY (idUser) REFERENCES users (id)
);

INSERT INTO users VALUES (DEFAULT, 'teste', 'teste');

DELETE FROM users WHERE username = 'teste' AND passwd = 'teste';

SELECT * FROM users;

DROP TABLE users;
DROP DATABASE calculator;