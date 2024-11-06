CREATE DATABASE crud
DEFAULT CHARSET = utf8mb4;

CREATE TABLE usuario (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50),
username VARCHAR(30),
senha VARCHAR(60),
PRIMARY KEY(id)
);

CREATE TABLE fornecedor (
id INT NOT NULL AUTO_INCREMENT,
razao_social VARCHAR(50),
nome_fantasia VARCHAR(30),
CNPJ INT,
PRIMARY KEY(id)
);

CREATE TABLE produto (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50),
valor FLOAT,
PRIMARY KEY(id)
);

SELECT * FROM usuario;

INSERT INTO usuario VALUES(DEFAULT, 'Pedro', '0rd3p1', 12345);