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
-- Table structure for table `tbl_linea`
--

DROP TABLE IF EXISTS `tbl_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_linea` (
  `Pk_id_linea` int NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(50) DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `fk_id_marca` int DEFAULT NULL,
  PRIMARY KEY (`Pk_id_linea`),
  KEY `fk_id_marca` (`fk_id_marca`),
  CONSTRAINT `tbl_linea_ibfk_1` FOREIGN KEY (`fk_id_marca`) REFERENCES `tbl_marca` (`Pk_id_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_linea`
--

LOCK TABLES `tbl_linea` WRITE;
/*!40000 ALTER TABLE `tbl_linea` DISABLE KEYS */;
INSERT INTO `tbl_linea` VALUES (1,'Zapatos Casual',1,1),(2,'Zapatos Deportivos',1,1),(3,'Electrodomésticos de Cocina',1,2),(4,'Electrodomésticos de Entretenimiento',1,2),(5,'Ropa Casual',1,3),(6,'Ropa de Oficina',1,3),(7,'Ropa Deportiva',1,3),(8,'Colchones Premium',1,4),(9,'Colchones Económicos',1,4),(10,'Accesorios para el Hogar',1,5),(11,'Accesorios de Cama',1,5),(12,'Zapatos de Seguridad',1,1),(13,'Ropa de Verano',1,3),(14,'Muebles de Oficina',1,5),(15,'Muebles de Sala',1,5),(16,'Línea 1',1,1),(17,'Línea 2',1,2),(18,'Línea 3',1,3),(19,'Línea 4',1,4),(20,'Línea 5',1,5),(21,'Línea 6',1,6),(22,'Línea 7',1,7),(23,'Línea 8',1,8),(24,'Línea 9',1,9),(25,'Línea 10',1,10);
/*!40000 ALTER TABLE `tbl_linea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11  9:41:52
