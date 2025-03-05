CREATE TABLE livros (id INTEGER PRIMARY KEY, nome TEXT, classificacao INTEGER);

INSERT INTO livros (id, nome, classificacao) VALUES
(1, 'Aurélio', 4),
(2, 'Longman', 2),
(3, 'Oxford', 5);

SELECT * FROM livros;