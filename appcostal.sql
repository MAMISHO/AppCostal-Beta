-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2014 a las 08:30:45
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `appcostal`
--
CREATE DATABASE IF NOT EXISTS `appcostal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `appcostal`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

DROP TABLE IF EXISTS `evento`;
CREATE TABLE IF NOT EXISTS `evento` (
  `idevento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpaso` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(90) NOT NULL,
  PRIMARY KEY (`idevento`),
  KEY `FK_evento` (`idpaso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`idevento`, `idpaso`, `fecha`, `descripcion`) VALUES
(1, 1, '2014-06-12 00:00:00', 'Convivencia paso cristo'),
(2, 2, '2014-07-23 00:00:00', 'Convivencia paso palio'),
(3, 1, '2014-11-05 00:00:00', 'Salida extraordinaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermandad`
--

DROP TABLE IF EXISTS `hermandad`;
CREATE TABLE IF NOT EXISTS `hermandad` (
  `idhermandad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Sede` varchar(60) NOT NULL,
  PRIMARY KEY (`idhermandad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `hermandad`
--

INSERT INTO `hermandad` (`idhermandad`, `Nombre`, `Sede`) VALUES
(1, 'Museo', 'Capilla del Museo'),
(2, 'prueba1', 'nombre 1'),
(3, 'prueba2 editado', 'Sede editada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermano`
--

DROP TABLE IF EXISTS `hermano`;
CREATE TABLE IF NOT EXISTS `hermano` (
  `dni` varchar(9) CHARACTER SET latin1 NOT NULL,
  `Nombre` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Apellido1` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Apellido2` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Direccion` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Localidad` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Provincia` varchar(45) CHARACTER SET latin1 NOT NULL,
  `telefonofijo` varchar(45) CHARACTER SET latin1 NOT NULL,
  `telefonomovil` varchar(45) CHARACTER SET latin1 NOT NULL,
  `fechanacimiento` datetime NOT NULL,
  `clave` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(60) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `hermano`
--

INSERT INTO `hermano` (`dni`, `Nombre`, `Apellido1`, `Apellido2`, `Direccion`, `Localidad`, `Provincia`, `telefonofijo`, `telefonomovil`, `fechanacimiento`, `clave`, `tipo`, `email`) VALUES
('11111111A', 'Angel', 'Crujera', 'Mora', 'chupilandia', 'Sevilla', 'Sevilla', '123123123', '32132131', '1991-01-14 00:00:00', 'angel', 'costalero', 'angcrumor@example.es'),
('11111111B', 'edwin', 'Mauricio', 'Mamisho', 'Sevillandia', 'Sevilla', 'Sevilla', '111222333', '333222111', '1993-11-15 00:00:00', 'edwin', 'capataz', 'edwin@example.es'),
('11111111C', 'Pepe', 'Pepin', 'Pepon', 'Calcuta', 'Sevilla', 'Sevilla', '123321123', '321123321', '1990-05-11 00:00:00', 'pepe', 'costalero', 'pepe@example.com'),
('9384938M', 'Jesus', 'Martinez', 'Perez', 'gavidia', 'Sevilla', 'Sevilla', '11111111', '12341234', '1994-12-14 00:00:00', 'admin', 'administrador', 'jesus@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iguala`
--

DROP TABLE IF EXISTS `iguala`;
CREATE TABLE IF NOT EXISTS `iguala` (
  `idiguala` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpaso` int(10) unsigned NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idiguala`),
  KEY `FK_iguala` (`idpaso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `iguala`
--

INSERT INTO `iguala` (`idiguala`, `idpaso`, `descripcion`, `fecha`) VALUES
(1, 1, 'Iguala para salida extraordinaria Noviembre', '2014-09-23 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcha`
--

DROP TABLE IF EXISTS `marcha`;
CREATE TABLE IF NOT EXISTS `marcha` (
  `idmarcha` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `duracion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idmarcha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `marcha`
--

INSERT INTO `marcha` (`idmarcha`, `nombre`, `duracion`) VALUES
(1, 'Presentado al pueblo', 250),
(2, 'Virgen de las Aguas', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paso`
--

DROP TABLE IF EXISTS `paso`;
CREATE TABLE IF NOT EXISTS `paso` (
  `idpaso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idhermandad` int(10) unsigned NOT NULL,
  `Nombre` varchar(64) NOT NULL,
  `Tipo` varchar(32) NOT NULL,
  PRIMARY KEY (`idpaso`),
  KEY `FK_hermandad` (`idhermandad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `paso`
--

INSERT INTO `paso` (`idpaso`, `idhermandad`, `Nombre`, `Tipo`) VALUES
(1, 1, 'Cristo de la Expiración', 'Paso cristo'),
(2, 1, 'Virgen de las Aguas', 'Palio'),
(3, 1, 'prueba1 editado', 'Tipo Editado'),
(4, 1, 'prueba1', 'prueba1'),
(5, 1, 'prueba 2', 'tipo 2'),
(6, 1, 'prueba 2', 'tipo 2'),
(7, 1, 'prueba 3', 'tipo 3'),
(8, 1, 'prueba 3', 'tipo 3'),
(9, 1, 'prueba 3', 'tipo 3'),
(11, 1, 'nombre 1', 'tipo 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--

DROP TABLE IF EXISTS `posicion`;
CREATE TABLE IF NOT EXISTS `posicion` (
  `idposicion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idposicion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesion`
--

DROP TABLE IF EXISTS `procesion`;
CREATE TABLE IF NOT EXISTS `procesion` (
  `idprocesion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpaso` int(10) unsigned NOT NULL,
  `idrecorrido` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `esensayo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idprocesion`),
  KEY `FK_procesion` (`idpaso`),
  KEY `FK_procesion_2` (`idrecorrido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `procesion`
--

INSERT INTO `procesion` (`idprocesion`, `idpaso`, `idrecorrido`, `descripcion`, `fecha`, `esensayo`) VALUES
(1, 1, 1, 'Salida extraordinaria', '2014-11-05 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

DROP TABLE IF EXISTS `recorrido`;
CREATE TABLE IF NOT EXISTS `recorrido` (
  `idrecorrido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(90) NOT NULL,
  PRIMARY KEY (`idrecorrido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`idrecorrido`, `descripcion`) VALUES
(1, 'Plaza del museo, alfonso XII, Campana, Sierpes, Palcos, Catedral, Placentines, Tetuan, Cam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relevo`
--

DROP TABLE IF EXISTS `relevo`;
CREATE TABLE IF NOT EXISTS `relevo` (
  `idrelevo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idprocesion` int(10) unsigned NOT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrelevo`),
  KEY `FK_relevo` (`idprocesion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `relevo`
--

INSERT INTO `relevo` (`idrelevo`, `idprocesion`, `lugar`) VALUES
(1, 1, 'Alfonso XII'),
(2, 1, 'Placentines');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_evento_hermano`
--

DROP TABLE IF EXISTS `rel_evento_hermano`;
CREATE TABLE IF NOT EXISTS `rel_evento_hermano` (
  `idevento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) NOT NULL,
  `asiste` tinyint(1) NOT NULL,
  PRIMARY KEY (`idevento`,`dni`),
  KEY `FK_rel_evento_hermano_2` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_hermano_paso`
--

DROP TABLE IF EXISTS `rel_hermano_paso`;
CREATE TABLE IF NOT EXISTS `rel_hermano_paso` (
  `dni` varchar(9) NOT NULL,
  `idpaso` int(10) unsigned NOT NULL,
  `escapataz` tinyint(1) NOT NULL,
  `escostalero` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni`,`idpaso`),
  KEY `FK_rel_hermano_paso_2` (`idpaso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_iguala_hermano`
--

DROP TABLE IF EXISTS `rel_iguala_hermano`;
CREATE TABLE IF NOT EXISTS `rel_iguala_hermano` (
  `idiguala` int(10) unsigned NOT NULL,
  `dni` varchar(9) NOT NULL,
  `altura` float NOT NULL,
  PRIMARY KEY (`idiguala`,`dni`),
  KEY `FK_rel_iguala_hermano_2` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_marcha_procesion`
--

DROP TABLE IF EXISTS `rel_marcha_procesion`;
CREATE TABLE IF NOT EXISTS `rel_marcha_procesion` (
  `idmarcha` int(10) unsigned NOT NULL,
  `idprocesion` int(10) unsigned NOT NULL,
  `lugar` varchar(45) NOT NULL,
  PRIMARY KEY (`idmarcha`,`idprocesion`),
  KEY `FK_rel_marcha_procesion_2` (`idprocesion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_relevo_trabajadera_hermano`
--

DROP TABLE IF EXISTS `rel_relevo_trabajadera_hermano`;
CREATE TABLE IF NOT EXISTS `rel_relevo_trabajadera_hermano` (
  `idrelevo` int(10) unsigned NOT NULL,
  `idtrabajadera` int(10) unsigned NOT NULL,
  `dni` varchar(9) NOT NULL,
  `idposicion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idrelevo`,`idtrabajadera`,`dni`,`idposicion`),
  KEY `FK_rel_relevo_trabajadera_hermano_1` (`idposicion`),
  KEY `FK_rel_relevo_trabajadera_hermano_3` (`idtrabajadera`),
  KEY `FK_rel_relevo_trabajadera_hermano_4` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadera`
--

DROP TABLE IF EXISTS `trabajadera`;
CREATE TABLE IF NOT EXISTS `trabajadera` (
  `idtrabajadera` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idpaso` int(10) unsigned NOT NULL,
  `ncostaleros` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idtrabajadera`,`idpaso`),
  KEY `FK_trabajadera_1` (`idpaso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `trabajadera`
--

INSERT INTO `trabajadera` (`idtrabajadera`, `idpaso`, `ncostaleros`) VALUES
(1, 1, 5),
(2, 1, 5),
(3, 1, 5),
(4, 1, 5),
(5, 1, 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `FK_evento` FOREIGN KEY (`idpaso`) REFERENCES `paso` (`idpaso`);

--
-- Filtros para la tabla `iguala`
--
ALTER TABLE `iguala`
  ADD CONSTRAINT `FK_iguala` FOREIGN KEY (`idpaso`) REFERENCES `paso` (`idpaso`);

--
-- Filtros para la tabla `paso`
--
ALTER TABLE `paso`
  ADD CONSTRAINT `FK_hermandad` FOREIGN KEY (`idhermandad`) REFERENCES `hermandad` (`idhermandad`);

--
-- Filtros para la tabla `procesion`
--
ALTER TABLE `procesion`
  ADD CONSTRAINT `FK_procesion` FOREIGN KEY (`idpaso`) REFERENCES `paso` (`idpaso`),
  ADD CONSTRAINT `FK_procesion_2` FOREIGN KEY (`idrecorrido`) REFERENCES `recorrido` (`idrecorrido`);

--
-- Filtros para la tabla `relevo`
--
ALTER TABLE `relevo`
  ADD CONSTRAINT `FK_relevo` FOREIGN KEY (`idprocesion`) REFERENCES `procesion` (`idprocesion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
