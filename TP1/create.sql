tp1/delete.sql                                                                                      0000644 1207504 0047040 00000000157 13162141764 015105  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          DELETE FROM CLIENT WHERE ID = 4;
SELECT * FROM CLIENT;

DELETE FROM CLIENT WHERE ID = 1;
SELECT * FROM CLIENT;
                                                                                                                                                                                                                                                                                                                                                                                                                 tp1/insert.sql                                                                                      0000644 1207504 0047040 00000002016 13162144140 015132  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          INSERT INTO CLIENT VALUES (1, 'TOTO', 200.0);
INSERT INTO CLIENT VALUES (2, 'TITI', 20.0);
INSERT INTO CLIENT VALUES (3, 'TITI', 20.0);
INSERT INTO CLIENT VALUES (5, 'TATA', 120.0);
INSERT INTO CLIENT VALUES (15, 'BOF', 150.0);
INSERT INTO CLIENT VALUES (16, 'BIF', 150.0);

INSERT INTO CLIENT VALUES (5, 'TUTU', 200.0);

INSERT INTO CLIENT VALUES (20, 'RIRI', NULL);
INSERT INTO CLIENT (ID, NOM) VALUES (21, 'FIFI');
INSERT INTO CLIENT (ID, SOLDE) VALUES (22, 150);
INSERT INTO CLIENT (NOM) VALUES ('LOULOU');

INSERT INTO PRODUCTEUR VALUES ( 1, 'BRICOLOT');
INSERT INTO PRODUCTEUR VALUES ( 2, 'FRUIT AND FIBRE');

INSERT INTO PRODUIT (ID, NOM, PRIX_UNITAIRE, PRODUCTEUR)
VALUES (1, 'CLOU', 11.0, 1);
INSERT INTO PRODUIT (ID, NOM, PRIX_UNITAIRE, PRODUCTEUR)
VALUES ( 2,'ROBINET', 30.0, 1);
INSERT INTO PRODUIT (ID, NOM, PRIX_UNITAIRE, PRODUCTEUR)
VALUES ( 3, 'KIWI', 0.3, 2);

INSERT INTO COMMANDE VALUES (2, 2, 3);
INSERT INTO COMMANDE VALUES (2, 3, 20);
INSERT INTO COMMANDE VALUES (5, 1, 100);
INSERT INTO COMMANDE VALUES (5, 3, 10);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  tp1/question_12.sql                                                                                 0000644 1207504 0047040 00000000042 13162142333 015776  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT * FROM producteur, client;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              tp1/question_13.sql                                                                                 0000644 1207504 0047040 00000000115 13162143276 016007  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT * FROM PRODUIT
JOIN PRODUCTEUR ON PRODUCTEUR.id = PRODUIT.PRODUCTEUR;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   tp1/question_14.sql                                                                                 0000644 1207504 0047040 00000000152 13162144014 016000  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT p1.nom AS n1, p2.nom AS n2
FROM produit p1, produit p2 
WHERE p1.prix_unitaire > p2.prix_unitaire;
                                                                                                                                                                                                                                                                                                                                                                                                                      tp1/question_15.sql                                                                                 0000644 1207504 0047040 00000000260 13162144604 016006  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT client.nom AS NOMCLIENT, produit.nom AS NOMPRODUIT, quantite
FROM COMMANDE
JOIN produit ON produit.id = commande.idproduit
JOIN client ON client.id = commande.idclient;
                                                                                                                                                                                                                                                                                                                                                tp1/question_16.sql                                                                                 0000644 1207504 0047040 00000000356 13162151024 016007  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT client.nom
FROM commande, client
WHERE client.id = commande.idclient;

SELECT client.nom
FROM commande
JOIN client ON client.id = commande.idclient;

SELECT nom
FROM client
WHERE id IN
      (SELECT idclient 
      FROM commande);
                                                                                                                                                                                                                                                                                  tp1/question_3.sql                                                                                  0000644 1207504 0047040 00000000053 13162140247 015722  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT nom FROM client WHERE solde >= 150;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     tp1/question_4.sql                                                                                  0000644 1207504 0047040 00000000056 13162140523 015723  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT nom FROM client WHERE MOD(id, 2) = 1; 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  tp1/update.sql                                                                                      0000644 1207504 0047040 00000000420 13162141550 015107  0                                                                                                    ustar   arnoul119u                      gga_etudiants                                                                                                                                                                                                          SELECT * FROM CLIENT;
UPDATE CLIENT SET SOLDE = SOLDE + 10.0;
SELECT * FROM CLIENT;

UPDATE CLIENT
SET SOLDE = SOLDE - 30.0, NOM = 'TOTO'
WHERE ID = 2;
SELECT * FROM CLIENT;

UPDATE CLIENT
SET SOLDE = SOLDE + 30.0
WHERE SOLDE BETWEEN 100.0 AND 180.0;
SELECT * FROM CLIENT;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                