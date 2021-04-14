-- Convers�o de dados: converter os tipos de dados existentes no SQL Server. 
-- As duas fun��es espec�ficas para fazer isso s�o: CAST e CONVERT. 
-- Ambas fazem a mesma coisa, mas o CAST � padr�o SQL, ou seja, existe em todos os outros BDs relacionais. 
-- J� o CONVERT � algo espec�fico do SQL Server. Sendo muito mais poderoso do que o CAST. E pode ser usado para todos os tipos de dados. 

-- Convers�o de data e hora: o n�mero apresentado � o estilo (formato desejado). 
-- Outros estilos poss�veis: 0 ou 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110... 
   SELECT CONVERT(VARCHAR, GETDATE(), 101);
   SELECT CONVERT(VARCHAR, GETDATE(), 113);
   SELECT CONVERT(VARCHAR, GETDATE(), 130);
   
-- Convertendo para decimal com 5 casas
   SELECT CONVERT(decimal(10,5), 193.57);
   
-- N�o � poss�vel concatenar n�meros com strings. � necess�rio converter o n�mero para texto. 
-- O comando abaixo ir� gerar um erro: 
   SELECT 'O pre�o do produto ' + [NOME DO PRODUTO] + ' � ' + [PRE�O DE LISTA] FROM [TABELA DE PRODUTOS]

-- Fazendo a convers�o correta: 
  SELECT 'O pre�o do produto ' + [NOME DO PRODUTO] + ' � ' + CONVERT(VARCHAR,[PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS]

-- Exerc�cio: queremos construir um SQL cujo resultado seja para cada cliente: 
-- "O cliente Jo�o da Silva faturou 120000 no ano de 2016."

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PRE�O]))), ' no ano ',   CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)