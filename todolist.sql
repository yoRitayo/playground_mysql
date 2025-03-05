-- Criando uma tabela de afazeres
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutos INTEGER);

INSERT INTO todo_list (id, item, minutos) VALUES
(1, 'Lavar os pratos', 8),
(2, 'Varrer o chão', 15),
(3, 'Aprender MySQL', 120),
(4, 'Jogar vôlei', 60);

-- Tempo estimado para realizar meus afazeres
SELECT SUM(minutos) FROM todo_list;