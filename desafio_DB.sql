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


-- Volcando estructura de base de datos para desafiodb
CREATE DATABASE IF NOT EXISTS `desafiodb` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `desafiodb`;

-- Volcando estructura para tabla desafiodb.departamentos
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_departamento` int NOT NULL,
  `nombre_de_departamento` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `presupuesto` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla desafiodb.departamentos: ~6 rows (aproximadamente)
INSERT INTO `departamentos` (`id`, `numero_departamento`, `nombre_de_departamento`, `presupuesto`) VALUES
	(1, 14, 'informatica', 80000),
	(2, 77, 'investigacion', 40000),
	(3, 15, 'gestion', 95000),
	(4, 37, 'desarrollo', 65000),
	(5, 16, 'comunicacion', 75000),
	(6, 11, 'calidad', 40000);

-- Volcando estructura para tabla desafiodb.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `departamento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN_empleados_dni` (`dni`),
  KEY `FK_departamento_departamento_id` (`departamento_id`),
  CONSTRAINT `FK_departamento_departamento_id` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla desafiodb.empleados: ~15 rows (aproximadamente)
INSERT INTO `empleados` (`id`, `dni`, `nombre`, `apellido`, `departamento_id`) VALUES
	(1, 31096678, 'Juan', 'Lopez', 1),
	(2, 31096675, 'Martin', 'Zarabia', 2),
	(3, 34269854, 'Jose', 'Velez', 2),
	(4, 41369852, 'Paula', 'Madariaga', 2),
	(5, 33698521, 'Pedro', 'Perez', 1),
	(6, 32698547, 'Mariana', 'Lopez', 3),
	(7, 42369854, 'Abril', 'Sanchez', 4),
	(8, 36125896, 'Julia', 'Marti', 1),
	(9, 36985471, 'Omar', 'Diaz', 3),
	(10, 32145698, 'Guadalupe', 'Perez', 2),
	(11, 32369854, 'Bernardo', 'Pantera', 4),
	(12, 36125965, 'Lucia', 'Pesaro', 1),
	(13, 31236985, 'Maria', 'Diamante', 1),
	(14, 32698548, 'Carmen', 'Barbieri', 5),
	(15, 89267109, 'Esther', 'Vazquez', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
