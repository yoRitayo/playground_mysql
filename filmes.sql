CREATE TABLE filmes (id INTEGER PRIMARY KEY, nome TEXT, lancamento INTEGER);

INSERT INTO filmes (id, nome, lancamento) VALUES
(1, 'Avatar', 2009),
(2, 'Titanic', 1997),
(3, 'Star Wars: Episode IV - Uma nova esperança', 1977),
(4, 'Shrek 2', 2004),
(5, 'O rei leão', 1994),
(6, 'Up', 2009);

SELECT * FROM filmes;

-- Seleciona os filmes lançados depois do ano 2000
SELECT * FROM filmes WHERE filmes.lancamento > 2000 ORDER BY lancamento ASC;