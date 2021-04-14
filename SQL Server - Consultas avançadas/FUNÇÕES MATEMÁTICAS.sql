-- Funções matemáticas: usadas para operações numéricas em geral. 
-- Podemos trabalhar diretamente com expressões numéricas com parênteses e retornar o seu resultado. 
-- CEILING: retorna o maior inteiro próximo ao número informado. 
-- FLOOR: retorna o menor inteiro próximo ao número informado. 
-- RAND: gera um número pseudoaleatório entre 0 a 1 (podemos passar um seed). 
-- ROUND: arredonda um número com base na precisão de casas decimais informada. 

SELECT CEILING(12.333223);

SELECT FLOOR(12.833223);

SELECT RAND();

SELECT ROUND(12.559223, 2);

SELECT QUANTIDADE, PREÇO, ROUND((QUANTIDADE * PREÇO),2) AS VALORTOTAL FROM [ITENS NOTAS FISCAIS]

-- Exercício: na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos
-- a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para
-- o menor inteiro. 

SELECT * FROM [NOTAS FISCAIS];
SELECT * FROM [ITENS NOTAS FISCAIS];

SELECT YEAR(N.DATA), FLOOR(SUM((N.IMPOSTO*(I.[PREÇO] * I.QUANTIDADE)))) IMPOSTO  FROM [NOTAS FISCAIS] N INNER JOIN [ITENS NOTAS FISCAIS] I
ON N.NUMERO = I.NUMERO GROUP BY YEAR(N.DATA) having YEAR(N.DATA) = 2016

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)
