CREATE DATABASE ecommerce
DEFAULT CHARSET = utf8mb4;

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

ALTER TABLE clientes
ADD COLUMN email VARCHAR(30) FIRST,
ADD COLUMN telefone INT;

ALTER TABLE clientes
MODIFY COLUMN telefone INT8 UNSIGNED;

INSERT INTO clientes VALUES(
'gabies099@gamil.com', DEFAULT, 'Gabriela', 51928478329
);

ALTER TABLE clientes 
RENAME usuarios;

CREATE DATABASE livraria
DEFAULT CHARSET = utf8mb4;

CREATE TABLE livros (
titulo VARCHAR(20),
autor VARCHAR(30),
ano YEAR
);

ALTER TABLE livros
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY(id);

ALTER TABLE livros
ADD COLUMN estoque INT 
DEFAULT 0;

INSERT INTO livros VALUES(
DEFAULT, 'Harry Potter 3', 'J. K. Rowling', '1999', DEFAULT
);

DROP TABLE IF EXISTS livros;

CREATE DATABASE rh
DEFAULT CHARSET = utf8mb4;

CREATE TABLE funcionarios (
nome VARCHAR(30),
cargo VARCHAR(10),
salario FLOAT
);

ALTER TABLE funcionarios
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY(id);

INSERT INTO funcionarios VALUES(
DEFAULT, 'Marcelo', 'Piloto', 8250.40
);

ALTER TABLE funcionarios
CHANGE COLUMN salario remuneração FLOAT;

CREATE DATABASE streaming
DEFAULT CHARSET = utf8mb4;

CREATE TABLE series (
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(25),
genero VARCHAR(10),
temporadas INT,
PRIMARY KEY(id)
);

INSERT INTO series VALUES(
DEFAULT, 'Family Guy', 'Comédia', 22
);

CREATE DATABASE restaurante
DEFAULT CHARSET = utf8mb4;

CREATE TABLE pratos (
nome VARCHAR(15),
descricao TEXT,
preco FLOAT
);

ALTER TABLE pratos
ADD COLUMN id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(id);

SELECT * FROM pratos;