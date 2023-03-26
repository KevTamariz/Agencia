-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `RFC` char(13) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Telefono` bigint unsigned NOT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('C5GDJ5SG69FEU','Alejandra Mendez Ramirez','Calle Nuevo Mexico #65',2294784230),('DG5D69SF85S4F','Jessica Hernandez Flores','Calle Mexico #13',2261653150),('HDF6J0FG97MRW','David Salazar Barrios','Calle Nuevo Leon #45',2296824034),('KHG59FDS5G6WE','Oscar Ferandez Mendez','Calle Durango #28',2290459270),('P65AKVZT65CSF','Bernardo Lopez Ruiz','Calle Puebla #7',2295213550),('YE5F3FBD52WKH','Vicente Vasquez Reyes','Calle Veracruz #32',2285644620);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `RFC` varchar(13) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Telefono` bigint unsigned NOT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('ASDFGH565JHGS','Eduargo Jimenez Lopez','Calle Oaxaca 78#',2292758491),('CUBA045325EDF','Francisco Garcia Perez','Calle Puebla #9',2895741508),('DS5G4J3DTH64G','Kevin Ochoa Mendez','Calle Guadalajara #34',2271258317),('FTH56DWR98HF0','Edwin Hernandez Morales','Calle Tabasco #12',2289741890),('GHD58HDHB2VDA','Angel Martinez Prieto','Calle Quintana Roo #15',2296548592),('GHJSJW62F52GR','Alejandro Rivera Perez','Calle Yucatan #71',2295746534),('NSD52STU012QW','Alvaro Fidalgo Fernandez','Calle Sonora #56',2294851560),('QRT92SHDLK253','Juan Ramos Perez','Calle Guerrero #65',2295758621),('QWERTY52UY02E','Maria Herrera Castro','Calle Tamaulipas #51',2290859173),('ZXCVBNM850EZX','Angelica Garcia Gonzalez','Calle Veracruz #96',2299483601);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `Num_Serie` char(17) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Modelo` varchar(20) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Precio` int unsigned NOT NULL,
  PRIMARY KEY (`Num_Serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES ('CVBXHGH84GF5J4533','Dodge','Charger','Negro',655500),('DSH56DGJ4ET56T4UY','Lamborghini','Countach','Amarillo',450000),('FGHY5FHGBMJKFG872','Ford','Ford GT40','Rojo',25100),('HGH5456FGJDF52CNB','Porsche','Transaxle','Blanco y rojo',500000),('OPAS45GF1B20HJ4D5','Lamborghini','Miura','Azuñ',29800),('RG4G65HJF4JK4G6DF','Chevrolet','Corvette C41','Amarillo',85000),('TF4B2X5BH4N4M4D6H','Ford','Ford T','Rojo',250000),('UIKPI9HGN9F6G5NJ1','Porsche','Porsche 911','Gris',354000),('VBC32VDTREWRT8HG4','Toyota','Land Cruiser','Negro',125000),('YTU4DFG23SDFGH05F','Mercedes','Mercedes SL300','Gris',478000);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `ID_Venta` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `RFC_Cli` char(13) NOT NULL,
  `RFC_Emp` varchar(13) NOT NULL,
  `Num_Serie` char(17) NOT NULL,
  `Cantidad` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Venta`),
  KEY `fk_cliente` (`RFC_Cli`),
  KEY `fk_empleado` (`RFC_Emp`),
  KEY `fk_vehiculo` (`Num_Serie`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`RFC_Cli`) REFERENCES `cliente` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_empleado` FOREIGN KEY (`RFC_Emp`) REFERENCES `empleado` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vehiculo` FOREIGN KEY (`Num_Serie`) REFERENCES `vehiculo` (`Num_Serie`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (2,'KHG59FDS5G6WE','GHJSJW62F52GR','HGH5456FGJDF52CNB',500000);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-21 18:27:28
