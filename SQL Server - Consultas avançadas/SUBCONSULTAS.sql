-- Subconsultas: podemos usar uma subconsulta dentro de uma consulta. 
-- A subconsulta ir� trazer um conjunto de resultados. Esses resultados ser�o aplicados em outra consulta. 

--Consultando o nome e o bairro dos clientes
SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]


--Trazendo somente os clientes cujo bairro exista na tabela de vendedores
SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES] WHERE BAIRRO IN(SELECT BAIRRO FROM [TABELA DE VENDEDORES])

--Buscando o maior pre�o de cada embalagem
SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS VALORMAX FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

-- Utilizando uma subquery para trazer apenas os que possuem os valores m�ximos <= 5
-- Poderia ter esse mesmo comportamento utilizando o HAVING. 
SELECT NOVACONSULTA.EMBALAGEM, NOVACONSULTA.VALORMAX FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS VALORMAX FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM)
NOVACONSULTA WHERE NOVACONSULTA.VALORMAX <= 5

--Qual seria a consulta, usando subconsulta, que seria equivalente a: 
SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016 GROUP BY CPF
HAVING COUNT(*) > 2000

--Resolu��o
SELECT NOVACONSULTA.CPF, NOVACONSULTA.QTD FROM 
(SELECT CPF, YEAR(DATA) DATA, COUNT(*) QTD FROM [NOTAS FISCAIS] GROUP BY CPF, CPF, YEAR(DATA))
NOVACONSULTA WHERE NOVACONSULTA.DATA = 2016 AND NOVACONSULTA.QTD > 2000