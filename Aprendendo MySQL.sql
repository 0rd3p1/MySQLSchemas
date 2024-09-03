CREATE DATABASE mybank

-- CONTRAINTS : REGRAS
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE pessoas (
id INT NOT NULL AUTO_INCREMENT,                      -- ID para cada usuario
nome VARCHAR(50) NOT NULL,
nascimento DATE,
sexo ENUM('M','F'),
peso DECIMAL(6,3),       -- |1|0|3,|3|0|0            -- 5 espaços de alocamento e 2 é a quantidade de numeros antes das virgulas
altura DECIMAL(3,2),     -- |1,|8|5|
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY(id)                                      -- tornando unico cada ID
)DEFAULT CHARSET = utf8mb4; 

-- INSERINDO DADOS

-- MODO PADRÃO
INSERT INTO pessoas (
id, nome, nascimento, sexo, nacionalidade, peso, altura
)
VALUES (
DEFAULT, 'Irineu', '1990-12-05', 'M', DEFAULT, '80.5', '1.80'
);

-- MODO SIMPLIFICADO
INSERT INTO pessoas VALUES (
DEFAULT, 'Pedro', '2006-05-25', 'F', '190.54', '3.50', 'Asgard'
);

SELECT * FROM pessoas;

-- DESC pessoas;