CREATE TABLE Livre(
    id_Livre INT NOT NULL AUTO_INCREMENT,
    titre VARCHAR(45),
    auteur VARCHAR(45),
    isbn VARCHAR(45),
    genre VARCHAR(45),
    date_reservation(DATE),
    date_retour(DATE),
    PRIMARY KEY(id_Livre)
);

CREATE TABLE Dvd(
    id_Dvd INT NOT NULL AUTO_INCREMENT,
    titre VARCHAR (45),
    realisateur VARCHAR(45),
    genre VARCHAR(45),
    date_Sortie DATE,
    date_reservation DATE,
    date_retour DATE,
    PRIMARY KEY(id_Dvd)
);

CREATE TABLE Cd
    id_Cd INT NOT NULL AUTO_INCREMENT,
    nom_album VARCHAR (45),
    nom_groupe_chanteur VARCHAR(45),
    genre VARCHAR(45),
    date_reservation DATE,
    date_retour DATE,
    PRIMARY KEY(id_Cd)
);

CREATE TABLE client
    id_client INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(45),
    prénom VARCHAR(45),
    email VARCHAR(45),
    PRIMARY KEY(id_Reservation)
);
ALTER TABLE Commentaire ADD CONSTRAINT FOREIGN KEY (id_Client) REFERENCES Post (id_Livre);
ALTER TABLE Commentaire ADD CONSTRAINT FOREIGN KEY (id_Client) REFERENCES Post (id_Cd);
ALTER TABLE Commentaire ADD CONSTRAINT FOREIGN KEY (id_Post) REFERENCES Post (id_Dvd);ALTER TABLE Commentaire ADD CONSTRAINT FOREIGN KEY (id_Post) REFERENCES Post (id_Post);



