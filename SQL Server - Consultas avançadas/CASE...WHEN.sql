--  A expressao CASE...WHEN é muito usada em SQL (similar ao SWITCH...CASE de outras linguagens)
--  Esse recurso é muito usado para a classificação de dados. 
--  Antes do case é usado uma consulta SELECT para retornar um valor 


--exemplo 1
SELECT * FROM [TABELA DE PRODUTOS]
SELECT [NOME DO PRODUTO], 
          CASE
            WHEN [PREÇO DE LISTA] >= 12 THEN 'PRODUTO CARO!' 
            WHEN [PREÇO DE LISTA] >= 7 AND [PREÇO DE LISTA]< 12 THEN 'PRODUTO EM CONTA'
            ELSE 'PRODUTO BARATO'
          END          
FROM [TABELA DE PRODUTOS]


--quantas notas fiscais eu vendi por ano?
SELECT YEAR(DATA), COUNT(*) FROM [NOTAS FISCAIS]
GROUP BY YEAR(DATA)


--  exercício: 
--  veja o ano de nascimento dos clientes e classifique-os como: 
--  nascidos antes de 1990 como adultos;
--  nascidos entre 1990 e 1995 como jovens; 
--  nasdicos depois de 1995 como crianças. 
--  liste o nome do cliente e essa classificacão. 

SELECT * FROM [TABELA DE CLIENTES]
SELECT NOME, 
       CASE 
          WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'ADULTO'
          WHEN YEAR([DATA DE NASCIMENTO]) <= 1995 AND YEAR([DATA DE NASCIMENTO]) >= 1990 THEN 'JOVEM'
          WHEN YEAR([DATA DE NASCIMENTO]) > 1995 THEN 'CRIANÇA'
       END
FROM [TABELA DE CLIENTES]

