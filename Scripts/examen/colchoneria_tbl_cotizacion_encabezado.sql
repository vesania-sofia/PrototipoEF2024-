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
-- Table structure for table `tbl_cotizacion_encabezado`
--

DROP TABLE IF EXISTS `tbl_cotizacion_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cotizacion_encabezado` (
  `Pk_id_cotizacionEnc` varchar(20) NOT NULL,
  `Fk_id_vendedor` int DEFAULT NULL,
  `Fk_id_cliente` int DEFAULT NULL,
  `CotizacionEnc_fechaVenc` date DEFAULT NULL,
  `CotizacionEnc_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_cotizacionEnc`),
  UNIQUE KEY `Pk_id_cotizacionEnc` (`Pk_id_cotizacionEnc`),
  KEY `Fk_id_vendedor` (`Fk_id_vendedor`),
  KEY `Fk_id_cliente` (`Fk_id_cliente`),
  CONSTRAINT `tbl_cotizacion_encabezado_ibfk_1` FOREIGN KEY (`Fk_id_vendedor`) REFERENCES `tbl_vendedores` (`Pk_id_vendedor`),
  CONSTRAINT `tbl_cotizacion_encabezado_ibfk_2` FOREIGN KEY (`Fk_id_cliente`) REFERENCES `tbl_clientes` (`Pk_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cotizacion_encabezado`
--

LOCK TABLES `tbl_cotizacion_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_cotizacion_encabezado` DISABLE KEYS */;
INSERT INTO `tbl_cotizacion_encabezado` VALUES ('1',1,1,'2024-11-30',1500.00),('10',10,10,'2025-04-05',2100.00),('100',2,3,'2024-11-22',509.94),('12345',1,1,'2024-12-08',5000.00),('2',2,2,'2024-12-15',2000.00),('3',3,3,'2024-12-20',1750.00),('4',4,4,'2025-01-10',2500.00),('5',5,5,'2025-01-15',3000.00),('6',6,6,'2025-02-05',2250.00),('7',7,7,'2025-02-20',2750.00),('8',8,8,'2025-03-10',1900.00),('9',9,9,'2025-03-25',1600.00),('COT1',5,5,'2024-11-11',1369.95);
/*!40000 ALTER TABLE `tbl_cotizacion_encabezado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:46
