CREATE DATABASE julia;
USE julia;

-- EXERCÍCIO 1
CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha INT
);

INSERT INTO atleta VALUES
	('1', 'Luciana', 'judô', '1'),
    ('2', 'Iara', 'ginástica artística', '2'),
    ('3', 'André', 'judô', '4'),
    ('4', 'Beatriz', 'surfe', '2'),
    ('5', 'Vivian', 'surfe', '1'),
    ('6', 'Marcio', 'ginástica artística', '3'),
    ('7', 'Natália', 'judô', '2'),
    ('8', 'Pietro', 'ginástica artística', '1'),
    ('9', 'Gabriel', 'judô', '2');
    
SELECT * FROM atleta;

SELECT nome, qtdMedalha FROM atleta;

SELECT * FROM atleta
WHERE modalidade = 'judô';
    
SELECT * FROM atleta
ORDER BY modalidade ASC;

SELECT * FROM atleta
ORDER BY qtdMedalha DESC;

SELECT * FROM atleta
WHERE nome LIKE '%s%';
    
SELECT * FROM atleta
WHERE nome LIKE 'J%';
    
SELECT * FROM atleta
WHERE nome LIKE '%o';
    
SELECT * FROM atleta
WHERE nome LIKE '%r_';
    
DROP TABLE atleta;


-- EXERCÍCIO 2
USE julia;

CREATE TABLE musica (
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO musica VALUES
	('1', 'Leave', 'Kingfisher', 'indie'),
    ('2', 'Reveal', 'Sybaris', 'indie'),
    ('3', 'Fake ID', 'Big & Rich', 'country'),
    ('4', 'Memory Lane', 'Old Domination', 'country'),
    ('5', 'Swarm of Fish', 'Pianopassion', 'clássico'),
    ('6', 'Luminary', 'Joel Sunny', 'clássico'),
    ('7', 'Clareou', 'Xande de Pilares', 'pagode');

SELECT * FROM musica;

SELECT titulo, artista FROM musica;

SELECT * FROM musica
WHERE genero = 'country';

SELECT * FROM musica
WHERE artista = 'Kingfisher';

SELECT * FROM musica
ORDER BY titulo ASC;

SELECT * FROM musica
ORDER BY artista DESC;

SELECT * FROM musica
WHERE titulo LIKE 'L%';

SELECT * FROM musica
WHERE artista LIKE '%n';

SELECT * FROM musica
WHERE genero LIKE '_n%';

SELECT * FROM musica
WHERE titulo LIKE '%o_';

DROP TABLE musica;

-- EXERCÍCIO 3
USE julia;

CREATE TABLE filme (
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

INSERT INTO filme VALUES
	('1', 'Brilho eterno de uma mente sem lembranças', 'indie', 'Michel Gondry'),
    ('2', 'Múmia', 'aventura', 'Stephen Sommers'),
    ('3', 'John Wick', 'ação', 'Chad Stahelski'),
    ('4', 'Piratas do Caribe', 'aventura', 'Gore Verbinski'),
    ('5', 'Nanny Mcphee', 'comédia', 'Kirk Jones'),
    ('6', 'Bad Boys', 'comédia', 'Adil El Arbi'),
    ('7', 'Anastasia', 'infantil', 'Don Bluth');
    
    SELECT * FROM filme;
    
    SELECT titulo, diretor FROM filme;
    
    SELECT * FROM filme
    WHERE genero = 'ação';
    
    SELECT * FROM filme
    WHERE diretor = 'Kirk Jones';
    
    SELECT * FROM filme
    ORDER BY titulo ASC;
    
    SELECT * FROM filme
    ORDER BY diretor DESC;
    
    SELECT * FROM filme
    WHERE titulo LIKE 'B%';
    
    SELECT * FROM filme
    WHERE diretor LIKE '%i';
    
    SELECT * FROM filme
    WHERE genero LIKE '_o%';
    
    SELECT * FROM filme
    WHERE  titulo LIKE '%e_';
    
    DROP TABLE filme;
    
    -- EXERCÍCIO 4:
    USE julia;
    
    CREATE TABLE professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
    );
    
    INSERT INTO professor VALUES
		('1', 'Vivian', 'Bancos de dados', ‘1983-10-13’),
        ('2', 'Thiago', 'Desenvolvimento socioemocional', '1993-09-12'),
        ('3', '
    