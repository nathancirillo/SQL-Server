--  GROUP BY: permite agrupar dados por categorias (colunas). 
--  Ao agrupar por um dado é necessário informar o que será feito com os seus valores. 
--  Por exemplo: mostrar o número de clientes da cidade de jundiaí. Agrupo por cidade e conto os clientes. 
--  Podemos dizer que é dividido em visualização e o valor dos registros. 
--  Funções com GROUP BY: SUM, MAX, MIN, AVG E COUNT. 
--  É possível usar WHERE com GROUP BY, porém o WHERE deve vir primeiro. 
--  O campo que estou especificando no GROUP BY deve estar no SELECT


--Somando o limite de crédito por estado 
SELECT ESTADO, SUM([LIMITE DE CREDITO]) AS CREDITO FROM [TABELA DE CLIENTES] GROUP BY ESTADO

--Achando a média de limite de crédito por estado 
SELECT ESTADO, AVG([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

--Encontrando o maior valor por tipo de embalagem
SELECT EMBALAGEM, MAX([PREÇO DE LISTA]) AS MAIOR_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Encontrando o menor valor por tipo de embalagem
SELECT EMBALAGEM, MIN([PREÇO DE LISTA]) AS MAIOR_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Verificando o número de produtos por embalagem
SELECT EMBALAGEM, COUNT(*) AS QTD_PROD FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Identificando o limite de credito por bairro do estado de SP
SELECT BAIRRO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE ESTADO = 'SP' GROUP BY BAIRRO