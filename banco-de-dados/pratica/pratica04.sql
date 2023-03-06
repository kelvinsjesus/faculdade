CREATE DATABASE sptecha;
USE sptecha;
DROP DATABASE sptecha;
CREATE TABLE professor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    especialidade varchar(40) default 'Sem especialidade',
    dtAtual DATETIME default current_timestamp,
    genero char(1), constraint chkGenero CHECK((genero IN ('F', 'M', 'N'))),
    binario tinyint
);

INSERT INTO professor (nome, genero, binario) VALUES
	('Dell Vale', 'M', 0);

SELECT * FROM professor;

INSERT INTO professor (dtAtual) VALUES
	('2023-02-28 09:55:19');
    
INSERT INTO professor (nome, especialidade, binario) VALUES
	('Sukita', 'laranja', '2');

UPDATE professor SET binario = 1
	WHERE id = 3;
    
SELECT * FROM professor;

-- tipagem tinyint 0-255(8 bits, 1 byte, 256 números);
ALTER TABLE professor ADD constraint chkBinario
	CHECK (binario IN (0, 1));
    
-- ESSE COMANDO É PRA DAR ERRO E NÃO INSERIR
INSERT INTO professor (binario) VALUES
	(2);

INSERT INTO professor (especialidade, genero) VALUES
	('guaraná', 'n');
    
-- CONFIGURAR O AUTO_INCREMENT PARA COMEÇAR A PARTIR DE 1000
ALTER TABLE professor auto_increment = 1000;

INSERT INTO professor (nome) VALUES
	('Pepsi');
    
SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN cpf char(11) unique;

UPDATE professor SET cpf = '01234567899'
	WHERE id = 1;
    
-- CRIAR UMA FRASE NA EXIBIÇÃO 
SELECT * FROM professor;
SELECT concat('O professor ', nome, ' tem como gênero ', genero)
	FROM professor;
    
-- ALIAS
SELECT nome AS NomeProfessor FROM professor;
SELECT concat('O professor ', nome, ' tem como gênero ', genero) AS Frase
	FROM professor;

