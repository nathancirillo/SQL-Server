--  A expressao CASE...WHEN � muito usada em SQL (similar ao SWITCH...CASE de outras linguagens)
--  Esse recurso � muito usado para a classifica��o de dados. 
--  Antes do case � usado uma consulta SELECT para retornar um valor 


--exemplo 1
SELECT * FROM [TABELA DE PRODUTOS]
SELECT [NOME DO PRODUTO], 
          CASE
            WHEN [PRE�O DE LISTA] >= 12 THEN 'PRODUTO CARO!' 
            WHEN [PRE�O DE LISTA] >= 7 AND [PRE�O DE LISTA]< 12 THEN 'PRODUTO EM CONTA'
            ELSE 'PRODUTO BARATO'
          END          
FROM [TABELA DE PRODUTOS]


--quantas notas fiscais eu vendi por ano?
SELECT YEAR(DATA), COUNT(*) FROM [NOTAS FISCAIS]
GROUP BY YEAR(DATA)


--  exerc�cio: 
--  veja o ano de nascimento dos clientes e classifique-os como: 
--  nascidos antes de 1990 como adultos;
--  nascidos entre 1990 e 1995 como jovens; 
--  nasdicos depois de 1995 como crian�as. 
--  liste o nome do cliente e essa classificac�o. 

SELECT * FROM [TABELA DE CLIENTES]
SELECT NOME, 
       CASE 
          WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'ADULTO'
          WHEN YEAR([DATA DE NASCIMENTO]) <= 1995 AND YEAR([DATA DE NASCIMENTO]) >= 1990 THEN 'JOVEM'
          WHEN YEAR([DATA DE NASCIMENTO]) > 1995 THEN 'CRIAN�A'
       END
FROM [TABELA DE CLIENTES]

