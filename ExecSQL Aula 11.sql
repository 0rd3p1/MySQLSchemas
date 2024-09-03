CREATE DATABASE meubanco;

CREATE TABLE tabela (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
endereco VARCHAR(50),
PRIMARY KEY(id) 
) DEFAULT CHARSET = utf8mb4;

ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(30);

ALTER TABLE tabela
DROP COLUMN profissao;

ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(30) FIRST;

ALTER TABLE tabela
ADD COLUMN profissao VARCHAR(30) AFTER id;

ALTER TABLE tabela 
MODIFY COLUMN endereco CHAR(20);                     -- MODIFY troca apenas o tipo de dado

ALTER TABLE tabela
CHANGE COLUMN endereco indreco VARCHAR(20);          -- CHANGE troca o tipo de dado e renomeia também

ALTER TABLE tabela
RENAME TO tabela_teste;

CREATE TABLE IF NOT EXISTS curso (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
ano YEAR DEFAULT '2024'
) DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS curso;

SELECT * FROM tabela_teste;                            -- tabela_teste ou tabela