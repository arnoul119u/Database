SELECT p1.nom AS n1, p2.nom AS n2
FROM produit p1, produit p2 
WHERE p1.prix_unitaire > p2.prix_unitaire;
