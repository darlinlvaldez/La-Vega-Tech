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
  `Capacidad` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CargaRapida` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
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
  `Principal` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Selfie` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Video` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Camara`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `camara_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `camara` */

insert  into `camara`(`ID_Camara`,`ID_Movil`,`Principal`,`Selfie`,`Video`) values (17,1,'50MP','12MP','8K'),(18,2,'48MP','12MP','4K'),(19,3,'50MP','32MP','8K');

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `categorias` */

insert  into `categorias`(`id`,`categoria`,`imagen`) values (1,'moviles','https://st4.depositphotos.com/1102976/24930/i/450/depositphotos_249306738-stock-photo-smartphones-on-shelf-in-the.jpg'),(2,'smarttv','https://cdn.asi.do/k6z4s792v6nrnjefpu9m42pzaecb'),(3,'laptops','https://casacuesta.com/media/catalog/product/cache/fde49a4ea9a339628caa0bc56aea00ff/3/3/3340293-1__1698964301.jpg'),(4,'ps5','https://m.media-amazon.com/images/S/aplus-media-library-service-media/f12acd6a-b63f-4a3f-b10f-e9df37b4498f.__CR0,0,600,450_PT0_SX600_V1___.jpg'),(5,'accesorios','https://do.lidomshop.com/wp-content/uploads/sites/4/2022/01/black.jpg');

/*Table structure for table `clasificacion` */

DROP TABLE IF EXISTS `clasificacion`;

CREATE TABLE `clasificacion` (
  `ID_Clasificacion` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Clasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `clasificacion` */

insert  into `clasificacion`(`ID_Clasificacion`,`Nombre`) values (1,'Gama Alta'),(2,'Gama Media'),(3,'Gama Baja');

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `direccion` text COLLATE latin1_general_ci NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `clientes` */

/*Table structure for table `conectividad` */

DROP TABLE IF EXISTS `conectividad`;

CREATE TABLE `conectividad` (
  `ID_Conectividad` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Red` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `WiFi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bluetooth` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
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
  `Altura` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Anchura` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Grosor` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Peso` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DimensionesPeso`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `dimensionespeso_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `dimensionespeso` */

insert  into `dimensionespeso`(`ID_DimensionesPeso`,`ID_Movil`,`Altura`,`Anchura`,`Grosor`,`Peso`) values (58,1,'147mm','70mm','7.6mm','168g'),(59,2,'146mm','71mm','7.8mm','171g'),(60,3,'152mm','72mm','8.0mm','180g');

/*Table structure for table `estados_pedido` */

DROP TABLE IF EXISTS `estados_pedido`;

CREATE TABLE `estados_pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `estados_pedido` */

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `ID_Marca` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ID_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `marcas` */

insert  into `marcas`(`ID_Marca`,`Nombre`) values (1,'Samsung'),(2,'Apple'),(3,'Xiaomi');

/*Table structure for table `memorias` */

DROP TABLE IF EXISTS `memorias`;

CREATE TABLE `memorias` (
  `ID_Memoria` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `RAM` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Almacenamiento` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Memoria`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `memorias_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `memorias` */

insert  into `memorias`(`ID_Memoria`,`ID_Movil`,`RAM`,`Almacenamiento`) values (21,1,'8GB','256GB'),(22,2,'6GB','128GB'),(23,3,'12GB','512GB');

/*Table structure for table `metodos_pago` */

DROP TABLE IF EXISTS `metodos_pago`;

CREATE TABLE `metodos_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `metodos_pago` */

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
  `Nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
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
  `Tamaño` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Frecuencia` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Resolucion` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Pantalla`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `pantallas_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pantallas` */

insert  into `pantallas`(`ID_Pantalla`,`ID_Movil`,`Tamaño`,`Tipo`,`Frecuencia`,`Resolucion`) values (1,1,'6.1\"','Dynamic AMOLED 2X','120Hz','2340x1080'),(2,2,'6.1\"','Super Retina XDR OLED','60Hz','2556x1179'),(3,3,'6.7\"','LTPO AMOLED','120Hz','3200x1440');

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado_id` int NOT NULL,
  `metodo_pago_id` int NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `estado_id` (`estado_id`),
  KEY `metodo_pago_id` (`metodo_pago_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`estado_id`) REFERENCES `estados_pedido` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodos_pago` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pedidos` */

/*Table structure for table `procesadores` */

DROP TABLE IF EXISTS `procesadores`;

CREATE TABLE `procesadores` (
  `ID_Procesador` int NOT NULL AUTO_INCREMENT,
  `ID_Movil` int DEFAULT NULL,
  `Nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Nucleos` int DEFAULT NULL,
  `Velocidad` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Procesador`),
  KEY `ID_Movil` (`ID_Movil`),
  CONSTRAINT `procesadores_ibfk_1` FOREIGN KEY (`ID_Movil`) REFERENCES `moviles` (`ID_Movil`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `procesadores` */

insert  into `procesadores`(`ID_Procesador`,`ID_Movil`,`Nombre`,`Nucleos`,`Velocidad`) values (5,1,'Exynos 2400',10,'3.1GHz'),(6,2,'A17 Pro',6,'3.78GHz'),(7,3,'Snapdragon 8 Gen 3',8,'3.3GHz');

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `descripcion` text COLLATE latin1_general_ci,
  `precio` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '0',
  `imagen` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`descripcion`,`precio`,`stock`,`imagen`,`categoria_id`) values (1,'iPhone 12','64GB - Calidad A','15995.00',30,NULL,1),(2,'iPhone 12','128GB - Calidad A','17995.00',30,NULL,1),(3,'iPhone 12','256GB - Calidad A','19495.00',30,NULL,1),(4,'iPhone 12 Pro','128GB - Calidad A','21995.00',30,NULL,1),(5,'iPhone 12 Pro','256GB - Calidad A','23995.00',30,NULL,1),(6,'iPhone 12 Pro Max','128GB - Calidad A','27495.00',30,NULL,1),(7,'iPhone 12 Pro Max','256GB - Calidad A','28995.00',30,NULL,1),(8,'iPhone 12 Pro Max','512GB - Calidad A','29995.00',30,NULL,1),(9,'iPhone 13','128GB - Calidad A','23995.00',30,NULL,1),(10,'iPhone 13','256GB - Calidad A','25495.00',30,NULL,1),(11,'iPhone 13 Pro','128GB - Calidad A','28495.00',30,NULL,1),(12,'iPhone 13 Pro','256GB - Calidad A','30995.00',30,NULL,1),(13,'iPhone 13 Pro Max','128GB - Calidad A','32995.00',30,NULL,1),(14,'iPhone 13 Pro Max','256GB - Calidad A','35995.00',30,NULL,1),(15,'iPhone 13 Pro Max','512GB - Calidad A','37495.00',30,NULL,1),(16,'iPhone 14','128GB - Calidad A','26495.00',30,NULL,1),(17,'iPhone 14','256GB - Calidad A','27995.00',30,NULL,1),(18,'iPhone 14 Plus','128GB - Calidad A','28995.00',30,NULL,1),(19,'iPhone 14 Plus','256GB - Calidad A','30995.00',30,NULL,1),(20,'iPhone 14 Pro','128GB - Calidad A','34495.00',30,NULL,1),(21,'iPhone 14 Pro','256GB - Calidad A','36495.00',30,NULL,1),(22,'iPhone 14 Pro','512GB - Calidad A','38995.00',30,NULL,1),(23,'iPhone 14 Pro Max','128GB - Calidad A','41495.00',30,NULL,1),(24,'iPhone 14 Pro Max','256GB - Calidad A','43995.00',30,NULL,1),(25,'iPhone 14 Pro Max','512GB - Calidad A','46495.00',30,NULL,1),(26,'iPhone 15','128GB - Calidad A','35995.00',30,NULL,1),(27,'iPhone 15','256GB - Calidad A','37995.00',30,NULL,1),(28,'iPhone 15 Plus','128GB - Calidad A','38995.00',30,NULL,1),(29,'iPhone 15 Plus','512GB - Calidad A','42995.00',30,NULL,1),(30,'iPhone 15 Pro','128GB - Calidad A','41995.00',30,NULL,1),(31,'iPhone 15 Pro Max','256GB - Calidad A','52995.00',30,NULL,1),(32,'iPhone 15 Pro Max Con Sim Físico','256GB - Calidad A','54995.00',30,NULL,1),(33,'iPhone 15 Pro Max','512GB - Calidad A','57995.00',30,NULL,1),(34,'iPhone 15 Pro Max','1TB - Calidad A','61995.00',30,NULL,1),(35,'iPhone 16','128GB - Nuevo','52495.00',30,NULL,1),(36,'iPhone 16','128GB - Calidad A','44995.00',30,NULL,1),(37,'iPhone 16 Plus','128GB - Calidad A','54995.00',30,NULL,1),(38,'iPhone 16 Pro Max','256GB - Nuevo','74995.00',30,NULL,1),(39,'iPhone 16 Pro Max','512GB - Nuevo','84995.00',30,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;