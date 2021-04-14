-- Funções do tipo data
-- Tipos de datas no SQL Server: time, date, smalldatetime, datetime, datetime2 e datetimeoffset
-- SYSDATETIME = retorna a hora do computador, ou seja, do sistema operacinal. 
-- A diferença da função SYSDATETIME para a SYSDATETIMEOFFSET e para a SYSUTCDATETIME é se iremos levar em consideração a horas, minutos e segundos e o fuso horário. 
-- DATENAME: obtém o nome da parte da data (cadeia de caracteres)
-- DATEPART: ao invés de trazer o nome traz o número da parte da data (valor/número)
-- DAY, MONTH, YEAR: traz os valores específicos de uma data definida

--Permite visualizar a data e a hora do sistema
SELECT SYSDATETIME();

--Permite visualizar a data e a hora do sistema adicionando o fuso horário (-3 quantos fusos horários estou do greenwich)
SELECT SYSDATETIMEOFFSET();

--Permite pegar a data e a hora de greenwich (inglaterra), padrão 0, não levando em consideração o fuso horário
SELECT SYSUTCDATETIME(); 

-- Permite visualizar a data e a hora do sistema, mas não é tão preciso quanto o SYSDATETIME()
-- Observe que não é uma função.
SELECT CURRENT_TIMESTAMP;

-- Pega a data com a precisão parecida com a do CURRENT_TIMESTAMP
SELECT GETDATE();

-- Pega a data com base no fuso horário padrão de grenwich (inglaterra). 
SELECT GETUTCDATE();

-- Obtém o nome de uma parte da data
SELECT DATENAME(MONTH,GETDATE());

-- Obtém o valor de uma parte da data 
SELECT DATEPART(MONTH, GETDATE());

-- Busca o dia de hoje 
SELECT DAY(GETDATE());

-- Busca o mês atual
SELECT MONTH(GETDATE());

-- Busca o ano atual 
SELECT YEAR(GETDATE());

-- Formando uma data a partir de suas partes
SELECT DATEFROMPARTS(2021, 04, 14);

-- Formando uma data com precisão de hora, minuto, segundo e milisegundo 
SELECT DATETIME2FROMPARTS(2021,04,14,12,23,11,120,4);

-- Permite buscar a diferença entre duas datas
SELECT DATEDIFF(MONTH, DATEFROMPARTS(2020,09,20), GETDATE());

-- Permite adicionar um valor a data informada
SELECT DATEADD(MONTH, 5, GETDATE());

-- Verifica se o valor é uma data
SELECT ISDATE('14-04-2020')
SELECT ISDATE('31-02-2018')

-- Exemplo de função de data em uma consulta
SELECT CONCAT(DATENAME(DAY, DATA), ' ', DATENAME(MONTH, DATA), ' ', DATENAME(YEAR, DATA)) FROM [NOTAS FISCAIS]

--Exercício: crie uma consulta que mostre o nome e a idade dos clientes
SELECT NOME, CONCAT(DATEDIFF(YEAR,[DATA DE NASCIMENTO],GETDATE()), ' anos.')IDADE FROM [TABELA DE CLIENTES]
