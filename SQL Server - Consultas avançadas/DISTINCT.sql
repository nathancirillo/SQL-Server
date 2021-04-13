-- Comando DISTINCT mostrará os registros sem repetição.
-- Em outras palavras, os resultados únicos (varia de acordo com o resultado/combinações). 
-- No Exemplo abaixo estou buscando as combinações únicas de embalagem e tamanho. 
-- Também é possível utilizar distinct com where.
SELECT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] --31 REGISTROS
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] --6 REGISTROS
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Laranja' -- 5 REGISTROS
