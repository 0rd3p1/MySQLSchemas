CREATE DATABASE boate
DEFAULT CHARSET = utf8mb4;

USE boate;

CREATE TABLE usuarios (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
email VARCHAR(50)
) DEFAULT CHARSET = utf8mb4;

INSERT INTO usuarios (nome, email) VALUES
('Wallyson', 'wallyzom23@gmail.com'),
('Caio', 'caiobagamer@gmail.com');

SELECT * FROM usuarios;