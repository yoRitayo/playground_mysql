CREATE TABLE loja (id INTEGER PRIMARY KEY,produto TEXT, preço INTEGER, avaliação INTEGER, data_fabricação DATE);

INSERT INTO loja VALUES (1, 'telescópio', 3200, 4, '2023/05/01');
INSERT INTO loja VALUES (2, 'filtro', 300, 5, '2023/07/02');
INSERT INTO loja VALUES (3, 'arduino uno', 80, 5, '2023/02/14');
INSERT INTO loja VALUES (4, 'led', 75, 4, '2023/04/27');
INSERT INTO loja VALUES (7, 'ESPB8266', 40, 4, '2023/02/17');
INSERT INTO loja VALUES (8, 'RTX3090', 15000, 5, '2023/05/10');
INSERT INTO loja VALUES (9, 'teclado multilaser', 80, 2, '2023/03/12');
INSERT INTO loja VALUES (10, 'headphone_b06', 300, 5, '2023/04/28');
INSERT INTO loja VALUES (11, 'unidade_ssd_sandisk', 400, 4, '2023/05/01');
INSERT INTO loja VALUES (12, 'mouse', 120, 3, '2023/04/27');
INSERT INTO loja VALUES (13, 'cartao_present_spotify', 80, 3, '2023/05/03');
INSERT INTO loja VALUES (14, 'carregador_samsung', 120, 4, '2023/03/15');
INSERT INTO loja VALUES (15, 'airpod', 800, 5, '2023/01/12');

SELECT data_fabricação, preço, produto FROM loja ORDER BY preço;