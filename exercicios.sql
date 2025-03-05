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

-- Seleciona todos os registros de exercícios onde as calorias queimadas sejam maiores que 50 e o tempo em minutos seja menor que 30
SELECT * FROM registros_exercicios WHERE calorias > 50 AND minutos < 30;

-- Seleciona todos os registros de exercícios onde as calorias queimadas sejam maiores que 50 ou a frequência cardíaca seja superior a 100
SELECT * FROM registros_exercicios WHERE calorias > 50 OR freq_cardiaca > 100;

/* 50-90% da frequência cardíaca máxima */
SELECT COUNT(*) FROM registros_exercicios WHERE freq_cardiaca >= ROUND(0.50 * (220-30)) AND freq_cardiaca <= ROUND(0.90 * (220-30));

/* Usando CASES */
SELECT tipo, freq_cardiaca,
       CASE
           WHEN freq_cardiaca > 220-30 THEN 'acima do máximo'
           WHEN freq_cardiaca > ROUND(0.90 * (220-30)) THEN 'acima do alvo'
           WHEN freq_cardiaca > ROUND(0.50 * (220-30)) THEN 'dentro do alvo'
           ELSE 'abaixo do alvo'
           END AS 'zona_fc'
FROM registros_exercicios;

SELECT COUNT(*),
       CASE
           WHEN freq_cardiaca > 220-30 THEN 'acima do máximo'
           WHEN freq_cardiaca > ROUND(0.90 * (220-30)) THEN 'acima do alvo'
           WHEN freq_cardiaca > ROUND(0.50 * (220-30)) THEN 'dentro do alvo'
           ELSE 'abaixo do alvo'
           END AS 'zona_fc'
FROM registros_exercicios
GROUP BY zona_fc;
