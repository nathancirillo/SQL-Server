-- FUNÇÕES: podem variar de acordo com o banco de dados relacional que está sendo utilizado. 
-- As funções abaixo são de strings podendo essas ser constantes ou um campo da tabela: 
-- LTRIM: tira o espaço existente no início da palavra. 
-- RTRIM: tira o espaço existente no final da palavra. 
-- LEFT: retorna X caracteres do lado esquerdo (início) da palavra. 
-- RIGHT: retorna X caracteres do lado direito (final) da palavra. 
-- CONCAT: permite concatenar duas strings (juntar). 
-- SUBSTRING: pega apenas um pedaço da minha string. Informa a string, posição inicial e posição final. 
-- LEN: devolve o número de caracteres dentro da string (tamanho). 
-- UPPER: transforma de minúsculas para maiúsculas a string. 
-- LOWER: transforma de maiúscula para minúscula a string. 
-- REPLACE: substitui uma determinada string por outra. 

SELECT LTRIM('           OLÁ!')

SELECT RTRIM('OLÁ!           ')

SELECT CONCAT('OLÁ, ', 'TUDO BEM?')

SELECT 'OLÁ, ' + 'TUDO BEM?'

SELECT LEFT('RUA AUGUSTA', 3)

SELECT RIGHT('RUA AUGUSTA', 7)

SELECT UPPER('rua augusta')

SELECT LOWER('RUA AUGUSTA')

SELECT REPLACE('R. AUGUSTA', 'R. ', 'RUA ')

SELECT SUBSTRING('RUA AUGUSTA', 1, 3)

SELECT LEN('RUA AUGUSTA')

--Exemplo de funções em consultas
SELECT CONCAT(NOME, ' (', CPF, ')') FROM [TABELA DE CLIENTES]

-- Faça uma consulta que lista o nome do cliente e o endereço completo (com rua, bairro, cidade e estado)
SELECT NOME, CONCAT([ENDERECO 1],', ', BAIRRO,', ', CIDADE,'/', ESTADO ) FROM [TABELA DE CLIENTES]
