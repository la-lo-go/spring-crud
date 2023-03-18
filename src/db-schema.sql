#
# TABLE STRUCTURE FOR: alumnos
#

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `nota` decimal(4,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (1, 'Connor', 'Wisozk', '1');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (2, 'Neoma', 'Parker', '3');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (3, 'Trevor', 'Friesen', '1');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (4, 'Amy', 'Weimann', '4');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (5, 'Darian', 'Rau', '8');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (6, 'Rafaela', 'Batz', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (7, 'Alex', 'Abernathy', '4');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (8, 'Lexi', 'Runolfsson', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (9, 'Chance', 'Simonis', '2');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (10, 'Lelah', 'Metz', '8');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (11, 'Kobe', 'Dickinson', '4');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (12, 'Mae', 'Jacobi', '8');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (13, 'Violet', 'Lebsack', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (14, 'Peyton', 'Stoltenberg', '9');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (15, 'Jamaal', 'Glover', '7');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (16, 'Justice', 'Schmidt', '3');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (17, 'Imelda', 'Wuckert', '8');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (18, 'Marvin', 'Doyle', '5');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (19, 'Yessenia', 'Cassin', '5');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (20, 'Paul', 'Turner', '3');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (21, 'Eliezer', 'Stanton', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (22, 'Rolando', 'Ritchie', '9');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (23, 'Osborne', 'Ortiz', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (24, 'Trenton', 'Labadie', '5');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (25, 'Candido', 'Reynolds', '9');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (26, 'Kailey', 'Bogisich', '3');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (27, 'Murl', 'Osinski', '9');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (28, 'Jed', 'Harvey', '6');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (29, 'Leopold', 'Ryan', '7');
INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `nota`) VALUES (30, 'Karlee', 'Leuschke', '3');


