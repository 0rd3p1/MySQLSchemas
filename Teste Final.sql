-- EMPRESA

SELECT nome FROM funcionarios;

SELECT f.nome, f.cargo 
FROM funcionarios AS f
JOIN departamentos AS d
ON f.departamento_id = 2;

SELECT d.nome, COUNT(*) funcionarios
FROM departamentos AS d
RIGHT JOIN funcionarios AS f
ON d.id = f.departamento_id
GROUP BY d.nome;

SELECT f.nome, d.nome 
FROM funcionarios AS f
RIGHT JOIN departamentos AS d
ON f.departamento_id = d.id;

SELECT nome 
FROM funcionarios
WHERE salario > 5000;

SELECT f.nome 
FROM funcionarios AS f
JOIN departamentos AS d
ON f.departamento_id = 2 || 1;

SELECT nome 
FROM funcionarios
WHERE admicao BETWEEN '2020-01-01' AND '2022-12-31';

SELECT nome 
FROM funcionarios
WHERE nome LIKE 'M%';

SELECT DISTINCT cargo FROM funcionarios;

SELECT AVG(salario) FROM funcionarios;

SELECT MAX(salario) FROM funcionarios;

ALTER TABLE funcionarios
ADD COLUMN count_func INT;
SELECT d.nome, COUNT(*) count_func
FROM departamentos AS d
JOIN funcionarios AS f
ON d.id = f.departamento_id
GROUP BY d.nome
HAVING count_func > 10;

UPDATE funcionarios
SET cargo = 'Analista de Sistemas'
WHERE id = 5;

DELETE FROM funcionarios
WHERE id = 10;

-- CARRO

SELECT marca, modelo FROM carros;

SELECT p.nome, c.marca, c.modelo
FROM proprietarios AS p
JOIN carros AS c
ON p.id = c.proprietario_id;

SELECT marca, modelo 
FROM carros
WHERE ano < 2010;

SELECT p.nome 
FROM proprietarios AS p
JOIN carros AS c
ON c.marca = 'Toyota';

SELECT marca, COUNT(*) carros
FROM carros
GROUP BY marca; 

ALTER TABLE carros
ADD COLUMN count_cars INT;
SELECT marca, COUNT(*) count_cars
FROM carros
GROUP BY marca
HAVING count_cars > 5;

SELECT * FROM carros;

UPDATE carros
SET ano = 2015
WHERE id = 3;

DELETE FROM carros 
WHERE id = 7;

-- COMPUTADOR

SELECT modelo, processador FROM computadores;

SELECT u.nome, c.marca, c.modelo
FROM usuarios AS u
JOIN computadores AS c
ON u.id = c.usuario_id;

SELECT * FROM computadores
WHERE memoria_ram > 8;

SELECT u.nome
FROM usuarios AS u
JOIN computadores AS c
ON c.marca = 'Dell';

SELECT marca, COUNT(*) computadores
FROM computadores
GROUP BY marca;

ALTER TABLE comptuadores
ADD COLUMN count_comp INT;
SELECT marca, COUNT(*) count_comp
FROM computadores
GROUP BY marca
HAVING count_comp < 3;

UPDATE computadores
SET processador = 'Intel Core i7'
WHERE id = 2;

DELETE FROM computadores 
WHERE id = 6;

-- CELULAR

SELECT marca, modelo FROM celulares;

SELECT p.nome, c.* 
FROM proprietarios AS p
JOIN celulares AS c
ON p.id = c.proprietario_id;

SELECT * FROM celulares
WHERE sistema_operacional = 'Android';

SELECT p.nome
FROM proprietatios AS p
JOIN celulares AS c
ON c.marca = 'Samsung';

SELECT sistema_operacional, COUNT(*) celulares
FROM celulares
GROUP BY sistema_operacional;

ALTER TABLE celulares
ADD COLUMN count_cel INT;
SELECT sistema_operacional, COUNT(*) count_cel
FROM celulares
GROUP BY sistema_operacional
HAVING count_cel > 10;

UPDATE celulares
SET sistema_operacional = 'IOS'
WHERE id = 4;

DELETE FROM celulares 
WHERE id = 9;

-- REDES SOCIAIS

SELECT nome, email FROM usuarios;

SELECT conteudo, data_publicacao FROM posts;

SELECT u.nome, p.conteudo
FROM usuarios AS u
JOIN posts AS p
ON p.usuarios_id = u.id;

SELECT p.conteudo, c.conteudo 
FROM posts AS p
JOIN comentarios AS c
ON p.id = c.post_id;

SELECT conteudo FROM posts
WHERE data_publicacao < '2023-01-01';

SELECT u.nome, c.conteudo 
FROM usuarios AS u
JOIN comentatios AS c
ON c.usuario_id = u.id;

SELECT u.nome, COUNT(*) posts
FROM usuarios AS u
JOIN posts AS p
ON p.usuario_id = u.id
GROUP BY u.nome;

ALTER TABLE comentarios
ADD COLUMN count_coments INT;
SELECT u.nome, COUNT(*) count_coments
FROM usuarios AS u
JOIN comentarios AS c           
ON u.id = c.usuario_id
GROUP BY u.nome
HAVING count_coments > 5;

UPDATE posts
SET conteudo = '???'
WHERE id = 2;

DELETE FROM comentarios
WHERE post_id = 1;

DELETE FROM comentarios
WHERE usuario_id = 1;
DELETE FROM posts
WHERE usuario_id = 1;

SELECT * FROM comentarios;