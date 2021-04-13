-- UNION: Faz a união de duas ou mais consultas SELECTs. 
-- Para fazer a união é necessário que as colunas consultadas tenham a mesma quantidade e tipo
-- No union se houver registros iguais será apresentado como um único (como se houvesse um DISTINCT)
-- Existe também o UNION ALL não aplicada o DISTINCT no resultado final

-- mostrando os bairros da tabela de clientes e de vendedores
SELECT BAIRRO FROM [TABELA DE CLIENTES]
SELECT BAIRRO FROM [TABELA DE VENDEDORES]

-- utilizando o UNION (não há bairros repetidos)
SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT BAIRRO FROM [TABELA DE VENDEDORES]

-- utilizando o UNION ALL (há bairro repetidos)
SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT BAIRRO FROM [TABELA DE VENDEDORES]

-- simulando um erro, pois os campos não são do mesmo tipo
SELECT DISTINCT BAIRRO, NOME FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT BAIRRO, [DATA ADMISSÃO] FROM [TABELA DE VENDEDORES]

-- identificando a proveniência dos dados com uma constante
SELECT DISTINCT BAIRRO, NOME, 'CLIENTES' FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT BAIRRO, NOME, 'VENDEDORES' FROM [TABELA DE VENDEDORES]