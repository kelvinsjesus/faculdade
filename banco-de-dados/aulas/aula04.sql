USE sptecha;

CREATE TABLE professor (
id INT PRIMARY KEY auto_increment,
nome varchar(50),
especialidade varchar(40) default 'Sem especialidade',
dtAtual DATETIME default current_timestamp,
genero CHAR(1), constraint chkGenero 
					CHECK (genero IN ('F', 'M', 'N')),
binario tinyint
);

INSERT INTO professor (nome, genero, binario) VALUES 
	('Dell Vale', 'M', 0);
    
SELECT * FROM professor;

INSERT INTO professor (dtAtual) VALUES
	('2023-02-28 09:55:19');

INSERT INTO professor (nome, especialidade, binario) VALUES
	('Sukita', 'laranja', 2);
    
UPDATE professor SET binario = 1 
	WHERE id = 3;
SELECT * FROM professor;

-- tipagem tinyint 0-255
ALTER TABLE professor ADD constraint chkBinario 
	CHECK (binario IN (0,1));
    
-- O PRÓXIMO COMANDO DARÁ ERRO, SE NÃO ESTÁ ERRADO
INSERT INTO professor (nome, binario) VALUES
	('Coca', 2);
-- Error Code: 3819. Check constraint 'chkBinario' is violated.

SELECT * FROM professor;

INSERT INTO professor (especialidade, genero) VALUES
	('guaraná', 'n');
    
-- CONFIGURAR O AUTO-INCREMENT PARA COMEÇAR A PARTIR DE 1000
ALTER TABLE professor auto_increment = 1000;

INSERT INTO professor (nome) VALUES
	('Coca');
SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN cpf char(11) unique;

UPDATE professor SET cpf = '01234567899' 
	WHERE id = 1;
    
-- o próximo comando dará erro
UPDATE professor SET cpf = '01234567899' 
	WHERE id = 2;
-- Error Code: 1062. Duplicate entry '01234567899' for key 'professor.cpf'

-- CONCAT
-- CRIAR UMA FRASE NA MINHA EXIBIÇÃO

SELECT * FROM professor;
SELECT concat('O professor ', nome, ' tem como gênero ', genero)
	FROM professor;
    
SELECT concat('O professor ', nome, ' tem como gênero ', genero) as Frase
	FROM professor WHERE id = 1;
    
-- ALIAS
SELECT nome AS NomeProfessor FROM professor;
SELECT nome AS 'Nome Professor', genero AS Sexo FROM professor;