--FULL JOIN: 
--Retorna todos os registros de todas as tabelas (independente de haver ou não correspondencia em ambas). 
--CROSS JOIN: 
-- Retorna o produto cartesiano das duas tabelas (análise combinatória entre todos os campos). Não é necessário usar o 
-- ON, pois não estamos juntando é apenas uma combinação (usado muito pouco). 

--identificando o que existe em cada uma das tabelas: Clientes e Vendedores
SELECT * FROM [TABELA DE CLIENTES] -- 15 CLIENTES
SELECT * FROM [TABELA DE VENDEDORES] -- 4 VENDEDORES

--mostrando todos os bairros que possuem clientes e vendedores (7 registros)
SELECT C.BAIRRO, V.BAIRRO FROM [TABELA DE CLIENTES] C INNER JOIN [TABELA DE VENDEDORES] V
ON C.BAIRRO = V.BAIRRO

--buscando todos os vendedores e os clientes por região
SELECT V.BAIRRO AS ENDVENDEDOR, V.NOME, C.BAIRRO AS ENDCLIENTE, C.NOME FROM [TABELA DE VENDEDORES] V LEFT JOIN [TABELA DE CLIENTES]C
ON V.BAIRRO = C.BAIRRO

--buscando todos os clientes e os vendedores por região (inverteu)
--mostra todos os clientes que não vendedores por área geográfica (8 clientes).  
SELECT V.BAIRRO AS ENDVENDEDOR, V.NOME, C.BAIRRO AS ENDCLIENTE, C.NOME FROM [TABELA DE VENDEDORES] V RIGHT JOIN [TABELA DE CLIENTES]C
ON V.BAIRRO = C.BAIRRO

-- full join iremos ver o resultado de todas as consultas. 
-- é como se estivessemos usando o left, right e inner juntos. 
SELECT V.BAIRRO AS ENDVENDEDOR, V.NOME, C.BAIRRO AS ENDCLIENTE, C.NOME FROM [TABELA DE VENDEDORES] V FULL JOIN [TABELA DE CLIENTES]C
ON V.BAIRRO = C.BAIRRO

--cross join é a junção de todo mundo com todo mundo. 
SELECT V.BAIRRO, C.BAIRRO FROM [TABELA DE VENDEDORES] V CROSS JOIN [TABELA DE CLIENTES] C
