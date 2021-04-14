-- Fun��es matem�ticas: usadas para opera��es num�ricas em geral. 
-- Podemos trabalhar diretamente com express�es num�ricas com par�nteses e retornar o seu resultado. 
-- CEILING: retorna o maior inteiro pr�ximo ao n�mero informado. 
-- FLOOR: retorna o menor inteiro pr�ximo ao n�mero informado. 
-- RAND: gera um n�mero pseudoaleat�rio entre 0 a 1 (podemos passar um seed). 
-- ROUND: arredonda um n�mero com base na precis�o de casas decimais informada. 

SELECT CEILING(12.333223);

SELECT FLOOR(12.833223);

SELECT RAND();

SELECT ROUND(12.559223, 2);

SELECT QUANTIDADE, PRE�O, ROUND((QUANTIDADE * PRE�O),2) AS VALORTOTAL FROM [ITENS NOTAS FISCAIS]

-- Exerc�cio: na tabela de notas fiscais, temos o valor do imposto. J� na tabela de itens, temos
-- a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para
-- o menor inteiro. 

SELECT * FROM [NOTAS FISCAIS];
SELECT * FROM [ITENS NOTAS FISCAIS];

SELECT YEAR(N.DATA), FLOOR(SUM((N.IMPOSTO*(I.[PRE�O] * I.QUANTIDADE)))) IMPOSTO  FROM [NOTAS FISCAIS] N INNER JOIN [ITENS NOTAS FISCAIS] I
ON N.NUMERO = I.NUMERO GROUP BY YEAR(N.DATA) having YEAR(N.DATA) = 2016

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRE�O))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)
