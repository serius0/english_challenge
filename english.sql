-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: english
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

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
-- Table structure for table `anym`
--

DROP TABLE IF EXISTS `anym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anym` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anym`
--

LOCK TABLES `anym` WRITE;
/*!40000 ALTER TABLE `anym` DISABLE KEYS */;
/*!40000 ALTER TABLE `anym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `level` int NOT NULL,
  `amount` int NOT NULL,
  `score` int DEFAULT '0',
  `member` tinyint(1) DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'Seriusman Waruwu',2,3,6,NULL,'2021-10-06 22:08:22'),(2,'serius',1,2,0,NULL,'2021-10-07 07:03:37'),(3,'Serius',3,6,0,NULL,'2021-10-07 15:38:11'),(4,'serius',3,4,0,NULL,'2021-10-08 05:08:57'),(5,'Serius',1,2,0,NULL,'2021-10-08 07:50:34'),(6,'Serius',1,2,0,NULL,'2021-10-08 07:52:00'),(7,'Serius',1,3,0,NULL,'2021-10-08 07:52:09'),(8,'Serius',1,3,2,NULL,'2021-10-08 07:54:31'),(9,'Serius',3,3,3,NULL,'2021-10-08 08:05:51'),(10,'serius',3,5,12,NULL,'2021-10-08 08:07:56'),(11,'serius',3,2,0,NULL,'2021-10-08 08:58:17'),(12,'Serius',3,10,0,NULL,'2021-10-08 09:49:06'),(13,'Serius',3,2,0,NULL,'2021-10-08 09:50:07'),(14,'Serius',3,5,9,NULL,'2021-10-08 09:52:11'),(15,'Serius',2,10,20,NULL,'2021-10-08 09:54:17'),(16,'Serius',2,10,0,NULL,'2021-10-08 10:13:34'),(17,'Seriusman Waruwu',3,10,0,NULL,'2021-10-10 22:04:19'),(18,'Seriusman Waruwu',3,10,0,NULL,'2021-10-11 04:44:12'),(19,'Serius',1,10,7,NULL,'2021-10-11 05:54:42'),(20,'serius',1,10,1,NULL,'2021-10-11 06:06:07'),(21,'Seriusman Waruwu',2,10,14,NULL,'2021-10-11 06:55:04'),(22,'Serius',1,10,2,NULL,'2021-10-11 07:04:47'),(23,'Serius',1,10,0,NULL,'2021-10-11 07:07:35'),(24,'Serius',1,10,3,NULL,'2021-10-11 08:29:49');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Seriusman Waruwu','seriusman0','$2y$10$qdKy0b6UPu9UWV5tCS0jr.uwW4gc1Q1ezWCA8bo1ZELnKBfVd0iF6','2021-10-11 08:49:17',1),(4,'Antariksa','antariksa@gmail.com','$2y$10$kkCMP1OcL3Nxm02w5WygNu/GnRqi8XpDT5uNMMJ3zvohzxwsEZoL2','2021-10-12 08:20:26',2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'Ini adalah jawaban 1','2021-10-12 08:26:16'),(2,'Ini adalah jawaban 2','2021-10-12 08:26:16'),(3,'Ini adalah jawaban 3','2021-10-12 08:26:16'),(4,'Ini adalah jawaban 4','2021-10-12 08:26:16'),(5,'Ini adalah jawaban 5','2021-10-12 08:26:16'),(6,'Ini adalah jawaban 6','2021-10-12 08:26:16'),(7,'Ini adalah jawaban 7','2021-10-12 08:26:16'),(8,'Ini adalah jawaban 8','2021-10-12 08:26:16'),(9,'Ini adalah jawaban 9','2021-10-12 08:26:16'),(10,'Ini adalah jawaban 10','2021-10-12 08:26:16'),(11,'Ini adalah jawaban 11','2021-10-12 08:26:16'),(12,'Ini adalah jawaban 12','2021-10-12 08:26:16'),(13,'Ini adalah jawaban 13','2021-10-12 08:26:16'),(14,'Ini adalah jawaban 14','2021-10-12 08:26:16'),(15,'Ini adalah jawaban 15','2021-10-12 08:26:16'),(16,'Ini adalah jawaban 16','2021-10-12 08:26:16'),(17,'Ini adalah jawaban 17','2021-10-12 08:26:16'),(18,'Ini adalah jawaban 18','2021-10-12 08:26:16'),(19,'Ini adalah jawaban 19','2021-10-12 08:26:16'),(20,'Ini adalah jawaban 20','2021-10-12 08:26:16'),(21,'Ini adalah jawaban 21','2021-10-12 08:26:16'),(22,'Ini adalah jawaban 22','2021-10-12 08:26:16'),(23,'Ini adalah jawaban 23','2021-10-12 08:26:16'),(24,'Ini adalah jawaban 24','2021-10-12 08:26:16'),(25,'Ini adalah jawaban 25','2021-10-12 08:26:16'),(26,'Ini adalah jawaban 26','2021-10-12 08:26:16'),(27,'Ini adalah jawaban 27','2021-10-12 08:26:16'),(28,'Ini adalah jawaban 28','2021-10-12 08:26:16'),(29,'Ini adalah jawaban 29','2021-10-12 08:26:16'),(30,'Ini adalah jawaban 30','2021-10-12 08:26:16');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soal`
--

DROP TABLE IF EXISTS `soal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `description` text NOT NULL,
  `answer` int NOT NULL,
  `level` int NOT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soal`
--

LOCK TABLES `soal` WRITE;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` VALUES (1,'Question 1','Description 1',1,1,'2021-10-06 08:54:21'),(2,'Question 2','Description 2',2,1,'2021-10-06 08:54:21'),(3,'Question 3','Description 3',3,1,'2021-10-06 08:54:21'),(4,'Question 4','Description 4',4,1,'2021-10-06 08:54:21'),(5,'Question 5','Description 5',5,1,'2021-10-06 08:54:21'),(6,'Question 6','Description 6',6,1,'2021-10-06 08:54:21'),(7,'Question 7','Description 7',7,1,'2021-10-06 08:54:21'),(8,'Question 8','Description 8',8,1,'2021-10-06 08:54:21'),(9,'Question 9','Description 9',9,1,'2021-10-06 08:54:21'),(10,'Question 10','Description 10',10,1,'2021-10-06 08:54:21'),(11,'Question 11','Description 11',11,2,'2021-10-06 08:54:21'),(12,'Question 12','Description 12',12,2,'2021-10-06 08:54:21'),(13,'Question 13','Description 13',13,2,'2021-10-06 08:54:21'),(14,'Question 14','Description 14',14,2,'2021-10-06 08:54:21'),(15,'Question 15','Description 15',15,2,'2021-10-06 08:54:21'),(16,'Question 16','Description 16',16,2,'2021-10-06 08:54:21'),(17,'Question 17','Description 17',17,2,'2021-10-06 08:54:21'),(18,'Question 18','Description 18',18,2,'2021-10-06 08:54:21'),(19,'Question 19','Description 19',19,2,'2021-10-06 08:54:21'),(20,'Question 20','Description 20',20,2,'2021-10-06 08:54:21'),(35,'Question Update','Coba lagi',25,2,'2021-10-11 16:42:05');
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempQuestion`
--

DROP TABLE IF EXISTS `tempQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempQuestion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_session` int NOT NULL,
  `id_question` int NOT NULL,
  `status` int DEFAULT (0),
  `update_at` timestamp NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempQuestion`
--

LOCK TABLES `tempQuestion` WRITE;
/*!40000 ALTER TABLE `tempQuestion` DISABLE KEYS */;
INSERT INTO `tempQuestion` VALUES (1,1,12,0,'2021-10-06 22:08:22'),(2,1,13,0,'2021-10-06 22:08:22'),(3,1,11,0,'2021-10-06 22:08:22'),(4,2,5,0,'2021-10-07 07:03:37'),(5,2,8,0,'2021-10-07 07:03:37'),(6,3,26,0,'2021-10-07 15:38:11'),(7,3,22,0,'2021-10-07 15:38:11'),(8,3,30,0,'2021-10-07 15:38:11'),(9,3,25,0,'2021-10-07 15:38:11'),(10,3,28,0,'2021-10-07 15:38:11'),(11,3,24,0,'2021-10-07 15:38:11'),(12,4,21,0,'2021-10-08 05:08:57'),(13,4,29,0,'2021-10-08 05:08:57'),(14,4,26,0,'2021-10-08 05:08:57'),(15,4,22,0,'2021-10-08 05:08:57'),(16,5,4,0,'2021-10-08 07:50:34'),(17,5,6,0,'2021-10-08 07:50:34'),(18,6,9,0,'2021-10-08 07:52:00'),(19,6,5,0,'2021-10-08 07:52:00'),(20,7,5,0,'2021-10-08 07:52:09'),(21,7,3,0,'2021-10-08 07:52:09'),(22,7,7,0,'2021-10-08 07:52:09'),(23,8,5,1,'2021-10-08 07:54:31'),(24,8,4,0,'2021-10-08 07:54:31'),(25,8,7,0,'2021-10-08 07:54:31'),(26,9,28,2,'2021-10-08 08:05:52'),(27,9,27,0,'2021-10-08 08:05:52'),(28,9,21,0,'2021-10-08 08:05:52'),(29,10,26,2,'2021-10-08 08:07:56'),(30,10,27,2,'2021-10-08 08:07:56'),(31,10,29,1,'2021-10-08 08:07:56'),(32,10,28,2,'2021-10-08 08:07:56'),(33,10,25,2,'2021-10-08 08:07:56'),(34,11,22,1,'2021-10-08 08:58:17'),(35,11,28,1,'2021-10-08 08:58:17'),(36,12,24,0,'2021-10-08 09:49:06'),(37,12,21,0,'2021-10-08 09:49:06'),(38,12,29,0,'2021-10-08 09:49:06'),(39,12,27,0,'2021-10-08 09:49:06'),(40,12,25,0,'2021-10-08 09:49:06'),(41,12,22,0,'2021-10-08 09:49:06'),(42,12,26,0,'2021-10-08 09:49:06'),(43,12,23,0,'2021-10-08 09:49:06'),(44,12,30,0,'2021-10-08 09:49:06'),(45,12,28,0,'2021-10-08 09:49:06'),(46,13,21,0,'2021-10-08 09:50:07'),(47,13,27,0,'2021-10-08 09:50:07'),(48,14,23,2,'2021-10-08 09:52:11'),(49,14,28,2,'2021-10-08 09:52:11'),(50,14,25,1,'2021-10-08 09:52:11'),(51,14,26,1,'2021-10-08 09:52:11'),(52,14,27,2,'2021-10-08 09:52:11'),(53,15,16,2,'2021-10-08 09:54:17'),(54,15,19,2,'2021-10-08 09:54:17'),(55,15,15,2,'2021-10-08 09:54:17'),(56,15,14,2,'2021-10-08 09:54:17'),(57,15,11,2,'2021-10-08 09:54:17'),(58,15,18,2,'2021-10-08 09:54:17'),(59,15,12,2,'2021-10-08 09:54:17'),(60,15,20,2,'2021-10-08 09:54:17'),(61,15,13,2,'2021-10-08 09:54:17'),(62,15,17,2,'2021-10-08 09:54:17'),(63,16,19,0,'2021-10-08 10:13:34'),(64,16,15,0,'2021-10-08 10:13:34'),(65,16,13,0,'2021-10-08 10:13:34'),(66,16,18,0,'2021-10-08 10:13:34'),(67,16,12,0,'2021-10-08 10:13:34'),(68,16,16,0,'2021-10-08 10:13:34'),(69,16,14,0,'2021-10-08 10:13:34'),(70,16,11,0,'2021-10-08 10:13:34'),(71,16,17,0,'2021-10-08 10:13:34'),(72,16,20,0,'2021-10-08 10:13:34'),(73,17,25,0,'2021-10-10 22:04:19'),(74,17,28,0,'2021-10-10 22:04:19'),(75,17,23,0,'2021-10-10 22:04:19'),(76,17,22,0,'2021-10-10 22:04:19'),(77,17,21,0,'2021-10-10 22:04:19'),(78,17,26,0,'2021-10-10 22:04:19'),(79,17,30,0,'2021-10-10 22:04:19'),(80,17,29,0,'2021-10-10 22:04:19'),(81,17,24,0,'2021-10-10 22:04:19'),(82,17,27,0,'2021-10-10 22:04:19'),(83,18,23,0,'2021-10-11 04:44:12'),(84,18,21,0,'2021-10-11 04:44:12'),(85,18,22,0,'2021-10-11 04:44:12'),(86,18,29,0,'2021-10-11 04:44:12'),(87,18,28,0,'2021-10-11 04:44:12'),(88,18,26,0,'2021-10-11 04:44:12'),(89,18,25,0,'2021-10-11 04:44:12'),(90,18,27,0,'2021-10-11 04:44:12'),(91,18,30,0,'2021-10-11 04:44:12'),(92,18,24,0,'2021-10-11 04:44:12'),(93,19,1,2,'2021-10-11 05:54:42'),(94,19,8,1,'2021-10-11 05:54:42'),(95,19,9,2,'2021-10-11 05:54:42'),(96,19,7,2,'2021-10-11 05:54:42'),(97,19,6,2,'2021-10-11 05:54:42'),(98,19,3,1,'2021-10-11 05:54:43'),(99,19,4,1,'2021-10-11 05:54:43'),(100,19,2,2,'2021-10-11 05:54:43'),(101,19,5,1,'2021-10-11 05:54:43'),(102,19,10,2,'2021-10-11 05:54:43'),(103,20,7,2,'2021-10-11 06:06:07'),(104,20,3,1,'2021-10-11 06:06:07'),(105,20,2,1,'2021-10-11 06:06:07'),(106,20,8,1,'2021-10-11 06:06:07'),(107,20,6,0,'2021-10-11 06:06:07'),(108,20,10,0,'2021-10-11 06:06:07'),(109,20,9,0,'2021-10-11 06:06:07'),(110,20,5,0,'2021-10-11 06:06:07'),(111,20,1,0,'2021-10-11 06:06:07'),(112,20,4,0,'2021-10-11 06:06:07'),(113,21,16,2,'2021-10-11 06:55:04'),(114,21,20,2,'2021-10-11 06:55:04'),(115,21,13,2,'2021-10-11 06:55:04'),(116,21,12,1,'2021-10-11 06:55:04'),(117,21,17,2,'2021-10-11 06:55:04'),(118,21,19,2,'2021-10-11 06:55:04'),(119,21,15,1,'2021-10-11 06:55:04'),(120,21,11,1,'2021-10-11 06:55:04'),(121,21,14,2,'2021-10-11 06:55:04'),(122,21,18,2,'2021-10-11 06:55:04'),(123,22,8,2,'2021-10-11 07:04:47'),(124,22,3,2,'2021-10-11 07:04:47'),(125,22,9,1,'2021-10-11 07:04:47'),(126,22,2,1,'2021-10-11 07:04:47'),(127,22,7,1,'2021-10-11 07:04:47'),(128,22,6,1,'2021-10-11 07:04:47'),(129,22,1,1,'2021-10-11 07:04:47'),(130,22,5,1,'2021-10-11 07:04:47'),(131,22,10,1,'2021-10-11 07:04:47'),(132,22,4,1,'2021-10-11 07:04:47'),(133,23,7,0,'2021-10-11 07:07:35'),(134,23,2,0,'2021-10-11 07:07:35'),(135,23,9,0,'2021-10-11 07:07:35'),(136,23,5,0,'2021-10-11 07:07:35'),(137,23,10,0,'2021-10-11 07:07:35'),(138,23,8,0,'2021-10-11 07:07:35'),(139,23,3,0,'2021-10-11 07:07:35'),(140,23,4,0,'2021-10-11 07:07:35'),(141,23,1,0,'2021-10-11 07:07:35'),(142,23,6,0,'2021-10-11 07:07:35'),(143,24,6,1,'2021-10-11 08:29:49'),(144,24,8,1,'2021-10-11 08:29:49'),(145,24,1,2,'2021-10-11 08:29:49'),(146,24,4,1,'2021-10-11 08:29:49'),(147,24,3,1,'2021-10-11 08:29:49'),(148,24,9,1,'2021-10-11 08:29:49'),(149,24,5,1,'2021-10-11 08:29:49'),(150,24,10,1,'2021-10-11 08:29:49'),(151,24,7,2,'2021-10-11 08:29:49'),(152,24,2,2,'2021-10-11 08:29:49');
/*!40000 ALTER TABLE `tempQuestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-12 16:15:40
