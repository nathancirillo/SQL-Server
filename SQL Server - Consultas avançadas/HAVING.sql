--HAVING é usada para fazer um filtro em consultas que usamos group by 
--Em outras palavras, trata-se de um recurso usado apenas para agregações
--Ele deve vir obrigatoriamente após o GROUP BY

--ver o limite de crédito agrupado por bairro e estado 
SELECT BAIRRO, ESTADO, SUM([LIMITE DE CREDITO]) AS SOMA_LIMITE FROM [TABELA DE CLIENTES] WHERE [ESTADO] = 'SP' GROUP BY BAIRRO, ESTADO
HAVING SUM([LIMITE DE CREDITO]) >= 140000

--ver limite de crédito por estado cujo limite seja maior do que 850000
SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO HAVING SUM([LIMITE DE CREDITO]) > 850000

--ver a soma, o minímo e o máximo valor por embalagem, trazendo apenas aqueles que custam até 80. 
SELECT EMBALAGEM, SUM([PREÇO DE LISTA]) AS SOMA, MIN([PREÇO DE LISTA]) AS MIN, MAX([PREÇO DE LISTA]) AS MAX  FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PREÇO DE LISTA]) <= 80

--ver o valor mínimo e máximo por embalagem que tenham o valor <= 80 e o preço maior <=6
SELECT EMBALAGEM, MIN([PREÇO DE LISTA]), MAX([PREÇO DE LISTA]) FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM HAVING SUM([PREÇO DE LISTA]) <= 80 AND MAX([PREÇO DE LISTA]) >= 6