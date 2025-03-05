CREATE TABLE registros_exercicios (id INTEGER PRIMARY KEY AUTO_INCREMENT,
                                    tipo TEXT,
                                    minutos INTEGER,
                                    calorias INTEGER,
                                    freq_cardiaca INTEGER);

INSERT INTO registros_exercicios(tipo, minutos, calorias, freq_cardiaca) VALUES ('ciclismo', 30, 100, 110);
INSERT INTO registros_exercicios(tipo, minutos, calorias, freq_cardiaca) VALUES ('ciclismo', 10, 30, 105);
INSERT INTO registros_exercicios(tipo, minutos, calorias, freq_cardiaca) VALUES ('trilha', 15, 200, 120);

-- Seleciona todos os registros de exercícios onde o tipo seja ciclismo, trilha, escalada em árvore ou remo
SELECT * FROM registros_exercicios WHERE tipo = 'ciclismo' OR tipo = 'trilha' OR tipo = 'escalada em árvore' OR tipo = 'remo';

-- Usando o operador IN para selecionar os mesmos tipos de exercícios
SELECT * FROM registros_exercicios WHERE tipo IN ('ciclismo', 'trilha', 'escalada em árvore', 'remo');

-- Criando a tabela de favoritos do Dr.
CREATE TABLE favoritos_dr (id INTEGER PRIMARY KEY AUTO_INCREMENT,
                            tipo TEXT,
                            motivo TEXT);

-- Inserindo registros na tabela de favoritos do Dr.
INSERT INTO favoritos_dr(tipo, motivo) VALUES ('ciclismo', 'Melhora a resistência e flexibilidade');
INSERT INTO favoritos_dr(tipo, motivo) VALUES ('trilha', 'Aumenta a saúde cardiovascular');

-- Seleciona todos os tipos de exercícios favoritos do Dr.
SELECT tipo FROM favoritos_dr;

-- Seleciona os registros de exercícios que correspondem aos favoritos do Dr.
SELECT * FROM registros_exercicios WHERE tipo IN (SELECT tipo FROM favoritos_dr);

-- Seleciona os registros de exercícios que correspondem aos favoritos do Dr. com motivo
SELECT * FROM registros_exercicios WHERE tipo IN (SELECT tipo FROM favoritos_dr WHERE motivo = 'Aumenta a saúde cardiovascular');

-- Usando LIKE para buscar favoritos do Dr. que contenham a palavra 'cardiovascular' no motivo
SELECT * FROM registros_exercicios WHERE tipo IN (SELECT tipo FROM favoritos_dr WHERE motivo LIKE '%cardiovascular%');

