CREATE DATABASE ecommerce
DEFAULT CHARSET = utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE produtos (
id INT AUTO_INCREMENT,
nome VARCHAR(30),
preco FLOAT,
PRIMARY KEY(id)
);

ALTER TABLE produtos
ADD COLUMN descricao TEXT AFTER nome;

INSERT INTO produtos VALUES (
DEFAULT, 'Camiseta', 'Camiseta de algodao,  tamanho M', 29.90
);

ALTER TABLE produtos
DROP descricao;

CREATE TABLE clientes (
id INT AUTO_INCREMENT,
nome VARCHAR(35),
PRIMARY KEY(id)
);

SELECT * FROM produtos;