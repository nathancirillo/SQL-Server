-- Fun��es do tipo data
-- Tipos de datas no SQL Server: time, date, smalldatetime, datetime, datetime2 e datetimeoffset
-- SYSDATETIME = retorna a hora do computador, ou seja, do sistema operacinal. 
-- A diferen�a da fun��o SYSDATETIME para a SYSDATETIMEOFFSET e para a SYSUTCDATETIME � se iremos levar em considera��o a horas, minutos e segundos e o fuso hor�rio. 
-- DATENAME: obt�m o nome da parte da data (cadeia de caracteres)
-- DATEPART: ao inv�s de trazer o nome traz o n�mero da parte da data (valor/n�mero)
-- DAY, MONTH, YEAR: traz os valores espec�ficos de uma data definida

--Permite visualizar a data e a hora do sistema
SELECT SYSDATETIME();

--Permite visualizar a data e a hora do sistema adicionando o fuso hor�rio (-3 quantos fusos hor�rios estou do greenwich)
SELECT SYSDATETIMEOFFSET();

--Permite pegar a data e a hora de greenwich (inglaterra), padr�o 0, n�o levando em considera��o o fuso hor�rio
SELECT SYSUTCDATETIME(); 

-- Permite visualizar a data e a hora do sistema, mas n�o � t�o preciso quanto o SYSDATETIME()
-- Observe que n�o � uma fun��o.
SELECT CURRENT_TIMESTAMP;

-- Pega a data com a precis�o parecida com a do CURRENT_TIMESTAMP
SELECT GETDATE();

-- Pega a data com base no fuso hor�rio padr�o de grenwich (inglaterra). 
SELECT GETUTCDATE();

-- Obt�m o nome de uma parte da data
SELECT DATENAME(MONTH,GETDATE());

-- Obt�m o valor de uma parte da data 
SELECT DATEPART(MONTH, GETDATE());

-- Busca o dia de hoje 
SELECT DAY(GETDATE());

-- Busca o m�s atual
SELECT MONTH(GETDATE());

-- Busca o ano atual 
SELECT YEAR(GETDATE());

-- Formando uma data a partir de suas partes
SELECT DATEFROMPARTS(2021, 04, 14);

-- Formando uma data com precis�o de hora, minuto, segundo e milisegundo 
SELECT DATETIME2FROMPARTS(2021,04,14,12,23,11,120,4);

-- Permite buscar a diferen�a entre duas datas
SELECT DATEDIFF(MONTH, DATEFROMPARTS(2020,09,20), GETDATE());

-- Permite adicionar um valor a data informada
SELECT DATEADD(MONTH, 5, GETDATE());

-- Verifica se o valor � uma data
SELECT ISDATE('14-04-2020')
SELECT ISDATE('31-02-2018')

-- Exemplo de fun��o de data em uma consulta
SELECT CONCAT(DATENAME(DAY, DATA), ' ', DATENAME(MONTH, DATA), ' ', DATENAME(YEAR, DATA)) FROM [NOTAS FISCAIS]

--Exerc�cio: crie uma consulta que mostre o nome e a idade dos clientes
SELECT NOME, CONCAT(DATEDIFF(YEAR,[DATA DE NASCIMENTO],GETDATE()), ' anos.')IDADE FROM [TABELA DE CLIENTES]
