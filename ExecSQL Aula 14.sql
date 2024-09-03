SELECT * FROM produtos;       -- * = tudo da tabela

-- ORDER BY 

SELECT * FROM produtos
ORDER BY preco;               -- ORDER BY ??? DESC = para ordem decrescente

-- WHERE

SELECT * FROM produtos
WHERE preco < 40;

-- SELECT com mais colunas

SELECT id, preco FROM produtos
WHERE preco > 10 && id > 3;          -- && = AND

-- BETWEEN

SELECT * FROM produtos
WHERE id BETWEEN 2 AND 4;

-- IN

SELECT nome, preco FROM produtos
WHERE preco IN(9.90) AND (29.90);            -- NAO FUNCIONOU

-- LIKE: _ = coringa para cada posicao    % = coringa para as posicoes a seguir

SELECT * FROM produtos
WHERE nome LIKE '%e%';               -- WHERE ??? NOT LIKE '%???%' = para que nao tenha tal componente 

-- DISTINCT 

SELECT DISTINCT preco FROM produtos;

-- Funcoes de Agregacao

SELECT COUNT(*) FROM produtos
WHERE id = 2 || id = 1;

SELECT COUNT(*) FROM produtos
WHERE preco BETWEEN 29.89 AND 29.91;

SELECT MAX(nome) FROM produtos;

SELECT MIN(nome) FROM produtos;

SELECT SUM(preco) FROM produtos;        -- Somatorio

SELECT AVG(preco) FROM produtos;

-- GROUP BY

SELECT COUNT(*), preco FROM produtos
GROUP BY preco;