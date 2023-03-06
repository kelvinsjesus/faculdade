-- AULA 3 - 23/02
-- DDL: DEFINITION (TABLE)
-- DML: MANIPULATION (UPDATE, DELETE, INSERT)

-- TIPAGEM NUMÉRICA
-- INTEIROS (INT)
-- DECIMAIS
/* FLOAT 7 CARACTERES 1234567
DOUBLE 15 CARACTERES 123456789012345
DECIMAL(TOTAL, NÚMEROSAPOSAVIRGULO) 32 CARACTERES
(10,2) 12345678,90
(6,3) 123,456
*/

USE sptecha;

CREATE TABLE pessoa (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
peso float,
altura float,
salario decimal(5,2)
)auto_increment = 100;

DESCRIBE pessoa;

INSERT INTO pessoa VALUES
	(NULL, 'Gabigol', 80.5, 1.78, 100.00),
	(NULL, 'Pipokinha', 60.9, 1.69, 69.69),
	(NULL, 'Roger Guedes', 75, 1.79, 1.99);

SELECT * FROM pessoa;

-- CONSTRAINT CHECK
-- SALARIO >=0
ALTER TABLE pessoa ADD CONSTRAINT CHECK
	(salario >= 0);
    
INSERT INTO pessoa (nome, salario) VALUES
	('Dudu', -13);
    
INSERT INTO pessoa (nome, salario) VALUES
	('Dudu', 2.99);
    
SELECT * FROM pessoa;

/*
CREATE TABLE pessoa (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
peso float,
altura float,
salario decimal(5,2), constraint check (salario >= 0)
)auto_increment = 100;
*/

-- concat()
SELECT concat('O salário do ' , nome, ' é R$',
salario) FROM pessoa WHERE nome = 'Gabigol';

SELECT concat('O salário do ' , nome, ' é R$',
salario) -- apelidando um campo ALIAS (AS)
	AS FRASE
 FROM pessoa WHERE nome = 'Gabigol';

SELECT salario AS Salário FROM pessoa;
SELECT nome AS 'Nome Completo' FROM pessoa;

-- bons estudos!