SELECT client.nom
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
