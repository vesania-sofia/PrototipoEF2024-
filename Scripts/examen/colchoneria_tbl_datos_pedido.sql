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
-- Table structure for table `tbl_datos_pedido`
--

DROP TABLE IF EXISTS `tbl_datos_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_datos_pedido` (
  `Pk_id_guia` int NOT NULL AUTO_INCREMENT,
  `fechaEmision` date NOT NULL,
  `fechaTraslado` date NOT NULL,
  `direccionPartida` varchar(255) NOT NULL,
  `direccionLlegada` varchar(255) NOT NULL,
  `numeroOrdenRecojo` varchar(20) DEFAULT NULL,
  `formaPago` varchar(50) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `Fk_id_remitente` int NOT NULL,
  `Fk_id_destinatario` int NOT NULL,
  `Fk_id_vehiculo` int NOT NULL,
  PRIMARY KEY (`Pk_id_guia`),
  KEY `Fk_id_remitente` (`Fk_id_remitente`),
  KEY `Fk_id_destinatario` (`Fk_id_destinatario`),
  KEY `Fk_id_vehiculo` (`Fk_id_vehiculo`),
  CONSTRAINT `tbl_datos_pedido_ibfk_1` FOREIGN KEY (`Fk_id_remitente`) REFERENCES `tbl_remitente` (`Pk_id_remitente`),
  CONSTRAINT `tbl_datos_pedido_ibfk_2` FOREIGN KEY (`Fk_id_destinatario`) REFERENCES `tbl_destinatario` (`Pk_id_destinatario`),
  CONSTRAINT `tbl_datos_pedido_ibfk_3` FOREIGN KEY (`Fk_id_vehiculo`) REFERENCES `tbl_vehiculos` (`Pk_id_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_datos_pedido`
--

LOCK TABLES `tbl_datos_pedido` WRITE;
/*!40000 ALTER TABLE `tbl_datos_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_datos_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:43
