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
-- Table structure for table `tbl_factura_detalle`
--

DROP TABLE IF EXISTS `tbl_factura_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_factura_detalle` (
  `fk_id_facturaEnc` varchar(20) NOT NULL,
  `Fk_id_producto` int DEFAULT NULL,
  `facturaDet_cantidad` int DEFAULT NULL,
  `facturaDet_precio` decimal(10,2) DEFAULT NULL,
  `facturaDet_subtotal` decimal(10,2) DEFAULT NULL,
  KEY `fk_id_facturaEnc` (`fk_id_facturaEnc`),
  KEY `Fk_id_producto` (`Fk_id_producto`),
  CONSTRAINT `tbl_factura_detalle_ibfk_1` FOREIGN KEY (`fk_id_facturaEnc`) REFERENCES `tbl_factura_encabezado` (`Pk_id_facturaEnc`),
  CONSTRAINT `tbl_factura_detalle_ibfk_2` FOREIGN KEY (`Fk_id_producto`) REFERENCES `tbl_productos` (`Pk_id_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura_detalle`
--

LOCK TABLES `tbl_factura_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_factura_detalle` DISABLE KEYS */;
INSERT INTO `tbl_factura_detalle` VALUES ('FAC001',1,2,500.00,1000.00),('FAC001',2,3,166.67,500.01),('FAC002',3,1,1500.00,1500.00),('FAC002',4,2,500.00,1000.00),('FAC003',1,1,500.00,500.00),('FAC003',5,2,350.00,700.00),('FAC004',2,1,1500.00,1500.00),('FAC004',5,1,300.00,300.00),('FAC005',3,1,1000.00,1000.00),('FAC005',4,2,150.00,300.00);
/*!40000 ALTER TABLE `tbl_factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:49
