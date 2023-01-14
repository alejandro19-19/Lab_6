-- Inserts para la tabla subContractor
INSERT INTO subContractor (s_lname,s_fname,salary) VALUES
('Rodriguez','Carlos',3200000),
('Escobar','Camila',3500000),
('Santa','Alberto',2700000),
('Agudelo','Maria',3100000),
('Ramirez','Nicolas',3050000),
('Gomez','Mauricio',1900000),
('Zambrano','Camila',3600000),
('Martinez','Cristian',2000000);

-- Inserts para la tabla builder
INSERT INTO builder (b_lname, b_fname, license) VALUES
('Escobar','Alejandro','3.1.4.1'),
('Santa','John','3.1.4.2'),
('Parra','Jose','3.1.4.9'),
('Padilla','Sebastian','3.1.4.3'),
('Sandoval','Luis','3.1.4.6'),
('Otero','Camilo','3.1.4.4'),
('Agudelo','Carlos','3.1.4.8'),
('Perez','Cristian','3.1.4.7'),
('Balanta','Manuel','3.1.4.8'),
('Gomez','Allison','3.1.4.7'),
('Garcia','Angela','3.1.4.1'),
('Rodrigez','Maria','3.1.4.6'),
('Martinez','Emily','3.1.4.9'),
('Pardo','Emiliano','3.1.4.3'),
('Polo','Matias','3.1.4.4');

-- Inserts para la tabla neighborhood
INSERT INTO neighborhood (n_name,city) VALUES
('Centenario','Cali'),
('La Merced','Cali'),
('Granada','Cali'),
('San Antonio','Cali'),
('Verbenal', 'Bogota'),
('Los Cedros','Bogota'),
('Chapinero','Bogota'),
('Américas','Bogota'),
('El Poblado','Medellin'),
('La isla','Medellin'),
('Las Granjas','Medellin'),
('Loreto','Medellin');

-- Inserts para la tabla hireInfo
INSERT INTO hireInfo (b_id, s_id, hiredate) VALUES
(1,1,'2019-01-01'),
(3,2,'2015-04-12'),
(4,3,'2020-10-10'),
(11,4,'2016-01-09'),
(2,5,'2013-02-03'),
(9,6,'2023-01-14'),
(8,7,'2019-09-10'),
(5,8,'2014-09-09'),
(6,1,'2019-05-04'),
(10,2,'2017-03-15'),
(12,3,'2012-05-10'),
(7,4,'2015-01-06'),
(13,5,'2022-06-19'),
(14,6,'2013-01-01'),
(15,7,'2019-10-05');

-- Inserts para la tabla house
INSERT INTO house(h_name, finish_date, price, b_id, n_id) VALUES
('Las consultas','2019-05-01',90000000,1,1),
('Nova', '2015-10-12', 15000000,2,4),
('El cañaduzal', '2021-03-10', 65000000,3,12),
('El jardin', '2016-07-09', 85000000,4,10),
('Estrella', '2013-09-03', 35000000,5,9),
('Mercurio', '2019-12-30', 95000000,6,6),
('Marfiles', '2014-12-09', 99000000,7,9),
('Perla', '2019-11-04', 50000000,8,11),
('Nova', '2019-12-12', 45000000,6,9),
('El cañaduzal', '2020-02-15', 35000000,7,11),
('Nova', '2017-06-30', 75000000,8,2),
('Paraiso', '2022-12-19', 65000000,9,7),
('Las consultas','2014-05-06',60000000,10,9);

