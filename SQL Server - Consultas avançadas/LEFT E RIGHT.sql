-- LEFT JOIN:
-- Retorna todos da tabela da esquerda e somente os correspondentes na da direita. 

-- RIGHT JOIN: 
-- Retorna todos da tabela da direita e somente os correspondentes na da esquerda. 

--Juntando a tabela de clientes com a de notas fiscais (14 registros)
SELECT C.NOME, COUNT(*) FROM [TABELA DE CLIENTES] C INNER JOIN [NOTAS FISCAIS] N
ON C.CPF = N.CPF GROUP BY C.NOME

--Mostrando todos os clientes da base (15 registros)
--Indica que um cliente n�o comprou nada, ou seja, n�o possui nota fiscal. 
SELECT COUNT(*) FROM [TABELA DE CLIENTES]

--Identificando o cliente que n�o possui nota fiscal
--F�bio Carvalho � quem n�o comprou. Retorna 1, pois o COUNT conta o null como registro
SELECT C.NOME, C.CPF, COUNT(*) AS QTDNOTAS  FROM [TABELA DE CLIENTES] C LEFT JOIN [NOTAS FISCAIS] N 
ON C.CPF  = N.CPF GROUP BY C.NOME, C.CPF

--Confirmando se existe notas fiscais no CPF dele. 
SELECT * FROM [NOTAS FISCAIS] WHERE CPF = '95939180787'