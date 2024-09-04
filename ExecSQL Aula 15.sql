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

CREATE DATABASE musicas
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

SELECT p.nome, d.nome 
FROM personagens AS p                   -- AS funciona como u ALIAS para declarar um apelido para a tabela
JOIN desenhos AS d                      -- INNER JOIN || JOIN
ON d.id = p.desenhos_id; 

SELECT al.nome, ar.nome
FROM albuns AS al
JOIN artistas AS ar
ON ar.id = al.artistas_id;

SELECT l.titulo, a.nacionalidade
FROM autores AS a
JOIN livros AS l
ON a.id = l.autores_id;

SELECT p.nome, d.nome 
FROM personagens AS p
LEFT JOIN desenhos AS d                  -- mostra os personagens mesmo sem um desenho atrelado
ON d.id = p.desenhos_id;

SELECT p.nome, d.nome 
FROM personagens AS p
RIGHT JOIN desenhos AS d                 -- mostra os desenhos mesmo sem um personagem atrelado
ON d.id = p.desenhos_id;

SELECT al.nome, ar.nome
FROM albuns AS al
LEFT JOIN artistas AS ar
ON ar.id = al.artistas_id;

SELECT al.nome, ar.nome
FROM albuns AS al
RIGHT JOIN artistas AS ar
ON ar.id = al.artistas_id;

SELECT l.titulo, a.nacionalidade
FROM autores AS a
LEFT JOIN livros AS l
ON a.id = l.autores_id;

SELECT l.titulo, a.nacionalidade
FROM autores AS a
RIGHT JOIN livros AS l
ON a.id = l.autores_id;

SELECT p.nome, d.nome 
FROM personagens AS p
JOIN desenhos AS d
ON d.id = p.desenhos_id && p.idade > 18;

SELECT al.nome, ar.nome
FROM albuns AS al
JOIN artistas AS ar
ON ar.id = al.artistas_id AND al.ano < 2000;

SELECT l.titulo
FROM autores AS a
JOIN livros AS l
ON a.id = l.autores_id && a.nacionalidade = 'Brasil';

SELECT p.nome, d.nome 
FROM personagens AS p
JOIN desenhos AS d
ON d.id = p.desenhos_id
ORDER BY d.nome; 

SELECT al.nome, ar.nome
FROM albuns AS al
JOIN artistas AS ar
ON ar.id = al.artistas_id
ORDER BY al.ano DESC;

SELECT l.titulo, a.nome
FROM autores AS a
JOIN livros AS l
ON a.id = l.autores_id
ORDER BY l.titulo;

SELECT COUNT(d.nome)
FROM personagens AS p
JOIN desenhos AS d
ON d.id = p.desenhos_id; 

SELECT * FROM personagens;
DESC personagens;