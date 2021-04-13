-- Comando DISTINCT mostrar� os registros sem repeti��o.
-- Em outras palavras, os resultados �nicos (varia de acordo com o resultado/combina��es). 
-- No Exemplo abaixo estou buscando as combina��es �nicas de embalagem e tamanho. 
-- Tamb�m � poss�vel utilizar distinct com where.
SELECT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] --31 REGISTROS
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] --6 REGISTROS
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Laranja' -- 5 REGISTROS
