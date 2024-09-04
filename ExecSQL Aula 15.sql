CREATE DATABASE desenhos
DEFAULT CHARSET = utf8mb4;

CREATE TABLE personagens (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
idade INT,
desenhos_id INT,
FOREIGN KEY(desenhos_id)
REFERENCES desenhos(id),
PRIMARY KEY(id)
);

CREATE TABLE desenhos (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
criador VARCHAR(30),
ano YEAR,
PRIMARY KEY(id)
);

CREATE DATABASE musica
DEFAULT CHARSET = utf8mb4;

CREATE TABLE artistas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20),
genero VARCHAR(10),
PRIMARY KEY(id)
);

CREATE TABLE albuns (
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(20),
ano YEAR,
artistas_id INT,
FOREIGN KEY(artistas_id)
REFERENCES artistas(id),
PRIMARY KEY(id)
);

CREATE DATABASE livros
DEFAULT CHARSET = utf8mb4;

CREATE TABLE autores (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
nacionalidade VARCHAR(10),
PRIMARY KEY(id)
);

CREATE TABLE livros (
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(20),
genero VARCHAR(10),
autores_id INT,
FOREIGN KEY (autores_id)
REFERENCES autores(id),
PRIMARY KEY(id)
);



SELECT * FROM personagens;
DESC personagens;