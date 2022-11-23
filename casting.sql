-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-11-2022 a las 05:18:37
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `casting`
--
CREATE DATABASE IF NOT EXISTS `casting` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `casting`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agente`
--

DROP TABLE IF EXISTS `agente`;
CREATE TABLE IF NOT EXISTS `agente` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `agente`
--

INSERT INTO `agente` (`CODIGO`, `NOMBRE`) VALUES
(1, 'miguel'),
(2, 'laura'),
(3, 'juan'),
(4, 'julian'),
(5, 'sara'),
(6, 'pepe'),
(7, 'tito'),
(8, 'cristian'),
(9, 'sebastian'),
(10, 'valeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

DROP TABLE IF EXISTS `candidato`;
CREATE TABLE IF NOT EXISTS `candidato` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `CODIGO_PERFIL` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `CODIGO_PERFIL` (`CODIGO_PERFIL`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`CODIGO`, `NOMBRE`, `DIRECCION`, `CODIGO_PERFIL`) VALUES
(1, 'martin', 'cra 34 - 45 a 12', 1),
(2, 'cristobal', 'cra 56 # 45 -56', 2),
(3, 'juli', 'cra 45 - 23 45', 3),
(4, 'pablo', 'cra 45 677- 45', 4),
(5, 'esteban', 'cra 34 - 98', 5),
(6, 'nicol', 'cra 34 - 23', 6),
(7, 'beatriz', 'cra 23 # 34 - 23', 7),
(8, 'pedro', 'cra 23 # 34', 8),
(9, 'jesus', 'cra 45 # 56 - 66', 9),
(10, 'indigo', 'cra 34 - 23 ', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casting`
--

DROP TABLE IF EXISTS `casting`;
CREATE TABLE IF NOT EXISTS `casting` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `FECHA_CONTRATO` datetime DEFAULT NULL,
  `PRESUPUESTO` int DEFAULT NULL,
  `CODIGO_CLIENTE` int DEFAULT NULL,
  `CODIGO_AGENTE` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `CODIGO_CLIENTE` (`CODIGO_CLIENTE`),
  KEY `CODIGO_AGENTE` (`CODIGO_AGENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `casting`
--

INSERT INTO `casting` (`CODIGO`, `NOMBRE`, `FECHA_CONTRATO`, `PRESUPUESTO`, `CODIGO_CLIENTE`, `CODIGO_AGENTE`) VALUES
(1, 'miguel', '2022-11-01 00:00:00', 2500000, 1, 1),
(2, 'miguel', '2022-11-01 00:00:00', 2400000, 2, 2),
(3, 'miguel', '2022-11-01 00:00:00', 2300000, 3, 3),
(4, 'miguel', '2022-11-01 00:00:00', 2200000, 4, 4),
(5, 'miguel', '2022-11-01 00:00:00', 2100000, 5, 5),
(6, 'miguel', '2022-11-01 00:00:00', 1800000, 6, 6),
(7, 'miguel', '2022-11-01 00:00:00', 1700000, 7, 7),
(8, 'miguel', '2022-11-01 00:00:00', 1600000, 8, 8),
(9, 'miguel', '2022-11-01 00:00:00', 1500000, 9, 9),
(10, 'miguel', '2022-11-01 00:00:00', 1400000, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`CODIGO`, `DESCRIPCION`) VALUES
(1, 'ojos azules, 1.60m'),
(2, 'ojos azules, 1.70m'),
(3, 'ojos rojos, 1.80m'),
(4, 'ojos verdes, 1.90m'),
(5, 'ojos azules, 1.89m'),
(6, 'ojos azules, 1.88m'),
(7, 'ojos negros, 1.87m'),
(8, 'ojos cafe, 1.86m'),
(9, 'ojos verdes, 1.85m'),
(10, 'ojos azules, 1.84m');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
CREATE TABLE IF NOT EXISTS `evaluacion` (
  `CODIGO_EVALUACION` int NOT NULL AUTO_INCREMENT,
  `RESULTADO` varchar(3) NOT NULL,
  `CODIGO_FASE` int DEFAULT NULL,
  `CODIGO_PERFIL_CASTING` int DEFAULT NULL,
  `CODIGO_CANDIDATO` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO_EVALUACION`),
  KEY `CODIGO_FASE` (`CODIGO_FASE`),
  KEY `CODIGO_PERFIL_CASTING` (`CODIGO_PERFIL_CASTING`),
  KEY `CODIGO_CANDIDATO` (`CODIGO_CANDIDATO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`CODIGO_EVALUACION`, `RESULTADO`, `CODIGO_FASE`, `CODIGO_PERFIL_CASTING`, `CODIGO_CANDIDATO`) VALUES
(1, '100', 1, 1, 1),
(2, '50', 2, 2, 2),
(3, '80', 3, 3, 3),
(4, '80', 4, 4, 4),
(5, '96', 5, 5, 5),
(6, '48', 6, 6, 6),
(7, '80', 7, 7, 7),
(8, '80', 8, 8, 8),
(9, '78', 9, 9, 9),
(10, '80', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fase`
--

DROP TABLE IF EXISTS `fase`;
CREATE TABLE IF NOT EXISTS `fase` (
  `CODIGO_FASE` int NOT NULL AUTO_INCREMENT,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `NUMERO_SECUENCIA` int DEFAULT NULL,
  `CODIGO_CASTING` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO_FASE`),
  KEY `CODIGO_CASTING` (`CODIGO_CASTING`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `fase`
--

INSERT INTO `fase` (`CODIGO_FASE`, `FECHA_INICIO`, `NUMERO_SECUENCIA`, `CODIGO_CASTING`) VALUES
(1, '2022-11-01 00:00:00', 141185, 1),
(2, '2022-11-01 00:00:00', 111185, 2),
(3, '2022-11-01 00:00:00', 121185, 3),
(4, '2022-11-01 00:00:00', 131185, 4),
(5, '2022-11-01 00:00:00', 161185, 5),
(6, '2022-11-01 00:00:00', 151185, 6),
(7, '2022-11-01 00:00:00', 171185, 7),
(8, '2022-11-01 00:00:00', 181185, 8),
(9, '2022-11-01 00:00:00', 191185, 9),
(10, '2022-11-01 00:00:00', 241185, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`CODIGO`, `DESCRIPCION`) VALUES
(1, 'hombre de 32 años'),
(2, 'hombre de 31 años'),
(3, 'mujer de 30 años'),
(4, 'hombre de 29 años'),
(5, 'hombre de 28 años'),
(6, 'mujer de 27 años'),
(7, 'mujer de 26 años'),
(8, 'hombre de 25 años'),
(9, 'hombre de 24 años'),
(10, 'hombre de 23 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_casting`
--

DROP TABLE IF EXISTS `perfil_casting`;
CREATE TABLE IF NOT EXISTS `perfil_casting` (
  `CODIGO_PERFIL_CASTING` int NOT NULL AUTO_INCREMENT,
  `CODIGO_CASTING` int DEFAULT NULL,
  `CODIGO_PERFIL` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO_PERFIL_CASTING`),
  KEY `CODIGO_CASTING` (`CODIGO_CASTING`),
  KEY `CODIGO_PERFIL` (`CODIGO_PERFIL`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `perfil_casting`
--

INSERT INTO `perfil_casting` (`CODIGO_PERFIL_CASTING`, `CODIGO_CASTING`, `CODIGO_PERFIL`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

DROP TABLE IF EXISTS `prueba`;
CREATE TABLE IF NOT EXISTS `prueba` (
  `NUMERO_PRUEBA` int NOT NULL AUTO_INCREMENT,
  `FECHA_REALIZA` datetime DEFAULT NULL,
  `HORA_INICIO` time DEFAULT NULL,
  `HORA_FINAL` time DEFAULT NULL,
  `CODIGO_FASE` int DEFAULT NULL,
  `CODIGO_SALA` int DEFAULT NULL,
  PRIMARY KEY (`NUMERO_PRUEBA`),
  KEY `CODIGO_FASE` (`CODIGO_FASE`),
  KEY `CODIGO_SALA` (`CODIGO_SALA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`NUMERO_PRUEBA`, `FECHA_REALIZA`, `HORA_INICIO`, `HORA_FINAL`, `CODIGO_FASE`, `CODIGO_SALA`) VALUES
(1, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 1, 1),
(2, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 2, 1),
(3, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 3, 1),
(4, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 4, 1),
(5, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 5, 1),
(6, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 6, 1),
(7, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 7, 1),
(8, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 8, 1),
(9, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 9, 1),
(10, '2022-11-01 00:00:00', '10:15:00', '12:00:00', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

DROP TABLE IF EXISTS `sala`;
CREATE TABLE IF NOT EXISTS `sala` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`CODIGO`, `DESCRIPCION`) VALUES
(1, 'sala blanca con bastantes sillas, tamaño de la sala 80m2');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `candidato_ibfk_1` FOREIGN KEY (`CODIGO_PERFIL`) REFERENCES `perfil` (`CODIGO`);

--
-- Filtros para la tabla `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `casting_ibfk_1` FOREIGN KEY (`CODIGO_CLIENTE`) REFERENCES `cliente` (`CODIGO`),
  ADD CONSTRAINT `casting_ibfk_2` FOREIGN KEY (`CODIGO_AGENTE`) REFERENCES `agente` (`CODIGO`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`CODIGO_FASE`) REFERENCES `fase` (`CODIGO_FASE`),
  ADD CONSTRAINT `evaluacion_ibfk_2` FOREIGN KEY (`CODIGO_PERFIL_CASTING`) REFERENCES `perfil_casting` (`CODIGO_PERFIL_CASTING`),
  ADD CONSTRAINT `evaluacion_ibfk_3` FOREIGN KEY (`CODIGO_CANDIDATO`) REFERENCES `candidato` (`CODIGO`);

--
-- Filtros para la tabla `fase`
--
ALTER TABLE `fase`
  ADD CONSTRAINT `fase_ibfk_1` FOREIGN KEY (`CODIGO_CASTING`) REFERENCES `casting` (`CODIGO`);

--
-- Filtros para la tabla `perfil_casting`
--
ALTER TABLE `perfil_casting`
  ADD CONSTRAINT `perfil_casting_ibfk_1` FOREIGN KEY (`CODIGO_CASTING`) REFERENCES `casting` (`CODIGO`),
  ADD CONSTRAINT `perfil_casting_ibfk_2` FOREIGN KEY (`CODIGO_PERFIL`) REFERENCES `perfil` (`CODIGO`);

--
-- Filtros para la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD CONSTRAINT `prueba_ibfk_1` FOREIGN KEY (`CODIGO_FASE`) REFERENCES `fase` (`CODIGO_FASE`),
  ADD CONSTRAINT `prueba_ibfk_2` FOREIGN KEY (`CODIGO_SALA`) REFERENCES `sala` (`CODIGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
