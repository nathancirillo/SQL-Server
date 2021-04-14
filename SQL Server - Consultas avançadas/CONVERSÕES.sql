-- Conversão de dados: converter os tipos de dados existentes no SQL Server. 
-- As duas funções específicas para fazer isso são: CAST e CONVERT. 
-- Ambas fazem a mesma coisa, mas o CAST é padrão SQL, ou seja, existe em todos os outros BDs relacionais. 
-- Já o CONVERT é algo específico do SQL Server. Sendo muito mais poderoso do que o CAST. E pode ser usado para todos os tipos de dados. 

-- Conversão de data e hora: o número apresentado é o estilo (formato desejado). 
-- Outros estilos possíveis: 0 ou 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110... 
   SELECT CONVERT(VARCHAR, GETDATE(), 101);
   SELECT CONVERT(VARCHAR, GETDATE(), 113);
   SELECT CONVERT(VARCHAR, GETDATE(), 130);
   
-- Convertendo para decimal com 5 casas
   SELECT CONVERT(decimal(10,5), 193.57);
   
-- Não é possível concatenar números com strings. É necessário converter o número para texto. 
-- O comando abaixo irá gerar um erro: 
   SELECT 'O preço do produto ' + [NOME DO PRODUTO] + ' é ' + [PREÇO DE LISTA] FROM [TABELA DE PRODUTOS]

-- Fazendo a conversão correta: 
  SELECT 'O preço do produto ' + [NOME DO PRODUTO] + ' é ' + CONVERT(VARCHAR,[PREÇO DE LISTA]) FROM [TABELA DE PRODUTOS]

-- Exercício: queremos construir um SQL cujo resultado seja para cada cliente: 
-- "O cliente João da Silva faturou 120000 no ano de 2016."

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PREÇO]))), ' no ano ',   CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)