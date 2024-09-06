SELECT nome FROM funcionarios
WHERE salario BETWEEN 3000 AND 5000;

SELECT modelo FROM carros
WHERE modelo LIKE '%Civic%' || '%Corolla%';

SELECT usuario FROM pcs
WHERE processador = 'Intel Core i5' && ramGB > 8;

SELECT AVG(idade) FROM personagens;

SELECT f.nome, d.nome 
FROM funcionarios AS f
JOIN departamentos AS d
ON f.id = d.depart_id;

SELECT * FROM personagens;
DESC departamento;