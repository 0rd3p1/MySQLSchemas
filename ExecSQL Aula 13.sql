UPDATE alunos
SET turma = '9A'
WHERE id = 3;

DELETE FROM alunos WHERE turma = '8B';

TRUNCATE alunos;

UPDATE alunos
SET email = 'joaosilva@nomoemail.com'
WHERE nome = 'João Silva';

DELETE FROM alunos WHERE id = 5;

UPDATE alunos
SET nascimento = '2004-04-15'
WHERE id = 5;

DELETE FROM alunos WHERE email = NULL;

CREATE TABLE professores (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
disciplina VARCHAR(10),
salario FLOAT,
PRIMARY KEY(id)
);

INSERT INTO professores VALUES 
(DEFAULT, 'Maria', 'ingles', 1200.40),
(DEFAULT, 'Carlos', 'Português', 1200.40),
(DEFAULT, 'Kaique', 'Matematica', 1200.40),
(DEFAULT, 'Figaro', 'Geografia', 1200.40);

UPDATE professores
SET salario = salario * 1.10
WHERE id > 0
LIMIT 2;

DELETE FROM professores WHERE id <= 3;

UPDATE professores
SET cargo = 'gerente'
WHERE salario > 5000;

SELECT * FROM professores;