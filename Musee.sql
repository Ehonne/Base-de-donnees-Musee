drop table if exists echange, participe, examinent, oeuvre_art, gerent, musee_alentour, visite_guide, guide, exposition, employer, salles, visiteur;
drop user if exists visiteur@'localhost';
drop user if exists employe@'localhost';
drop user if exists gerant@'localhost';
drop view if exists v_visiteur, v_employe,  v_gerant;
flush privileges;


create table visiteur (
    	ID decimal (4) primary key,
    	nom varchar (12) not null,
    	prenom varchar (12) not null,
    	adresse varchar (40),
    	tel char (14),
    	date_naissance varchar(12)) ;

insert into visiteur values
    	(19,'Safin','Marat','61 rue Fermee, 78430 Louveciennes','01 06 70 38 90','15/07/1995'),
    	(34,'Dechy','Nathalie','6 Bd. Aristide Briand, 78870 Bailly','01 13 71 36 65','29/02/1997'),
    	(80,'Safin','Lleyton','25 rue de Jouques, 78870 Bailly','01 29 52 84 64','16/02/1992'),
    	(10,'Ferrer','David','21 Bd. Jean Jaures, 78310 Maurepas','01 03 71 38 64','15/07/1996'),
    	(26,'Hantuchova','Daniela','28 rue Buscaille, 78000 Versailles','01 10 70 09 57','13/12/1994'),
    	(53,'Hingis','Martina','3 rue Gaston de Saporta, 78870 Bailly','01 17 71 19 57','12/09/1969'),
    	(64,'Henin','Justine','1 cours Gambetta, 78660 Ablis','01 20 71 11 93','18/12/1972'),
    	(85,'Mathieu','Paul-Henri','63 rue de l''Opera, 78000 Versailles','01 32 43 06 65','24/06/2008'),
    	(88,'Rochus','Olivier','40 rue Marcel Guillaume, 78870 Bailly','01 33 71 22 90','26/07/2010'),
    	(113,'Henin','Venus','5 rue de l''Annonciade, 78310 Maurepas','01 52 53 35 74','30/12/2002'),
    	(114,'Henin','Gael','33 rue Littera, 78240 Chambourcy','01 53 34 45 65','05/03/1992'),
    	(126,'Hatoum','Novak','35 Av. des Thermes, 78990 Elancourt','01 58 30 36 63','31/04/1900'),
    	(135,'Henin','Richard','22 rue Boulegon, 78300 Poissy','01 66 55 11 60','16/02/1982'),
    	(12,'Davenport','Lindsay','56 rue des Muletiers, 78660 Ablis','01 04 70 01 65','18/02/1900'),
    	(15,'Haas','Tommy','68 Av. Pasteur, 78000 Versailles','01 05 70 39 78','14/10/2000'),
    	(22,'Hatoum','Marc','67 rue de la Fontaine, 78300 Poissy','01 08 70 19 78','24/12/2000'),
    	(25,'Benneteau','Julien','32 rue Signoret, 78430 Louveciennes','01 09 70 24 85','23/08/2004'),
    	(29,'Pavel','Andrei','5 rue du Plan, 78300 Poissy','01 10 70 10 74','17/08/2006'),
    	(45,'Hatoum','Patty','50 rue Villars, 78130 Les Mureaux','01 15 71 25 67','03/03/2005'),
    	(57,'Pennetta','Flavia','48 rue de l''Ecole, 78120 Rambouillet','01 18 60 41 33','06/10/1965'),
    	(71,'Hatoum','Tomas','29 rue Lieutaud, 78430 Louveciennes','01 23 71 09 99','11/11/2001'),
    	(73,'Cornet','Alize','24 rue des Bremondis, 78000 Versailles','01 25 71 11 66','16/12/1976'),
    	(95,'Sugiyama','Ai','34 rue des Carmes, 78000 Versailles','01 38 62 11 31','25/11/1972'),
    	(97,'Canas','Guillermo','51 rue Villevieille, 78120 Rambouillet','01 38 71 12 60','16/02/1976'),
    	(127,'Clement','Arnaud','10 rue Granet, 78000 Versailles','01 61 47 28 67','10/01/1965'),
    	(139,'Molik','Alicia','18 rue d''Italie, 78870 Bailly','01 67 36 09 91','21/09/1987'),
    	(162,'Williams','Serena','27 rue Boueno Carriero, 78310 Maurepas','01 89 53 35 89','08/04/2000'),
    	(8,'Grosjean','Sebastien','57 Av. Napoleon Bonaparte, 78190 Trappes','01 25 60 00 87','02/04/2000'),
    	(122,'Mauresmo','Amelie','39 cours de la Trinite, 78000 Versailles','01 22 47 75 89','01/06/2000'),
    	(4,'Nadal','Rafael','18 place Bellegarde, 78990 Elancourt','01 29 71 13 76','16/11/1982') ;

insert into visiteur values
    	(82,'Dementieva','Elena','52 rue de la Molle, 78240 Chambourcy','01 29 72 72 48','17/04/1982'),
    	(99,'Federer','Roger','70 rue Paul Doumer, 78310 Maurepas','01 39 71 39 66','10/05/1971'),
    	(180,'Nalbandian','David','46 Rue Courteissade, 78310 Maurepas','01 94 53 22 54','30/01/1988'),
    	(24,'Zvonareva','Vera','11 place des Augustins, 78300 Poissy','01 08 71 38 93','28/09/1987'),
    	(31,'Stepanek','Radek','33 rue Cardinale, 78000 Versailles','01 11 71 87 71','28/07/1995'),
    	(54,'Andreev','Igor','2 rue Pierre et Marie Curie, 78530 Buc','01 17 71 77 33','16/02/2001'),
    	(89,'Moya','Carlos','21 rue Roux Alpheran, 78990 Elancourt','01 34 71 09 56','22/06/2008'),
    	(140,'Dulko','Gisela','22 rue des chapeliers, 78112 Fourqueux','01 69 73 18 64','18/02/1980'),
    	(141,'Golovin','Tatiana','8 place des Precheurs, 78300 Poissy','01 70 73 51 79','10/10/1984'),
    	(144,'Ivanovic','Ana','4 rue Gianotti, 78240 Chambourcy','01 71 47 11 89','25/06/1996'),
    	(152,'Murray','Andy','6 rue de la Glaciere, 78280 Guyancourt','01 80 54 56 25','12/11/1987'),
    	(179,'Santoro','Fabrice','52 rue des Epinaux, 78310 Maurepas','01 93 70 51 41','16/12/1989'),
    	(196,'Kuznetsova','Svetlana','12 rue du Griffon, 78300 Poissy','01 99 70 13 51','17/01/1984'),
    	(49,'Kremer','Anne','15 rue Baratanque, 78130 Les Mureaux','01 17 37 09 65','13/08/1986'),
    	(86,'Vaidisova','Nicole','69 rue Paul Bert, 78870 Bailly','01 32 70 13 51','15/08/1974'),
    	(98,'Lopez','Feliciano','39 rue Chastel, 78190 Trappes','01 39 71 19 90','13/06/2003'),
    	(116,'Ancic','Mario','47 rue des Menudieres, 78870 Bailly','01 54 53 00 90','30/07/2003'),
    	(130,'Ljubicic','Ivan','9 rue Goyrand, 78120 Rambouillet','01 64 73 66 30','28/02/2002'),
    	(131,'Harkleroad','Ashley','64 rue Finsonius, 78000 Versailles','01 66 43 02 49','25/12/2006'),
    	(151,'Baghdatis','Marcos','58 rue Fauchier, 78990 Elancourt','01 80 43 39 73','20/09/1976'),
    	(155,'Simon','Gilles','42 rue des Marseillais, 78190 Trappes','01 82 53 18 73','11/09/1993'),
    	(163,'Bartoli','Marion','8 rue Gontard, 78112 Fourqueux','01 89 53 56 26','26/07/1999'),
    	(169,'Roddick','Andy','62 rue Fernand Dol, 78530 Buc','01 91 53 36 33','09/12/1999'),
    	(176,'Serra','Florent','50 place Miollis, 78300 Poissy','01 92 71 13 64','06/05/1999'),
    	(189,'Razzano','Virginie','29 cours Saint Louis, 78660 Ablis','01 96 37 14 82','28/06/1986'),
    	(194,'Blake','James','33 rue Suffren, 78310 Maurepas','01 98 53 39 89','25/07/1980'),
    	(195,'Mayer','Florian','54 rue de Montigny, 78000 Versailles','01 99 61 09 68','31/03/1996'),
    	(7,'Bjorkman','Jonas','59 rue du Felibre Gault, 78310 Maurepas','01 91 74 00 55','05/11/200'),
    	(50,'Parmentier','Pauline','4 place des Tanneurs, 78130 Les Mureaux','01 80 53 13 30','01/01/2001'),
    	(27,'Spadea','Vincent','32 place des Cardeurs, 78000 Versailles','01 55 54 51 79','23/09/1988') ;

create table salles (
    	nom_salles varchar (12) primary key,
    	theme_salles varchar (30),
    	emplacement_s varchar(12) not null);

insert into salles values
    	('A1','Renaissance','Etage 1, aile sud'),
    	('B1','Romantisme','Etage 1, aile ouest'),
    	('C1','Contemporin','Etage 1, aile est-nord'),
    	('D1','Baroque','Etage 2, aile est'),
    	('E1','Expressionnisme','Etage 2, aile nord'),
    	('A2','Antiquité Egyptienne','Etage 2, aile nord'),
    	('B2','Antiquité Romaine','Etage 2, aile sud'),
    	('C2','Antiquité Japonaise','Etage 2, aile sud'),
    	('A3','Mesopotamie','Etage 3, aile ouest'),
    	('A0',NULL,'Etage 0, aile ouest'),
    	('B0',NULL,'Etage 0, aile nord'),
    	('C0',NULL,'Etage 0, aile sud') ;

create table musee_alentour (
    	nom_mu varchar (30) primary key,
    	emplacement varchar (30));

insert into musee_alentour VALUES
    	('Petit Palais','Paris'),
    	('Grand Palais','Paris'),
    	('Musee Rodin','Bordeaux'),
    	('MET','New York'),
    	('Musée van Gogh','Amsterdam');

create table exposition (
    	theme_expo varchar (30) primary key,
    	salle_expo varchar (12),
    	durée decimal (4) not null,
    	foreign key (salle_expo) references salles(nom_salles) on delete cascade on update cascade);

insert into exposition values
    	('Rome et ses dieux','A0',120),
    	('Art et Lumiere','B0',080),
    	('Poterie','C0',50);

create table oeuvre_art (
    	titre varchar (40) primary key,
    	artiste varchar (40),
    	date_crea varchar (20) not null,
    	type_oeuvre varchar (10),
    	nom_salle varchar (20) not null,
    	theme_expo_o varchar (30),
    	foreign key (nom_salle) references salles (nom_salles) on delete cascade on update cascade,
    	foreign key (theme_expo_o) references exposition (theme_expo) on delete cascade on update cascade);

insert into oeuvre_art values
    	('Venus de milo','Alexandros Antioche','100 av J-C','Sculture','B2','Rome et ses dieux'),
    	('Code de Hammurabi','Inconnu','XVIIIe av J-C','Sculture','A3',NULL),
    	('Cratère dAntée','Euphronios','510 av J-C','Ceramique','B2','Poterie'),
    	('Le Radeau de la Méduse','Théodore GÉRICAULT','1791','Peinture','B1','Rome et ses dieux'),
    	('La Liberté guidant le peuple','Eugène DELACROIX','1798','Peinture','C1',NULL),
    	('la Joconde','Leonard De Vinci','1503','Peinture','B1',NULL),
    	('Le scribe accroupi','Inconnu','2350 av J-C','Sculture','A2',NULL),
    	('La Victoire de Samothrace','Inconnu','190 av J-C','Sculture','B2','Rome et ses dieux'),
    	('Le Sacre de Napoléon','Jacques-Louis David','1805','Peinture','D1','Art et Lumiere'),
    	('Les Noces de Cana','Paul Véronèse','1562','Peinture','D1',NULL),
    	('Gladiateur Borghèse','Agasias dÉphèse','100 av J-C','Sculture','B2',NULL),
    	('Ugolino et ses fils', 'Jean Baptiste Carpeaux','1865','Sculture','A1','Rome et ses dieux'),
    	('Vierge et enfant', 'Duccio Buoninsegna','1300','Peinture','B1',NULL),
    	('Mobile', 'Alexander Calder','1941','Peinture','C1',NULL),
    	('La Cène', 'Leonard De Vinci','1495','Peinture','A1',NULL),
    	('Le Baiser', 'Gustave klimp','1908','Peinture','C1',NULL),
    	('Guernica','Pablo Picasso', '1937', 'Peinture', 'A1',NUll),
    	('La Persistance de la mémoire','Salvador Dali', '1934', 'Peinture', 'D1',NUll),
    	('La Nuit étoilée','Vincent van Gogh', '1889', 'Peinture', 'E1','Art et Lumiere'),
    	('La Grande Vague de Kanagawa','Hokusai', '1830', 'Estampe', 'C2',NUll),
    	('La Laitière','Johannes Vermeer', '1658', 'Peinture', 'B1',NUll),
    	('Les Demoiselles d`Avignon','Pablo Picasso', '1906', 'Peinture', 'E1',NUll),
    	('L`École d`Athènes','Raphaël', '1508', 'Fresque', 'D1',NUll),
    	('Le Déjeuner des canotiers','Auguste Renoir', '1880', 'Peinture', 'B1',NUll),
    	('Les Coquelicots','Claude Monet', '1873', 'Peinture', 'A1',NUll),
    	('Nighthawks','Edward Hopper', '1942', 'Peinture', 'C1','Art et Lumiere'),
    	('Le Rêve','Pablo Picasso', '1932', 'Peinture', 'C1','Art et Lumiere'),
    	('Tres de mayo','Francisco de Goya', '1814', 'Peinture', 'E1',NUll),
    	('Homme de Vitruve','Leonard De Vinci', '1490', 'Peinture', 'B1',NUll),
    	('La Pie','Claude Monet', '1878', 'Peinture', 'A1',NUll);


create table employer (
    	ID_employer decimal (4) primary key,
    	prenom_em char (20),
    	nom_em varchar (20));

insert into employer values
    	(1,'Querrey','Sam'),
    	(3,'Paszek','Tamira'),
    	(6,'Osterloh','Lilia'),
    	(13,'Gallovits','Edina'),
    	(14,'Rodionova','Anastasia'),
    	(21,'Sela','Dudi'),
    	(23,'Bammer','Sybille'),
    	(33,'Volandri','Filippo'),
    	(35,'Ventura','Santiago'),
    	(36,'Horna','Luis'),
    	(37,'Almagro','Nicolas'),
    	(41,'Zabaleta','Mariano'),
    	(43,'Poutchek','Tatiana'),
    	(44,'Fish','Mardy'),
    	(46,'Cilic','Marin'),
    	(52,'Hanescu','Victor'),
    	(55,'Falla','Alejandro'),
    	(56,'Monaco','Juan'),
    	(60,'Hernandez','Oscar'),
    	(61,'Gonzalez','Fernando'),
    	(63,'Peer','Shahar'),
    	(65,'Craybas','Jill'),
    	(66,'Cibulkova','Dominika'),
    	(67,'Errani','Sara'),
    	(68,'Sequera','Milagros'),
    	(70,'Tipsarevic','Janko'),
    	(72,'Peng','Shuai'),
    	(74,'Capdeville','Paul'),
    	(75,'Gulbis','Ernests'),
    	(76,'Govortsova','Olga'),
    	(77,'Obziler','Tzipora'),
    	(78,'Kanepi','Kaia'),
    	(79,'Knapp','Karin'),
    	(81,'Wozniacki','Caroline'),
    	(90,'Meusburger','Yvonne'),
    	(91,'Brzezicki','Juan Pablo'),
    	(92,'Massu','Nicolas'),
    	(100,'Verdasco','Fernando'),
    	(101,'Melzer','Jurgen'),
    	(102,'Poutchkova','Olga') ;

insert into employer values
    	(103,'Mahut','Nicolas'),
    	(104,'Davydenko','Nikolay'),
    	(105,'Tursunov','Dmitry'),
    	(107,'Azarenka','Victoria'),
    	(108,'Muller','Martina'),
    	(109,'Calleri','Agustin'),
    	(117,'Ascione','Thierry'),
    	(119,'Schiavone','Francesca'),
    	(120,'Malek','Tatjana'),
    	(121,'Eschauer','Werner'),
    	(123,'Vesnina','Elena'),
    	(124,'Russell','Michael'),
    	(128,'Srebotnik','Katarina'),
    	(133,'Jankovic','Jelena'),
    	(137,'Berlocq','Carlos'),
    	(138,'Morigami','Akiko'),
    	(145,'Dushevina','Vera'),
    	(146,'Mirza','Sania');

create table guide (
    	ID_guide decimal (4) primary key,
    	domaine_expertise varchar (20),
    	foreign key (ID_guide) references employer (ID_employer) on delete cascade on update cascade);

insert into guide values
    	(70,'Renaissance'),
    	(91,'Antiquité Egyptienne'),
    	(138,'Expressionnisme'),
    	(21,'Mesopotamie'),
    	(146,'Baroque');

create table visite_guide (
    	ID_visite decimal (4) primary key,
    	parcour varchar (20) ,
    	duree decimal (12),
    	ID_guide_v decimal (4) not null,
    	foreign key (ID_guide_v) references guide (ID_guide) on delete cascade on update cascade);

insert into visite_guide values
    	(1,'A1-B1-C1-D1',120,70),
    	(2,'A1-A2-A3',60,91),
    	(3,'A2-B2-C2',90,21),
    	(4,'A2-B2-C2-A3',120,146);

create table gerent (
    	ID_employer_g decimal (4) not null,
    	nom_salles_g varchar (10) not null,
    	foreign key (ID_employer_g) references employer (ID_employer) on delete cascade on update cascade,
    	foreign key (nom_salles_g) references salles (nom_salles) on delete cascade on update cascade ) ;

insert into gerent values
    	(1,'A1'),
    	(3,'A2'),
    	(6,'A3'),
    	(13,'A1'),
    	(21,'B2'),
    	(23,'B2'),
    	(52,'B1'),
    	(55,'C1'),
    	(56,'C2'),
    	(65,'C2'),
    	(63,'C1'),
    	(92,'A3'),
    	(101,'A1'),
    	(145,'B1');

create table participe (
    	ID_visite_guide_p decimal (4),
    	ID_visiteur_p decimal (4),
    	foreign key (ID_visite_guide_p) references visite_guide (ID_visite) on delete cascade on update cascade,
    	foreign key (ID_visiteur_p) references visiteur (ID) on delete cascade on update cascade);

insert into participe VALUES
    	(1,24),
    	(1,31),
    	(1,82),
    	(1,99),
    	(1,180),
    	(1,49),
    	(1,86),
    	(1,130),
    	(1,151),
    	(1,27),
    	(1,7),
    	(1,50),
    	(1,195),
    	(2,19),
    	(2,34),
    	(2,80),
    	(2,10),
    	(2,26),
    	(2,53),
    	(2,64),
    	(2,85),
    	(2,88),
    	(2,113),
    	(2,114),
    	(2,126),
    	(2,135),
    	(2,15),
    	(3,4),
    	(3,122),
    	(3,8),
    	(3,12),
    	(3,139),
    	(3,97),
    	(3,95),
    	(3,73),
    	(3,71),
    	(3,57),
    	(3,45),
    	(3,29),
    	(3,25),
    	(3,116),
    	(3,130),
    	(3,131),
    	(4,169),
    	(4,189),
    	(4,194),
    	(4,196),
    	(4,98),
    	(4,155),
    	(4,144);

create table examinent (
    	theme_ex varchar (30),
    	ID_visiteur_e decimal (4),
    	foreign key (theme_ex) references exposition (theme_expo) on delete cascade on update cascade,
    	foreign key (ID_visiteur_e) references visiteur (ID) on delete cascade on update cascade);

insert into examinent values
    	('Art et Lumiere',194),
    	('Art et Lumiere',196),
    	('Art et Lumiere',98),
    	('Art et Lumiere',155),
    	('Art et Lumiere',144),
    	('Poterie',139),
    	('Poterie',97),
    	('Poterie',95),
    	('Poterie',73),
    	('Poterie',71),
    	('Poterie',57),
    	('Poterie',45),
    	('Poterie',29),
    	('Poterie',25),
    	('Poterie',116),
    	('Poterie',130),
    	('Poterie',131),
    	('Poterie',169),
    	('Poterie',189),
    	('Rome et ses dieux',24),
    	('Rome et ses dieux',31),
    	('Rome et ses dieux',82),
    	('Rome et ses dieux',99),
    	('Rome et ses dieux',180),
    	('Rome et ses dieux',49),
    	('Rome et ses dieux',86),
    	('Rome et ses dieux',130),
    	('Rome et ses dieux',151),
    	('Rome et ses dieux',27),
    	('Rome et ses dieux',7);

create table echange (
    	nom_musee varchar (30),
    	titre_oeuvre varchar (40),
    	foreign key (nom_musee) references musee_alentour (nom_mu) on delete cascade on update cascade,
    	foreign key (titre_oeuvre) references oeuvre_art (titre) on delete cascade on update cascade);

insert into echange VALUES
    	('MET','Ugolino et ses fils'),
    	('MET','Vierge et enfant'),
    	('Musée van Gogh','Mobile'),
    	('Musee Rodin ','Nighthawks'),
    	('Musée van Gogh','La Nuit étoilée'),
    	('Grand Palais','Le Radeau de la Méduse'),
    	('Petit Palais','Les Coquelicots'),
    	('Petit Palais','La Liberté guidant le peuple');

CREATE USER visiteur@'localhost' IDENTIFIED BY 'mot de passe';

CREATE USER employe@'localhost' IDENTIFIED BY 'mot de passe';

CREATE USER gerant@'localhost' IDENTIFIED BY 'mot de passe';

drop view if exists v_visiteur, v_employe,  v_gerant;

CREATE VIEW v_visiteur AS
SELECT *
FROM oeuvre_art, salles, visite_guide, exposition;

CREATE VIEW v_employe AS
SELECT *
FROM oeuvre_art, salles, visite_guide, exposition, employer, guide, gerent;

CREATE VIEW v_gerant AS
SELECT *
FROM visiteur, salles, oeuvre_art, employer, musee_alentour, exposition, visite_guide, guide, echange, gerent, participe, examinent;

GRANT SELECT
ON  v_visiteur
TO visiteur;

GRANT ALL
ON oeuvre_art
TO employe;

GRANT ALL
ON visite_guide
TO employe;

GRANT ALL
ON exposition
TO employe;

GRANT ALL
ON salles
TO employe;

GRANT SELECT
ON employer
TO employe;

GRANT SELECT
ON guide
TO employe;

GRANT SELECT
ON gerent
TO employe;

GRANT ALL
ON *
TO gerant
WITH GRANT OPTION;









