-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: colchoneria
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `tbl_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mantenimiento` (
  `Pk_id_Mantenimiento` int NOT NULL AUTO_INCREMENT,
  `nombre_Solicitante` varchar(20) NOT NULL,
  `tipo_de_Mantenimiento` varchar(15) NOT NULL,
  `componente_Afectado` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `responsable_Asignado` varchar(20) NOT NULL,
  `codigo_Error_Problema` varchar(50) NOT NULL,
  `estado_del_Mantenimiento` varchar(20) NOT NULL,
  `tiempo_Estimado` varchar(30) NOT NULL,
  `Fk_id_vehiculo` int NOT NULL,
  PRIMARY KEY (`Pk_id_Mantenimiento`),
  KEY `Fk_id_vehiculo` (`Fk_id_vehiculo`),
  CONSTRAINT `tbl_mantenimiento_ibfk_1` FOREIGN KEY (`Fk_id_vehiculo`) REFERENCES `tbl_vehiculos` (`Pk_id_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mantenimiento`
--

LOCK TABLES `tbl_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:55
