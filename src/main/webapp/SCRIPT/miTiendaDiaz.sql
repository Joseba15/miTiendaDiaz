SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE medicamentosJoseba;


GRANT ALL PRIVILEGES ON medicamentosJoseba.* to 'diaz'@'%' IDENTIFIED BY 'joseba';

U medicamentosJoseba;

CREATE TABLE categoria(
	id INT(6) AUTO_INCREMENT,
	nombre VARCHAR(500),
	descripcion VARCHAR(1000),

	CONSTRAINT pk_categoria PRIMARY KEY (id)
);

CREATE TABLE medicamentos (
	id INT(6) AUTO_INCREMENT,
	nombre VARCHAR(150) unique,
	descripcion VARCHAR(1000),
	precio REAL,
	id_categ INT(6),

	CONSTRAINT pk_medicamentos PRIMARY KEY (id),
	CONSTRAINT fk_medicamentos FOREIGN KEY (id_categ) REFERENCES categoria(id) ON DELETE CASCADE
	
);



CREATE TABLE usuario(
nombreUsuario VARCHAR(20),
contrasena VARCHAR(50),
nombre VARCHAR(20),
apellido VARCHAR(20),
fechaNacimiento date,
genero VARCHAR(30),
admin boolean,

CONSTRAINT pk_usuario PRIMARY KEY (nombreUsuario)
);




CREATE TABLE usuario_medicamentos(
nombreUsuario VARCHAR(20),
id_medic INT(6),

CONSTRAINT PK_USUARIO_MEDIC PRIMARY KEY (id_medic,nombreUsuario),
CONSTRAINT FK_USUARIO_MEDIC FOREIGN KEY (id_medic) REFERENCES medicamentos(id) ON DELETE CASCADE,
CONSTRAINT FK2_USUARIO_MEDIC FOREIGN KEY (nombreUsuario) REFERENCES usuario(nombreUsuario) ON DELETE CASCADE
);




insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ypreene0', 'dVTcpQmE', 'Yoshiko', 'Preene', '1962-04-09', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mindruch1', 'SLlUreo', 'Major', 'Indruch', '1916-11-09', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ngrima2', 'QZ2fLd5U', 'Nesta', 'Grima', '2018-12-08', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('whuntingford3', '14R56MDVI1k', 'Wendy', 'Huntingford', '1923-04-22', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bcicconettii4', '7f3sr34jfG3', 'Bellina', 'Cicconettii', '1971-05-25', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('flemarie5', '3OsVelIFr1zJ', 'Ferd', 'Lemarie', '2008-01-28', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mbarnewille6', 'GQmpUnxgT', 'Meggy', 'Barnewille', '1977-04-22', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bforte7', 'OPmcYIqHT', 'Bucky', 'Forte', '2021-11-06', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bcampsall8', 'r2S7su5', 'Bell', 'Campsall', '1920-08-21', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('kmould9', 'leo4YmCDJ', 'Kean', 'Mould', '1937-01-30', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('rwillicotta', 'fCjLJXX8A', 'Rhea', 'Willicott', '2006-11-13', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ldeerrb', 'VfyJHp', 'Linc', 'Deerr', '2002-01-06', 'Polygender', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mletteresec', '9BhqKcX', 'Mame', 'Letterese', '2018-09-22', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lbeszantd', '7W01csnbFrs', 'Lyndell', 'Beszant', '1951-04-08', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ispinettie', 'mZzBpd', 'Illa', 'Spinetti', '1948-03-17', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('dhenlonf', 'R5k2vV3', 'Dael', 'Henlon', '1958-12-09', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('jjollandsg', 'Vbo6Ox', 'Jackelyn', 'Jollands', '2017-04-06', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('wwondraschekh', 'zYQfSofAJt', 'Wilone', 'Wondraschek', '1928-04-06', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('dpringelli', '9LNwHxyKW5y', 'Dolph', 'Pringell', '1970-07-30', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('rharwickj', 'kFjEg7Q9re', 'Roderich', 'Harwick', '1921-09-28', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('jchaslesk', 'yzeKwE23LF', 'Jarid', 'Chasles', '1977-01-13', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lbrookwelll', 'kIaFpo', 'L;urette', 'Brookwell', '1941-12-12', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lmatchamm', '0gD3eBwMC7Yt', 'Lee', 'Matcham', '1951-05-30', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('efenimoren', '2GgIaQTuApwz', 'Emmalyn', 'Fenimore', '1986-11-17', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('fseemmondso', 'Hb5Ep8cOm6', 'Franklin', 'Seemmonds', '1935-09-04', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('rduesterp', 'WhDOdG0', 'Rhianna', 'Duester', '2011-09-01', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cskurmq', 'MYQjQDW5fq', 'Coreen', 'Skurm', '2016-01-23', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mclowsr', 'Iicy15xQp9y', 'Meade', 'Clows', '1977-11-08', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('pyeabsleys', 'h5KkY8A7W2IH', 'Port', 'Yeabsley', '1980-02-22', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('dberriet', 'g9QbzUvV', 'Dollie', 'Berrie', '2007-11-20', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('jdownsu', 'ZgTj5QM6', 'Jonell', 'Downs', '2010-02-11', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('apantlingv', 'LhLD83hQl1c', 'Alicea', 'Pantling', '1954-09-26', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('hathyw', 'MFaepiGJEWNb', 'Hillary', 'Athy', '1978-04-10', 'Agender', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lblacklockx', 'f2uXqf7', 'Larissa', 'Blacklock', '2002-06-10', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('skeysy', 'HZ7bK1GrE', 'Sarita', 'Keys', '1950-12-08', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lgyurkovicsz', 'AdANUlFc3efc', 'Lothario', 'Gyurkovics', '1941-02-22', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cplatt10', 'a0uGWwtWBUd', 'Cull', 'Platt', '1950-07-07', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ozanicchi11', 'uC1pp76BJM', 'Onofredo', 'Zanicchi', '1932-08-26', 'Genderqueer', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('kpouck12', '3iI8sw', 'Kenyon', 'Pouck', '2016-08-08', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('abaumber13', 'WL2kni7Xonx', 'Adan', 'Baumber', '1914-09-20', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('fjillard14', '9xTSg7HzPgXi', 'Freddie', 'Jillard', '1903-09-26', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('hdevinn15', 'kzshcDa', 'Haroun', 'Devinn', '1943-04-20', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('relham16', '0nmwdRYCBC', 'Ralf', 'Elham', '1971-12-26', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mchanders17', 'QIisv2aTf', 'Maritsa', 'Chanders', '1969-06-27', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('sharner18', '0SuV6l9BDxjU', 'Silvan', 'Harner', '2006-11-14', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('titzkovwitch19', '2ljPtmJjUDU', 'Tatum', 'Itzkovwitch', '2003-07-26', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cjerams1a', 'dxf6vRLDyu', 'Chrissie', 'Jerams', '1933-05-11', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bfegan1b', 'C8DFpm', 'Bradney', 'Fegan', '1938-09-14', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('kcooke1c', 'ybEC0EP9E', 'Kaiser', 'Cooke', '1902-10-04', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ataile1d', 'AkxYt5Hr', 'Arly', 'Taile', '1954-10-10', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bmotton1e', 'LWxGCaqxmb', 'Barbey', 'Motton', '2003-09-02', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('timbrey1f', 'cCsvb7fJG1a', 'Tommie', 'Imbrey', '1999-07-05', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('slines1g', 'MxHKBUCe', 'Stephanus', 'Lines', '1917-09-07', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('jduerden1h', 'Wd2DOV7yCY', 'Jemima', 'Duerden', '2005-11-22', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bcurry1i', 'hwP7VjANV', 'Byrom', 'Curry', '1905-02-20', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('sladlow1j', 'yrluBW', 'Silas', 'Ladlow', '1946-05-01', 'Bigender', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('nholdron1k', 'phg3hHnWDba', 'Norbie', 'Holdron', '1981-06-03', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('hmiguel1l', 'BVjfZVkWSR9', 'Hermann', 'Miguel', '1948-03-19', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ksancto1m', 'uTZ6MWzFZ', 'Karen', 'Sancto', '1920-01-07', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('kmoylane1n', '9B6miIVCqq', 'Kirby', 'Moylane', '1908-11-28', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mbeceril1o', 'uit1ee', 'Miles', 'Beceril', '1945-01-14', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('egath1p', 'gboGIdY', 'Ethelred', 'Gath', '1903-08-13', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cgow1q', '0HSVPXifRwWu', 'Carolann', 'Gow', '1999-10-23', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('aderham1r', 'fyKQQ16Kw', 'Alberto', 'Derham', '1972-01-04', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('istadden1s', 'AosYCiM5up', 'Iolanthe', 'Stadden', '1947-08-17', 'Polygender', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('rtankin1t', 'GrFGX2Q', 'Raphaela', 'Tankin', '1953-01-09', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bmccartan1u', 'lZXXos', 'Bevon', 'McCartan', '1974-11-01', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cmccolley1v', 'dTCZryru', 'Carmel', 'McColley', '1952-09-21', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mfaux1w', 'rcThsM', 'Modesty', 'Faux', '1949-08-26', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('achidwick1x', 'uv1X89mLnPq5', 'Adelind', 'Chidwick', '1967-12-17', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('atoll1y', 'm6jFeQKIFS2', 'Augy', 'Toll', '1936-08-23', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('vferreiro1z', 'y68QgqXb', 'Vivianna', 'Ferreiro', '1994-05-06', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('bwheater20', 'hx6E3pAqOy', 'Bary', 'Wheater', '2021-11-12', 'Genderfluid', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('aroulston21', 'dXFwZMOsAc', 'Alric', 'Roulston', '1996-09-27', 'Genderqueer', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('glancaster22', 'xEt0K4OeTF', 'Gaspard', 'Lancaster', '1934-02-22', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lleland23', '7COhSb424IO9', 'Laural', 'Le land', '2004-09-08', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('tkhan24', 'k3XwwKCHsS', 'Timmy', 'Khan', '1976-09-16', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('kmosen25', 'qUtYTHgIhVT', 'Kary', 'Mosen', '1918-04-23', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ryurikov26', 'LwI1H8', 'Roanne', 'Yurikov', '1926-04-23', 'Genderqueer', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('tdade27', 'xM8MtHQd3rj', 'Tripp', 'Dade', '1938-01-21', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('dmcramsey28', '61bXHg1', 'Dennie', 'McRamsey', '1914-04-05', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('sswadon29', 'CQp05UKQC9y', 'Stafford', 'Swadon', '1922-02-02', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('nkingaby2a', 'Mn5x1BF', 'Nyssa', 'Kingaby', '1992-04-30', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('aboniface2b', 'g8YGj8ECkO', 'Aguste', 'Boniface', '1929-03-26', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('nvautin2c', 'KUgMvlgiiuRZ', 'Natal', 'Vautin', '1918-11-05', 'Genderqueer', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mdelaprelle2d', 'OO0A0jBT9', 'Mallorie', 'Delaprelle', '1921-11-13', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('tharflete2e', '4CTAnw', 'Tony', 'Harflete', '1923-06-03', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('achapple2f', 'ysywCl', 'Alisander', 'Chapple', '1976-02-22', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lsquibb2g', 'QjLLas5', 'Letti', 'Squibb', '1910-01-30', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('wflowers2h', 'y6P4W1lrNBVQ', 'Wenonah', 'Flowers', '1940-03-28', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('rwoolner2i', 'WmNmYqw1JXs', 'Reba', 'Woolner', '1989-08-22', 'Female', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('gaberdalgy2j', 'AIt2Cndlk', 'Gabie', 'Aberdalgy', '2001-11-30', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mcullimore2k', 'EmPXyZ', 'Madelaine', 'Cullimore', '1915-06-12', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('lgiovani2l', '3Do0Bo9FBO', 'Lyn', 'Giovani', '1961-02-10', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('smoine2m', 'xRNFTUigsuix', 'Salvidor', 'Moine', '2019-01-04', 'Genderfluid', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mtolossi2n', '1tWz8zoYzU08', 'Marie-ann', 'Tolossi', '2015-11-14', 'Female', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mangrock2o', 'pBuOEBbKg', 'Mar', 'Angrock', '1986-02-12', 'Male', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('mclarson2p', 'P5n95V63x2F', 'Maxim', 'Clarson', '1995-04-13', 'Male', false);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('ktreker2q', 'O4BYWPd', 'Kinna', 'Treker', '1902-03-31', 'Agender', true);
insert into usuario (nombreUsuario, contrasena, nombre, apellido, fechaNacimiento, genero, admin) values ('cbisacre2r', 'uax9ShJmEB57', 'Cinda', 'Bisacre', '2016-09-24', 'Female', false);



insert into categoria (id, nombre, descripcion) values (1, 'Avobenzone, Homosalate, Octisalate, Octocrylene, Oxybenzone', 'Excision of Left Common Carotid Artery, Open Approach, Diagn');
insert into categoria (id, nombre, descripcion) values (2, 'Homosalate, Octisalate, Oxybenzone, Avobenzone', 'Destruction of Conduction Mechanism, Percutaneous Approach');
insert into categoria (id, nombre, descripcion) values (3, 'Treatment Set TS335861', 'Supplement Right Lacrimal Duct with Autol Sub, Perc Approach');
insert into categoria (id, nombre, descripcion) values (4, 'nicotine polacrilex', 'Replacement of R Ethmoid Bone with Nonaut Sub, Open Approach');
insert into categoria (id, nombre, descripcion) values (5, 'Benzoyl Peroxide', 'Destruction of Aortic Body, Percutaneous Endoscopic Approach');
insert into categoria (id, nombre, descripcion) values (6, 'Titanium Dioxide, Zinc Oxide', 'Fusion Occip Jt w Synth Sub, Post Appr P Col, Open');
insert into categoria (id, nombre, descripcion) values (7, 'Arnica', 'CT Scan Trachea/Airway w H Osm Contrast, Unenh, Enhance');
insert into categoria (id, nombre, descripcion) values (8, 'Octinoxate', 'Replacement of R Knee Jt with Unicondyl, Open Approach');
insert into categoria (id, nombre, descripcion) values (9, 'Mucor plumbeus', 'Bypass Abd Aorta to L Int Ilia with Autol Vn, Open Approach');
insert into categoria (id, nombre, descripcion) values (10, 'Moxifloxacin Hydrochloride', 'Repair Left Fibula, Percutaneous Endoscopic Approach');

insert into medicamentos (nombre, descripcion, precio, id_categ) values ('MEIJER LUBRICANT EYE DROPS', 'Displaced intartic fx unsp calcaneus, init for opn fx', 16.11, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('AVANDARYL', 'Unsp fracture of unsp metacarpal bone, init for opn fx', 5.74, 2);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Moisturizing Hand Sanitizer', 'Sltr-haris Type IV physl fx lower end ulna, left arm, init', 6.03, 2);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Avedana Pain Relieving Roll On', 'Toxic effect of manganese and its compounds, undet, init', 5.79, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Lenscale Quailbrush', 'Unsp fracture of right ischium, subs for fx w delay heal', 1.01, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('severe cold and sinus relief PE', 'Other disorders of lacrimal system', 12.52, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Clonazepam', 'Sltr-haris Type IV physl fx low end unsp femr, 7thP', 5.75, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Cystografin Dilute', 'Displ simp suprcndl fx w/o intrcndl fx l humer, 7thP', 6.05, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('SERTRALINE', 'Volcanic eruption', 11.52, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Nitro-Time', 'Dyslexia and alexia', 18.06, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('FAMILY CARE ANTIBIOTIC', 'Collapsed vertebra, NEC, cervicothoracic region, sqla', 14.41, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Ramipril', 'Other superficial bite of unspecified ear, sequela', 9.63, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Sleep Nighttime Sleep Aid', 'Mech compl of internal fixation device of vertebrae, sequela', 11.2, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('leader all day allergy', 'Poisoning by oth antihypertensive drugs, assault, subs', 6.12, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Atrovent', 'Isolated proteinuria w diffuse endocaplry prolif glomrlneph', 10.0, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Bite Beauty SPF 15 Sheer Balm', 'Disp fx of base of 3rd MC bone, l hand, 7thG', 7.16, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Orajel Instant Pain Relief for Toothache', 'Poisoning by other topical agents, assault, init encntr', 12.9, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Butalbital, Acetaminophen and Caffeine', 'NIHSS score 3', 17.22, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Doxycycline Hyclate', 'Hepatic failure, unspecified without coma', 14.9, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Roota Re V for women', 'Other congenital malformations of vagina', 12.35, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('up and up acetaminophen', 'Torus fx upper end of r humerus, subs for fx w routn heal', 12.42, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Pioglitazone and Metformin Hydrocholride', 'Sltr-haris Type III physeal fracture of upper end of humerus', 6.45, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Famciclovir', 'Contusion of right index finger with damage to nail, sequela', 3.22, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('ESIKA', 'Acquired absence of unspecified shoulder', 17.35, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Divalproex Sodium', 'Post-term newborn', 4.98, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('CARBON DIOXIDE', 'Nondisp fx of base of 4th MC bone, l hand, 7thK', 6.71, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('SHENG CHUN HERBAL', 'Unspecified nephritic syndrome', 14.9, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Phentermine Hydrochloride', 'Drug-induced chorea', 15.05, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Carbidopa and Levodopa', 'Encounter for aftercare following other organ transplant', 12.62, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('RECOTHROM', 'Poisoning by lysergide, accidental (unintentional), sequela', 12.75, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('DocQLace', 'Poisoning by oth antidepressants, undetermined, subs encntr', 6.28, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('SmileGuard Strawberry Shortcake Bubblegum', 'Laceration without foreign body, left ankle, sequela', 5.98, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Tension Headache', 'Central retinal vein occls, right eye, with macular edema', 4.16, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('LAMOTRIGINE', 'Nondisp fx of lateral condyle of r femr, 7thF', 9.96, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('ANTIBACTERIAL', 'Toxic effect of contact w oth venom animals, assault, subs', 5.92, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('OBAGI C RX SYSTEM C CLARIFYING SERUM', 'Underdosing of predominantly alpha-adrenocpt agonists, init', 7.7, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Amoxicillin', 'Burn of unspecified degree of upper back', 6.31, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Gelato Topical Anesthetic', 'Minimally displ Zone I fx sacrum, subs for fx w routn heal', 19.6, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Clorazepate Dipotassium', 'Poisoning by otorhino drugs and prep, assault, sequela', 12.21, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Methotrexate', 'Excess amount of bld or oth fluid given dur tranfs or infusn', 2.78, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Anastrozole', 'Nodular episcleritis, bilateral', 13.71, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Nicotine', 'Occup of bus injured in collision w ped/anml in traf', 18.93, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Bisacodyl', 'Nondisplaced osteochondral fracture of unspecified patella', 11.51, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Bio Myelin Protein', 'Smith''s fx r radius, subs for opn fx type I/2 w routn heal', 5.5, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('LEVAQUIN', 'Acquired stenosis of left external ear canal, unspecified', 4.77, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('STERILE DILUENT', 'Urticaria, unspecified', 5.64, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Bethanechol Chloride', 'Malignant neoplasm of mouth, unspecified', 19.21, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Clonazepam2', 'Fracture of unspecified phalanx of finger', 16.35, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Childrens Colic RELIEF', 'Di George''s syndrome', 19.75, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Bupropion Hydrochloride', 'Nondisp fx of nk of 2nd MC bone, r hand, 7thD', 13.69, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('SEAWEED MEDICLEAR MASK', 'Stenosis of bilateral lacrimal canaliculi', 19.44, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Depo-Testosterone', 'Unsp intcrn inj w LOC w death d/t brain inj bf consc, subs', 19.34, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Amitriptyline Hydrochloride', 'Mech compl of cardiac and vascular devices and implnt, subs', 11.59, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Torsemide', 'War operations involving fragments from weapons, milt', 7.55, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Legatrin PM', 'Traum hemor l cereb w LOC of 30 minutes or less, sequela', 17.07, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Proquin', 'Major laceration of right innominate or subclav vein, subs', 6.7, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('LANOXIN', 'Fall in (into) filled bathtub causing drown, init', 11.64, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('FeverALL Junior', 'Laceration of axillary artery, right side', 17.42, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('HyperTET', 'Fall into natural body of water striking water surface', 1.04, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Donald Duck Sun Smacker SPF 24 Tropical Touchdown', 'Other intervertebral disc disorders, lumbosacral region', 1.49, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Famotidine', 'Laceration without foreign body of nose, sequela', 1.41, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Cepacol', 'Oth injury of axillary artery, unspecified side, subs encntr', 12.39, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('White Pine', 'Melanoma in situ of unsp upper limb, including shoulder', 3.19, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Celadrin', 'Type 1 diabetes w diabetic peripheral angiopath w/o gangrene', 16.69, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Phentermine', 'Felty''s syndrome, left hip', 18.52, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Antiseptic Mouth Rinse', 'Rh incompatibility with hemolytic transfusion reaction', 18.06, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Hydrocodone Polistirex and Chlorpheniramine Polistirex Pennkinetic', 'Laceration of blood vessel of left middle finger', 16.49, 6);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('METFORMIN HYDROCHLORIDE', 'Paralytic lagophthalmos', 2.98, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Benztropine Mesylate', 'Open bite of abd wall, l upr q w/o penet perit cav, sequela', 16.29, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Hand Sanitizer', 'Asphyx due to smothr under another person''s body, acc', 16.18, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('HELLO FLAWLESS OXYGEN WOW Broad Spectrum SPF 25 BRIGHTENING MAKEUP - IM PURE 4 SURE', 'Corrosion of third degree of unspecified wrist, sequela', 19.01, 3);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('EAR', 'Pre-existing type 2 diabetes mellitus, in childbirth', 9.64, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Levothyroxine Sodium', 'Person outside car injured in nonclsn trnsp accident nontraf', 1.53, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Ursodiol', 'Disorder of bilirubin metabolism, unspecified', 11.29, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Anti-Bacterial Hand Sanitizer', 'Exdtve age-rel mclr degn, left eye, with inact chrdl neovas', 3.1, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Plum', 'Hypertensive heart and chronic kidney disease', 2.31, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('JEUNCELL a drug for atopic dermatitis', 'Pathological fracture in other disease, unsp femur, sequela', 8.48, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Sinuchron', 'Other myositis, hand', 8.41, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Scanty Flow', 'Labor and delivery comp by vascular lesion of cord, fetus 1', 18.72, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Trifluoperazine Hydrochloride', 'Nondisp fx of intermediate cuneiform of left foot, init', 12.22, 2);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('ACT Anticavity Fluoride Mint', 'Other snow-ski accident', 1.86, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Arixtra', 'Inj msl/tnd lng flexor muscle of toe at ankle and foot level', 16.45, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Body Luxuries Coconut Vanilla Waterless Anti-bacterial Hand Sanitizer', 'Oth fx upr end unsp tibia, 7thH', 8.0, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Acyclovir', 'Laceration without foreign body, left lower leg, subs encntr', 6.81, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Accupril', 'Drowning and submersion due to fall off merchant ship, subs', 14.65, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Ibuprofen', 'Minor laceration of celiac artery, initial encounter', 15.6, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Amoxicillin2', 'Pedl cyc driver injured in collision w oth pedl cyc nontraf', 17.7, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Steady Remedy No. 14', 'Underdosing of histamine H2-receptor blockers, init encntr', 5.54, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Phenytoin Sodium', 'Laceration w/o foreign body of unsp part of head, subs', 12.4, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Wal-Dram', 'Unsp inj intrns musc/fasc/tend r rng fngr at wrs/hnd lv,sqla', 15.17, 10);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Tension', 'Other benign neoplasm of skin of eyelid, including canthus', 13.24, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Pepper Tree Pollen', 'Fracture of angle of mandible, unspecified side, 7thK', 12.14, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('HAMSOA YUYU DERMA119', 'Disord of amnio fluid and membrns, unsp, third tri, fetus 4', 7.97, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Prostate Symptom Relief', 'Encounter for prophylactic immunotherapy', 3.11, 1);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Warfarin Sodium', 'Posterior dislocation of right radial head, sequela', 3.13, 5);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('HOUSE DUST', 'Underdosing of local astringents and local detergents, init', 15.56, 9);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('RITUALS broad spectrum SPF 15 sunscreen matt finish foundation SHADE 12', 'Other dislocation of right knee, sequela', 13.75, 8);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('Cetirizine Hydrochloride and Pseudoephedrine Hydrochloride', 'Fracture of subcondylar process of left mandible, 7thK', 2.37, 4);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('No7 CC', 'Other injury of abdominal aorta, sequela', 13.28, 7);
insert into medicamentos (nombre, descripcion, precio, id_categ) values ('pravastatin sodium', 'Squamous cell carcinoma of skin of scalp and neck', 1.58, 7);


