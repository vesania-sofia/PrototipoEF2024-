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
-- Table structure for table `tbl_detalle_presupuesto`
--

DROP TABLE IF EXISTS `tbl_detalle_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_presupuesto` (
  `Pk_id_detalle` int NOT NULL AUTO_INCREMENT,
  `Fk_id_presupuesto` int DEFAULT NULL,
  `Fk_id_cuenta` int DEFAULT NULL,
  `mes_enero` decimal(18,2) DEFAULT NULL,
  `mes_febrero` decimal(18,2) DEFAULT NULL,
  `mes_marzo` decimal(18,2) DEFAULT NULL,
  `mes_abril` decimal(18,2) DEFAULT NULL,
  `mes_mayo` decimal(18,2) DEFAULT NULL,
  `mes_junio` decimal(18,2) DEFAULT NULL,
  `mes_julio` decimal(18,2) DEFAULT NULL,
  `mes_agosto` decimal(18,2) DEFAULT NULL,
  `mes_septiembre` decimal(18,2) DEFAULT NULL,
  `mes_octubre` decimal(18,2) DEFAULT NULL,
  `mes_noviembre` decimal(18,2) DEFAULT NULL,
  `mes_diciembre` decimal(18,2) DEFAULT NULL,
  `total_cuenta` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_detalle`),
  KEY `Fk_id_presupuesto` (`Fk_id_presupuesto`),
  KEY `Fk_id_cuenta` (`Fk_id_cuenta`),
  CONSTRAINT `tbl_detalle_presupuesto_ibfk_1` FOREIGN KEY (`Fk_id_presupuesto`) REFERENCES `tbl_presupuesto` (`Pk_id_presupuesto`),
  CONSTRAINT `tbl_detalle_presupuesto_ibfk_2` FOREIGN KEY (`Fk_id_cuenta`) REFERENCES `tbl_cuentas` (`Pk_id_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_presupuesto`
--

LOCK TABLES `tbl_detalle_presupuesto` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_presupuesto` ENABLE KEYS */;
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
