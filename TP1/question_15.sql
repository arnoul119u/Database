SELECT client.nom AS NOMCLIENT, produit.nom AS NOMPRODUIT, quantite
FROM COMMANDE
JOIN produit ON produit.id = commande.idproduit
JOIN client ON client.id = commande.idclient;
