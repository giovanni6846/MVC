
-- Table : Ville
CREATE TABLE Ville (
                       cp_ville VARCHAR(10) PRIMARY KEY,
                       nom_ville VARCHAR(50) NOT NULL
);

-- Table : Employé
CREATE TABLE Employe (
                         Code_employe INT PRIMARY KEY AUTO_INCREMENT,
                         nom VARCHAR(50) NOT NULL,
                         prenom VARCHAR(50) NOT NULL,
                         num_tel VARCHAR(15),
                         cp_ville VARCHAR(10),
                         FOREIGN KEY (cp_ville) REFERENCES Ville(cp_ville)
);

-- Table : Mission
CREATE TABLE Mission (
                         Num_mission INT PRIMARY KEY AUTO_INCREMENT,
                         nom_mission VARCHAR(100) NOT NULL,
                         date_debut DATE NOT NULL,
                         date_fin DATE NOT NULL,
                         nb_repas INT,
                         destination VARCHAR(10),
                         Code_employe INT,
                         FOREIGN KEY (destination) REFERENCES Ville(cp_ville),
                         FOREIGN KEY (Code_employe) REFERENCES Employe(Code_employe)
);

CREATE TABLE Hebergement (
                             Id_hebergement INT PRIMARY KEY AUTO_INCREMENT,
                             Nom_hotel VARCHAR(100) NOT NULL
);

CREATE TABLE Mission_Hebergement (
                                     Num_mission INT,
                                     Id_hebergement INT,
                                     nbr_nuit_facture INT,
                                     PRIMARY KEY (Num_mission, Id_hebergement),
                                     FOREIGN KEY (Num_mission) REFERENCES Mission(Num_mission),
                                     FOREIGN KEY (Id_hebergement) REFERENCES Hebergement(Id_hebergement)
);

-- Table : Transport
CREATE TABLE Transport (
                           Id_transport INT PRIMARY KEY AUTO_INCREMENT,
                           Libelle_transport VARCHAR(50) NOT NULL
);

CREATE TABLE Voiture (
                         Id_transport INT PRIMARY KEY,
                         Nb_chevaux INT,
                         coeff_km DECIMAL(5,2),
                         prix_total DECIMAL(10,2),
                         FOREIGN KEY (Id_transport) REFERENCES Transport(Id_transport)
);

CREATE TABLE Mission_Transport (
                                   Num_mission INT,
                                   Id_transport INT,
                                   PRIMARY KEY (Num_mission, Id_transport),
                                   FOREIGN KEY (Num_mission) REFERENCES Mission(Num_mission),
                                   FOREIGN KEY (Id_transport) REFERENCES Transport(Id_transport)
);