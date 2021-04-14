-- FUN��ES: podem variar de acordo com o banco de dados relacional que est� sendo utilizado. 
-- As fun��es abaixo s�o de strings podendo essas ser constantes ou um campo da tabela: 
-- LTRIM: tira o espa�o existente no in�cio da palavra. 
-- RTRIM: tira o espa�o existente no final da palavra. 
-- LEFT: retorna X caracteres do lado esquerdo (in�cio) da palavra. 
-- RIGHT: retorna X caracteres do lado direito (final) da palavra. 
-- CONCAT: permite concatenar duas strings (juntar). 
-- SUBSTRING: pega apenas um peda�o da minha string. Informa a string, posi��o inicial e posi��o final. 
-- LEN: devolve o n�mero de caracteres dentro da string (tamanho). 
-- UPPER: transforma de min�sculas para mai�sculas a string. 
-- LOWER: transforma de mai�scula para min�scula a string. 
-- REPLACE: substitui uma determinada string por outra. 

SELECT LTRIM('           OL�!')

SELECT RTRIM('OL�!           ')

SELECT CONCAT('OL�, ', 'TUDO BEM?')

SELECT 'OL�, ' + 'TUDO BEM?'

SELECT LEFT('RUA AUGUSTA', 3)

SELECT RIGHT('RUA AUGUSTA', 7)

SELECT UPPER('rua augusta')

SELECT LOWER('RUA AUGUSTA')

SELECT REPLACE('R. AUGUSTA', 'R. ', 'RUA ')

SELECT SUBSTRING('RUA AUGUSTA', 1, 3)

SELECT LEN('RUA AUGUSTA')

--Exemplo de fun��es em consultas
SELECT CONCAT(NOME, ' (', CPF, ')') FROM [TABELA DE CLIENTES]

-- Fa�a uma consulta que lista o nome do cliente e o endere�o completo (com rua, bairro, cidade e estado)
SELECT NOME, CONCAT([ENDERECO 1],', ', BAIRRO,', ', CIDADE,'/', ESTADO ) FROM [TABELA DE CLIENTES]
