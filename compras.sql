CREATE TABLE compras (id INTEGER PRIMARY KEY,
                      nome TEXT, qtd INTEGER, secao INTEGER);

INSERT INTO compras VALUES (1, 'Bananas', 4, 7);
INSERT INTO compras VALUES (2, 'Manteiga de amendoim', 1, 2);
INSERT INTO compras VALUES (3, 'Barras de chocolate amargo', 2, 4);
SELECT * FROM compras;


SELECT * FROM compras WHERE secao > 5 ORDER BY secao;

-- Soma de produtos por secao
SELECT secao, SUM(qtd) FROM compras GROUP BY secao;