--  GROUP BY: permite agrupar dados por categorias (colunas). 
--  Ao agrupar por um dado � necess�rio informar o que ser� feito com os seus valores. 
--  Por exemplo: mostrar o n�mero de clientes da cidade de jundia�. Agrupo por cidade e conto os clientes. 
--  Podemos dizer que � dividido em visualiza��o e o valor dos registros. 
--  Fun��es com GROUP BY: SUM, MAX, MIN, AVG E COUNT. 
--  � poss�vel usar WHERE com GROUP BY, por�m o WHERE deve vir primeiro. 
--  O campo que estou especificando no GROUP BY deve estar no SELECT


--Somando o limite de cr�dito por estado 
SELECT ESTADO, SUM([LIMITE DE CREDITO]) AS CREDITO FROM [TABELA DE CLIENTES] GROUP BY ESTADO

--Achando a m�dia de limite de cr�dito por estado 
SELECT ESTADO, AVG([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

--Encontrando o maior valor por tipo de embalagem
SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAIOR_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Encontrando o menor valor por tipo de embalagem
SELECT EMBALAGEM, MIN([PRE�O DE LISTA]) AS MAIOR_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Verificando o n�mero de produtos por embalagem
SELECT EMBALAGEM, COUNT(*) AS QTD_PROD FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

--Identificando o limite de credito por bairro do estado de SP
SELECT BAIRRO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE ESTADO = 'SP' GROUP BY BAIRRO