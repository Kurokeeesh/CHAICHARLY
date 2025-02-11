DROP DATABASE IF EXISTS bdChaiCharly;
CREATE DATABASE IF NOT EXISTS bdChaiCharly;
USE bdChaiCharly;

CREATE TABLE Abonne
(
	id    int auto_increment, 
	pseudo 	VARCHAR(25) NOT NULL,
	mail	VARCHAR(30),
	mdp		VARCHAR(30),
    dateAbo date,
	PRIMARY KEY(id)
)
ENGINE=InnoDB;
desc Abonne;

CREATE TABLE Contact
(
	id int auto_increment, 
	mail VARCHAR(30),
    nom VARCHAR(30),
    prenom VARCHAR(30),
    message VARCHAR(30),
    date date,
    heure time,
	PRIMARY KEY(id)
)
ENGINE=InnoDB;
desc Contact;

CREATE TABLE Admin
(
	id int auto_increment,
    mdp VARCHAR(30),
    login varchar(30),
    PRIMARY KEY (id)
)
ENGINE=InnoDB;
desc Admin;

CREATE TABLE Categorie
(
	code VARCHAR(10),
    libelle VARCHAR(20),
    PRIMARY KEY (code)
)
ENGINE=InnoDB;
desc Categorie;

CREATE TABLE Type
(
	code VARCHAR(10),
    libelle VARCHAR(20),
    PRIMARY KEY (code)
)
ENGINE=InnoDB;
desc Type;

CREATE TABLE Produit
(
	id int auto_increment,
    codeCat VARCHAR(10),
    codeType VARCHAR(10),
    nom VARCHAR(120),
    annee date,
    tarifUnit VARCHAR(10),
    tarifCart VARCHAR(10),
    stock boolean,
    imgUrl VARCHAR(255),
    aspect VARCHAR(20),
    descCourt VARCHAR(250),
    descLong text,
    medaille VARCHAR(20),
    PRIMARY KEY (id),
    FOREIGN KEY (codeCat) REFERENCES Categorie(code),
    FOREIGN KEY (codeType) REFERENCES Type(code)
)
ENGINE=InnoDB;
desc Produit;

-- Insertion table Admin
INSERT INTO Admin VALUES ("",'azerty','Gabriel');
INSERT INTO Admin VALUES ("",'azerty','Julien');
INSERT INTO Admin VALUES ("",'azerty','Hugo');

-- Insertion table Categorie
INSERT INTO Categorie VALUES ('RG','Rouge');
INSERT INTO Categorie VALUES ('RO','Rosé');
INSERT INTO Categorie VALUES ('BL','Blanc');
INSERT INTO Categorie VALUES ('BIO','BIOS');
INSERT INTO Categorie VALUES ('MO','Mousseux');
INSERT INTO Categorie VALUES ('BIB','Bag in Box');

-- Insertion table Type
INSERT INTO Type VALUES ('AB','AOC Bergerac');
INSERT INTO Type VALUES ('AC','AOC Côte de Bergerac');
INSERT INTO Type VALUES ('IBR','IGP Bergerac');
INSERT INTO Type VALUES ('IBB','IGP Bergerac Blanc');
INSERT INTO Type VALUES ('ACB','AOC Côte de Bergerac');
INSERT INTO Type VALUES ('BIO','BIO Jus');
INSERT INTO Type VALUES ('M','Vins pétillants');
INSERT INTO Type VALUES ('BIB','Bag In Box');

-- Insertion table Produit Rouge
INSERT INTO Produit VALUES (null,"RG","AB",'Pélissiére','2021-01-01','6,60€','34,50€',0,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"RG","AB",'Doméa','2021-01-01','7,30€','38,30€',0,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"RG","AB",'Rose de sigoules','2019-01-01','9,00€','47,10€',1,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"RG","AB","Clos D'Yvigne",'2018-01-01','25,00€',null,0,null,null,'Magnum 150cl','Desc Longue',null);
INSERT INTO Produit VALUES (null,"RG","AC","Château La Besage Prestige",'2019-01-01','10,00€','52,60€',1,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"RG","AC","Audace",null,'19,60€','102,00€',0,null,null,'Desc courte','Desc Longue',null);
-- Insertion table Produit Rosé
INSERT INTO Produit VALUES (null,"RO","IBR","Original",'2023-01-01','6,80€','35,60€',1,null,null,'Desc courte','Desc Longue',null);
-- Insertion table Produit Blanc sec
INSERT INTO Produit VALUES (null,"BL","IBB","Original",'2024-01-01','6,80€','35,60€',1,null,'Sec','Desc courte','Desc Longue',null);
-- Insertion table Produit Blanc demi-sec/doux
INSERT INTO Produit VALUES (null,"BL","ACB","Antidote",'2022-01-01','7,70€','40,00€',1,null,'Demi-sec','Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"BL","ACB","Rose de Sigoules doux",'2019-01-01','10,10€','52,75€',1,null,'Doux','Desc courte','Desc Longue',null);
-- Insertion table Produit Jus de raisin BIO
INSERT INTO Produit VALUES (null,"BIO","BIO","100% pur jus 70cl",null,'6,40€','33,20€',1,null,'SA','Desc courte','Desc Longue',null);
-- Insertion table Produit Mousseux
INSERT INTO Produit VALUES (null,"MO","M","Bulles de Foncaussade",null,'10,80€','56,00€',0,null,'Brut','Desc courte','Desc Longue',null);
-- Insertion table Produit Bag in Box (BIB)
INSERT INTO Produit VALUES (null,"BIB","BIB","BIB 20L - Bergerac AOC rouge",null,'61,00€',null,0,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"BIB","BIB","BIB 10L - Bergerac AOC rouge ou rosé",null,'33,00€',null,0,null,null,'Desc courte','Desc Longue',null);
INSERT INTO Produit VALUES (null,"BIB","BIB","BIB 5L - Bergerac blanc sec,rouge merlot ou rosé",null,'22,50€',null,0,null,null,'Desc courte','Desc Longue',null);


