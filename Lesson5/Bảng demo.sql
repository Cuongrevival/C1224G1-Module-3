-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `productCode` int NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  `productAmount` int DEFAULT NULL,
  `productDescription` text,
  `productStatus` int DEFAULT NULL,
  UNIQUE KEY `idx_productCode` (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1001,'iPhone 15 Pro Max',1200,50,'Apple flagship smartphone with titanium frame',1),(2,1002,'Samsung Galaxy S24 Ultra',1100,40,'Samsung premium smartphone with S-Pen',1),(3,1003,'Dell XPS 13 Laptop',1500,20,'Ultra-slim laptop with Intel i7 processor',1),(4,1004,'Sony WH-1000XM5 Headphones',400,60,'Noise-cancelling wireless headphones',1),(5,1005,'Apple MacBook Air M2',1300,15,'Lightweight laptop with M2 chip',1),(6,1006,'Logitech MX Master 3S Mouse',120,100,'Ergonomic mouse with advanced features',1),(7,1007,'Asus ROG Strix Gaming Laptop',2000,10,'High-end gaming laptop with RTX 4080',1),(8,1008,'Canon EOS R6 Camera',2500,5,'Professional mirrorless camera',1),(9,1009,'Samsung 32\" 4K Monitor',500,25,'Ultra HD monitor for work and gaming',1),(10,1010,'Anker PowerCore 20000mAh',80,150,'Portable power bank with fast charging',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26 10:27:03
