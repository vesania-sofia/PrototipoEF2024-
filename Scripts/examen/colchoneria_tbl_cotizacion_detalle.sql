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
-- Table structure for table `tbl_cotizacion_detalle`
--

DROP TABLE IF EXISTS `tbl_cotizacion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cotizacion_detalle` (
  `Fk_id_cotizacionEnc` varchar(20) NOT NULL,
  `Fk_id_producto` int DEFAULT NULL,
  `CotizacionDet_cantidad` int DEFAULT NULL,
  `CotizacionDet_precio` decimal(10,2) DEFAULT NULL,
  `CotizacionDet_subtotal` decimal(10,2) DEFAULT NULL,
  KEY `Fk_id_cotizacionEnc` (`Fk_id_cotizacionEnc`),
  KEY `Fk_id_producto` (`Fk_id_producto`),
  CONSTRAINT `tbl_cotizacion_detalle_ibfk_1` FOREIGN KEY (`Fk_id_cotizacionEnc`) REFERENCES `tbl_cotizacion_encabezado` (`Pk_id_cotizacionEnc`),
  CONSTRAINT `tbl_cotizacion_detalle_ibfk_2` FOREIGN KEY (`Fk_id_producto`) REFERENCES `tbl_productos` (`Pk_id_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cotizacion_detalle`
--

LOCK TABLES `tbl_cotizacion_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_cotizacion_detalle` DISABLE KEYS */;
INSERT INTO `tbl_cotizacion_detalle` VALUES ('10',9,4,79.99,319.96),('10',17,4,100.00,400.00);
/*!40000 ALTER TABLE `tbl_cotizacion_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:53
