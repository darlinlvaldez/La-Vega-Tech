/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.40 : Database - mobiles
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mobiles` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mobiles`;

/*Table structure for table `baterias` */

DROP TABLE IF EXISTS `baterias`;

CREATE TABLE `baterias` (
  `ID_Bateria` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Capacidad` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Tipo` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CargaRapida` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `CargaInalambrica` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Bateria`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `baterias_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `baterias` */

insert  into `baterias`(`ID_Bateria`,`ID_Movil`,`Capacidad`,`Tipo`,`CargaRapida`,`CargaInalambrica`) values (1,1,'4000mAh','Li-Ion','25W',1),(2,2,'3279mAh','Li-Ion','20W',1),(3,3,'5000mAh','Li-Po','80W',0);

/*Table structure for table `camara` */

DROP TABLE IF EXISTS `camara`;

CREATE TABLE `camara` (
  `ID_Camara` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Principal` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Selfie` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Video` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Camara`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `camara_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `camara` */

insert  into `camara`(`ID_Camara`,`ID_Movil`,`Principal`,`Selfie`,`Video`) values (17,1,'50MP','12MP','8K'),(18,2,'48MP','12MP','4K'),(19,3,'50MP','32MP','8K');

/*Table structure for table `clasificacion` */

DROP TABLE IF EXISTS `clasificacion`;

CREATE TABLE `clasificacion` (
  `ID_Clasificacion` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Clasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `clasificacion` */

insert  into `clasificacion`(`ID_Clasificacion`,`Nombre`) values (1,'Gama Alta'),(2,'Gama Media'),(3,'Gama Baja');

/*Table structure for table `conectividad` */

DROP TABLE IF EXISTS `conectividad`;

CREATE TABLE `conectividad` (
  `ID_Conectividad` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Red` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `WiFi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Bluetooth` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NFC` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Conectividad`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `conectividad_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `conectividad` */

insert  into `conectividad`(`ID_Conectividad`,`ID_Movil`,`Red`,`WiFi`,`Bluetooth`,`NFC`) values (1,1,'5G','WiFi 6E','Bluetooth 5.3',1),(2,2,'5G','WiFi 6','Bluetooth 5.3',1),(3,3,'5G','WiFi 7','Bluetooth 5.4',1);

/*Table structure for table `dimensionespeso` */

DROP TABLE IF EXISTS `dimensionespeso`;

CREATE TABLE `dimensionespeso` (
  `ID_DimensionesPeso` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Altura` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Anchura` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Grosor` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Peso` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DimensionesPeso`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `dimensionespeso_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `dimensionespeso` */

insert  into `dimensionespeso`(`ID_DimensionesPeso`,`ID_Movil`,`Altura`,`Anchura`,`Grosor`,`Peso`) values (58,1,'147mm','70mm','7.6mm','168g'),(59,2,'146mm','71mm','7.8mm','171g'),(60,3,'152mm','72mm','8.0mm','180g');

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `ID_Marca` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `marcas` */

insert  into `marcas`(`ID_Marca`,`Nombre`) values (1,'Samsung'),(2,'Apple'),(3,'Xiaomi');

/*Table structure for table `memorias` */

DROP TABLE IF EXISTS `memorias`;

CREATE TABLE `memorias` (
  `ID_Memoria` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `RAM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Almacenamiento` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Memoria`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `memorias_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `memorias` */

insert  into `memorias`(`ID_Memoria`,`ID_Movil`,`RAM`,`Almacenamiento`) values (21,1,'8GB','256GB'),(22,2,'6GB','128GB'),(23,3,'12GB','512GB');

/*Table structure for table `movilclasificaciones` */

DROP TABLE IF EXISTS `movilclasificaciones`;

CREATE TABLE `movilclasificaciones` (
  `ID_Movil` int NOT NULL,
  `ID_Clasificacion` int NOT NULL,
  PRIMARY KEY (`ID_Movil`,`ID_Clasificacion`),
  KEY `ID_Clasificacion` (`ID_Clasificacion`),
  CONSTRAINT `movilclasificaciones_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`),
  CONSTRAINT `movilclasificaciones_ibfk_2` FOREIGN KEY (`ID_Clasificacion`) REFERENCES `clasificacion` (`ID_Clasificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `movilclasificaciones` */

insert  into `movilclasificaciones`(`ID_Movil`,`ID_Clasificacion`) values (1,1),(2,1),(3,1);

/*Table structure for table `moviles` */

DROP TABLE IF EXISTS `moviles`;

CREATE TABLE `moviles` (
  `ID_Movil` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `ID_Marca` int DEFAULT NULL,
  `Año` int DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Movil`),
  KEY `ID_Marca` (`ID_Marca`),
  CONSTRAINT `moviles_ibfk_1` FOREIGN KEY (`ID_Marca`) REFERENCES `marcas` (`ID_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `moviles` */

insert  into `moviles`(`ID_Movil`,`Nombre`,`ID_Marca`,`Año`,`Precio`) values (1,'Galaxy S24',1,2024,'999.99'),(2,'iPhone 15',2,2023,'1099.99'),(3,'Xiaomi 14',3,2024,'899.99');

/*Table structure for table `pantallas` */

DROP TABLE IF EXISTS `pantallas`;

CREATE TABLE `pantallas` (
  `ID_Pantalla` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Tamaño` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Tipo` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Frecuencia` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Resolucion` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Pantalla`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `pantallas_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pantallas` */

insert  into `pantallas`(`ID_Pantalla`,`ID_Movil`,`Tamaño`,`Tipo`,`Frecuencia`,`Resolucion`) values (1,1,'6.1\"','Dynamic AMOLED 2X','120Hz','2340x1080'),(2,2,'6.1\"','Super Retina XDR OLED','60Hz','2556x1179'),(3,3,'6.7\"','LTPO AMOLED','120Hz','3200x1440');

/*Table structure for table `procesadores` */

DROP TABLE IF EXISTS `procesadores`;

CREATE TABLE `procesadores` (
  `ID_Procesador` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Nombre` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Nucleos` int DEFAULT NULL,
  `Velocidad` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Procesador`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `procesadores_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `procesadores` */

insert  into `procesadores`(`ID_Procesador`,`ID_Movil`,`Nombre`,`Nucleos`,`Velocidad`) values (5,1,'Exynos 2400',10,'3.1GHz'),(6,2,'A17 Pro',6,'3.78GHz'),(7,3,'Snapdragon 8 Gen 3',8,'3.3GHz');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
