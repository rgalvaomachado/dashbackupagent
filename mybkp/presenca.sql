-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: atenasystem
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `presenca`
--

DROP TABLE IF EXISTS `presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presenca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cod_alune` int NOT NULL,
  `cod_sala` int NOT NULL,
  `cod_tutore` int NOT NULL,
  `cod_monitore` int NOT NULL,
  `aula` int NOT NULL,
  `presente` enum('S','N','J') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presenca`
--

LOCK TABLES `presenca` WRITE;
/*!40000 ALTER TABLE `presenca` DISABLE KEYS */;
INSERT INTO `presenca` VALUES (1,0,1,0,1,0,'S','2023-01-10'),(2,0,0,1,0,0,'S','2023-01-04'),(3,0,0,1,0,0,'S','2023-01-10'),(4,0,0,1,0,0,'S','2023-01-05'),(5,0,0,1,0,0,'S','2023-01-06'),(6,0,1,0,1,0,'S','2023-01-09'),(7,0,1,0,1,0,'S','2023-01-06'),(8,0,1,0,1,0,'S','2023-01-13'),(9,0,1,1,0,1,'S','2023-01-04'),(10,0,1,1,0,1,'S','2023-01-13'),(11,0,1,1,0,1,'S','2023-01-09'),(12,0,1,1,0,1,'S','2023-01-06'),(13,0,0,1,0,0,'S','2023-01-27'),(14,0,1,0,3,0,'S','2023-01-04'),(15,0,1,0,3,0,'S','2023-01-07'),(16,0,1,1,0,1,'S','2022-11-01');
/*!40000 ALTER TABLE `presenca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-07 14:39:37
