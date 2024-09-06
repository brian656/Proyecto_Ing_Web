-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2022 a las 18:24:19
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psrsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa`
--

CREATE TABLE `casa` (
  `id_casa` int(11) NOT NULL,
  `codigo_casa` varchar(20) NOT NULL,
  `contraseña_dueño` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `casa`
--

INSERT INTO `casa` (`id_casa`, `codigo_casa`, `contraseña_dueño`) VALUES
(1, 'c1', 'Castañeda_Aguilar2022'),
(2, 'c2', 'Castañeda_Aguilar2022'),
(3, 'c3', 'Castañeda_Aguilar2022'),
(4, 'c4', 'Castañeda_Aguilar2022'),
(5, 'c5', 'Castañeda_Aguilar2022'),
(6, 'c6', 'Castañeda_Aguilar2022'),
(7, 'c7', 'Castañeda_Aguilar2022'),
(8, 'c8', 'Castañeda_Aguilar2022'),
(9, 'c9', 'Castañeda_Aguilar2022'),
(10, 'c10', 'Castañeda_Aguilar2022'),
(11, 'c11', 'Castañeda_Aguilar2022'),
(12, 'c12', 'Castañeda_Aguilar2022'),
(13, 'c13', 'Castañeda_Aguilar2022'),
(14, 'c14', 'Castañeda_Aguilar2022'),
(15, 'c15', 'Castañeda_Aguilar2022'),
(16, 'c16', 'Castañeda_Aguilar2022'),
(17, 'c17', 'Castañeda_Aguilar2022'),
(18, 'c18', 'Castañeda_Aguilar2022'),
(19, 'c19', 'Castañeda_Aguilar2022'),
(20, 'c20', 'Castañeda_Aguilar2022'),
(21, 'c21', 'Castañeda_Aguilar2022'),
(22, 'c22', 'Castañeda_Aguilar2022'),
(23, 'c23', 'Castañeda_Aguilar2022'),
(24, 'c24', 'Castañeda_Aguilar2022'),
(25, 'c25', 'Castañeda_Aguilar2022'),
(26, 'c26', 'Castañeda_Aguilar2022'),
(27, 'c27', 'Castañeda_Aguilar2022'),
(28, 'c28', 'Castañeda_Aguilar2022'),
(29, 'c29', 'Castañeda_Aguilar2022'),
(30, 'c30', 'Castañeda_Aguilar2022'),
(31, 'c31', 'Castañeda_Aguilar2022'),
(32, 'c32', 'Castañeda_Aguilar2022'),
(33, 'c33', 'Castañeda_Aguilar2022'),
(34, 'c34', 'Castañeda_Aguilar2022'),
(35, 'c35', 'Castañeda_Aguilar2022'),
(36, 'c36', 'Castañeda_Aguilar2022'),
(37, 'c37', 'Castañeda_Aguilar2022'),
(38, 'c38', 'Castañeda_Aguilar2022'),
(39, 'c39', 'Castañeda_Aguilar2022'),
(40, 'c40', 'Castañeda_Aguilar2022'),
(41, 'c41', 'Castañeda_Aguilar2022'),
(42, 'c42', 'Castañeda_Aguilar2022'),
(43, 'c43', 'Castañeda_Aguilar2022'),
(44, 'c44', 'Castañeda_Aguilar2022'),
(45, 'c45', 'Castañeda_Aguilar2022'),
(46, 'c46', 'Castañeda_Aguilar2022'),
(47, 'c47', 'Castañeda_Aguilar2022'),
(48, 'c48', 'Castañeda_Aguilar2022'),
(49, 'c49', 'Castañeda_Aguilar2022'),
(50, 'c50', 'Castañeda_Aguilar2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`) VALUES
(1, 'sin entregar'),
(2, 'completo'),
(3, 'incompleto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`) VALUES
(1, 'Jose', 'Rojas'),
(2, 'Maria', 'Mendoza'),
(3, 'Yamile', 'Castañeda'),
(4, 'Deybit', 'Rivas'),
(5, 'Brandon', 'Salazar'),
(6, 'Luis', 'Linares'),
(7, 'Carlos', 'Carbajal'),
(8, 'Alejandra', 'Garcia'),
(9, 'Jose', 'Moran'),
(10, 'Daniel', 'Castillo'),
(11, 'Sebastian', 'Fernandez'),
(12, 'Bernardo', 'Jimenez'),
(13, 'Casandra', 'Pardo'),
(14, 'Victor', 'Vila'),
(15, 'Margarita', 'Bazan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE `precio` (
  `id_precio` int(11) NOT NULL,
  `precio_papel` float NOT NULL,
  `precio_carton` float NOT NULL,
  `precio_vidrio` float NOT NULL,
  `precio_plastico` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precio`
--

INSERT INTO `precio` (`id_precio`, `precio_papel`, `precio_carton`, `precio_vidrio`, `precio_plastico`) VALUES
(1, 0.8, 0.5, 1.2, 1.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reciclador`
--

CREATE TABLE `reciclador` (
  `id_reciclador` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reciclador`
--

INSERT INTO `reciclador` (`id_reciclador`, `id_usuario`) VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL,
  `id_reciclador` int(11) NOT NULL,
  `id_casa` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `peso_papel` float NOT NULL,
  `peso_carton` float NOT NULL,
  `peso_vidrio` float NOT NULL,
  `peso_plastico` float NOT NULL,
  `monto_total` float NOT NULL,
  `id_estado` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `id_reciclador`, `id_casa`, `fecha`, `peso_papel`, `peso_carton`, `peso_vidrio`, `peso_plastico`, `monto_total`, `id_estado`, `descripcion`) VALUES
(1,1,1,'2021-01-01',10,10,3,13,39.70,1,'Material sin entregar'),
(2,1,2,'2021-01-02',5,14,4,20,48.20,1,'Material sin entregar'),
(3,1,3,'2021-01-03',7,8,4,17,43.50,2,'Material entregado con éxito'),
(4,1,4,'2021-01-04',9,12,3,9,29.10,1,'Material sin entregar'),
(5,1,5,'2021-01-05',7,9,5,5,23.60,3,'Falta material'),
(6,2,6,'2021-01-06',9,6,2,16,42.60,2,'Material entregado con éxito'),
(7,2,7,'2021-01-07',7,13,6,6,24.70,3,'Falta material'),
(8,2,8,'2021-01-08',6,4,6,17,38.30,1,'Material sin entregar'),
(9,2,9,'2021-01-09',5,3,7,19,38.80,2,'Material entregado con éxito'),
(10,2,10,'2021-01-10',1,2,7,16,34.20,3,'Falta material'),
(11,3,11,'2021-01-11',3,14,2,12,33.40,1,'Material sin entregar'),
(12,3,12,'2021-01-12',8,14,7,5,28.10,1,'Material sin entregar'),
(13,3,13,'2021-01-13',3,1,1,16,30.50,1,'Material sin entregar'),
(14,3,14,'2021-01-14',6,6,7,4,21.00,3,'Falta material'),
(15,3,15,'2021-01-15',6,1,7,14,34.70,1,'Material sin entregar'),
(16,4,16,'2021-01-16',7,3,2,8,20.30,2,'Material entregado con éxito'),
(17,4,17,'2021-01-17',2,13,3,5,22.80,2,'Material entregado con éxito'),
(18,4,18,'2021-01-18',10,3,1,6,25.70,1,'Material sin entregar'),
(19,4,19,'2021-01-19',6,3,7,2,11.70,3,'Falta material'),
(20,4,20,'2021-01-20',1,12,1,13,33.50,1,'Material sin entregar'),
(21,5,21,'2021-01-21',8,14,3,6,27.20,3,'Falta material'),
(22,5,22,'2021-01-22',6,2,5,19,37.90,3,'Falta material'),
(23,5,23,'2021-01-23',5,12,2,17,41.50,3,'Falta material'),
(24,5,24,'2021-01-24',1,3,3,10,18.50,1,'Material sin entregar'),
(25,5,25,'2021-01-25',10,15,5,16,46.70,1,'Material sin entregar'),
(26,6,26,'2021-01-26',8,4,2,16,36.00,3,'Falta material'),
(27,6,27,'2021-01-27',2,1,4,15,25.80,1,'Material sin entregar'),
(28,6,28,'2021-01-28',7,9,4,15,41.00,1,'Material sin entregar'),
(29,6,29,'2021-01-29',9,12,1,12,34.80,2,'Material entregado con éxito'),
(30,6,30,'2021-01-30',10,12,7,6,24.20,2,'Material entregado con éxito'),
(31,7,31,'2021-01-31',4,5,1,20,40.50,3,'Falta material'),
(32,7,32,'2021-02-01',7,15,3,18,43.70,3,'Falta material'),
(33,7,33,'2021-02-02',9,13,1,16,40.10,3,'Falta material'),
(34,7,34,'2021-02-03',9,3,2,1,11.40,3,'Falta material'),
(35,7,35,'2021-02-04',5,2,3,8,24.20,2,'Material entregado con éxito'),
(36,8,36,'2021-02-05',10,9,1,4,22.10,3,'Falta material'),
(37,8,37,'2021-02-06',6,14,3,5,26.50,1,'Material sin entregar'),
(38,8,38,'2021-02-07',10,10,5,19,43.90,2,'Material entregado con éxito'),
(39,8,39,'2021-02-08',1,8,4,13,27.90,2,'Material entregado con éxito'),
(40,8,40,'2021-02-09',3,7,5,1,11.00,3,'Falta material'),
(41,9,41,'2021-02-10',8,4,2,6,18.60,2,'Material entregado con éxito'),
(42,9,42,'2021-02-11',4,5,2,18,39.90,3,'Falta material'),
(43,9,43,'2021-02-12',5,3,6,3,14.80,2,'Material entregado con éxito'),
(44,9,44,'2021-02-13',4,6,2,3,13.10,2,'Material entregado con éxito'),
(45,9,45,'2021-02-14',1,4,6,16,28.00,3,'Falta material'),
(46,10,46,'2021-02-15',3,12,2,4,22.80,2,'Material entregado con éxito'),
(47,10,47,'2021-02-16',1,9,5,4,14.90,2,'Material entregado con éxito'),
(48,10,48,'2021-02-17',1,15,5,19,38.00,3,'Falta material'),
(49,10,49,'2021-02-18',5,9,2,12,30.10,2,'Material entregado con éxito'),
(50,10,50,'2021-02-19',6,3,2,7,18.00,1,'Material sin entregar'),
(51,1,1,'2021-02-20',5,13,4,2,19.50,2,'Material entregado con éxito'),
(52,1,2,'2021-02-21',4,14,2,7,29.10,2,'Material entregado con éxito'),
(53,1,3,'2021-02-22',7,14,7,17,41.70,3,'Falta material'),
(54,1,4,'2021-02-23',1,11,5,5,19.80,3,'Falta material'),
(55,1,5,'2021-02-24',8,8,6,19,42.50,3,'Falta material'),
(56,2,6,'2021-02-25',2,12,2,7,25.30,2,'Material entregado con éxito'),
(57,2,7,'2021-02-26',9,2,2,3,15.10,1,'Material sin entregar'),
(58,2,8,'2021-02-27',3,7,2,20,38.30,1,'Material sin entregar'),
(59,2,9,'2021-02-28',2,5,7,15,32.60,1,'Material sin entregar'),
(60,2,10,'2021-03-01',3,6,1,7,19.50,1,'Material sin entregar'),
(61,3,11,'2021-03-02',1,15,2,12,28.70,3,'Falta material'),
(62,3,12,'2021-03-03',7,7,7,19,46.00,2,'Material entregado con éxito'),
(63,3,13,'2021-03-04',9,12,5,5,29.10,3,'Falta material'),
(64,3,14,'2021-03-05',6,3,1,20,41.10,2,'Material entregado con éxito'),
(65,3,15,'2021-03-06',4,5,3,1,13.20,1,'Material sin entregar'),
(66,4,16,'2021-03-07',2,2,1,17,30.50,2,'Material entregado con éxito'),
(67,4,17,'2021-03-08',1,4,1,5,12.70,3,'Falta material'),
(68,4,18,'2021-03-09',6,15,6,3,22.80,3,'Falta material'),
(69,4,19,'2021-03-10',10,7,2,8,24.70,3,'Falta material'),
(70,4,20,'2021-03-11',9,15,5,11,36.00,2,'Material entregado con éxito'),
(71,5,21,'2021-03-12',10,1,1,2,13.90,2,'Material entregado con éxito'),
(72,5,22,'2021-03-13',6,11,5,1,17.80,2,'Material entregado con éxito'),
(73,5,23,'2021-03-14',8,1,6,12,28.50,3,'Falta material'),
(74,5,24,'2021-03-15',7,5,1,9,22.80,1,'Material sin entregar'),
(75,5,25,'2021-03-16',5,4,2,4,16.80,1,'Material sin entregar'),
(76,6,26,'2021-03-17',5,3,6,6,21.70,1,'Material sin entregar'),
(77,6,27,'2021-03-18',10,14,5,8,31.80,2,'Material entregado con éxito'),
(78,6,28,'2021-03-19',7,3,4,1,13.40,3,'Falta material'),
(79,6,29,'2021-03-20',10,13,1,6,30.70,2,'Material entregado con éxito'),
(80,6,30,'2021-03-21',3,14,3,2,14.80,2,'Material entregado con éxito'),
(81,7,31,'2021-03-22',7,15,7,19,46.40,1,'Material sin entregar'),
(82,7,32,'2021-03-23',7,8,7,2,19.80,1,'Material sin entregar'),
(83,7,33,'2021-03-24',1,3,6,17,29.00,2,'Material entregado con éxito'),
(84,7,34,'2021-03-25',5,9,1,13,31.60,3,'Falta material'),
(85,7,35,'2021-03-26',10,1,3,13,31.60,3,'Falta material'),
(86,8,36,'2021-03-27',1,5,2,6,13.50,1,'Material sin entregar'),
(87,8,37,'2021-03-28',3,2,7,13,25.30,2,'Material entregado con éxito'),
(88,8,38,'2021-03-29',7,11,2,11,33.60,1,'Material sin entregar'),
(89,8,39,'2021-03-30',3,13,6,16,34.10,3,'Falta material'),
(90,8,40,'2021-03-31',8,14,1,15,37.10,2,'Material entregado con éxito'),
(91,9,41,'2021-04-01',6,13,5,18,40.70,2,'Material entregado con éxito'),
(92,9,42,'2021-04-02',8,15,2,10,32.50,2,'Material entregado con éxito'),
(93,9,43,'2021-04-03',7,13,5,7,28.60,2,'Material entregado con éxito'),
(94,9,44,'2021-04-04',4,6,1,5,16.10,1,'Material sin entregar'),
(95,9,45,'2021-04-05',4,2,6,1,12.90,2,'Material entregado con éxito'),
(96,10,46,'2021-04-06',6,2,7,14,29.20,2,'Material entregado con éxito'),
(97,10,47,'2021-04-07',7,6,2,16,33.80,1,'Material sin entregar'),
(98,10,48,'2021-04-08',9,15,4,10,32.10,3,'Falta material'),
(99,10,49,'2021-04-09',4,4,5,12,25.60,3,'Falta material'),
(100,10,50,'2021-04-10',5,1,4,3,10.20,1,'Material sin entregar'),
(101,1,1,'2021-04-11',4,11,3,13,29.40,2,'Material entregado con éxito'),
(102,1,2,'2021-04-12',5,5,5,19,39.80,1,'Material sin entregar'),
(103,1,3,'2021-04-13',6,11,3,12,30.70,1,'Material sin entregar'),
(104,1,4,'2021-04-14',8,8,5,18,38.60,1,'Material sin entregar'),
(105,1,5,'2021-04-15',9,14,1,7,28.30,2,'Material entregado con éxito'),
(106,2,6,'2021-04-16',8,6,1,13,31.30,1,'Material sin entregar'),
(107,2,7,'2021-04-17',3,3,3,14,26.10,2,'Material entregado con éxito'),
(108,2,8,'2021-04-18',1,11,4,12,32.70,3,'Falta material'),
(109,2,9,'2021-04-19',9,9,7,14,33.90,1,'Material sin entregar'),
(110,2,10,'2021-04-20',1,5,2,15,33.00,2,'Material entregado con éxito'),
(111,3,11,'2021-04-21',4,2,3,2,15.60,3,'Falta material'),
(112,3,12,'2021-04-22',10,8,2,8,25.20,3,'Falta material'),
(113,3,13,'2021-04-23',4,7,2,5,15.40,3,'Falta material'),
(114,3,14,'2021-04-24',1,5,7,16,32.10,2,'Material entregado con éxito'),
(115,3,15,'2021-04-25',4,5,3,1,14.40,2,'Material entregado con éxito'),
(116,4,16,'2021-04-26',5,1,1,13,26.40,3,'Falta material'),
(117,4,17,'2021-04-27',9,6,5,3,23.10,3,'Falta material'),
(118,4,18,'2021-04-28',4,11,3,18,36.90,3,'Falta material'),
(119,4,19,'2021-04-29',10,14,4,10,33.60,1,'Material sin entregar'),
(120,4,20,'2021-04-30',7,6,1,11,28.70,2,'Material entregado con éxito'),
(121,5,21,'2021-05-01',1,3,6,7,14.00,1,'Material sin entregar'),
(122,5,22,'2021-05-02',10,12,2,10,32.60,1,'Material sin entregar'),
(123,5,23,'2021-05-03',7,1,4,2,11.50,3,'Falta material'),
(124,5,24,'2021-05-04',6,15,4,19,44.40,2,'Material entregado con éxito'),
(125,5,25,'2021-05-05',2,12,7,6,20.20,1,'Material sin entregar'),
(126,6,26,'2021-05-06',5,10,7,16,36.60,1,'Material sin entregar'),
(127,6,27,'2021-05-07',4,5,2,20,39.30,3,'Falta material'),
(128,6,28,'2021-05-08',1,12,6,4,15.20,2,'Material entregado con éxito'),
(129,6,29,'2021-05-09',4,12,4,6,23.00,1,'Material sin entregar'),
(130,6,30,'2021-05-10',5,3,7,1,10.60,3,'Falta material'),
(131,7,31,'2021-05-11',7,5,4,14,31.50,2,'Material entregado con éxito'),
(132,7,32,'2021-05-12',6,3,1,14,28.50,2,'Material entregado con éxito'),
(133,7,33,'2021-05-13',7,3,5,13,30.20,2,'Material entregado con éxito'),
(134,7,34,'2021-05-14',6,13,1,6,21.50,2,'Material entregado con éxito'),
(135,7,35,'2021-05-15',10,12,3,15,41.30,1,'Material sin entregar'),
(136,8,36,'2021-05-16',3,11,2,8,22.30,3,'Falta material'),
(137,8,37,'2021-05-17',8,13,3,9,27.60,2,'Material entregado con éxito'),
(138,8,38,'2021-05-18',4,3,2,14,30.50,1,'Material sin entregar'),
(139,8,39,'2021-05-19',3,2,3,2,10.00,3,'Falta material'),
(140,8,40,'2021-05-20',1,15,5,11,27.20,3,'Falta material'),
(141,9,41,'2021-05-21',9,8,1,10,33.40,3,'Falta material'),
(142,9,42,'2021-05-22',9,10,1,14,34.40,3,'Falta material'),
(143,9,43,'2021-05-23',1,9,7,16,31.70,1,'Material sin entregar'),
(144,9,44,'2021-05-24',1,9,7,19,38.60,2,'Material entregado con éxito'),
(145,9,45,'2021-05-25',7,14,7,15,43.50,2,'Material entregado con éxito'),
(146,10,46,'2021-05-26',5,12,6,7,27.70,1,'Material sin entregar'),
(147,10,47,'2021-05-27',10,15,3,19,47.60,1,'Material sin entregar'),
(148,10,48,'2021-05-28',7,4,4,7,25.30,3,'Falta material'),
(149,10,49,'2021-05-29',10,8,6,3,18.90,2,'Material entregado con éxito'),
(150,10,50,'2021-05-30',8,13,5,2,23.10,1,'Material sin entregar'),
(151,1,1,'2021-05-31',9,4,1,9,25.10,2,'Material entregado con éxito'),
(152,1,2,'2021-06-01',3,6,6,8,19.80,2,'Material entregado con éxito'),
(153,1,3,'2021-06-02',5,10,1,8,29.40,3,'Falta material'),
(154,1,4,'2021-06-03',7,7,6,15,32.80,3,'Falta material'),
(155,1,5,'2021-06-04',7,13,1,12,32.50,1,'Material sin entregar'),
(156,2,6,'2021-06-05',8,4,2,20,46.80,1,'Material sin entregar'),
(157,2,7,'2021-06-06',3,15,6,11,28.80,1,'Material sin entregar'),
(158,2,8,'2021-06-07',10,12,6,3,25.70,2,'Material entregado con éxito'),
(159,2,9,'2021-06-08',3,7,1,11,27.20,1,'Material sin entregar'),
(160,2,10,'2021-06-09',2,15,5,1,11.80,3,'Falta material'),
(161,3,11,'2021-06-10',7,11,5,12,37.50,3,'Falta material'),
(162,3,12,'2021-06-11',6,12,5,17,39.90,2,'Material entregado con éxito'),
(163,3,13,'2021-06-12',4,11,4,15,33.60,1,'Material sin entregar'),
(164,3,14,'2021-06-13',4,8,7,3,20.10,2,'Material entregado con éxito'),
(165,3,15,'2021-06-14',6,13,5,11,36.20,2,'Material entregado con éxito'),
(166,4,16,'2021-06-15',7,15,2,2,23.30,3,'Falta material'),
(167,4,17,'2021-06-16',5,12,4,17,43.90,2,'Material entregado con éxito'),
(168,4,18,'2021-06-17',3,13,4,14,34.70,2,'Material entregado con éxito'),
(169,4,19,'2021-06-18',2,7,6,15,33.60,1,'Material sin entregar'),
(170,4,20,'2021-06-19',2,10,1,10,25.20,1,'Material sin entregar'),
(171,5,21,'2021-06-20',9,14,7,10,35.20,3,'Falta material'),
(172,5,22,'2021-06-21',6,6,1,6,20.40,2,'Material entregado con éxito'),
(173,5,23,'2021-06-22',1,5,1,7,16.20,2,'Material entregado con éxito'),
(174,5,24,'2021-06-23',5,9,6,8,24.10,1,'Material sin entregar'),
(175,5,25,'2021-06-24',3,10,1,6,23.60,3,'Falta material'),
(176,6,26,'2021-06-25',3,7,7,3,11.60,2,'Material entregado con éxito'),
(177,6,27,'2021-06-26',9,3,6,11,33.60,1,'Material sin entregar'),
(178,6,28,'2021-06-27',9,5,5,9,25.60,2,'Material entregado con éxito'),
(179,6,29,'2021-06-28',6,13,5,8,28.10,1,'Material sin entregar'),
(180,6,30,'2021-06-29',7,13,6,8,25.30,1,'Material sin entregar'),
(181,7,31,'2021-06-30',8,13,3,9,32.40,1,'Material sin entregar'),
(182,7,32,'2021-07-01',10,13,1,14,39.10,2,'Material entregado con éxito'),
(183,7,33,'2021-07-02',10,7,5,16,40.30,1,'Material sin entregar'),
(184,7,34,'2021-07-03',1,9,4,2,11.90,1,'Material sin entregar'),
(185,7,35,'2021-07-04',5,3,3,15,32.80,2,'Material entregado con éxito'),
(186,8,36,'2021-07-05',7,14,3,12,39.00,1,'Material sin entregar'),
(187,8,37,'2021-07-06',1,14,6,20,43.80,3,'Falta material'),
(188,8,38,'2021-07-07',9,8,2,5,21.10,3,'Falta material'),
(189,8,39,'2021-07-08',10,9,7,12,36.50,2,'Material entregado con éxito'),
(190,8,40,'2021-07-09',4,11,7,4,23.10,1,'Material sin entregar'),
(191,9,41,'2021-07-10',3,6,5,17,32.10,3,'Falta material'),
(192,9,42,'2021-07-11',1,4,2,9,24.70,1,'Material sin entregar'),
(193,9,43,'2021-07-12',1,11,2,4,19.50,2,'Material entregado con éxito'),
(194,9,44,'2021-07-13',1,1,2,3,11.80,3,'Falta material'),
(195,9,45,'2021-07-14',3,6,4,17,33.30,3,'Falta material'),
(196,10,46,'2021-07-15',7,4,5,3,15.70,3,'Falta material'),
(197,10,47,'2021-07-16',3,11,7,20,40.30,2,'Material entregado con éxito'),
(198,10,48,'2021-07-17',6,13,3,5,27.20,2,'Material entregado con éxito'),
(199,10,49,'2021-07-18',10,8,2,4,24.00,3,'Falta material'),
(200,10,50,'2021-07-19',8,15,6,3,22.00,2,'Material entregado con éxito'),
(201,1,1,'2021-07-20',5,13,7,14,38.70,2,'Material entregado con éxito'),
(202,1,2,'2021-07-21',6,15,6,7,27.60,1,'Material sin entregar'),
(203,1,3,'2021-07-22',5,11,7,2,16.10,3,'Falta material'),
(204,1,4,'2021-07-23',3,12,6,13,29.10,2,'Material entregado con éxito'),
(205,1,5,'2021-07-24',10,15,7,4,29.90,1,'Material sin entregar'),
(206,2,6,'2021-07-25',2,5,7,18,39.50,3,'Falta material'),
(207,2,7,'2021-07-26',7,15,6,8,27.50,2,'Material entregado con éxito'),
(208,2,8,'2021-07-27',10,8,2,19,42.90,2,'Material entregado con éxito'),
(209,2,9,'2021-07-28',10,14,6,16,42.60,1,'Material sin entregar'),
(210,2,10,'2021-07-29',3,14,7,14,36.40,3,'Falta material'),
(211,3,11,'2021-07-30',10,1,4,19,44.20,1,'Material sin entregar'),
(212,3,12,'2021-07-31',3,13,7,3,18.20,1,'Material sin entregar'),
(213,3,13,'2021-08-01',2,7,6,2,12.90,1,'Material sin entregar'),
(214,3,14,'2021-08-02',10,12,2,17,47.90,3,'Falta material'),
(215,3,15,'2021-08-03',6,11,1,12,30.70,3,'Falta material'),
(216,4,16,'2021-08-04',10,9,5,16,41.30,3,'Falta material'),
(217,4,17,'2021-08-05',6,2,5,10,29.20,3,'Falta material'),
(218,4,18,'2021-08-06',5,6,6,17,36.10,3,'Falta material'),
(219,4,19,'2021-08-07',6,15,7,2,21.30,3,'Falta material'),
(220,4,20,'2021-08-08',1,13,4,9,26.80,3,'Falta material'),
(221,5,21,'2021-08-09',2,6,7,6,17.20,3,'Falta material'),
(222,5,22,'2021-08-10',5,2,3,5,16.10,1,'Material sin entregar'),
(223,5,23,'2021-08-11',10,11,4,13,41.40,1,'Material sin entregar'),
(224,5,24,'2021-08-12',6,13,5,5,20.00,2,'Material entregado con éxito'),
(225,5,25,'2021-08-13',7,4,7,10,28.60,1,'Material sin entregar'),
(226,6,26,'2021-08-14',1,4,1,1,10.30,3,'Falta material'),
(227,6,27,'2021-08-15',10,8,4,11,33.30,2,'Material entregado con éxito'),
(228,6,28,'2021-08-16',1,15,3,8,27.50,3,'Falta material'),
(229,6,29,'2021-08-17',4,13,6,8,25.30,2,'Material entregado con éxito'),
(230,6,30,'2021-08-18',8,10,2,4,21.00,2,'Material entregado con éxito'),
(231,7,31,'2021-08-19',4,6,1,8,21.80,1,'Material sin entregar'),
(232,7,32,'2021-08-20',8,2,4,5,17.30,2,'Material entregado con éxito'),
(233,7,33,'2021-08-21',10,15,6,6,29.30,2,'Material entregado con éxito'),
(234,7,34,'2021-08-22',7,13,1,9,28.00,1,'Material sin entregar'),
(235,7,35,'2021-08-23',10,9,2,18,40.70,3,'Falta material'),
(236,8,36,'2021-08-24',4,13,3,12,36.10,3,'Falta material'),
(237,8,37,'2021-08-25',1,3,7,13,30.20,3,'Falta material'),
(238,8,38,'2021-08-26',4,7,3,5,21.40,2,'Material entregado con éxito'),
(239,8,39,'2021-08-27',3,15,6,16,41.10,2,'Material entregado con éxito'),
(240,8,40,'2021-08-28',2,4,6,2,11.40,2,'Material entregado con éxito'),
(241,9,41,'2021-08-29',8,10,7,17,44.10,2,'Material entregado con éxito'),
(242,9,42,'2021-08-30',6,12,4,1,15.90,2,'Material entregado con éxito'),
(243,9,43,'2021-08-31',9,5,7,8,28.90,2,'Material entregado con éxito'),
(244,9,44,'2021-09-01',1,11,2,18,39.30,3,'Falta material'),
(245,9,45,'2021-09-02',8,13,5,14,41.10,3,'Falta material'),
(246,10,46,'2021-09-03',4,2,6,18,36.00,1,'Material sin entregar'),
(247,10,47,'2021-09-04',5,12,1,6,26.20,1,'Material sin entregar'),
(248,10,48,'2021-09-05',10,6,1,13,31.70,2,'Material entregado con éxito'),
(249,10,49,'2021-09-06',4,14,4,15,38.70,3,'Falta material'),
(250,10,50,'2021-09-07',4,1,3,7,20.20,2,'Material entregado con éxito'),
(251,1,1,'2021-09-08',2,10,3,3,12.30,3,'Falta material'),
(252,1,2,'2021-09-09',4,10,6,8,28.60,3,'Falta material'),
(253,1,3,'2021-09-10',5,3,3,2,12.10,1,'Material sin entregar'),
(254,1,4,'2021-09-11',2,15,4,1,13.00,3,'Falta material'),
(255,1,5,'2021-09-12',2,10,3,1,9.30,1,'Material sin entregar'),
(256,2,6,'2021-09-13',2,9,7,14,28.30,3,'Falta material'),
(257,2,7,'2021-09-14',7,7,2,11,28.00,2,'Material entregado con éxito'),
(258,2,8,'2021-09-15',10,6,3,4,18.20,3,'Falta material'),
(259,2,9,'2021-09-16',9,13,2,2,17.90,3,'Falta material'),
(260,2,10,'2021-09-17',9,11,5,4,23.50,1,'Material sin entregar'),
(261,3,11,'2021-09-18',4,1,7,10,27.10,1,'Material sin entregar'),
(262,3,12,'2021-09-19',9,1,3,12,34.10,1,'Material sin entregar'),
(263,3,13,'2021-09-20',2,8,5,7,20.90,1,'Material sin entregar'),
(264,3,14,'2021-09-21',6,13,7,1,14.00,3,'Falta material'),
(265,3,15,'2021-09-22',6,3,1,4,13.50,1,'Material sin entregar'),
(266,4,16,'2021-09-23',7,14,3,16,41.40,1,'Material sin entregar'),
(267,4,17,'2021-09-24',10,3,5,8,22.70,2,'Material entregado con éxito'),
(268,4,18,'2021-09-25',7,15,1,5,21.80,2,'Material entregado con éxito'),
(269,4,19,'2021-09-26',3,3,2,20,42.30,3,'Falta material'),
(270,4,20,'2021-09-27',2,10,5,7,18.30,3,'Falta material'),
(271,5,21,'2021-09-28',7,10,7,3,21.10,2,'Material entregado con éxito'),
(272,5,22,'2021-09-29',7,1,3,18,35.50,1,'Material sin entregar'),
(273,5,23,'2021-09-30',6,2,5,15,35.50,1,'Material sin entregar'),
(274,5,24,'2021-10-01',2,1,4,7,19.80,3,'Falta material'),
(275,5,25,'2021-10-02',7,15,5,8,32.30,3,'Falta material'),
(276,6,26,'2021-10-03',5,5,3,10,29.90,1,'Material sin entregar'),
(277,6,27,'2021-10-04',10,6,6,8,24.20,1,'Material sin entregar'),
(278,6,28,'2021-10-05',8,15,3,9,31.00,3,'Falta material'),
(279,6,29,'2021-10-06',3,14,6,12,33.40,3,'Falta material'),
(280,6,30,'2021-10-07',4,5,7,16,35.70,3,'Falta material'),
(281,7,31,'2021-10-08',5,6,2,8,22.60,3,'Falta material'),
(282,7,32,'2021-10-09',6,9,1,7,23.40,2,'Material entregado con éxito'),
(283,7,33,'2021-10-10',10,4,3,10,27.40,2,'Material entregado con éxito'),
(284,7,34,'2021-10-11',9,6,1,10,30.00,3,'Falta material'),
(285,7,35,'2021-10-12',6,6,2,9,22.50,2,'Material entregado con éxito'),
(286,8,36,'2021-10-13',3,3,7,8,23.10,2,'Material entregado con éxito'),
(287,8,37,'2021-10-14',9,9,6,1,16.80,3,'Falta material'),
(288,8,38,'2021-10-15',9,5,4,18,42.70,1,'Material sin entregar'),
(289,8,39,'2021-10-16',8,2,6,12,32.60,1,'Material sin entregar'),
(290,8,40,'2021-10-17',10,1,7,10,31.90,1,'Material sin entregar'),
(291,9,41,'2021-10-18',8,10,5,14,38.40,2,'Material entregado con éxito'),
(292,9,42,'2021-10-19',6,15,1,20,50.70,2,'Material entregado con éxito'),
(293,9,43,'2021-10-20',9,11,7,3,23.20,3,'Falta material'),
(294,9,44,'2021-10-21',10,9,1,14,40.70,3,'Falta material'),
(295,9,45,'2021-10-22',2,12,5,19,42.10,1,'Material sin entregar'),
(296,10,46,'2021-10-23',5,11,7,12,32.30,2,'Material entregado con éxito'),
(297,10,47,'2021-10-24',2,10,4,5,21.30,3,'Falta material'),
(298,10,48,'2021-10-25',6,12,6,8,30.00,1,'Material sin entregar'),
(299,10,49,'2021-10-26',3,13,5,19,44.60,2,'Material entregado con éxito'),
(300,10,50,'2021-10-27',5,12,4,8,26.80,1,'Material sin entregar'),
(301,1,1,'2021-10-28',6,2,3,7,19.90,1,'Material sin entregar'),
(302,1,2,'2021-10-29',8,7,6,1,19.80,1,'Material sin entregar'),
(303,1,3,'2021-10-30',3,6,6,4,15.00,1,'Material sin entregar'),
(304,1,4,'2021-10-31',1,1,3,17,31.60,2,'Material entregado con éxito'),
(305,1,5,'2021-11-01',1,12,1,20,39.20,3,'Falta material'),
(306,2,6,'2021-11-02',1,13,6,12,30.10,1,'Material sin entregar'),
(307,2,7,'2021-11-03',2,6,6,9,26.50,2,'Material entregado con éxito'),
(308,2,8,'2021-11-04',5,1,3,19,35.40,1,'Material sin entregar'),
(309,2,9,'2021-11-05',8,8,2,5,25.10,2,'Material entregado con éxito'),
(310,2,10,'2021-11-06',5,1,4,16,34.50,3,'Falta material'),
(311,3,11,'2021-11-07',7,4,7,10,27.40,1,'Material sin entregar'),
(312,3,12,'2021-11-08',8,4,7,4,15.60,1,'Material sin entregar'),
(313,3,13,'2021-11-09',6,12,7,3,21.30,3,'Falta material'),
(314,3,14,'2021-11-10',9,2,3,5,22.90,3,'Falta material'),
(315,3,15,'2021-11-11',5,3,3,5,19.00,1,'Material sin entregar'),
(316,4,16,'2021-11-12',6,6,4,3,19.50,2,'Material entregado con éxito'),
(317,4,17,'2021-11-13',1,14,5,11,27.90,3,'Falta material'),
(318,4,18,'2021-11-14',3,1,1,12,22.10,1,'Material sin entregar'),
(319,4,19,'2021-11-15',2,11,5,9,26.60,2,'Material entregado con éxito'),
(320,4,20,'2021-11-16',6,2,7,20,37.00,1,'Material sin entregar'),
(321,5,21,'2021-11-17',9,9,2,19,41.40,1,'Material sin entregar'),
(322,5,22,'2021-11-18',8,9,6,9,25.60,2,'Material entregado con éxito'),
(323,5,23,'2021-11-19',5,8,5,3,16.10,2,'Material entregado con éxito'),
(324,5,24,'2021-11-20',2,14,5,10,24.80,3,'Falta material'),
(325,5,25,'2021-11-21',4,2,2,6,19.20,3,'Falta material'),
(326,6,26,'2021-11-22',7,8,2,16,34.80,3,'Falta material'),
(327,6,27,'2021-11-23',8,9,7,10,28.30,1,'Material sin entregar'),
(328,6,28,'2021-11-24',6,3,6,18,38.10,2,'Material entregado con éxito'),
(329,6,29,'2021-11-25',5,13,6,4,23.70,2,'Material entregado con éxito'),
(330,6,30,'2021-11-26',9,10,3,8,32.60,2,'Material entregado con éxito'),
(331,7,31,'2021-11-27',7,2,6,17,40.50,3,'Falta material'),
(332,7,32,'2021-11-28',6,6,7,1,14.10,3,'Falta material'),
(333,7,33,'2021-11-29',9,5,1,15,39.40,1,'Material sin entregar'),
(334,7,34,'2021-11-30',8,7,3,3,21.60,2,'Material entregado con éxito'),
(335,7,35,'2021-12-01',3,6,3,11,30.30,3,'Falta material'),
(336,8,36,'2021-12-02',10,5,6,20,42.90,2,'Material entregado con éxito'),
(337,8,37,'2021-12-03',9,12,3,10,30.60,1,'Material sin entregar'),
(338,8,38,'2021-12-04',8,11,4,16,38.30,3,'Falta material'),
(339,8,39,'2021-12-05',6,7,1,2,13.70,3,'Falta material'),
(340,8,40,'2021-12-06',9,15,3,13,36.60,3,'Falta material'),
(341,9,41,'2021-12-07',4,14,6,18,43.20,2,'Material entregado con éxito'),
(342,9,42,'2021-12-08',9,4,6,6,20.60,3,'Falta material'),
(343,9,43,'2021-12-09',4,9,2,15,36.20,3,'Falta material'),
(344,9,44,'2021-12-10',7,2,3,9,21.30,3,'Falta material'),
(345,9,45,'2021-12-11',8,14,4,18,46.40,2,'Material entregado con éxito'),
(346,10,46,'2021-12-12',6,3,4,17,40.20,2,'Material entregado con éxito'),
(347,10,47,'2021-12-13',7,6,2,6,26.00,1,'Material sin entregar'),
(348,10,48,'2021-12-14',10,2,5,14,31.20,2,'Material entregado con éxito'),
(349,10,49,'2021-12-15',3,13,3,7,24.20,1,'Material sin entregar'),
(350,10,50,'2021-12-16',9,14,3,13,36.10,1,'Material sin entregar'),
(351,1,1,'2021-12-17',1,9,4,19,39.80,1,'Material sin entregar'),
(352,1,2,'2021-12-18',8,7,3,6,26.10,2,'Material entregado con éxito'),
(353,1,3,'2021-12-19',9,10,2,20,44.60,2,'Material entregado con éxito'),
(354,1,4,'2021-12-20',9,9,5,2,15.90,2,'Material entregado con éxito'),
(355,1,5,'2021-12-21',5,12,3,9,24.70,1,'Material sin entregar'),
(356,2,6,'2021-12-22',4,15,2,10,32.90,3,'Falta material'),
(357,2,7,'2021-12-23',4,5,7,6,17.10,3,'Falta material'),
(358,2,8,'2021-12-24',4,3,1,19,39.20,1,'Material sin entregar'),
(359,2,9,'2021-12-25',5,11,2,3,16.40,3,'Falta material'),
(360,2,10,'2021-12-26',1,7,3,15,29.20,2,'Material entregado con éxito'),
(361,3,11,'2021-12-27',8,6,3,8,29.80,3,'Falta material'),
(362,3,12,'2021-12-28',6,14,6,1,18.10,2,'Material entregado con éxito'),
(363,3,13,'2021-12-29',6,1,3,8,19.70,1,'Material sin entregar'),
(364,3,14,'2021-12-30',8,14,1,13,37.70,3,'Falta material'),
(365,3,15,'2021-12-31',5,2,1,20,37.40,3,'Falta material'),
(366,4,16,'2022-01-01',1,14,7,7,20.70,1,'Material sin entregar'),
(367,4,17,'2022-01-02',1,3,7,5,15.80,1,'Material sin entregar'),
(368,4,18,'2022-01-03',5,14,5,1,18.50,2,'Material entregado con éxito'),
(369,4,19,'2022-01-04',3,11,2,19,40.00,1,'Material sin entregar'),
(370,4,20,'2022-01-05',2,3,1,14,25.30,1,'Material sin entregar'),
(371,5,21,'2022-01-06',9,14,5,10,35.20,3,'Falta material'),
(372,5,22,'2022-01-07',10,7,1,8,24.70,1,'Material sin entregar'),
(373,5,23,'2022-01-08',9,15,6,11,36.00,1,'Material sin entregar'),
(374,5,24,'2022-01-09',2,11,2,13,33.80,2,'Material entregado con éxito'),
(375,5,25,'2022-01-10',1,9,1,4,17.30,3,'Falta material'),
(376,6,26,'2022-01-11',2,4,4,6,13.80,3,'Falta material'),
(377,6,27,'2022-01-12',4,8,5,5,18.30,2,'Material entregado con éxito'),
(378,6,28,'2022-01-13',4,5,4,4,15.30,2,'Material entregado con éxito'),
(379,6,29,'2022-01-14',3,11,7,12,29.50,1,'Material sin entregar'),
(380,6,30,'2022-01-15',1,1,2,11,26.20,3,'Falta material'),
(381,7,31,'2022-01-16',8,3,5,11,30.40,1,'Material sin entregar'),
(382,7,32,'2022-01-17',2,7,1,19,37.20,3,'Falta material'),
(383,7,33,'2022-01-18',2,11,1,14,30.50,1,'Material sin entregar'),
(384,7,34,'2022-01-19',4,8,6,18,40.20,2,'Material entregado con éxito'),
(385,7,35,'2022-01-20',1,13,2,15,37.00,1,'Material sin entregar'),
(386,8,36,'2022-01-21',5,10,3,19,41.10,1,'Material sin entregar'),
(387,8,37,'2022-01-22',9,1,2,6,19.10,1,'Material sin entregar'),
(388,8,38,'2022-01-23',6,1,1,13,28.40,2,'Material entregado con éxito'),
(389,8,39,'2022-01-24',6,3,3,8,25.50,2,'Material entregado con éxito'),
(390,8,40,'2022-01-25',4,3,4,16,35.90,3,'Falta material'),
(391,9,41,'2022-01-26',1,9,6,12,25.70,3,'Falta material'),
(392,9,42,'2022-01-27',8,2,7,4,21.80,3,'Falta material'),
(393,9,43,'2022-01-28',7,14,6,6,22.80,3,'Falta material'),
(394,9,44,'2022-01-29',10,8,6,7,24.90,2,'Material entregado con éxito'),
(395,9,45,'2022-01-30',2,7,2,7,21.60,3,'Falta material'),
(396,10,46,'2022-01-31',8,2,5,1,16.10,1,'Material sin entregar'),
(397,10,47,'2022-02-01',2,9,3,6,23.50,1,'Material sin entregar'),
(398,10,48,'2022-02-02',5,3,5,13,33.40,3,'Falta material'),
(399,10,49,'2022-02-03',3,3,2,19,40.80,2,'Material entregado con éxito'),
(400,10,50,'2022-02-04',6,3,6,8,26.70,1,'Material sin entregar'),
(401,1,1,'2022-02-05',4,6,3,5,20.90,3,'Falta material'),
(402,1,2,'2022-02-06',10,9,3,5,24.80,2,'Material entregado con éxito'),
(403,1,3,'2022-02-07',3,13,6,15,35.00,2,'Material entregado con éxito'),
(404,1,4,'2022-02-08',1,11,6,4,20.70,3,'Falta material'),
(405,1,5,'2022-02-09',8,7,1,20,42.30,2,'Material entregado con éxito'),
(406,2,6,'2022-02-10',3,2,4,9,25.30,3,'Falta material'),
(407,2,7,'2022-02-11',6,10,2,5,23.30,1,'Material sin entregar'),
(408,2,8,'2022-02-12',6,13,5,11,29.00,1,'Material sin entregar'),
(409,2,9,'2022-02-13',5,13,6,4,22.50,2,'Material entregado con éxito'),
(410,2,10,'2022-02-14',6,7,6,10,30.50,2,'Material entregado con éxito'),
(411,3,11,'2022-02-15',3,6,1,13,32.10,2,'Material entregado con éxito'),
(412,3,12,'2022-02-16',9,14,2,7,33.10,1,'Material sin entregar'),
(413,3,13,'2022-02-17',9,15,5,10,35.70,3,'Falta material'),
(414,3,14,'2022-02-18',8,12,2,4,25.60,2,'Material entregado con éxito'),
(415,3,15,'2022-02-19',7,8,4,19,44.10,2,'Material entregado con éxito'),
(416,4,16,'2022-02-20',8,5,6,6,20.30,1,'Material sin entregar'),
(417,4,17,'2022-02-21',5,9,1,7,25.00,3,'Falta material'),
(418,4,18,'2022-02-22',1,4,7,8,20.80,1,'Material sin entregar'),
(419,4,19,'2022-02-23',2,13,2,18,43.50,3,'Falta material'),
(420,4,20,'2022-02-24',5,14,6,12,35.00,3,'Falta material'),
(421,5,21,'2022-02-25',10,2,1,13,34.50,3,'Falta material'),
(422,5,22,'2022-02-26',10,15,6,2,19.70,3,'Falta material'),
(423,5,23,'2022-02-27',8,14,4,2,17.60,3,'Falta material'),
(424,5,24,'2022-02-28',4,7,2,2,13.30,1,'Material sin entregar'),
(425,5,25,'2022-03-01',10,8,2,13,38.70,1,'Material sin entregar'),
(426,6,26,'2022-03-02',5,11,2,6,23.30,1,'Material sin entregar'),
(427,6,27,'2022-03-03',2,4,2,8,21.60,1,'Material sin entregar'),
(428,6,28,'2022-03-04',8,11,6,3,23.60,1,'Material sin entregar'),
(429,6,29,'2022-03-05',2,9,3,12,27.70,1,'Material sin entregar'),
(430,6,30,'2022-03-06',5,11,2,15,39.20,3,'Falta material'),
(431,7,31,'2022-03-07',2,13,5,4,16.50,1,'Material sin entregar'),
(432,7,32,'2022-03-08',9,12,2,8,33.60,2,'Material entregado con éxito'),
(433,7,33,'2022-03-09',1,13,3,2,17.50,3,'Falta material'),
(434,7,34,'2022-03-10',10,13,4,14,36.70,3,'Falta material'),
(435,7,35,'2022-03-11',1,12,3,10,27.80,1,'Material sin entregar'),
(436,8,36,'2022-03-12',7,3,7,18,37.70,3,'Falta material'),
(437,8,37,'2022-03-13',5,8,2,2,15.80,1,'Material sin entregar'),
(438,8,38,'2022-03-14',4,9,1,2,11.90,2,'Material entregado con éxito'),
(439,8,39,'2022-03-15',4,6,3,2,14.00,3,'Falta material'),
(440,8,40,'2022-03-16',8,9,6,3,17.80,3,'Falta material'),
(441,9,41,'2022-03-17',8,11,5,10,32.90,1,'Material sin entregar'),
(442,9,42,'2022-03-18',10,4,1,13,37.90,2,'Material entregado con éxito'),
(443,9,43,'2022-03-19',2,13,2,7,22.20,1,'Material sin entregar'),
(444,9,44,'2022-03-20',10,14,7,13,38.10,2,'Material entregado con éxito'),
(445,9,45,'2022-03-21',5,8,7,10,30.20,2,'Material entregado con éxito'),
(446,10,46,'2022-03-22',2,2,6,15,31.10,2,'Material entregado con éxito'),
(447,10,47,'2022-03-23',10,3,2,18,42.50,1,'Material sin entregar'),
(448,10,48,'2022-03-24',3,8,7,8,24.40,1,'Material sin entregar'),
(449,10,49,'2022-03-25',7,4,3,1,11.50,2,'Material entregado con éxito'),
(450,10,50,'2022-03-26',7,15,5,7,32.00,3,'Falta material'),
(451,1,1,'2022-03-27',6,13,5,1,17.60,3,'Falta material'),
(452,1,2,'2022-03-28',1,13,7,10,27.10,2,'Material entregado con éxito'),
(453,1,3,'2022-03-29',3,15,2,14,38.10,3,'Falta material'),
(454,1,4,'2022-03-30',8,12,3,19,46.90,3,'Falta material'),
(455,1,5,'2022-03-31',5,8,6,15,34.10,2,'Material entregado con éxito'),
(456,2,6,'2022-04-01',8,5,1,17,42.80,3,'Falta material'),
(457,2,7,'2022-04-02',2,14,1,8,21.80,3,'Falta material'),
(458,2,8,'2022-04-03',2,1,3,3,15.00,1,'Material sin entregar'),
(459,2,9,'2022-04-04',10,13,4,7,32.20,1,'Material sin entregar'),
(460,2,10,'2022-04-05',9,13,2,9,34.40,2,'Material entregado con éxito'),
(461,3,11,'2022-04-06',5,13,2,13,34.80,1,'Material sin entregar'),
(462,3,12,'2022-04-07',1,6,3,18,36.80,3,'Falta material'),
(463,3,13,'2022-04-08',4,10,4,17,34.90,2,'Material entregado con éxito'),
(464,3,14,'2022-04-09',7,6,7,3,19.10,3,'Falta material'),
(465,3,15,'2022-04-10',4,11,6,6,22.50,1,'Material sin entregar'),
(466,4,16,'2022-04-11',10,7,5,15,42.40,2,'Material entregado con éxito'),
(467,4,17,'2022-04-12',10,13,3,5,29.20,1,'Material sin entregar'),
(468,4,18,'2022-04-13',7,9,1,20,46.10,1,'Material sin entregar'),
(469,4,19,'2022-04-14',1,14,3,11,26.70,2,'Material entregado con éxito'),
(470,4,20,'2022-04-15',5,11,4,18,44.90,3,'Falta material'),
(471,5,21,'2022-04-16',3,13,1,20,43.70,2,'Material entregado con éxito'),
(472,5,22,'2022-04-17',5,11,4,19,41.60,1,'Material sin entregar'),
(473,5,23,'2022-04-18',9,4,2,14,37.40,3,'Falta material'),
(474,5,24,'2022-04-19',4,9,7,5,22.40,3,'Falta material'),
(475,5,25,'2022-04-20',6,7,6,16,37.10,2,'Material entregado con éxito'),
(476,6,26,'2022-04-21',9,5,3,17,36.40,2,'Material entregado con éxito'),
(477,6,27,'2022-04-22',1,14,7,19,39.90,3,'Falta material'),
(478,6,28,'2022-04-23',8,5,2,13,34.40,2,'Material entregado con éxito'),
(479,6,29,'2022-04-24',3,6,6,17,38.10,1,'Material sin entregar'),
(480,6,30,'2022-04-25',6,8,1,17,41.50,1,'Material sin entregar'),
(481,7,31,'2022-04-26',4,13,6,1,18.40,2,'Material entregado con éxito'),
(482,7,32,'2022-04-27',4,14,1,18,40.80,1,'Material sin entregar'),
(483,7,33,'2022-04-28',8,14,5,9,34.10,2,'Material entregado con éxito'),
(484,7,34,'2022-04-29',5,9,4,12,32.50,3,'Falta material'),
(485,7,35,'2022-04-30',4,10,2,6,24.40,2,'Material entregado con éxito'),
(486,8,36,'2022-05-01',2,10,5,12,30.60,1,'Material sin entregar'),
(487,8,37,'2022-05-02',8,11,6,16,44.30,3,'Falta material'),
(488,8,38,'2022-05-03',9,3,2,9,24.60,2,'Material entregado con éxito'),
(489,8,39,'2022-05-04',7,9,6,8,24.50,2,'Material entregado con éxito'),
(490,8,40,'2022-05-05',7,12,5,4,22.40,1,'Material sin entregar'),
(491,9,41,'2022-05-06',10,9,2,17,40.40,2,'Material entregado con éxito'),
(492,9,42,'2022-05-07',6,10,4,4,24.20,1,'Material sin entregar'),
(493,9,43,'2022-05-08',10,8,3,16,40.80,2,'Material entregado con éxito'),
(494,9,44,'2022-05-09',9,9,6,19,41.40,2,'Material entregado con éxito'),
(495,9,45,'2022-05-10',7,1,6,1,14.80,3,'Falta material'),
(496,10,46,'2022-05-11',10,14,3,1,20.10,3,'Falta material'),
(497,10,47,'2022-05-12',1,1,6,15,28.60,2,'Material entregado con éxito'),
(498,10,48,'2022-05-13',6,5,6,18,37.90,1,'Material sin entregar'),
(499,10,49,'2022-05-14',6,11,5,15,37.60,3,'Falta material'),
(500,10,50,'2022-05-15',8,7,7,9,24.60,1,'Material sin entregar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`) VALUES
(1, 'administrador'),
(2, 'acopio'),
(3, 'reciclador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `id_reciclador` int(11) NOT NULL,
  `codigo_casa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `id_reciclador`, `codigo_casa`) VALUES
(1,1,'c1'),
(2,1,'c2'),
(3,1,'c3'),
(4,1,'c4'),
(5,1,'c5'),
(6,2,'c6'),
(7,2,'c7'),
(8,2,'c8'),
(9,2,'c9'),
(10,2,'c10'),
(11,3,'c11'),
(12,3,'c12'),
(13,3,'c13'),
(14,3,'c14'),
(15,3,'c15'),
(16,4,'c16'),
(17,4,'c17'),
(18,4,'c18'),
(19,4,'c19'),
(20,4,'c20'),
(21,5,'c21'),
(22,5,'c22'),
(23,5,'c23'),
(24,5,'c24'),
(25,5,'c25'),
(26,6,'c26'),
(27,6,'c27'),
(28,6,'c28'),
(29,6,'c29'),
(30,6,'c30'),
(31,7,'c31'),
(32,7,'c32'),
(33,7,'c33'),
(34,7,'c34'),
(35,7,'c35'),
(36,8,'c36'),
(37,8,'c37'),
(38,8,'c38'),
(39,8,'c39'),
(40,8,'c40'),
(41,9,'c41'),
(42,9,'c42'),
(43,9,'c43'),
(44,9,'c44'),
(45,9,'c45'),
(46,10,'c46'),
(47,10,'c47'),
(48,10,'c48'),
(49,10,'c49'),
(50,10,'c50');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `dni`, `contraseña`, `id_rol`, `id_persona`) VALUES
(1, '10000001', 'Castañeda_Aguilar2022', 1, 1),
(2, '10000002', 'Castañeda_Aguilar2023', 1, 2),
(3, '20000001', 'Castañeda_Aguilar2024', 2, 3),
(4, '20000002', 'Castañeda_Aguilar2025', 2, 4),
(5, '20000003', 'Castañeda_Aguilar2026', 2, 5),
(6, '30000001', 'Castañeda_Aguilar2027', 3, 6),
(7, '30000002', 'Castañeda_Aguilar2028', 3, 7),
(8, '30000003', 'Castañeda_Aguilar2029', 3, 8),
(9, '30000004', 'Castañeda_Aguilar2030', 3, 9),
(10, '30000005', 'Castañeda_Aguilar2031', 3, 10),
(11, '30000006', 'Castañeda_Aguilar2032', 3, 11),
(12, '30000007', 'Castañeda_Aguilar2033', 3, 12),
(13, '30000008', 'Castañeda_Aguilar2034', 3, 13),
(14, '30000009', 'Castañeda_Aguilar2035', 3, 14),
(15, '30000010', 'Castañeda_Aguilar2036', 3, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`id_casa`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `precio`
--
ALTER TABLE `precio`
  ADD PRIMARY KEY (`id_precio`);

--
-- Indices de la tabla `reciclador`
--
ALTER TABLE `reciclador`
  ADD PRIMARY KEY (`id_reciclador`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casa`
--
ALTER TABLE `casa`
  MODIFY `id_casa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `precio`
--
ALTER TABLE `precio`
  MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reciclador`
--
ALTER TABLE `reciclador`
  MODIFY `id_reciclador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
