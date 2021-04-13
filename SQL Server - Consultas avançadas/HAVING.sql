--HAVING � usada para fazer um filtro em consultas que usamos group by 
--Em outras palavras, trata-se de um recurso usado apenas para agrega��es
--Ele deve vir obrigatoriamente ap�s o GROUP BY

--ver o limite de cr�dito agrupado por bairro e estado 
SELECT BAIRRO, ESTADO, SUM([LIMITE DE CREDITO]) AS SOMA_LIMITE FROM [TABELA DE CLIENTES] WHERE [ESTADO] = 'SP' GROUP BY BAIRRO, ESTADO
HAVING SUM([LIMITE DE CREDITO]) >= 140000

--ver limite de cr�dito por estado cujo limite seja maior do que 850000
SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO HAVING SUM([LIMITE DE CREDITO]) > 850000

--ver a soma, o min�mo e o m�ximo valor por embalagem, trazendo apenas aqueles que custam at� 80. 
SELECT EMBALAGEM, SUM([PRE�O DE LISTA]) AS SOMA, MIN([PRE�O DE LISTA]) AS MIN, MAX([PRE�O DE LISTA]) AS MAX  FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80

--ver o valor m�nimo e m�ximo por embalagem que tenham o valor <= 80 e o pre�o maior <=6
SELECT EMBALAGEM, MIN([PRE�O DE LISTA]), MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80 AND MAX([PRE�O DE LISTA]) >= 6