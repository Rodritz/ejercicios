-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ejercicio_1
CREATE DATABASE IF NOT EXISTS `ejercicio_1` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio_1`;

-- Volcando estructura para tabla ejercicio_1.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `apellido` varchar(40) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `edad` tinyint NOT NULL DEFAULT '0',
  `fecha de nacimiento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `provincia` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla ejercicio_1.alumnos: ~5 rows (aproximadamente)
INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `edad`, `fecha de nacimiento`, `provincia`) VALUES
	(1, 'Juan', 'Sanchez', 19, '2003-05-22 13:00:00', 'Bs As'),
	(2, 'Mariana', 'Gimenez', 19, '2003-07-29 20:00:00', 'Catamarca'),
	(3, 'Adrian', 'Martinez', 18, '2004-01-30 15:30:00', 'Jujuy'),
	(4, 'Belen', 'Quevedo', 19, '2003-03-16 18:45:00', 'La Pampa'),
	(5, 'Samantha', 'Jerez', 20, '2002-09-11 22:00:00', 'Entre Rios');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
