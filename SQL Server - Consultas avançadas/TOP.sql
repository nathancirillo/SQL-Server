-- A cláusula TOP permite limitar a saída do SQL; 
-- A ideia é apresentar somente uma amostra dos registros; 
-- A limitação é em cima do resultado que a query traz; 
-- Em outras palavras, o SQL Server primeiro resolve a consulta e depois retorna o N primeiros registros. 

SELECT * FROM [TABELA DE PRODUTOS]
SELECT TOP 3 * FROM [TABELA DE PRODUTOS] --são os 3 registros que estão no topo


SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'LARANJA' -- 5 registros
SELECT TOP 3 * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'LARANJA' --trouxe somente os três primeiros registors



--Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter esse resultado?
select top 10 * from [notas fiscais] where data = '01/01/2017'
