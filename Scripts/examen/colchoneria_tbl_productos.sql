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
-- Table structure for table `tbl_productos`
--

DROP TABLE IF EXISTS `tbl_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_productos` (
  `Pk_id_Producto` int NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(50) NOT NULL,
  `pesoProducto` varchar(20) DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `costo_compra` decimal(10,2) DEFAULT NULL,
  `clasificacion` varchar(30) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `empaque` varchar(50) DEFAULT NULL,
  `codigoProducto` int DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`Pk_id_Producto`),
  UNIQUE KEY `UQ_codigoProducto` (`codigoProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productos`
--

LOCK TABLES `tbl_productos` WRITE;
/*!40000 ALTER TABLE `tbl_productos` DISABLE KEYS */;
INSERT INTO `tbl_productos` VALUES (5,'Zapato Deportivo','500g',59.99,79.99,45.00,'Deportes',100,'Caja',1,1),(6,'Licuadora','1.5kg',89.99,119.99,70.00,'Electrodoméstico',50,'Caja',2,1),(7,'Camisa Casual','200g',29.99,39.99,20.00,'Ropa',200,'Bolsa',3,1),(8,'Televisor','8kg',499.99,699.99,400.00,'Electrodoméstico',30,'Caja',4,1),(9,'Zapato Formal','600g',79.99,109.99,60.00,'Zapatos',80,'Caja',5,1),(10,'Pantalón Jeans','700g',39.99,54.99,30.00,'Ropa',150,'Bolsa',6,1),(11,'Refrigerador','70kg',899.99,1299.99,700.00,'Electrodoméstico',10,'Caja',7,1),(12,'Tostadora','1kg',29.99,39.99,25.00,'Electrodoméstico',120,'Caja',8,1),(13,'Blusa de Verano','150g',19.99,29.99,12.00,'Ropa',180,'Bolsa',9,1),(14,'Zapato de Montaña','700g',99.99,139.99,70.00,'Deportes',60,'Caja',10,1),(15,'Colchón Doble','30kg',200.00,300.00,150.00,'Colchones',50,'Caja',101,1),(16,'Colchón Individual','25kg',150.00,220.00,100.00,'Colchones',70,'Caja',102,1),(17,'Base para Colchón','15kg',100.00,150.00,75.00,'Accesorios',30,'Caja',103,1),(18,'Almohada de Espuma','1kg',20.00,30.00,10.00,'Accesorios',100,'Bolsa',104,1),(19,'Colchón para Cuna','8kg',80.00,120.00,40.00,'Colchones',40,'Caja',105,1),(20,'Producto de Compra 1','5kg',0.00,0.00,50.00,'Compra',200,'Saco',20001,1),(21,'Producto de Compra 2','1L',0.00,0.00,10.00,'Compra',300,'Bidón',20002,1),(22,'Producto de Compra 3','500g',0.00,0.00,5.50,'Compra',150,'Bolsa',20003,1);
/*!40000 ALTER TABLE `tbl_productos` ENABLE KEYS */;
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
