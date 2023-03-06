-- Criar banco de dados
CREATE DATABASE sprint1;

-- Utilizar o banco de dados
USE sprint1;

-- Exercício 1.
CREATE TABLE atleta (
	idAtleta INT PRIMARY KEY,
	nome VARCHAR(40),
	modalidade VARCHAR(40),
	qtdMedalha INT
);

INSERT INTO atleta VALUES
	(1, 'Gabriel', 'Vôlei', 3),
    (2, 'Leandro', 'Basquete', 7),
    (3, 'Kauan', 'Basquete', 1),
    (4, 'Pâmela', 'Handebol', 3),
    (5, 'Arnaldo', 'Vôlei', 2),
    (6, 'Sofia', 'Handebol', 3);

-- Exibir todos os dados da tabela.
SELECT * FROM atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM atleta WHERE modalidade = 'Vôlei';

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM atleta ORDER BY modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM atleta ORDER BY qtdMedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM atleta WHERE nome LIKE '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM atleta WHERE nome LIKE 'a%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM atleta WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM atleta WHERE nome LIKE '%r_';

-- Eliminar a tabela.
DROP TABLE atleta;


-- Exercício 2.
CREATE TABLE musica (
	idMusica INT PRIMARY KEY,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO musica VALUES
	(1 , 'Sultans Swing', 'Dire Straits', 'Rock'),
    (2 , 'Stairway To Heaven', 'Led Zeppelin', 'Rock'),
    (3 , 'Come Together', 'The Beatles', 'Rock'),
    (4 , 'Let There Be Rock', 'AC/DC', 'Rock'),
    (5 , 'Back In Back', 'AC/DC', 'Rock'),
    (6 , 'Jailbreak', 'AC/DC', 'Rock'),
    (7 , 'The Jack', 'AC/DC', 'Rock'),
    (8 , 'Eu Tenho a Senha', 'João Gomes', 'Piseiro'),
	(9 , 'Dengo', 'João Gomes', 'Piseiro');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM musica WHERE genero = 'Piseiro';

-- d) Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM musica WHERE artista = 'AC/DC';

-- e) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM musica ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM musica ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM musica WHERE titulo LIKE 'l%';

-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM musica WHERE artista LIKE '%s';

-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM musica WHERE genero LIKE '_o%';

-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM musica WHERE titulo LIKE '%n_';

-- k) Elimine a tabela.
DROP TABLE musica;


-- Exercício 3.
CREATE TABLE filme (
	idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO filme VALUES
	(1, 'Avatar', 'Ficção Cientifica', 'James Cameron'),
    (2, 'Matrix Resurrections', 'Ficção Cientifica', 'Lana Wachowski'),
    (3, 'John Wick – De Volta ao Jogo', 'Ação', ' Chad Stahelski'),
    (4, 'Rambo 2 - A Missão', 'Ação', 'George P. Cosmatos'),
    (5, 'O Exterminador Do Futuro', 'Ficção Cientifica', 'James Cameron'),
    (6, 'Donnie Darko', 'Ficção Cientifica', 'Richard Kelly'),
    (7, 'A Era do Gelo 3', 'Aventura', ' Carlos Saldanha'),
    (8, 'Rio', 'Comédia', ' Carlos Saldanha'),
    (9, 'Rio 2', 'Comédia', ' Carlos Saldanha');
    
-- Exibir todos os dados da tabela.
SELECT * FROM filme;

-- Exibir apenas os títulos e os diretores dos filmes.
SELECT titulo, diretor FROM filme;

-- Exibir apenas os dados dos filmes de um determinado gênero.
SELECT * FROM filme WHERE genero = 'Cómedia';

-- Exibir apenas os dados dos filmes de um determinado diretor.
SELECT * FROM filme WHERE diretor = 'James Cameron';

-- Exibir os dados da tabela ordenados pelo título do filme.
SELECT * FROM filme ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
SELECT * FROM filme ORDER BY diretor DESC;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM filme WHERE titulo LIKE 'a%';

-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
SELECT * FROM filme WHERE diretor LIKE '%s';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM filme WHERE genero LIKE '_o%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM filme WHERE titulo LIKE '%i_';

-- Elimine a tabela.
DROP TABLE filme;


-- Exercício 4.
CREATE TABLE professor (
	idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO professor VALUES
	(1, 'Vivian', 'BD', '1983-10-03'),
    (2, 'Caio', 'ALGORITMO', '1988-02-11'),
    (3, 'Kaline', 'SOCIOEMOCIONAL', '1980-05-23'),
    (4, 'Eduardo', 'ARQCOMP', '1984-08-19'),
    (5, 'Fernanda', 'PI', '1999-04-09'),
    (6, 'João', 'ALGORITMO', '1997-09-16'),
    (7, 'Betina', 'SOCIOEMOCIONAL', '1998-11-08'),
	(8, 'Rayssa', 'SOCIOEMOCIONAL', '2000-04-15');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM professor;

-- b) Exibir apenas as especialidades dos professores.
SELECT especialidade FROM professor;

-- c) Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM professor WHERE especialidade = 'BD';

-- d) Exibir os dados da tabela ordenados pelo nome do professor.
SELECT * FROM professor ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM professor ORDER BY dtNasc DESC;

-- f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM professor WHERE nome LIKE 'v%';

-- g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
SELECT * FROM professor WHERE nome LIKE '%a';

-- h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM professor WHERE nome LIKE '_o%';

-- i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM professor WHERE nome LIKE '%n_';

-- j) Elimine a tabela
DROP TABLE professor;

	
-- Exercício 5.
CREATE TABLE curso (
	idCurso INT PRIMARY KEY,
    nome VARCHAR(50),
    sigla CHAR(3),
    coordenador VARCHAR(40)
);

INSERT INTO curso VALUES
	(1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Jerson'),
    (2, 'Sistemas da Informação', 'SIS', 'Alex'),
    (3, 'Ciência da Computação', 'CCO', 'Marise');

-- a) Exibir todos os dados da tabela.
SELECT * FROM curso;

-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM curso WHERE sigla = 'ADS';

-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM curso ORDER BY nom;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM curso ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM curso WHERE nome LIKE 'c%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM curso WHERE nome LIKE '%s';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM curso WHERE nome LIKE '_n%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM curso WHERE nome LIKE '%a_';

-- j) Elimine a tabela.
DROP TABLE curso;


-- Exercicio 6.
CREATE TABLE revista (
	idRevista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

-- Inserir 4 registros na tabela, mas sem informar a categoria.
INSERT INTO revista (nome) VALUES
	('Recreio'),
    ('Veja'),
    ('Vogue'),
    ('Flaunt');
    
-- Exibir todos os dados da tabela.
SELECT * FROM revista;

-- Atualize os dados das categorias das 3 revistas inseridas.
UPDATE revista SET categoria = 'Curiosidade' WHERE idRevista = '1';
UPDATE revista SET categoria = 'Noticia' WHERE idRevista = '2';
UPDATE revista SET categoria = 'Moda' WHERE idRevista = '3';
UPDATE revista SET categoria = 'Moda' WHERE idRevista = '4';

-- Exibir os dados da tabela novamente para verificar se atualizou corretamente.
SELECT * FROM revista;

-- Insira mais 3 registros completos.
INSERT INTO revista (nome, categoria) VALUES
	('Planeta', 'Curiosidade'),
    ('Mobiauto', 'Automotivo'),
    ('Natura', 'Cosmético');
    
-- Exibir novamente os dados da tabela.
SELECT * FROM revista;

-- Exibir a descrição da estrutura da tabela.
DESC revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE revista MODIFY categoria VARCHAR(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15);

-- Exibir os dados da tabela.
SELECT * FROM revista;

-- Excluir a coluna periodicidade da tabela.
ALTER TABLE revista DROP COLUMN periodicidade;

-- Exibir os dados da tabela.
SELECT * FROM revista;

-- EXCLUIR O BANCO DE DADOS SPRINT1 --
DROP DATABASE sprint1;
