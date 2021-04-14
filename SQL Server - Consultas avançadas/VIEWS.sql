-- View: é uma tabela lógica, resultado de uma consulta, que pode ser usada depois em qualquer outra consulta. 
-- Todas as funcionalidades que aprendemos anteriormente pode ser aplicada em uma view.
-- Podemos utiilzar views inclusive em joins. Ela funciona como uma tabela normal.

-- Criando uma view
CREATE VIEW VW_EMBALAGENS AS
SELECT EMBALAGEM, MAX([PREÇO DE LISTA]) MAXPRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

-- Utilizando a view criada 
SELECT * FROM VW_EMBALAGENS

-- Utilizando a view na subconsulta anterior
SELECT * FROM VW_EMBALAGENS  WHERE MAXPRECO <=5