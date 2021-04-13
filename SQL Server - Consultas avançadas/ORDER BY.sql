--ORDER BY = permite ordenar o resultado por um campo numérico ou de texto 
--Após o campo podemos acrescentar asc ou desc (para crescente e decrescente)
--É possível order por dois campos, primeiro é ordenado o primeiro campo e dentro daquele ordenamento é ordenado o segundo
  --ORDER BY campo1, campo2
  
  
  SELECT * FROM [TABELA DE PRODUTOS]
  
  --Ordenando pelo preço em ordem crescente (padrão)
  SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PREÇO DE LISTA]
  
  --Ordenando pelo preço em ordem decrescente
  SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PREÇO DE LISTA] DESC
  
  --Ordenando pelo nome do produto de forma crescente
  SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO]
  
  --Ordenando pelo nome do produto de forma decrescente
  SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO] DESC
  
  --Ordenando por dois campos, primeiro pela embalagem e depois pelo nome do produto 
  SELECT * FROM [TABELA DE PRODUTOS]ORDER BY [EMBALAGEM], [NOME DO PRODUTO]
  
  
  --Qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limão" em quantidade? 1101035
SELECT TOP 1 * FROM [ITENS NOTAS FISCAIS] WHERE [CODIGO DO PRODUTO] = 1101035 ORDER BY QUANTIDADE DESC
SELECT MAX(QUANTIDADE) AS QUANTIDADE_MAXIMA FROM [ITENS NOTAS FISCAIS] WHERE [CODIGO DO PRODUTO] = 1101035  