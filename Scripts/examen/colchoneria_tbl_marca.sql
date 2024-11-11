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
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marca` (
  `Pk_id_Marca` int NOT NULL AUTO_INCREMENT,
  `nombre_Marca` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `fk_id_Producto` int DEFAULT NULL,
  PRIMARY KEY (`Pk_id_Marca`),
  KEY `fk_id_Producto` (`fk_id_Producto`),
  CONSTRAINT `tbl_marca_ibfk_1` FOREIGN KEY (`fk_id_Producto`) REFERENCES `tbl_productos` (`Pk_id_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'Nike','Marca líder en calzado y ropa deportiva.',1,6),(2,'Oster','Marca de electrodomésticos de cocina.',1,7),(3,'Levi’s','Marca de ropa de alta calidad.',1,11),(4,'Samsung','Marca de tecnología y electrodomésticos.',1,9),(5,'Puma','Marca de ropa y calzado deportivo.',1,10),(6,'LG','Marca de electrodomésticos y tecnología.',1,12),(7,'Whirlpool','Marca de electrodomésticos de cocina.',1,13),(8,'Adidas','Marca de ropa y calzado deportivo.',1,8),(9,'IKEA','Marca de muebles y decoración.',1,36),(10,'Spring Air','Marca de colchones.',1,37),(11,'Tempur-Pedic','Marca de colchones de alta gama.',1,40),(12,'Sealy','Marca de colchones y almohadas.',1,44),(13,'Serta','Marca de colchones de calidad.',1,41),(14,'Bose','Marca de sistemas de audio y tecnología.',1,39),(15,'Sony','Marca de tecnología y entretenimiento.',1,38),(16,'Panasonic','Marca de electrodomésticos y tecnología.',1,45),(17,'Marca A','Marca A',1,1),(18,'Marca B','Marca B',1,2),(19,'Marca C','Marca C',1,3),(20,'Marca D','Marca D',1,4),(21,'Marca E','Marca F',1,5),(22,'Marca F','Marca G',1,1),(23,'Marca G','Marca H',1,2),(24,'Marca H','Marca I',1,3),(25,'Marca I','Marca J',1,4),(26,'Marca J','Marca K',1,5);
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
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
