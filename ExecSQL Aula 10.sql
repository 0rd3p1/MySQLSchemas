CREATE DATABASE escola
DEFAULT CHARSET = utf8mb4;

CREATE TABLE alunos (
id INT NOT NULL AUTO_INCREMENT,
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
id INT NOT NULL AUTO_INCREMENT,
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
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(30),
autor VARCHAR(40),
ano YEAR,
disponivel BOOLEAN,
PRIMARY KEY(id)
); 

INSERT INTO livros VALUES(
DEFAULT, 'Harry Potter 3', 'J. K. Rowling', '1999', FALSE
);

CREATE DATABASE empresa
DEFAULT CHARSET = utf8mb4;

CREATE TABLE funcionarios(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(40),
cargo VARCHAR(10),
salario FLOAT,
admissao DATE,
PRIMARY KEY(id)
); 

INSERT INTO funcionarios VALUES(
DEFAULT, 'Mauricio', 'Faxineiro', 1200, '2018-04-12'
);

CREATE DATABASE cinema
DEFAULT CHARSET = utf8mb4;

CREATE TABLE filmes(
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(30),
diretor VARCHAR(40),
genero VARCHAR(10),
duracao INT,
classificacao CHAR(5),
PRIMARY KEY(id)
); 

INSERT INTO filmes VALUES(
DEFAULT, 'Toy Story 2', 'John Lasseter', 'animacao', 122, 'Livre'
);

CREATE DATABASE musica
DEFAULT CHARSET = utf8mb4;

CREATE TABLE albuns(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20),
artista VARCHAR(40),
ano YEAR,
genero VARCHAR(10),
PRIMARY KEY(id)
); 

INSERT INTO albuns VALUES(
DEFAULT, 'DAYS BEFORE RODEO', 'Travis Scott', 2014, 'Trap'
);

SELECT * FROM albuns;