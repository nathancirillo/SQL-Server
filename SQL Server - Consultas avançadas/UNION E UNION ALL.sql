-- UNION: Faz a uni�o de duas ou mais consultas SELECTs. 
-- Para fazer a uni�o � necess�rio que as colunas consultadas tenham a mesma quantidade e tipo
-- No union se houver registros iguais ser� apresentado como um �nico (como se houvesse um DISTINCT)
-- Existe tamb�m o UNION ALL n�o aplicada o DISTINCT no resultado final

-- mostrando os bairros da tabela de clientes e de vendedores
SELECT BAIRRO FROM [TABELA DE CLIENTES]
SELECT BAIRRO FROM [TABELA DE VENDEDORES]

-- utilizando o UNION (n�o h� bairros repetidos)
SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT BAIRRO FROM [TABELA DE VENDEDORES]

-- utilizando o UNION ALL (h� bairro repetidos)
SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT BAIRRO FROM [TABELA DE VENDEDORES]

-- simulando um erro, pois os campos n�o s�o do mesmo tipo
SELECT DISTINCT BAIRRO, NOME FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT BAIRRO, [DATA ADMISS�O] FROM [TABELA DE VENDEDORES]

-- identificando a proveni�ncia dos dados com uma constante
SELECT DISTINCT BAIRRO, NOME, 'CLIENTES' FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT BAIRRO, NOME, 'VENDEDORES' FROM [TABELA DE VENDEDORES]