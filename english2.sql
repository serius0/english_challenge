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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'Serius',1,10,0,NULL,'2021-10-27 04:36:00'),(2,'Seriusman Waruwu',1,10,1,NULL,'2021-10-27 05:24:30'),(3,'Serius',1,10,1,NULL,'2021-10-27 05:25:11'),(4,'serius',1,10,0,NULL,'2021-10-27 07:12:19'),(5,'serius',1,10,0,NULL,'2021-10-27 07:12:37'),(6,'serius',1,10,0,NULL,'2021-10-27 07:15:45'),(7,'serius2',1,10,0,NULL,'2021-10-27 07:16:22'),(8,'serius',1,10,4,NULL,'2021-10-27 07:16:31'),(9,'Oke',1,10,3,NULL,'2021-10-27 07:37:28'),(10,'1',1,10,10,NULL,'2021-10-27 07:38:12'),(11,'Seriusman Waruwu',1,20,2,NULL,'2021-10-27 07:43:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `description` text NOT NULL,
  `answer` int NOT NULL,
  `level` int NOT NULL DEFAULT '1',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Soal 1','Pilihan A Soal 1','Pilihan B Soal 1','Pilihan C Soal 1','Pilihan D Soal 1','Deskripsi soal 1',1,1,'2021-10-27 03:49:20'),(2,'Soal 2','Pilihan A Soal 2','Pilihan B Soal 2','Pilihan C Soal 2','Pilihan D Soal 2','Deskripsi soal 2',1,1,'2021-10-27 03:49:20'),(3,'Soal 3','Pilihan A Soal 3','Pilihan B Soal 3','Pilihan C Soal 3','Pilihan D Soal 3','Deskripsi soal 3',1,1,'2021-10-27 03:49:20'),(4,'Soal 4','Pilihan A Soal 4','Pilihan B Soal 4','Pilihan C Soal 4','Pilihan D Soal 4','Deskripsi soal 4',1,1,'2021-10-27 03:49:20'),(5,'Soal 5','Pilihan A Soal 5','Pilihan B Soal 5','Pilihan C Soal 5','Pilihan D Soal 5','Deskripsi soal 5',1,1,'2021-10-27 03:49:20'),(6,'Soal 6','Pilihan A Soal 6','Pilihan B Soal 6','Pilihan C Soal 6','Pilihan D Soal 6','Deskripsi soal 6',1,1,'2021-10-27 03:49:20'),(7,'Soal 7','Pilihan A Soal 7','Pilihan B Soal 7','Pilihan C Soal 7','Pilihan D Soal 7','Deskripsi soal 7',1,1,'2021-10-27 03:49:20'),(8,'Soal 8','Pilihan A Soal 8','Pilihan B Soal 8','Pilihan C Soal 8','Pilihan D Soal 8','Deskripsi soal 8',1,1,'2021-10-27 03:49:20'),(9,'Soal 9','Pilihan A Soal 9','Pilihan B Soal 9','Pilihan C Soal 9','Pilihan D Soal 9','Deskripsi soal 9',1,1,'2021-10-27 03:49:20'),(10,'Soal 10','Pilihan A Soal 10','Pilihan B Soal 10','Pilihan C Soal 10','Pilihan D Soal 10','Deskripsi soal 10',1,1,'2021-10-27 03:49:20');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempQuestion`
--

LOCK TABLES `tempQuestion` WRITE;
/*!40000 ALTER TABLE `tempQuestion` DISABLE KEYS */;
INSERT INTO `tempQuestion` VALUES (1,3,8,0,'2021-10-27 05:25:11'),(2,3,10,0,'2021-10-27 05:25:11'),(3,3,5,0,'2021-10-27 05:25:11'),(4,3,4,0,'2021-10-27 05:25:11'),(5,3,6,0,'2021-10-27 05:25:11'),(6,3,9,0,'2021-10-27 05:25:11'),(7,3,7,0,'2021-10-27 05:25:11'),(8,3,3,0,'2021-10-27 05:25:11'),(9,3,2,0,'2021-10-27 05:25:11'),(10,3,1,1,'2021-10-27 05:25:11'),(11,4,1,0,'2021-10-27 07:12:19'),(12,4,6,0,'2021-10-27 07:12:19'),(13,4,4,0,'2021-10-27 07:12:19'),(14,4,2,0,'2021-10-27 07:12:19'),(15,4,5,0,'2021-10-27 07:12:19'),(16,4,9,0,'2021-10-27 07:12:19'),(17,4,3,0,'2021-10-27 07:12:19'),(18,4,10,0,'2021-10-27 07:12:19'),(19,4,8,0,'2021-10-27 07:12:19'),(20,4,7,0,'2021-10-27 07:12:19'),(21,5,8,0,'2021-10-27 07:12:37'),(22,5,9,0,'2021-10-27 07:12:37'),(23,5,3,0,'2021-10-27 07:12:37'),(24,5,2,0,'2021-10-27 07:12:37'),(25,5,10,0,'2021-10-27 07:12:37'),(26,5,1,0,'2021-10-27 07:12:37'),(27,5,6,0,'2021-10-27 07:12:37'),(28,5,4,0,'2021-10-27 07:12:37'),(29,5,7,0,'2021-10-27 07:12:37'),(30,5,5,0,'2021-10-27 07:12:37'),(31,6,8,0,'2021-10-27 07:15:45'),(32,6,6,0,'2021-10-27 07:15:45'),(33,6,5,0,'2021-10-27 07:15:45'),(34,6,7,0,'2021-10-27 07:15:45'),(35,6,9,0,'2021-10-27 07:15:45'),(36,6,10,0,'2021-10-27 07:15:45'),(37,6,1,0,'2021-10-27 07:15:45'),(38,6,3,0,'2021-10-27 07:15:45'),(39,6,2,0,'2021-10-27 07:15:45'),(40,6,4,0,'2021-10-27 07:15:45'),(41,7,7,0,'2021-10-27 07:16:22'),(42,7,3,0,'2021-10-27 07:16:22'),(43,7,1,0,'2021-10-27 07:16:22'),(44,7,9,0,'2021-10-27 07:16:22'),(45,7,4,0,'2021-10-27 07:16:22'),(46,7,2,0,'2021-10-27 07:16:22'),(47,7,10,0,'2021-10-27 07:16:22'),(48,7,6,0,'2021-10-27 07:16:22'),(49,7,5,0,'2021-10-27 07:16:22'),(50,7,8,0,'2021-10-27 07:16:22'),(51,8,10,2,'2021-10-27 07:16:31'),(52,8,7,1,'2021-10-27 07:16:31'),(53,8,9,1,'2021-10-27 07:16:31'),(54,8,1,1,'2021-10-27 07:16:31'),(55,8,2,1,'2021-10-27 07:16:31'),(56,8,4,1,'2021-10-27 07:16:31'),(57,8,6,1,'2021-10-27 07:16:31'),(58,8,5,1,'2021-10-27 07:16:31'),(59,8,3,1,'2021-10-27 07:16:31'),(60,8,8,1,'2021-10-27 07:16:31'),(61,9,8,1,'2021-10-27 07:37:28'),(62,9,1,2,'2021-10-27 07:37:28'),(63,9,4,1,'2021-10-27 07:37:28'),(64,9,10,1,'2021-10-27 07:37:28'),(65,9,7,1,'2021-10-27 07:37:28'),(66,9,5,1,'2021-10-27 07:37:28'),(67,9,3,1,'2021-10-27 07:37:28'),(68,9,2,1,'2021-10-27 07:37:28'),(69,9,6,2,'2021-10-27 07:37:28'),(70,9,9,2,'2021-10-27 07:37:28'),(71,10,9,2,'2021-10-27 07:38:12'),(72,10,7,2,'2021-10-27 07:38:12'),(73,10,1,2,'2021-10-27 07:38:12'),(74,10,3,2,'2021-10-27 07:38:12'),(75,10,5,2,'2021-10-27 07:38:12'),(76,10,4,2,'2021-10-27 07:38:12'),(77,10,8,2,'2021-10-27 07:38:12'),(78,10,6,2,'2021-10-27 07:38:12'),(79,10,2,2,'2021-10-27 07:38:12'),(80,10,10,2,'2021-10-27 07:38:12'),(81,11,2,2,'2021-10-27 07:43:11'),(82,11,10,1,'2021-10-27 07:43:11'),(83,11,5,1,'2021-10-27 07:43:11'),(84,11,8,1,'2021-10-27 07:43:11'),(85,11,6,2,'2021-10-27 07:43:11'),(86,11,4,0,'2021-10-27 07:43:11'),(87,11,3,0,'2021-10-27 07:43:11'),(88,11,1,0,'2021-10-27 07:43:11'),(89,11,9,0,'2021-10-27 07:43:11'),(90,11,7,0,'2021-10-27 07:43:11');
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

-- Dump completed on 2021-10-28 23:59:34
