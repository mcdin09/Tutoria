-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2023 a las 07:08:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `cubiculo` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `generacion` date DEFAULT NULL,
  `seccion` varchar(20) DEFAULT NULL,
  `programa_edu` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `cubiculo`, `correo`, `generacion`, `seccion`, `programa_edu`) VALUES
(1, 'RIVERA - MARTINEZ MA', '109 - CCO2', 'marcela.rivera@correo.buap.mx', '2015-08-01', 'CCO 1', 'CCO'),
(2, 'MOYAO - MARTÍNEZ YOL', '302 - CCO4', 'yolanda.moyao@correo.buap.mx', '2015-08-01', 'CCO 2', 'CCO'),
(3, 'CERVANTES - MARQUEZ ', NULL, 'patricia.cervantes@correo.buap.mx', '2015-08-01', 'CCO 3', 'CCO'),
(4, 'VILLAVICENCIO RAMOS ', NULL, 'bertha.villavicencio@correo.buap.mx', '2015-08-01', 'conv-2015', NULL),
(5, 'CORTEZ - JOSE ITALO ', '306 - CCO2', 'jose.italo@correo.buap.mx', '2015-08-01', 'ICC 01', 'ICC'),
(6, 'VAZQUEZ - RAMIREZ JE', '310 - CCO2', 'jesus.vazquezra@correo.buap.mx', '2015-08-01', 'ICC 02', 'ICC'),
(7, 'ROMAN - FLORES ALBER', '310 - CCO2', 'roman@correo.buap.mx', '2015-08-01', 'ICC 03', 'ICC'),
(8, 'SANCHEZ - ROMAN GUIL', '107 - CCO3', 'guille.sroman@correo.buap.mx', '2015-08-01', 'ICC 04', 'ICC'),
(9, 'HERNANDEZ - AMECA JO', '205 - CCO3', 'joseluis.hdzameca@correo.buap.mx', '2015-08-01', 'ICC 05', 'ICC'),
(10, 'HERRERA - COBIAN DIE', '103 R - CCO1', 'diego.herrera@correo.buap.mx', '2015-08-01', 'ICC 06', 'ICC'),
(11, 'CARRILLO - RUIZ MAYA', '113 - CCO3', 'maya.carrillo@correo.buap.mx', '2015-08-01', 'ICC 07', 'ICC'),
(12, 'ESPÍNDOLA - POZO ARM', '308 - CCO3', 'armando.espindolap@correo.buap.mx', '2015-08-01', 'ICC 08', 'ICC'),
(13, 'ARCHUNDIA - SIERRA E', '103 S - CCO1', 'etelvina.archundia@correo.buap.mx', '2015-08-01', 'ICC 09', 'ICC'),
(14, 'MOLINA - GARCIA MARI', NULL, 'consuelo.molina@correo.buap.mx', '2015-08-01', 'ITI 01', 'ITI'),
(15, 'SANDOVAL - SOLIS MAR', '106 - CCO2', 'maria.sandoval@correo.buap.mx', '2015-08-01', 'ITI 02', 'ITI'),
(16, 'VILARINO - AYALA DAR', '206 - CCO3', 'darnes.vilarino@correo.buap.mx', '2015-08-01', 'ITI 03', 'ITI'),
(17, 'SANCHEZ - RINZA BARB', '306 - CCO3', 'barbara.sanchez@correo.buap.mx', '2016-08-01', 'CCO01', 'CCO'),
(18, 'TAMARIZ - FLORES EDN', '309 - CCO2', 'iliana.tamariz@correo.buap.mx', '2016-08-01', 'CCO02', 'CCO'),
(19, 'GARCIA - JUAREZ PEDR', '104 - CCO2', 'pedro.garcia@correo.buap.mx', '2016-08-01', 'CCO03', 'CCO'),
(20, 'COLMENARES - GUILLEN', '103 C - CCO1', 'enrique.colmenares@correo.buap.mx', '2016-08-01', 'Gen 2009- Rescate', NULL),
(21, 'ROBLES - MENDOZA FRA', '103 Q - CCO1', 'francisco.roblesm@correo.buap.mx', '2016-08-01', 'ICC01', 'ICC'),
(22, 'RÍOS - ACEVEDO CARLO', '207 - CCO3', 'carlos.riosa@correo.buap.mx', '2016-08-01', 'ICC02', 'ICC'),
(23, 'AMBROSIO - VAZQUEZ A', '103 S - CCO1', 'almadelia.ambrosio@correo.buap.mx', '2016-08-01', 'ICC03', 'ICC'),
(24, 'ESTRADA - ANALCO JOS', '103 K - CCO1', 'martin.estrada@correo.buap.mx', '2016-08-01', 'ICC04', 'ICC'),
(25, 'SANTIAGO - DIAZ CARM', '103 - CCO2', 'marycarmen.santiago@correo.buap.mx', '2016-08-01', 'ICC05', 'ICC'),
(26, 'TORRIJOS MARIA TERES', NULL, 'teresa.torrijos@correo.buap.mx', '2016-08-01', 'ICC06', 'ICC'),
(27, 'BELTRAN - MARTINEZ B', '103 V - CCO1', 'beatriz.beltran@correo.buap.mx', '2016-08-01', 'ICC07', 'ICC'),
(28, 'SANCHEZ - LOPEZ ABRA', '108 - CCO4', 'abraham.sanchez@correo.buap.mx', '2016-08-01', 'ITI01', 'ITI'),
(29, 'GALICIA - HERNANDEZ ', '308 - CCO2', 'yalu.garcia@correo.buap.mx', '2016-08-01', 'ITI02', 'ITI'),
(30, 'ZEPEDA - CORTES CLAU', '103 Ñ - CCO1', 'claudia.zepeda@correo.buap.mx', '2016-08-01', 'ITI03', 'ITI'),
(31, 'DE ITA - LUNA GUILLE', 'CCO1', 'guillermo.deita@correo.buap.mx', '2017-01-01', 'CCO 01', 'CCO'),
(32, 'VILLAVICENCIO RAMOS ', NULL, 'bertha.villavicencio@correo.buap.mx', '2017-01-01', 'ICC01', 'ICC'),
(33, 'VERA - CERVANTES EUG', '103 N - CCO1', 'eugenia.vera@correo.buap.mx', '2017-01-01', 'ICC02', 'ICC'),
(34, 'CERON - GARNICA CARM', '103 N - CCO1', 'carmen.ceron@correo.buap.mx', '2017-01-01', 'ICC03', 'ICC'),
(35, 'COLMENARES - GUILLEN', '103 C - CCO1', 'enrique.colmenares@correo.buap.mx', '2017-08-01', 'CCO 101', 'CCO'),
(36, 'TRINIDAD - GARCIA GR', '311 - CCO3', 'gregorio.trinidad@correo.buap.mx', '2017-08-01', 'CCO 102', 'CCO'),
(37, 'MARCIAL - CASTILLO L', '109 - CCO2', 'luis.marcial@correo.buap.mx', '2017-08-01', 'CCO 103', 'CCO'),
(38, 'PINTO - AVENDANO DAV', '1 - CCO3', 'david.pinto@correo.buap.mx', '2017-08-01', 'ICC', 'ICC'),
(39, 'RUBIN - LINARES GUST', '302 - CCO3', 'gustavo.rubin@correo.buap.mx', '2017-08-01', 'ICC', 'ICC'),
(40, 'GONZALEZ - VELAZQUEZ', '103 K - CCO1', 'rogelio.gonzalez@correo.buap.mx', '2017-08-01', 'ICC 101', 'ICC'),
(41, 'MEJIA - MATIAS HILDA', '114 - CCO1', 'hilda.mejia@correo.buap.mx', '2017-08-01', 'ICC 102', 'ICC'),
(42, 'OLVERA - LOPEZ JOSE ', '207 - CCO3', 'jose.olvera@correo.buap.mx', '2017-08-01', 'ICC 103', 'ICC'),
(43, 'MARTINEZ - GUZMAN GE', '103 O - CCO1', 'gerardo.martinezgu@correo.buap.mx', '2017-08-01', 'ICC 104', 'ICC'),
(44, 'PEREZ - MARCIAL JUDI', '007A - CCO3', 'judith.perez@correo.buap.mx', '2017-08-01', 'ICC 105', 'ICC'),
(45, 'ROMERO - HERNANDEZ Y', '309 - CCO2', 'yeiny.romero@correo.buap.mx', '2017-08-01', 'ICC 106', 'ICC'),
(46, 'GARCIA - TAMAYO ROSA', '103 D - CCO1', 'rosa.tamayo@correo.buap.mx', '2017-08-01', 'ICC 107', 'ICC'),
(47, 'PEREZ - LUCERO JOSUE', '204 - CCO3', ' josue.perezl@correo.buap.mx', '2017-08-01', 'ITI 101', 'ITI'),
(48, 'TORRES - ACUITLAPA O', '114 - CCO1', 'omar.torresa@correo.buap.mx', '2017-08-01', 'ITI 102', 'ITI'),
(49, 'CONDE - RAMIREZ JUAN', '108 - CCO4', 'carlos.conder@correo.buap.mx', '2017-08-01', 'ITI 103', 'ITI'),
(50, 'ROSALES - LOPEZ KARI', '103 - CCO3', 'karina.rosalesl@correo.buap.mx', '2018-01-01', 'ICC 01', 'ICC'),
(51, 'SANCHEZ - GALVEZ MAR', '103 F - CCO1', 'mariae.sanchez@correo.buap.mx', '2018-01-01', 'ICC02', 'ICC'),
(52, 'SANCHEZ - GALVEZ MAR', '103 G - CCO1', 'sanchez.galvez@correo.buap.mx', '2018-01-01', 'ICC03', 'ICC'),
(53, 'ROSSAINZ - LOPEZ MAR', '209 - CCO2', 'mario.rossainz@correo.buap.mx', '2018-01-01', 'REV 2017', NULL),
(54, 'ZACARIAS - FLORES FE', '103 O - CCO1', 'fernando.zacarias@correo.buap.mx', '2018-08-01', 'CCO 101', 'CCO'),
(55, 'MALDONADO - GARCIA A', 'CCO3', 'abraham.maldonadoga@correo.buap.mx', '2018-08-01', 'CCO 102', 'CCO'),
(56, 'MENDOZA - ROJAS ANGE', '106 - CCO5', 'angel.mendozaro@correo.buap.mx', '2018-08-01', 'CCO 103', 'CCO'),
(57, 'RAMIREZ - HERNANDEZ ', '209 - CCO2', 'hector.ramirezhe@correo.buap.mx', '2018-08-01', 'ICC 101', 'ICC'),
(58, 'ESPINOZA - HERNANDEZ', '115 - CCO2', 'nelva.espinoza@correo.buap.mx', '2018-08-01', 'ICC 102', 'ICC'),
(59, 'CASTILLO - ZACATELCO', '114 - CCO1', 'hilda.castillo@correo.buap.mx', '2018-08-01', 'ICC 103', 'ICC'),
(60, 'ZAMORA - LIMA CARLOS', '108 A - CCO4', 'carlos.zamorali@correo.buap.mx', '2018-08-01', 'ICC 104', 'ICC'),
(61, 'MARIN - DORADO GUILL', '301 - CCO2', 'guillermo.marind@correo.buap.mx', '2018-08-01', 'ICC 106', 'ICC'),
(62, 'ANZURES - GARCIA MAR', '103 A - CCO1', 'mario.anzures@correo.buap.mx', '2018-08-01', 'ITI 101', 'ITI'),
(63, 'BERNABE - LORANCA MA', '307 - CCO3', 'maria.bernabe@correo.buap.mx', '2018-08-01', 'ITI 102', 'ITI'),
(64, 'HURTADO - MADRID JOS', '306 - CCO2', 'miguel.hurtado@correo.buap.mx', '2018-08-01', 'ITI 103', 'ITI'),
(65, 'CONTRERAS - JUAREZ R', '110 - CCO3', 'roberto.contreras@correo.buap.mx', '2018-08-01', 'REVALIDACION', NULL),
(66, 'GUERRERO - GARCIA JO', '2 - CCO3', ' josefina.guerrero@correo.buap.mx', '2019-01-01', 'ICC 101', 'ICC'),
(67, 'GONZALEZ - FLORES MA', '108- CCO2', 'marcos.gonzalez@correo.buap.mx', '2019-01-01', 'ICC 102', 'ICC'),
(68, 'GONZALEZ - CALLEROS ', '2 - CCO3', 'juanmanuel.gonzalez@correo.buap.mx', '2019-01-01', 'ICC 103', 'ICC'),
(69, 'PALOMINO - JIMENEZ C', '108 A - CCO4', 'carlos.palomino@correo.buap.mx', '2019-08-01', 'CCO 01', 'CCO'),
(70, 'DE LA ROSA - FLORES ', '103 U - CCO1', 'rafael.delarosa@correo.buap.mx', '2019-08-01', 'CCO 02', 'CCO'),
(71, 'SILVA - SANCHEZ PATR', NULL, 'patricia.silvas@correo.buap.mx', '2019-08-01', 'CCO 03', 'CCO'),
(72, 'PARRA - VICTORINO JO', NULL, 'bernardo.parra@correo.buap.mx', '2019-08-01', 'ICC 01', 'ICC'),
(73, 'CHAVIRA - MARTINEZ E', '103 - CCO1', 'elsa.chavira@correo.buap.mx', '2019-08-01', 'ICC 02', 'ICC'),
(74, 'LARIOS - GOMEZ MARIA', 'CCO3', 'mariano.larios@correo.buap.mx', '2019-08-01', 'ICC 03', 'ICC'),
(75, 'PEREZ DE CELIS - HER', '204 - CCO3', 'maria.perezdecelis@correo.buap.mx', '2019-08-01', 'ICC 04', 'ICC'),
(76, 'LAVALLE - MARTINEZ J', '103 T - CCO1', 'jose.lavalle@correo.buap.mx', '2019-08-01', 'ICC 05', 'ICC'),
(77, 'BONFIL - BARRAGAN ER', '103 - CCO3', 'erika.bonfil@correo.buap.mx', '2019-08-01', 'ICC 06', 'ICC'),
(78, 'HERNANDEZ - BERISTAI', '301 - CCO2', 'adrianah.beristain@correo.buap.mx', '2019-08-01', 'ICC', 'ICC'),
(79, 'TORIZ - PALACIOS ALF', '108 - CCO4', 'alfredo.toriz@correo.buap.mx', '2019-08-01', 'ITI 01', 'ITI'),
(80, 'MARTINEZ - MIRON ERI', '301 - CCO2', 'erika.mtzm@correo.buap.mx', '2019-08-01', 'ITI 02', 'ITI'),
(81, 'ZENTENO - VAZQUEZ AN', '103 - CCO5', 'ana.zenteno@correo.buap.mx', '2019-08-01', 'ITI 03', 'ITI'),
(82, 'DRA. MIREYA TOVAR VI', 'CCO1', 'mireya.tovar@correo.buap.mx', '2020-01-01', 'ICC 01', 'ICC'),
(83, 'M.C. MANUEL AGUILAR ', 'CCO2', 'manuel.aguilarrod@correo.buap.mx', '2020-01-01', 'ICC 02', 'ICC'),
(84, 'MTRA. MARÍA DEL ROSA', '209 - CCO2', 'rosario.hernandezhe@correo.buap.mx', '2020-01-01', 'ICC 03', 'ICC'),
(85, 'M.C. LILIA MANTILLA ', '8 - CCO3', 'mantilla.narvaez@correo.buap.mx', '2020-01-01', 'ICC 04', 'ICC'),
(86, 'DRA. IRENE OLAYA AYA', '305 - CCO3', 'irene.ayaquica@correo.buap.mx', '2020-01-01', 'REVALIDACIÓN', 'CCO'),
(87, 'M.C. ALBERTO ROMAN F', '310 - CCO2', 'roman@correo.buap.mx', '2021-01-01', 'CCO 101', 'CCO'),
(88, 'M.C. MARCELA RIVERA ', NULL, 'marcela.rivera@correo.buap.mx', '2021-01-01', 'CCO 102', 'CCO'),
(89, 'DRA. MARÍA DE LOURDE', '106 - CCO2', 'maria.sandoval@correo.buap.mx', '2021-01-01', 'CCO 103', 'CCO'),
(90, 'DRA. ETELVINA ARCHUN', '103 S - CCO1', 'etelvina.archundia@correo.buap.mx', '2021-01-01', 'ICC 101', 'ICC'),
(91, 'DR. JOSÉ ANDRÉS VÁZQ', '103 U - CCO1', 'andres.vazquez@correo.buap.mx', '2021-01-01', 'ICC 102', 'ICC'),
(92, 'DRA. GUILLERMINA SÁN', '103 - CCO5', 'guille.sroman@correo.buap.mx', '2021-01-01', 'ICC 103', 'ICC'),
(93, 'M.C. MARÍA ANTONIA R', '301 - CCO2', 'maria.ruizd@correo.buap.mx', '2021-01-01', 'ICC 104', 'ICC'),
(94, 'DR. LUIS CARLOS ALTA', '302 - CCO4', 'luis.altamirano@correo.buap.mx', '2021-01-01', 'ICC 105', 'ICC'),
(95, 'DRA. MAYA CARRILLO R', '113 - CCO3', 'maya.carrillo@correo.buap.mx', '2021-01-01', 'ICC 106', 'ICC'),
(96, 'DR. EDUARDO ARIZA VE', '103 P - CCO1', 'eduardo.ariza@correo.buap.mx', '2021-01-01', 'ICC 107', 'ICC'),
(97, 'DR. GABRIEL JUÁREZ D', '106-CCO5', 'gabriel.juarezga@correo.buap.mx', '2021-01-01', 'ICC 108', 'ICC'),
(98, 'M.C. JESÚS VÁZQUEZ R', '310 - CCO2', 'jesus.vazquezra@correo.buap.mx', '2021-01-01', 'ICC 109', 'ICC'),
(99, 'DR. JUAN FRANCISCO L', '310 - CCO2', 'juan.leyvab@correo.buap.mx', '2021-01-01', 'ICC 110', 'ICC'),
(100, 'DR. JOSÉ LUIS HERNÁN', '205 - CCO3', 'joseluis.hdzameca@correo.buap.mx', '2021-01-01', 'ITI 101', 'ITI'),
(101, 'M.C. GILBERTO LÓPEZ ', '310 - CCO2', 'gilberto.lopezpoblano@correo.buap.mx', '2021-01-01', 'ITI 102', 'ITI'),
(102, 'M.C. JORGE EDUARDO X', '301 - CCO2', 'jorge.xalteno@correo.buap.mx', '2021-01-01', 'ITI 103', 'ITI'),
(103, 'M.C. MIGUEL VARGAS L', NULL, 'miguel.vargasl@correo.buap.mx', '2021-01-01', 'ITI 104', 'ITI'),
(104, 'DR. PEDRO BELLO LÓPE', '103 F - CCO1', 'pedro.bello@correo.buap.mx', '2021-08-01', 'CCO 101', 'CCO'),
(105, 'M.C. ALMA DELIA AMBR', '103 S - CCO1', 'almadelia.ambrosio@correo.buap.mx', '2021-08-01', 'CCO 102', 'CCO'),
(106, 'DRA. MELIZA CONTRERA', '103 Ñ - CCO1', 'meliza.contreras@correo.buap.mx', '2021-08-01', 'CCO 103', 'CCO'),
(107, 'DR. ROBERTO CONTRERA', '110 - CCO3', 'roberto.contreras@correo.buap.mx', '2021-08-01', 'ICC 101', 'ICC'),
(108, 'DR. IVO PINEDA TORRE', '103 E - CCO1', 'ivo.pineda@correo.buap.mx', '2021-08-01', 'ICC 102', 'ICC'),
(109, 'DR. ARMANDO ESPÍNDOL', '308 - CCO3', 'armando.espindolap@correo.buap.mx', '2021-08-01', 'ICC 103', 'ICC'),
(110, 'MTRA. OLIVIA ROMERO ', '308 - CCO3', 'olivia.romero@correo.buap.mx', '2021-08-01', 'ICC 104', 'ICC'),
(111, 'M.C. JUAN CARLOS PÉR', '007A - CCO3', 'juancarlos.perez@correo.buap.mx', '2021-08-01', 'ICC 105', 'ICC'),
(112, 'M.C. YOLANDA MOYAO M', '302 - CCO4', 'yolanda.moyao@correo.buap.mx', '2021-08-01', 'ICC 106', 'ICC'),
(113, 'DR. ABRAHAM SÁNCHEZ ', '108 - CCO4', 'abraham.sanchez@correo.buap.mx', '2021-08-01', 'ITI 101', 'ITI'),
(114, 'M.I. CARLOS ARMANDO ', '207 - CCO3', 'carlos.riosa@correo.buap.mx', '2021-08-01', 'ITI 102', 'ITI'),
(115, 'DRA. CLAUDIA ZEPEDA ', '103 Ñ - CCO1', 'claudia.zepeda@correo.buap.mx', '2021-08-01', 'ITI 103', 'ITI'),
(116, 'TORRIJOS - MUNOZ MAR', NULL, 'teresa.torrijos@correo.buap.mx', '2022-01-01', 'ICC 101', 'ICC'),
(117, 'HERRERA - COBIAN DIE', '103 R - CCO1', 'diego.herrera@correo.buap.mx', '2022-01-01', 'ICC 102', 'ICC'),
(118, 'VILARINO - AYALA DAR', '206 - CCO3', 'darnes.vilarino@correo.buap.mx', '2022-01-01', 'ICC 103', 'ICC'),
(119, 'VERA - CERVANTES EUG', '103 N - CCO1', 'eugenia.vera@correo.buap.mx', '2022-01-01', 'ICC 104', 'ICC'),
(120, 'BELTRAN - MARTINEZ B', '103 V - CCO1', 'beatriz.beltran@correo.buap.mx', '2022-01-01', 'ITI 101', 'ITI'),
(121, 'Martínez Guzmán Gera', '103 O - CCO1', 'gerardo.martinezgu@correo.buap.mx', '2022-08-01', 'CCO 101', 'CCO'),
(122, 'Trinidad García Greg', '311 - CCO3', 'gregorio.trinidad@correo.buap.mx', '2022-08-01', 'CCO 102', 'CCO'),
(123, 'Garcés Báez José Alf', '5 - CCO3', 'alfonso.garces@correo.buap.mx', '2022-08-01', 'CCO 103', 'CCO'),
(124, 'Pérez Lucero Josué ', '204 - CCO3', 'josue.perezl@correo.buap.mx', '2022-08-01', 'ICC 101', 'ICC'),
(125, 'Rossainz López Mario', '209 - CCO2', 'mario.rossainz@correo.buap.mx', '2022-08-01', 'ICC 102', 'ICC'),
(126, 'García Tamayo Rosa ', '103 D - CCO1', 'rosa.tamayo@correo.buap.mx', '2022-08-01', 'ICC 103', 'ICC'),
(127, 'León Chávez Miguel Á', '103 B - CCO1', 'miguel.leon@correo.buap.mx', '2022-08-01', 'ICC 104', 'ICC'),
(128, 'Molina García María ', NULL, 'consuelo.molina@correo.buap.mx', '2022-08-01', 'ICC 105', 'ICC'),
(129, 'Jiménez de los Santo', '113 - CCO2', 'guillermo.jimenezd@correo.buap.mx', '2022-08-01', 'ICC 106', 'ICC'),
(130, 'González Velázquez R', '103 K - CCO1', 'rogelio.gonzalez@correo.buap.mx', '2022-08-01', 'ITI 101', 'ITI'),
(131, 'Galicia Hernández Ya', '308 - CCO2', 'yalu.galicia@correo.buap.mx', '2022-08-01', 'ITI 102', 'ITI'),
(132, 'Olmos Pineda Ivan ', '106 - CCO3', 'ivan.olmos@correo.buap.mx', '2022-08-01', 'ITI 103', 'ITI'),
(133, 'M.C. OMAR TORRES ACU', '114 - CCO1', 'omar.torresa@correo.buap.mx', '2023-01-01', 'ICC 101', 'ICC'),
(134, 'DR. ARTURO OLVERA LÓ', '207 - CCO3', 'jose.olvera@correo.buap.mx', '2023-01-01', 'ICC 102', 'ICC'),
(135, 'MTRO. HILARIO SALAZA', 'CCO3', 'hilario.salazar@correo.buap.mx', '2023-01-01', 'ICC 103', 'ICC'),
(136, 'DRA. CARMEN CERÓN GÁ', '103 N - CCO1', 'carmen.ceron@correo.buap.mx', '2023-01-01', 'ICC 104', 'ICC'),
(137, 'M.C. HILDA MEJÍA MAT', '114 - CCO1', 'hilda.mejia@correo.buap.mx', '2023-01-01', 'ITI 101', 'ITI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
