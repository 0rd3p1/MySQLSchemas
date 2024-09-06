-- EMPRESA

SELECT nome FROM funcionarios;

SELECT f.nome, f.cargo 
FROM funcionarios AS f
JOIN departamentos AS d
ON f.departamento_id = 2;

SELECT d.nome, COUNT(d.id) funcionarios
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

SELECT d.nome, COUNT(f.departamento_id) funcionarios
FROM departamentos AS d
JOIN funcionarios AS f
ON > 10                                      -- TENTATIVA
GROUP BY d.nome;

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

SELECT marca, COUNT(modelo) carros
FROM carros
GROUP BY marca; 

SELECT marca, COUNT(marca) carros
FROM carros
WHERE  > 5                               -- TENTATIVA
GROUP BY marca;

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

SELECT marca, COUNT(marca) computadores
FROM computadores
GROUP BY marca;

SELECT marca, COUNT(marca) computadores
FROM computadores
WHERE  < 3                               -- TENTATIVA
GROUP BY marca;

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

CREATE TABLE proprietarios(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
PRIMARY KEY(id)
);

SELECT * FROM celulares;