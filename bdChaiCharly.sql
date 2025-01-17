DROP DATABASE IF EXISTS bdChaiCharly;
CREATE DATABASE IF NOT EXISTS bdChaiCharly;
USE bdChaiCharly;

CREATE TABLE User
(
	idUs    int, 
	pseudoUs 	VARCHAR(25) NOT NULL,
	mail	VARCHAR(30),
	mdpUs	VARCHAR(30),
	PRIMARY KEY(idUs)
)
ENGINE=InnoDB;
desc User;

CREATE TABLE Admin
(
	idAdmin int,
    mdpAdmin VARCHAR(30),
    PRIMARY KEY (idAdmin)
)
ENGINE=InnoDB;
desc Admin;

CREATE TABLE Categorie
(
	codeCat int,
    libelleCat VARCHAR(20),
    PRIMARY KEY (codeCat)
)
ENGINE=InnoDB;
desc Categorie;

CREATE TABLE Produit
(
	idPro int,
    codeCatPro int,
    libellePro VARCHAR(120),
    tarifUnitPro VARCHAR(10),
    tarifCartPro VARCHAR(10),
    imgPro BLOB,
    PRIMARY KEY (idPro),
    FOREIGN KEY (codeCatPro) REFERENCES Categorie(codeCat)
)
ENGINE=InnoDB;
desc Produit;

-- Insertion table Admin
INSERT INTO Admin VALUES (01,'azerty');
INSERT INTO Admin VALUES (02,'azerty');
INSERT INTO Admin VALUES (03,'azerty');

-- Insertion table Categorie
INSERT INTO Categorie VALUES (01,'Rouge');
INSERT INTO Categorie VALUES (02,'Rosé');
INSERT INTO Categorie VALUES (03,'Blanc sec');
INSERT INTO Categorie VALUES (04,'Blanc demi-sec/doux');
INSERT INTO Categorie VALUES (05,'Jus de raisin BIO');
INSERT INTO Categorie VALUES (06,'Mousseux');
INSERT INTO Categorie VALUES (07,'Bag in Box (BIB)');

-- Insertion table Produit Rouge
INSERT INTO Produit VALUES (01,01,'Pélissiére 2021','6,60€','34,50€',null);
INSERT INTO Produit VALUES (02,01,'Doméa 2021','7,30€','38,30€',null);
INSERT INTO Produit VALUES (03,01,'Rose de sigoules 2019','9,00€','47,10€',null);
INSERT INTO Produit VALUES (04,01,"Clos D'Yvigne 2018 - Magnum 150cl",'25,00€',null,null);
INSERT INTO Produit VALUES (05,01,"Château La Besage Prestige 2019",'10,00€','52,60€',null);
INSERT INTO Produit VALUES (06,01,"Audace",'19,60€','102,00€',null);
-- Insertion table Produit Rosé
INSERT INTO Produit VALUES (07,02,"Original 2023",'6,80€','35,60€',null);
-- Insertion table Produit Blanc sec
INSERT INTO Produit VALUES (08,03,"Original 2022/23",'6,80€','35,60€',null);
-- Insertion table Produit Blanc demi-sec/doux
INSERT INTO Produit VALUES (09,04,"Antidote 2022",'7,70€','40,00€',null);
INSERT INTO Produit VALUES (10,04,"Rose de Sigoules doux 2019",'10,10€','52,75€',null);
-- Insertion table Produit Jus de raisin BIO
INSERT INTO Produit VALUES (11,05,"100% pur jus 70cl",'6,40€','33,20€',null);
-- Insertion table Produit Mousseux
INSERT INTO Produit VALUES (12,06,"Bulles de Foncaussade : brut",'10,80€','56,00€',null);
-- Insertion table Produit Bag in Box (BIB)
INSERT INTO Produit VALUES (13,07,"BIB 20L - Bergerac AOC rouge",'61,00€',null,null);
INSERT INTO Produit VALUES (14,07,"BIB 10L - Bergerac AOC rouge ou rosé",'33,00€',null,null);
INSERT INTO Produit VALUES (15,07,"BIB 5L - Bergerac blanc sec,rouge merlot ou rosé",'22,50€',null,null);


