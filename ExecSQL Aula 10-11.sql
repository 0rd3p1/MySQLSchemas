CREATE DATABASE escola
DEFAULT CHARSET = utf8mb4;

CREATE TABLE alunos (
id INT AUTO_INCREMENT,
nome VARCHAR(50),
nascimento DATE,
turma CHAR(2),
email VARCHAR(30),
PRIMARY KEY(id) 
);

INSERT INTO alunos VALUES(
DEFAULT, 'Joao Silva', '2005-03-15', '8A', 'joao.silva@gmail.com'
);

CREATE TABLE professores(
id INT AUTO_INCREMENT,
nome VARCHAR(50),
disciplina VARCHAR(10),
salario DECIMAL(6,2),
PRIMARY KEY(id)
);

INSERT INTO professores VALUES(
DEFAULT, 'Mariana Gomes', 'Portugues', '1200.00' 
);

CREATE DATABASE biblioteca
DEFAULT CHARSET = utf8mb4; 

CREATE TABLE livros(

); 

SELECT * FROM professores;