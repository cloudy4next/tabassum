-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: tabassum
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'Expense','This Expense has been created','App\\Models\\Expense','created',1,NULL,1,'{\"attributes\": {\"amount\": 1300, \"user_id\": 1}}',NULL,'2023-02-24 18:41:34','2023-02-24 18:41:34'),(2,'Expense','This Expense has been deleted','App\\Models\\Expense','deleted',1,NULL,1,'{\"old\": {\"amount\": 1300, \"user_id\": 1}}',NULL,'2023-02-24 18:58:52','2023-02-24 18:58:52'),(3,'Expense','This Expense has been created','App\\Models\\Expense','created',2,NULL,2,'{\"attributes\": {\"amount\": 3240, \"user_id\": 2}}',NULL,'2023-02-25 03:32:05','2023-02-25 03:32:05'),(4,'Expense','This Expense has been created','App\\Models\\Expense','created',3,NULL,2,'{\"attributes\": {\"amount\": 1740, \"user_id\": 2}}',NULL,'2023-02-25 03:34:35','2023-02-25 03:34:35'),(5,'Expense','This Expense has been created','App\\Models\\Expense','created',4,NULL,2,'{\"attributes\": {\"amount\": 1160, \"user_id\": 2}}',NULL,'2023-02-25 03:34:55','2023-02-25 03:34:55'),(6,'Expense','This Expense has been created','App\\Models\\Expense','created',5,NULL,3,'{\"attributes\": {\"amount\": 253, \"user_id\": 3}}',NULL,'2023-02-25 03:59:04','2023-02-25 03:59:04'),(7,'Expense','This Expense has been created','App\\Models\\Expense','created',6,NULL,3,'{\"attributes\": {\"amount\": 55, \"user_id\": 3}}',NULL,'2023-02-25 04:00:01','2023-02-25 04:00:01'),(8,'Expense','This Expense has been created','App\\Models\\Expense','created',7,NULL,3,'{\"attributes\": {\"amount\": 179, \"user_id\": 3}}',NULL,'2023-02-25 04:01:01','2023-02-25 04:01:01'),(9,'Expense','This Daily Profit has been created','App\\Models\\Profit','created',1,NULL,3,'{\"attributes\": {\"amount\": 1234, \"user_id\": 3}}',NULL,'2023-02-25 04:02:19','2023-02-25 04:02:19'),(10,'Expense','This Daily Profit has been deleted','App\\Models\\Profit','deleted',1,NULL,3,'{\"old\": {\"amount\": 1234, \"user_id\": 3}}',NULL,'2023-02-25 04:02:37','2023-02-25 04:02:37'),(11,'Expense','This Expense has been created','App\\Models\\Expense','created',8,NULL,3,'{\"attributes\": {\"amount\": 103, \"user_id\": 3}}',NULL,'2023-02-25 04:05:47','2023-02-25 04:05:47'),(12,'Expense','This Expense has been created','App\\Models\\Expense','created',9,NULL,2,'{\"attributes\": {\"amount\": 4190, \"user_id\": 2}}',NULL,'2023-02-25 04:06:17','2023-02-25 04:06:17'),(13,'Expense','This Expense has been created','App\\Models\\Expense','created',10,NULL,2,'{\"attributes\": {\"amount\": 1255, \"user_id\": 2}}',NULL,'2023-02-25 04:06:56','2023-02-25 04:06:56'),(14,'Expense','This Expense has been created','App\\Models\\Expense','created',11,NULL,2,'{\"attributes\": {\"amount\": 3650, \"user_id\": 2}}',NULL,'2023-02-25 04:07:45','2023-02-25 04:07:45'),(15,'Expense','This Expense has been created','App\\Models\\Expense','created',12,NULL,3,'{\"attributes\": {\"amount\": 149, \"user_id\": 3}}',NULL,'2023-02-25 04:08:34','2023-02-25 04:08:34'),(16,'Expense','This Expense has been created','App\\Models\\Expense','created',13,NULL,2,'{\"attributes\": {\"amount\": 2160, \"user_id\": 2}}',NULL,'2023-02-25 04:08:41','2023-02-25 04:08:41'),(17,'Expense','This Expense has been created','App\\Models\\Expense','created',14,NULL,3,'{\"attributes\": {\"amount\": 504, \"user_id\": 3}}',NULL,'2023-02-25 04:09:09','2023-02-25 04:09:09'),(18,'Expense','This Expense has been created','App\\Models\\Expense','created',15,NULL,2,'{\"attributes\": {\"amount\": 410, \"user_id\": 2}}',NULL,'2023-02-25 04:09:25','2023-02-25 04:09:25'),(19,'Expense','This Expense has been created','App\\Models\\Expense','created',16,NULL,3,'{\"attributes\": {\"amount\": 45, \"user_id\": 3}}',NULL,'2023-02-25 04:09:30','2023-02-25 04:09:30'),(20,'Expense','This Expense has been created','App\\Models\\Expense','created',17,NULL,2,'{\"attributes\": {\"amount\": 3510, \"user_id\": 2}}',NULL,'2023-02-25 04:10:01','2023-02-25 04:10:01'),(21,'Expense','This Expense has been created','App\\Models\\Expense','created',18,NULL,2,'{\"attributes\": {\"amount\": 1435, \"user_id\": 2}}',NULL,'2023-02-25 04:10:39','2023-02-25 04:10:39'),(22,'Expense','This Expense has been created','App\\Models\\Expense','created',19,NULL,2,'{\"attributes\": {\"amount\": 960, \"user_id\": 2}}',NULL,'2023-02-25 04:11:11','2023-02-25 04:11:11'),(23,'Expense','This Expense has been created','App\\Models\\Expense','created',20,NULL,2,'{\"attributes\": {\"amount\": 6100, \"user_id\": 2}}',NULL,'2023-02-25 04:11:57','2023-02-25 04:11:57'),(24,'Expense','This Expense has been created','App\\Models\\Expense','created',21,NULL,2,'{\"attributes\": {\"amount\": 2015, \"user_id\": 2}}',NULL,'2023-02-25 04:13:46','2023-02-25 04:13:46'),(25,'Expense','This Expense has been created','App\\Models\\Expense','created',22,NULL,2,'{\"attributes\": {\"amount\": 3490, \"user_id\": 2}}',NULL,'2023-02-25 04:14:19','2023-02-25 04:14:19'),(26,'Expense','This Expense has been created','App\\Models\\Expense','created',23,NULL,2,'{\"attributes\": {\"amount\": 770, \"user_id\": 2}}',NULL,'2023-02-25 04:15:21','2023-02-25 04:15:21'),(27,'Expense','This Expense has been created','App\\Models\\Expense','created',24,NULL,2,'{\"attributes\": {\"amount\": 1200, \"user_id\": 2}}',NULL,'2023-02-25 04:15:47','2023-02-25 04:15:47'),(28,'Expense','This Expense has been created','App\\Models\\Expense','created',25,NULL,2,'{\"attributes\": {\"amount\": 1840, \"user_id\": 2}}',NULL,'2023-02-25 04:17:34','2023-02-25 04:17:34'),(29,'Expense','This Expense has been created','App\\Models\\Expense','created',26,NULL,2,'{\"attributes\": {\"amount\": 2780, \"user_id\": 2}}',NULL,'2023-02-25 04:18:14','2023-02-25 04:18:14'),(30,'Expense','This Expense has been created','App\\Models\\Expense','created',27,NULL,2,'{\"attributes\": {\"amount\": 880, \"user_id\": 2}}',NULL,'2023-02-25 04:18:45','2023-02-25 04:18:45'),(31,'Expense','This Expense has been created','App\\Models\\Expense','created',28,NULL,2,'{\"attributes\": {\"amount\": 1145, \"user_id\": 2}}',NULL,'2023-02-25 04:19:29','2023-02-25 04:19:29'),(32,'Expense','This Expense has been created','App\\Models\\Expense','created',29,NULL,2,'{\"attributes\": {\"amount\": 960, \"user_id\": 2}}',NULL,'2023-02-25 04:19:56','2023-02-25 04:19:56'),(33,'Expense','This Expense has been created','App\\Models\\Expense','created',30,NULL,2,'{\"attributes\": {\"amount\": 770, \"user_id\": 2}}',NULL,'2023-02-25 04:20:27','2023-02-25 04:20:27'),(34,'Expense','This Expense has been created','App\\Models\\Expense','created',31,NULL,2,'{\"attributes\": {\"amount\": 310, \"user_id\": 2}}',NULL,'2023-02-25 04:20:52','2023-02-25 04:20:52'),(35,'Expense','This Expense has been created','App\\Models\\Expense','created',32,NULL,2,'{\"attributes\": {\"amount\": 3755, \"user_id\": 2}}',NULL,'2023-02-25 04:21:22','2023-02-25 04:21:22'),(36,'Expense','This Expense has been created','App\\Models\\Expense','created',33,NULL,2,'{\"attributes\": {\"amount\": 2590, \"user_id\": 2}}',NULL,'2023-02-25 04:21:57','2023-02-25 04:21:57'),(37,'Expense','This Expense has been created','App\\Models\\Expense','created',34,NULL,3,'{\"attributes\": {\"amount\": 3000, \"user_id\": 3}}',NULL,'2023-02-25 04:22:19','2023-02-25 04:22:19'),(38,'Expense','This Expense has been created','App\\Models\\Expense','created',35,NULL,4,'{\"attributes\": {\"amount\": 3400, \"user_id\": 4}}',NULL,'2023-02-25 04:22:20','2023-02-25 04:22:20'),(39,'Expense','This Expense has been created','App\\Models\\Expense','created',36,NULL,2,'{\"attributes\": {\"amount\": 3030, \"user_id\": 2}}',NULL,'2023-02-25 04:22:24','2023-02-25 04:22:24'),(40,'Expense','This Expense has been created','App\\Models\\Expense','created',37,NULL,2,'{\"attributes\": {\"amount\": 1450, \"user_id\": 2}}',NULL,'2023-02-25 04:22:59','2023-02-25 04:22:59'),(41,'Expense','This Expense has been created','App\\Models\\Expense','created',38,NULL,4,'{\"attributes\": {\"amount\": 13183, \"user_id\": 4}}',NULL,'2023-02-25 04:23:01','2023-02-25 04:23:01'),(42,'Expense','This Expense has been created','App\\Models\\Expense','created',39,NULL,2,'{\"attributes\": {\"amount\": 1570, \"user_id\": 2}}',NULL,'2023-02-25 04:28:15','2023-02-25 04:28:15'),(43,'Expense','This Expense has been created','App\\Models\\Expense','created',40,NULL,2,'{\"attributes\": {\"amount\": 5457, \"user_id\": 2}}',NULL,'2023-02-25 04:28:46','2023-02-25 04:28:46'),(44,'Expense','This Expense has been created','App\\Models\\Expense','created',41,NULL,2,'{\"attributes\": {\"amount\": 19642, \"user_id\": 2}}',NULL,'2023-02-25 04:31:04','2023-02-25 04:31:04'),(45,'Expense','This Expense has been updated','App\\Models\\Expense','updated',38,NULL,4,'{\"old\": {\"amount\": 13183, \"user_id\": 4}, \"attributes\": {\"amount\": 13838, \"user_id\": 4}}',NULL,'2023-02-25 04:31:52','2023-02-25 04:31:52'),(46,'Expense','This Expense has been created','App\\Models\\Expense','created',42,NULL,2,'{\"attributes\": {\"amount\": 990, \"user_id\": 2}}',NULL,'2023-02-25 04:32:37','2023-02-25 04:32:37'),(47,'Expense','This Expense has been created','App\\Models\\Expense','created',43,NULL,4,'{\"attributes\": {\"amount\": 1355, \"user_id\": 4}}',NULL,'2023-02-25 04:32:46','2023-02-25 04:32:46'),(48,'Expense','This Expense has been created','App\\Models\\Expense','created',44,NULL,2,'{\"attributes\": {\"amount\": 1045, \"user_id\": 2}}',NULL,'2023-02-25 04:33:18','2023-02-25 04:33:18'),(49,'Expense','This Expense has been created','App\\Models\\Expense','created',45,NULL,4,'{\"attributes\": {\"amount\": 50482, \"user_id\": 4}}',NULL,'2023-02-25 04:35:14','2023-02-25 04:35:14'),(50,'Expense','This Expense has been created','App\\Models\\Expense','created',46,NULL,4,'{\"attributes\": {\"amount\": 1955, \"user_id\": 4}}',NULL,'2023-02-25 04:35:43','2023-02-25 04:35:43'),(51,'Expense','This Expense has been created','App\\Models\\Expense','created',47,NULL,4,'{\"attributes\": {\"amount\": 3317, \"user_id\": 4}}',NULL,'2023-02-25 04:36:03','2023-02-25 04:36:03'),(52,'Expense','This Expense has been created','App\\Models\\Expense','created',48,NULL,4,'{\"attributes\": {\"amount\": 5815, \"user_id\": 4}}',NULL,'2023-02-25 04:36:23','2023-02-25 04:36:23'),(53,'Expense','This Expense has been created','App\\Models\\Expense','created',49,NULL,4,'{\"attributes\": {\"amount\": 6175, \"user_id\": 4}}',NULL,'2023-02-25 04:36:48','2023-02-25 04:36:48'),(54,'Expense','This Expense has been created','App\\Models\\Expense','created',50,NULL,2,'{\"attributes\": {\"amount\": 1305, \"user_id\": 2}}',NULL,'2023-02-25 04:37:10','2023-02-25 04:37:10'),(55,'Expense','This Expense has been created','App\\Models\\Expense','created',51,NULL,4,'{\"attributes\": {\"amount\": 9715, \"user_id\": 4}}',NULL,'2023-02-25 04:37:13','2023-02-25 04:37:13'),(56,'Expense','This Expense has been created','App\\Models\\Expense','created',52,NULL,4,'{\"attributes\": {\"amount\": 10122, \"user_id\": 4}}',NULL,'2023-02-25 04:37:34','2023-02-25 04:37:34'),(57,'Expense','This Expense has been created','App\\Models\\Expense','created',53,NULL,4,'{\"attributes\": {\"amount\": 5870, \"user_id\": 4}}',NULL,'2023-02-25 04:37:56','2023-02-25 04:37:56'),(58,'Expense','This Expense has been created','App\\Models\\Expense','created',54,NULL,4,'{\"attributes\": {\"amount\": 24455, \"user_id\": 4}}',NULL,'2023-02-25 04:38:17','2023-02-25 04:38:17'),(59,'Expense','This Expense has been created','App\\Models\\Expense','created',55,NULL,2,'{\"attributes\": {\"amount\": 3490, \"user_id\": 2}}',NULL,'2023-02-25 04:38:36','2023-02-25 04:38:36'),(60,'Expense','This Expense has been created','App\\Models\\Expense','created',56,NULL,4,'{\"attributes\": {\"amount\": 6418, \"user_id\": 4}}',NULL,'2023-02-25 04:38:44','2023-02-25 04:38:44'),(61,'Expense','This Expense has been created','App\\Models\\Expense','created',57,NULL,4,'{\"attributes\": {\"amount\": 2841, \"user_id\": 4}}',NULL,'2023-02-25 04:39:09','2023-02-25 04:39:09'),(62,'Expense','This Expense has been created','App\\Models\\Expense','created',58,NULL,4,'{\"attributes\": {\"amount\": 9335, \"user_id\": 4}}',NULL,'2023-02-25 04:39:36','2023-02-25 04:39:36'),(63,'Expense','This Expense has been created','App\\Models\\Expense','created',59,NULL,2,'{\"attributes\": {\"amount\": 2450, \"user_id\": 2}}',NULL,'2023-02-25 04:39:47','2023-02-25 04:39:47'),(64,'Expense','This Expense has been created','App\\Models\\Expense','created',60,NULL,2,'{\"attributes\": {\"amount\": 5700, \"user_id\": 2}}',NULL,'2023-02-25 04:40:21','2023-02-25 04:40:21'),(65,'Expense','This Expense has been created','App\\Models\\Expense','created',61,NULL,2,'{\"attributes\": {\"amount\": 910, \"user_id\": 2}}',NULL,'2023-02-25 04:40:45','2023-02-25 04:40:45'),(66,'Expense','This Expense has been created','App\\Models\\Expense','created',62,NULL,4,'{\"attributes\": {\"amount\": 8151, \"user_id\": 4}}',NULL,'2023-02-25 04:41:01','2023-02-25 04:41:01'),(67,'Expense','This Expense has been created','App\\Models\\Expense','created',63,NULL,4,'{\"attributes\": {\"amount\": 7505, \"user_id\": 4}}',NULL,'2023-02-25 04:41:27','2023-02-25 04:41:27'),(68,'Expense','This Expense has been created','App\\Models\\Expense','created',64,NULL,4,'{\"attributes\": {\"amount\": 17950, \"user_id\": 4}}',NULL,'2023-02-25 04:41:50','2023-02-25 04:41:50'),(69,'Expense','This Expense has been created','App\\Models\\Expense','created',65,NULL,4,'{\"attributes\": {\"amount\": 24358, \"user_id\": 4}}',NULL,'2023-02-25 04:42:14','2023-02-25 04:42:14'),(70,'Expense','This Expense has been created','App\\Models\\Expense','created',66,NULL,4,'{\"attributes\": {\"amount\": 9312, \"user_id\": 4}}',NULL,'2023-02-25 04:42:42','2023-02-25 04:42:42'),(71,'Expense','This Expense has been created','App\\Models\\Expense','created',67,NULL,4,'{\"attributes\": {\"amount\": 8917, \"user_id\": 4}}',NULL,'2023-02-25 04:42:59','2023-02-25 04:42:59'),(72,'Expense','This Expense has been created','App\\Models\\Expense','created',68,NULL,4,'{\"attributes\": {\"amount\": 6925, \"user_id\": 4}}',NULL,'2023-02-25 04:43:23','2023-02-25 04:43:23'),(73,'Expense','This Expense has been created','App\\Models\\Expense','created',69,NULL,4,'{\"attributes\": {\"amount\": 12935, \"user_id\": 4}}',NULL,'2023-02-25 04:43:44','2023-02-25 04:43:44'),(74,'Expense','This Expense has been created','App\\Models\\Expense','created',70,NULL,4,'{\"attributes\": {\"amount\": 5825, \"user_id\": 4}}',NULL,'2023-02-25 04:44:04','2023-02-25 04:44:04'),(75,'Expense','This Expense has been created','App\\Models\\Expense','created',71,NULL,4,'{\"attributes\": {\"amount\": 10180, \"user_id\": 4}}',NULL,'2023-02-25 04:44:21','2023-02-25 04:44:21'),(76,'Expense','This Expense has been created','App\\Models\\Expense','created',72,NULL,4,'{\"attributes\": {\"amount\": 19365, \"user_id\": 4}}',NULL,'2023-02-25 04:45:02','2023-02-25 04:45:02'),(77,'Expense','This Expense has been created','App\\Models\\Expense','created',73,NULL,4,'{\"attributes\": {\"amount\": 21507, \"user_id\": 4}}',NULL,'2023-02-25 04:45:33','2023-02-25 04:45:33'),(78,'Expense','This Expense has been created','App\\Models\\Expense','created',74,NULL,4,'{\"attributes\": {\"amount\": 305, \"user_id\": 4}}',NULL,'2023-02-25 04:45:52','2023-02-25 04:45:52'),(79,'Expense','This Expense has been created','App\\Models\\Expense','created',75,NULL,4,'{\"attributes\": {\"amount\": 2685, \"user_id\": 4}}',NULL,'2023-02-25 04:46:07','2023-02-25 04:46:07'),(80,'Expense','This Expense has been created','App\\Models\\Expense','created',76,NULL,4,'{\"attributes\": {\"amount\": 10969, \"user_id\": 4}}',NULL,'2023-02-25 04:46:30','2023-02-25 04:46:30'),(81,'Expense','This Expense has been created','App\\Models\\Expense','created',77,NULL,4,'{\"attributes\": {\"amount\": 17885, \"user_id\": 4}}',NULL,'2023-02-25 04:46:52','2023-02-25 04:46:52'),(82,'Expense','This Expense has been created','App\\Models\\Expense','created',78,NULL,4,'{\"attributes\": {\"amount\": 7747, \"user_id\": 4}}',NULL,'2023-02-25 04:47:12','2023-02-25 04:47:12'),(83,'Expense','This Expense has been created','App\\Models\\Expense','created',79,NULL,4,'{\"attributes\": {\"amount\": 8275, \"user_id\": 4}}',NULL,'2023-02-25 04:47:30','2023-02-25 04:47:30'),(84,'Expense','This Expense has been created','App\\Models\\Expense','created',80,NULL,4,'{\"attributes\": {\"amount\": 31865, \"user_id\": 4}}',NULL,'2023-02-25 04:47:49','2023-02-25 04:47:49'),(85,'Expense','This Expense has been created','App\\Models\\Expense','created',81,NULL,4,'{\"attributes\": {\"amount\": 16998, \"user_id\": 4}}',NULL,'2023-02-25 04:48:13','2023-02-25 04:48:13'),(86,'Expense','This Expense has been created','App\\Models\\Expense','created',82,NULL,4,'{\"attributes\": {\"amount\": 14348, \"user_id\": 4}}',NULL,'2023-02-25 04:48:39','2023-02-25 04:48:39'),(87,'Expense','This Expense has been created','App\\Models\\Expense','created',83,NULL,4,'{\"attributes\": {\"amount\": 23269, \"user_id\": 4}}',NULL,'2023-02-25 04:49:00','2023-02-25 04:49:00'),(88,'Expense','This Expense has been created','App\\Models\\Expense','created',84,NULL,4,'{\"attributes\": {\"amount\": 7325, \"user_id\": 4}}',NULL,'2023-02-25 04:49:16','2023-02-25 04:49:16'),(89,'Expense','This Expense has been created','App\\Models\\Expense','created',85,NULL,4,'{\"attributes\": {\"amount\": 8215, \"user_id\": 4}}',NULL,'2023-02-25 04:49:33','2023-02-25 04:49:33'),(90,'Expense','This Expense has been created','App\\Models\\Expense','created',86,NULL,4,'{\"attributes\": {\"amount\": 13028, \"user_id\": 4}}',NULL,'2023-02-25 04:49:50','2023-02-25 04:49:50'),(91,'Expense','This Expense has been created','App\\Models\\Expense','created',87,NULL,4,'{\"attributes\": {\"amount\": 7125, \"user_id\": 4}}',NULL,'2023-02-25 04:50:09','2023-02-25 04:50:09'),(92,'Expense','This Expense has been created','App\\Models\\Expense','created',88,NULL,4,'{\"attributes\": {\"amount\": 10910, \"user_id\": 4}}',NULL,'2023-02-25 04:50:30','2023-02-25 04:50:30'),(93,'Expense','This Expense has been created','App\\Models\\Expense','created',89,NULL,4,'{\"attributes\": {\"amount\": 8755, \"user_id\": 4}}',NULL,'2023-02-25 04:50:59','2023-02-25 04:50:59'),(94,'Expense','This Expense has been created','App\\Models\\Expense','created',90,NULL,4,'{\"attributes\": {\"amount\": 9090, \"user_id\": 4}}',NULL,'2023-02-25 04:54:28','2023-02-25 04:54:28'),(95,'Expense','This Expense has been created','App\\Models\\Expense','created',91,NULL,4,'{\"attributes\": {\"amount\": 36468, \"user_id\": 4}}',NULL,'2023-02-25 04:54:53','2023-02-25 04:54:53'),(96,'Expense','This Expense has been created','App\\Models\\Expense','created',92,NULL,4,'{\"attributes\": {\"amount\": 8565, \"user_id\": 4}}',NULL,'2023-02-25 04:55:09','2023-02-25 04:55:09'),(97,'Expense','This Expense has been created','App\\Models\\Expense','created',93,NULL,2,'{\"attributes\": {\"amount\": 1535, \"user_id\": 2}}',NULL,'2023-02-25 06:37:55','2023-02-25 06:37:55'),(98,'Expense','This Expense has been created','App\\Models\\Expense','created',94,NULL,2,'{\"attributes\": {\"amount\": 3860, \"user_id\": 2}}',NULL,'2023-02-25 06:41:02','2023-02-25 06:41:02'),(99,'Expense','This Expense has been created','App\\Models\\Expense','created',95,NULL,2,'{\"attributes\": {\"amount\": 510, \"user_id\": 2}}',NULL,'2023-02-25 06:41:30','2023-02-25 06:41:30'),(100,'Expense','This Expense has been created','App\\Models\\Expense','created',96,NULL,2,'{\"attributes\": {\"amount\": 4030, \"user_id\": 2}}',NULL,'2023-02-25 06:41:55','2023-02-25 06:41:55'),(101,'Expense','This Expense has been created','App\\Models\\Expense','created',97,NULL,2,'{\"attributes\": {\"amount\": 4070, \"user_id\": 2}}',NULL,'2023-02-25 06:42:22','2023-02-25 06:42:22'),(102,'Expense','This Expense has been created','App\\Models\\Expense','created',98,NULL,2,'{\"attributes\": {\"amount\": 1840, \"user_id\": 2}}',NULL,'2023-02-25 06:42:48','2023-02-25 06:42:48'),(103,'Expense','This Expense has been created','App\\Models\\Expense','created',99,NULL,2,'{\"attributes\": {\"amount\": 1390, \"user_id\": 2}}',NULL,'2023-02-25 06:43:16','2023-02-25 06:43:16'),(104,'Expense','This Expense has been created','App\\Models\\Expense','created',100,NULL,2,'{\"attributes\": {\"amount\": 2575, \"user_id\": 2}}',NULL,'2023-02-25 06:43:42','2023-02-25 06:43:42'),(105,'Expense','This Expense has been created','App\\Models\\Expense','created',101,NULL,2,'{\"attributes\": {\"amount\": 3480, \"user_id\": 2}}',NULL,'2023-02-25 06:44:06','2023-02-25 06:44:06'),(106,'Expense','This Expense has been created','App\\Models\\Expense','created',102,NULL,2,'{\"attributes\": {\"amount\": 870, \"user_id\": 2}}',NULL,'2023-02-25 06:44:29','2023-02-25 06:44:29'),(107,'Expense','This Expense has been created','App\\Models\\Expense','created',103,NULL,2,'{\"attributes\": {\"amount\": 1250, \"user_id\": 2}}',NULL,'2023-02-25 06:46:01','2023-02-25 06:46:01'),(108,'Expense','This Expense has been created','App\\Models\\Expense','created',104,NULL,2,'{\"attributes\": {\"amount\": 2370, \"user_id\": 2}}',NULL,'2023-02-25 06:46:27','2023-02-25 06:46:27'),(109,'Expense','This Expense has been created','App\\Models\\Expense','created',105,NULL,2,'{\"attributes\": {\"amount\": 3860, \"user_id\": 2}}',NULL,'2023-02-25 06:46:59','2023-02-25 06:46:59'),(110,'Expense','This Expense has been created','App\\Models\\Expense','created',106,NULL,2,'{\"attributes\": {\"amount\": 4550, \"user_id\": 2}}',NULL,'2023-02-25 06:47:28','2023-02-25 06:47:28'),(111,'Expense','This Expense has been created','App\\Models\\Expense','created',107,NULL,2,'{\"attributes\": {\"amount\": 310, \"user_id\": 2}}',NULL,'2023-02-25 06:47:54','2023-02-25 06:47:54'),(112,'Expense','This Expense has been created','App\\Models\\Expense','created',108,NULL,2,'{\"attributes\": {\"amount\": 5630, \"user_id\": 2}}',NULL,'2023-02-25 06:48:18','2023-02-25 06:48:18'),(113,'Expense','This Expense has been created','App\\Models\\Expense','created',109,NULL,2,'{\"attributes\": {\"amount\": 2460, \"user_id\": 2}}',NULL,'2023-02-25 06:48:44','2023-02-25 06:48:44'),(114,'Expense','This Expense has been created','App\\Models\\Expense','created',110,NULL,2,'{\"attributes\": {\"amount\": 345, \"user_id\": 2}}',NULL,'2023-02-25 06:49:09','2023-02-25 06:49:09'),(115,'Expense','This Expense has been created','App\\Models\\Expense','created',111,NULL,2,'{\"attributes\": {\"amount\": 440, \"user_id\": 2}}',NULL,'2023-02-25 06:49:34','2023-02-25 06:49:34'),(116,'Expense','This Expense has been created','App\\Models\\Expense','created',112,NULL,2,'{\"attributes\": {\"amount\": 1535, \"user_id\": 2}}',NULL,'2023-02-25 06:50:05','2023-02-25 06:50:05'),(117,'Expense','This Expense has been created','App\\Models\\Expense','created',113,NULL,2,'{\"attributes\": {\"amount\": 235, \"user_id\": 2}}',NULL,'2023-02-25 06:50:30','2023-02-25 06:50:30'),(118,'Expense','This Expense has been created','App\\Models\\Expense','created',114,NULL,2,'{\"attributes\": {\"amount\": 4185, \"user_id\": 2}}',NULL,'2023-02-25 06:51:06','2023-02-25 06:51:06'),(119,'Expense','This Expense has been created','App\\Models\\Expense','created',115,NULL,2,'{\"attributes\": {\"amount\": 2530, \"user_id\": 2}}',NULL,'2023-02-25 06:51:36','2023-02-25 06:51:36'),(120,'Expense','This Expense has been created','App\\Models\\Expense','created',116,NULL,2,'{\"attributes\": {\"amount\": 3075, \"user_id\": 2}}',NULL,'2023-02-25 06:52:02','2023-02-25 06:52:02'),(121,'Expense','This Expense has been created','App\\Models\\Expense','created',117,NULL,2,'{\"attributes\": {\"amount\": 425, \"user_id\": 2}}',NULL,'2023-02-25 06:52:29','2023-02-25 06:52:29'),(122,'Expense','This Expense has been created','App\\Models\\Expense','created',118,NULL,2,'{\"attributes\": {\"amount\": 1050, \"user_id\": 2}}',NULL,'2023-02-25 06:52:59','2023-02-25 06:52:59'),(123,'Expense','This Expense has been created','App\\Models\\Expense','created',119,NULL,2,'{\"attributes\": {\"amount\": 620, \"user_id\": 2}}',NULL,'2023-02-25 06:53:27','2023-02-25 06:53:27'),(124,'Expense','This Expense has been created','App\\Models\\Expense','created',120,NULL,2,'{\"attributes\": {\"amount\": 3840, \"user_id\": 2}}',NULL,'2023-02-25 06:53:58','2023-02-25 06:53:58'),(125,'Expense','This Expense has been created','App\\Models\\Expense','created',121,NULL,2,'{\"attributes\": {\"amount\": 725, \"user_id\": 2}}',NULL,'2023-02-25 06:54:24','2023-02-25 06:54:24'),(126,'Expense','This Expense has been created','App\\Models\\Expense','created',122,NULL,2,'{\"attributes\": {\"amount\": 5240, \"user_id\": 2}}',NULL,'2023-02-25 06:54:59','2023-02-25 06:54:59'),(127,'Expense','This Expense has been created','App\\Models\\Expense','created',123,NULL,2,'{\"attributes\": {\"amount\": 2385, \"user_id\": 2}}',NULL,'2023-02-25 06:55:31','2023-02-25 06:55:31'),(128,'Expense','This Expense has been created','App\\Models\\Expense','created',124,NULL,2,'{\"attributes\": {\"amount\": 3760, \"user_id\": 2}}',NULL,'2023-02-25 06:55:58','2023-02-25 06:55:58'),(129,'Expense','This Expense has been created','App\\Models\\Expense','created',125,NULL,2,'{\"attributes\": {\"amount\": 3650, \"user_id\": 2}}',NULL,'2023-02-25 06:56:29','2023-02-25 06:56:29'),(130,'Expense','This Expense has been created','App\\Models\\Expense','created',126,NULL,2,'{\"attributes\": {\"amount\": 11350, \"user_id\": 2}}',NULL,'2023-02-25 06:57:02','2023-02-25 06:57:02'),(131,'Expense','This Expense has been created','App\\Models\\Expense','created',127,NULL,2,'{\"attributes\": {\"amount\": 1815, \"user_id\": 2}}',NULL,'2023-02-25 06:57:37','2023-02-25 06:57:37'),(132,'Expense','This Expense has been created','App\\Models\\Expense','created',128,NULL,2,'{\"attributes\": {\"amount\": 1160, \"user_id\": 2}}',NULL,'2023-02-25 06:58:11','2023-02-25 06:58:11'),(133,'Expense','This Expense has been created','App\\Models\\Expense','created',129,NULL,2,'{\"attributes\": {\"amount\": 2300, \"user_id\": 2}}',NULL,'2023-02-25 06:58:41','2023-02-25 06:58:41'),(134,'Expense','This Expense has been created','App\\Models\\Expense','created',130,NULL,2,'{\"attributes\": {\"amount\": 190, \"user_id\": 2}}',NULL,'2023-02-25 06:59:16','2023-02-25 06:59:16'),(135,'Expense','This Expense has been created','App\\Models\\Expense','created',131,NULL,2,'{\"attributes\": {\"amount\": 3630, \"user_id\": 2}}',NULL,'2023-02-25 06:59:51','2023-02-25 06:59:51'),(136,'Expense','This Expense has been created','App\\Models\\Expense','created',132,NULL,2,'{\"attributes\": {\"amount\": 3740, \"user_id\": 2}}',NULL,'2023-02-25 07:00:23','2023-02-25 07:00:23'),(137,'Expense','This Expense has been created','App\\Models\\Expense','created',133,NULL,2,'{\"attributes\": {\"amount\": 2410, \"user_id\": 2}}',NULL,'2023-02-25 07:00:51','2023-02-25 07:00:51'),(138,'Expense','This Expense has been created','App\\Models\\Expense','created',134,NULL,2,'{\"attributes\": {\"amount\": 595, \"user_id\": 2}}',NULL,'2023-02-25 07:01:17','2023-02-25 07:01:17'),(139,'Expense','This Expense has been created','App\\Models\\Expense','created',135,NULL,2,'{\"attributes\": {\"amount\": 2520, \"user_id\": 2}}',NULL,'2023-02-25 07:01:43','2023-02-25 07:01:43'),(140,'Expense','This Expense has been created','App\\Models\\Expense','created',136,NULL,2,'{\"attributes\": {\"amount\": 150, \"user_id\": 2}}',NULL,'2023-02-25 07:02:10','2023-02-25 07:02:10'),(141,'Expense','This Expense has been created','App\\Models\\Expense','created',137,NULL,2,'{\"attributes\": {\"amount\": 940, \"user_id\": 2}}',NULL,'2023-02-25 07:02:37','2023-02-25 07:02:37'),(142,'Expense','This Expense has been created','App\\Models\\Expense','created',138,NULL,2,'{\"attributes\": {\"amount\": 3945, \"user_id\": 2}}',NULL,'2023-02-25 07:03:11','2023-02-25 07:03:11'),(143,'Expense','This Expense has been created','App\\Models\\Expense','created',139,NULL,2,'{\"attributes\": {\"amount\": 3840, \"user_id\": 2}}',NULL,'2023-02-25 07:03:44','2023-02-25 07:03:44'),(144,'Expense','This Expense has been created','App\\Models\\Expense','created',140,NULL,2,'{\"attributes\": {\"amount\": 840, \"user_id\": 2}}',NULL,'2023-02-25 07:04:16','2023-02-25 07:04:16'),(145,'Expense','This Expense has been created','App\\Models\\Expense','created',141,NULL,2,'{\"attributes\": {\"amount\": 1670, \"user_id\": 2}}',NULL,'2023-02-25 07:05:05','2023-02-25 07:05:05'),(146,'Expense','This Expense has been created','App\\Models\\Expense','created',142,NULL,2,'{\"attributes\": {\"amount\": 325, \"user_id\": 2}}',NULL,'2023-02-25 07:05:26','2023-02-25 07:05:26'),(147,'Expense','This Expense has been created','App\\Models\\Expense','created',143,NULL,2,'{\"attributes\": {\"amount\": 440, \"user_id\": 2}}',NULL,'2023-02-25 07:05:55','2023-02-25 07:05:55'),(148,'Expense','This Expense has been created','App\\Models\\Expense','created',144,NULL,2,'{\"attributes\": {\"amount\": 4020, \"user_id\": 2}}',NULL,'2023-02-25 07:06:22','2023-02-25 07:06:22'),(149,'Expense','This Expense has been created','App\\Models\\Expense','created',145,NULL,2,'{\"attributes\": {\"amount\": 1080, \"user_id\": 2}}',NULL,'2023-02-25 07:06:50','2023-02-25 07:06:50'),(150,'Expense','This Expense has been created','App\\Models\\Expense','created',146,NULL,2,'{\"attributes\": {\"amount\": 645, \"user_id\": 2}}',NULL,'2023-02-25 07:07:32','2023-02-25 07:07:32'),(151,'Expense','This Expense has been created','App\\Models\\Expense','created',147,NULL,2,'{\"attributes\": {\"amount\": 160, \"user_id\": 2}}',NULL,'2023-02-25 07:08:25','2023-02-25 07:08:25'),(152,'Expense','This Expense has been created','App\\Models\\Expense','created',148,NULL,2,'{\"attributes\": {\"amount\": 4470, \"user_id\": 2}}',NULL,'2023-02-25 07:08:59','2023-02-25 07:08:59'),(153,'Expense','This Expense has been created','App\\Models\\Expense','created',149,NULL,2,'{\"attributes\": {\"amount\": 970, \"user_id\": 2}}',NULL,'2023-02-25 07:09:36','2023-02-25 07:09:36'),(154,'Expense','This Expense has been created','App\\Models\\Expense','created',150,NULL,2,'{\"attributes\": {\"amount\": 2375, \"user_id\": 2}}',NULL,'2023-02-25 07:11:45','2023-02-25 07:11:45'),(155,'Expense','This Expense has been created','App\\Models\\Expense','created',151,NULL,2,'{\"attributes\": {\"amount\": 32300, \"user_id\": 2}}',NULL,'2023-02-25 07:12:39','2023-02-25 07:12:39'),(156,'Expense','This Expense has been created','App\\Models\\Expense','created',152,NULL,2,'{\"attributes\": {\"amount\": 2800, \"user_id\": 2}}',NULL,'2023-02-25 07:13:46','2023-02-25 07:13:46'),(157,'Expense','This Expense has been created','App\\Models\\Expense','created',153,NULL,2,'{\"attributes\": {\"amount\": 2800, \"user_id\": 2}}',NULL,'2023-02-25 07:14:40','2023-02-25 07:14:40'),(158,'Expense','This Expense has been created','App\\Models\\Expense','created',154,NULL,2,'{\"attributes\": {\"amount\": 2800, \"user_id\": 2}}',NULL,'2023-02-25 07:15:17','2023-02-25 07:15:17'),(159,'Expense','This Expense has been created','App\\Models\\Expense','created',155,NULL,2,'{\"attributes\": {\"amount\": 3300, \"user_id\": 2}}',NULL,'2023-02-25 07:15:47','2023-02-25 07:15:47'),(160,'Expense','This Expense has been created','App\\Models\\Expense','created',156,NULL,2,'{\"attributes\": {\"amount\": 7280, \"user_id\": 2}}',NULL,'2023-02-25 07:16:37','2023-02-25 07:16:37'),(161,'Expense','This Expense has been created','App\\Models\\Expense','created',157,NULL,2,'{\"attributes\": {\"amount\": 5730, \"user_id\": 2}}',NULL,'2023-02-25 07:17:08','2023-02-25 07:17:08'),(162,'Expense','This Expense has been created','App\\Models\\Expense','created',158,NULL,2,'{\"attributes\": {\"amount\": 5300, \"user_id\": 2}}',NULL,'2023-02-25 07:17:41','2023-02-25 07:17:41'),(163,'Expense','This Expense has been created','App\\Models\\Expense','created',159,NULL,2,'{\"attributes\": {\"amount\": 4600, \"user_id\": 2}}',NULL,'2023-02-25 07:18:16','2023-02-25 07:18:16'),(164,'Expense','This Expense has been created','App\\Models\\Expense','created',160,NULL,2,'{\"attributes\": {\"amount\": 4870, \"user_id\": 2}}',NULL,'2023-02-25 07:18:56','2023-02-25 07:18:56'),(165,'Expense','This Expense has been created','App\\Models\\Expense','created',161,NULL,2,'{\"attributes\": {\"amount\": 16400, \"user_id\": 2}}',NULL,'2023-02-25 07:20:25','2023-02-25 07:20:25'),(166,'Expense','This Expense has been created','App\\Models\\Expense','created',162,NULL,2,'{\"attributes\": {\"amount\": 4700, \"user_id\": 2}}',NULL,'2023-02-25 07:21:02','2023-02-25 07:21:02'),(167,'Expense','This Expense has been created','App\\Models\\Expense','created',163,NULL,2,'{\"attributes\": {\"amount\": 5250, \"user_id\": 2}}',NULL,'2023-02-25 07:21:55','2023-02-25 07:21:55'),(168,'Expense','This Expense has been created','App\\Models\\Expense','created',164,NULL,2,'{\"attributes\": {\"amount\": 5410, \"user_id\": 2}}',NULL,'2023-02-25 07:22:27','2023-02-25 07:22:27'),(169,'Expense','This Expense has been created','App\\Models\\Expense','created',165,NULL,2,'{\"attributes\": {\"amount\": 5150, \"user_id\": 2}}',NULL,'2023-02-25 07:23:05','2023-02-25 07:23:05'),(170,'Expense','This Expense has been created','App\\Models\\Expense','created',166,NULL,2,'{\"attributes\": {\"amount\": 15400, \"user_id\": 2}}',NULL,'2023-02-25 07:24:02','2023-02-25 07:24:02'),(171,'Expense','This Expense has been created','App\\Models\\Expense','created',167,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:25:10','2023-02-25 07:25:10'),(172,'Expense','This Expense has been created','App\\Models\\Expense','created',168,NULL,2,'{\"attributes\": {\"amount\": 5100, \"user_id\": 2}}',NULL,'2023-02-25 07:25:35','2023-02-25 07:25:35'),(173,'Expense','This Expense has been created','App\\Models\\Expense','created',169,NULL,2,'{\"attributes\": {\"amount\": 5600, \"user_id\": 2}}',NULL,'2023-02-25 07:26:10','2023-02-25 07:26:10'),(174,'Expense','This Expense has been created','App\\Models\\Expense','created',170,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:26:35','2023-02-25 07:26:35'),(175,'Expense','This Expense has been created','App\\Models\\Expense','created',171,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:27:03','2023-02-25 07:27:03'),(176,'Expense','This Expense has been created','App\\Models\\Expense','created',172,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:27:28','2023-02-25 07:27:28'),(177,'Expense','This Expense has been created','App\\Models\\Expense','created',173,NULL,2,'{\"attributes\": {\"amount\": 84180, \"user_id\": 2}}',NULL,'2023-02-25 07:28:30','2023-02-25 07:28:30'),(178,'Expense','This Expense has been created','App\\Models\\Expense','created',174,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:28:57','2023-02-25 07:28:57'),(179,'Expense','This Expense has been created','App\\Models\\Expense','created',175,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:29:23','2023-02-25 07:29:23'),(180,'Expense','This Expense has been created','App\\Models\\Expense','created',176,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:30:21','2023-02-25 07:30:21'),(181,'Expense','This Expense has been created','App\\Models\\Expense','created',177,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:30:46','2023-02-25 07:30:46'),(182,'Expense','This Expense has been created','App\\Models\\Expense','created',178,NULL,2,'{\"attributes\": {\"amount\": 4475, \"user_id\": 2}}',NULL,'2023-02-25 07:31:14','2023-02-25 07:31:14'),(183,'Expense','This Expense has been created','App\\Models\\Expense','created',179,NULL,2,'{\"attributes\": {\"amount\": 2800, \"user_id\": 2}}',NULL,'2023-02-25 07:31:36','2023-02-25 07:31:36'),(184,'Expense','This Expense has been created','App\\Models\\Expense','created',180,NULL,2,'{\"attributes\": {\"amount\": 4343, \"user_id\": 2}}',NULL,'2023-02-25 07:32:14','2023-02-25 07:32:14'),(185,'Expense','This Expense has been created','App\\Models\\Expense','created',181,NULL,2,'{\"attributes\": {\"amount\": 15775, \"user_id\": 2}}',NULL,'2023-02-25 07:32:48','2023-02-25 07:32:48'),(186,'Expense','This Expense has been created','App\\Models\\Expense','created',182,NULL,2,'{\"attributes\": {\"amount\": 6000, \"user_id\": 2}}',NULL,'2023-02-25 07:33:17','2023-02-25 07:33:17'),(187,'Expense','This Expense has been created','App\\Models\\Expense','created',183,NULL,2,'{\"attributes\": {\"amount\": 3200, \"user_id\": 2}}',NULL,'2023-02-25 07:33:46','2023-02-25 07:33:46'),(188,'Expense','This Expense has been created','App\\Models\\Expense','created',184,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:34:16','2023-02-25 07:34:16'),(189,'Expense','This Expense has been created','App\\Models\\Expense','created',185,NULL,2,'{\"attributes\": {\"amount\": 3200, \"user_id\": 2}}',NULL,'2023-02-25 07:34:44','2023-02-25 07:34:44'),(190,'Expense','This Expense has been created','App\\Models\\Expense','created',186,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:35:12','2023-02-25 07:35:12'),(191,'Expense','This Expense has been created','App\\Models\\Expense','created',187,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:35:51','2023-02-25 07:35:51'),(192,'Expense','This Expense has been created','App\\Models\\Expense','created',188,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:37:45','2023-02-25 07:37:45'),(193,'Expense','This Expense has been created','App\\Models\\Expense','created',189,NULL,2,'{\"attributes\": {\"amount\": 15720, \"user_id\": 2}}',NULL,'2023-02-25 07:38:52','2023-02-25 07:38:52'),(194,'Expense','This Expense has been created','App\\Models\\Expense','created',190,NULL,2,'{\"attributes\": {\"amount\": 3800, \"user_id\": 2}}',NULL,'2023-02-25 07:39:19','2023-02-25 07:39:19'),(195,'Expense','This Expense has been created','App\\Models\\Expense','created',191,NULL,2,'{\"attributes\": {\"amount\": 4100, \"user_id\": 2}}',NULL,'2023-02-25 07:39:48','2023-02-25 07:39:48'),(196,'Expense','This Expense has been created','App\\Models\\Expense','created',192,NULL,2,'{\"attributes\": {\"amount\": 4700, \"user_id\": 2}}',NULL,'2023-02-25 07:40:12','2023-02-25 07:40:12'),(197,'Expense','This Expense has been created','App\\Models\\Expense','created',193,NULL,2,'{\"attributes\": {\"amount\": 8750, \"user_id\": 2}}',NULL,'2023-02-25 07:40:42','2023-02-25 07:40:42'),(198,'Expense','This Expense has been created','App\\Models\\Expense','created',194,NULL,2,'{\"attributes\": {\"amount\": 15000, \"user_id\": 2}}',NULL,'2023-02-25 07:41:19','2023-02-25 07:41:19'),(199,'Expense','This Expense has been created','App\\Models\\Expense','created',195,NULL,2,'{\"attributes\": {\"amount\": 3200, \"user_id\": 2}}',NULL,'2023-02-25 07:41:49','2023-02-25 07:41:49');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Itel','2023-02-24 18:37:59','2023-02-24 18:37:59',NULL),(2,'Tecno','2023-02-24 18:38:12','2023-02-24 18:38:12',NULL),(3,'Polar','2023-02-24 18:38:29','2023-02-24 18:38:29',NULL),(4,'Grameen Phone','2023-02-24 18:38:46','2023-02-24 18:38:46',NULL),(5,'Lovello','2023-02-24 18:38:59','2023-02-24 18:38:59',NULL),(6,'Building Cost','2023-02-24 18:39:15','2023-02-24 18:39:15',1),(7,'House Cost','2023-02-24 18:39:36','2023-02-24 18:39:36',1),(8,'Polar Owner Cost','2023-02-25 04:07:02','2023-02-25 04:38:58',3),(9,'Polar Pay','2023-02-25 04:07:40','2023-02-25 04:07:40',3),(10,'GP Discount','2023-02-25 04:24:30','2023-02-25 04:24:30',4),(11,'GP Owner Cost','2023-02-25 04:25:22','2023-02-25 04:25:22',4),(12,'Lovello Owner Cost','2023-02-25 04:39:16','2023-02-25 04:39:16',5);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_h_losses`
--

DROP TABLE IF EXISTS `d_h_losses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_h_losses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_h_losses`
--

LOCK TABLES `d_h_losses` WRITE;
/*!40000 ALTER TABLE `d_h_losses` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_h_losses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `purpose` longtext COLLATE utf8mb4_unicode_ci,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_user_id_foreign` (`user_id`),
  KEY `expenses_category_id_foreign` (`category_id`),
  CONSTRAINT `expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (2,2,2,'none',3240,'2023-01-25 09:31:00','2023-02-25 03:32:05'),(3,2,2,'none',1740,'2023-01-02 09:34:00','2023-02-25 03:34:35'),(4,2,2,'none',1160,'2023-01-03 09:34:00','2023-02-25 03:34:55'),(5,3,3,'none',253,'2023-01-02 09:58:00','2023-02-25 03:59:04'),(6,3,3,'office',55,'2023-01-03 09:59:00','2023-02-25 04:00:01'),(7,3,3,'disount',179,'2023-01-07 10:00:00','2023-02-25 04:01:01'),(8,3,3,'Office',103,'2023-01-08 10:05:00','2023-02-25 04:05:47'),(9,2,2,'none',4190,'2023-01-04 10:06:00','2023-02-25 04:06:17'),(10,2,2,'none',1255,'2023-01-05 10:06:00','2023-02-25 04:06:56'),(11,2,2,'none',3650,'2023-01-07 10:07:00','2023-02-25 04:07:45'),(12,3,9,'5% discount',149,'2023-02-09 10:08:00','2023-02-25 04:08:34'),(13,2,2,'none',2160,'2023-01-08 10:08:00','2023-02-25 04:08:41'),(14,3,8,'owner',504,'2023-01-09 10:08:00','2023-02-25 04:09:09'),(15,2,2,'none',410,'2023-01-09 10:09:00','2023-02-25 04:09:25'),(16,3,3,'office',45,'2023-01-09 10:09:00','2023-02-25 04:09:30'),(17,2,2,'none',3510,'2023-01-10 10:09:00','2023-02-25 04:10:01'),(18,2,2,'none',1435,'2023-01-11 10:10:00','2023-02-25 04:10:39'),(19,2,2,'none',960,'2023-01-12 10:11:00','2023-02-25 04:11:11'),(20,2,2,'none',6100,'2023-01-14 10:11:00','2023-02-25 04:11:57'),(21,2,2,'none',2015,'2023-01-15 10:12:00','2023-02-25 04:13:46'),(22,2,2,'none',3490,'2023-01-16 10:14:00','2023-02-25 04:14:19'),(23,2,2,'none',770,'2023-01-17 10:15:00','2023-02-25 04:15:21'),(24,2,2,'none',1200,'2023-01-18 10:15:00','2023-02-25 04:15:47'),(25,2,2,'none',1840,'2023-01-19 10:17:00','2023-02-25 04:17:34'),(26,2,2,'none',2780,'2023-01-21 10:17:00','2023-02-25 04:18:14'),(27,2,2,'none',880,'2023-01-22 10:18:00','2023-02-25 04:18:45'),(28,2,2,'none',1145,'2023-01-23 10:19:00','2023-02-25 04:19:29'),(29,2,2,'none',960,'2023-01-24 10:19:00','2023-02-25 04:19:56'),(30,2,2,'none',770,'2023-01-25 10:20:00','2023-02-25 04:20:27'),(31,2,2,'none',310,'2023-01-26 10:20:00','2023-02-25 04:20:52'),(32,2,2,'none',3755,'2023-01-28 10:21:00','2023-02-25 04:21:22'),(33,2,2,'none',2590,'2023-01-29 10:21:00','2023-02-25 04:21:57'),(34,3,3,'Electric Bill',3000,'2023-01-09 10:22:00','2023-02-25 04:22:19'),(35,4,4,'office',3400,'2023-01-01 10:22:00','2023-02-25 04:22:20'),(36,2,2,'none',3030,'2023-01-30 10:22:00','2023-02-25 04:22:24'),(37,2,2,'none',1450,'2023-01-31 10:22:00','2023-02-25 04:22:59'),(38,4,4,'office',13838,'2023-01-02 10:22:00','2023-02-25 04:31:52'),(39,2,2,'none',1570,'2023-02-01 10:28:00','2023-02-25 04:28:15'),(40,2,2,'none',5457,'2023-02-02 10:28:00','2023-02-25 04:28:46'),(41,2,2,'none',19642,'2023-02-04 10:30:00','2023-02-25 04:31:04'),(42,2,2,'none',990,'2023-02-05 10:32:00','2023-02-25 04:32:37'),(43,4,4,'Office Cost',1355,'2023-01-03 10:32:00','2023-02-25 04:32:46'),(44,2,2,'none',1045,'2023-02-06 10:33:00','2023-02-25 04:33:18'),(45,4,4,'Office Cost',50482,'2023-01-04 10:35:00','2023-02-25 04:35:14'),(46,4,4,'Office Cost',1955,'2023-01-05 10:35:00','2023-02-25 04:35:43'),(47,4,4,'Office Cost',3317,'2023-01-07 10:35:00','2023-02-25 04:36:03'),(48,4,4,'Office Cost',5815,'2023-01-08 10:36:00','2023-02-25 04:36:23'),(49,4,4,'Office Cost',6175,'2023-01-09 10:36:00','2023-02-25 04:36:48'),(50,2,2,'none',1305,'2023-02-08 10:37:00','2023-02-25 04:37:10'),(51,4,4,'Office Cost',9715,'2023-01-10 10:37:00','2023-02-25 04:37:13'),(52,4,4,'Office Cost',10122,'2023-01-11 10:37:00','2023-02-25 04:37:34'),(53,4,4,'Office Cost',5870,'2023-01-12 10:37:00','2023-02-25 04:37:56'),(54,4,4,'Office Cost',24455,'2023-01-14 10:38:00','2023-02-25 04:38:17'),(55,2,2,'none',3490,'2023-02-07 10:38:00','2023-02-25 04:38:36'),(56,4,4,'Office Cost',6418,'2023-01-15 10:38:00','2023-02-25 04:38:44'),(57,4,4,'Office Cost',2841,'2023-01-16 10:39:00','2023-02-25 04:39:09'),(58,4,4,'Office Cost',9335,'2023-01-17 10:39:00','2023-02-25 04:39:36'),(59,2,2,'none',2450,'2023-02-09 10:39:00','2023-02-25 04:39:47'),(60,2,2,'none',5700,'2023-02-11 10:40:00','2023-02-25 04:40:21'),(61,2,2,'none',910,'2023-02-12 10:40:00','2023-02-25 04:40:45'),(62,4,4,'Office Cost',8151,'2023-01-18 10:40:00','2023-02-25 04:41:01'),(63,4,4,'Office Cost',7505,'2023-01-19 10:41:00','2023-02-25 04:41:27'),(64,4,4,'Office Cost',17950,'2023-01-21 10:41:00','2023-02-25 04:41:50'),(65,4,4,'Office Cost',24358,'2023-01-22 10:42:00','2023-02-25 04:42:14'),(66,4,4,'Office Cost',9312,'2023-01-23 10:42:00','2023-02-25 04:42:42'),(67,4,4,'Office Cost',8917,'2023-01-24 10:42:00','2023-02-25 04:42:59'),(68,4,4,'Office Cost',6925,'2023-01-25 10:43:00','2023-02-25 04:43:23'),(69,4,4,'Office Cost',12935,'2023-01-26 10:43:00','2023-02-25 04:43:43'),(70,4,4,'Office Cost',5825,'2023-01-28 10:43:00','2023-02-25 04:44:04'),(71,4,4,'Office Cost',10180,'2023-01-29 10:44:00','2023-02-25 04:44:21'),(72,4,4,'Office Cost',19365,'2023-01-30 10:44:00','2023-02-25 04:45:02'),(73,4,4,'Office Cost',21507,'2023-01-31 10:45:00','2023-02-25 04:45:33'),(74,4,4,'Office Cost',305,'2023-02-01 10:45:00','2023-02-25 04:45:52'),(75,4,4,'Office Cost',2685,'2023-02-02 10:46:00','2023-02-25 04:46:07'),(76,4,4,'Office Cost',10969,'2023-02-04 10:46:00','2023-02-25 04:46:30'),(77,4,4,'Office Cost',17885,'2023-02-05 10:46:00','2023-02-25 04:46:52'),(78,4,4,'Office Cost',7747,'2023-02-06 10:47:00','2023-02-25 04:47:12'),(79,4,4,'Office Cost',8275,'2023-02-07 10:47:00','2023-02-25 04:47:30'),(80,4,4,'Office Cost',31865,'2023-02-08 10:47:00','2023-02-25 04:47:49'),(81,4,4,'Office Cost',16998,'2023-02-09 10:48:00','2023-02-25 04:48:13'),(82,4,4,'Office Cost',14348,'2023-02-11 10:48:00','2023-02-25 04:48:39'),(83,4,4,'Office Cost',23269,'2023-02-12 10:48:00','2023-02-25 04:49:00'),(84,4,4,'Office Cost',7325,'2023-02-13 10:49:00','2023-02-25 04:49:16'),(85,4,4,'Office Cost',8215,'2023-02-14 10:49:00','2023-02-25 04:49:33'),(86,4,4,'Office Cost',13028,'2023-02-15 10:49:00','2023-02-25 04:49:50'),(87,4,4,'Office Cost',7125,'2023-02-16 10:50:00','2023-02-25 04:50:09'),(88,4,4,'Office Cost',10910,'2023-02-18 10:50:00','2023-02-25 04:50:30'),(89,4,4,'Office Cost',8755,'2023-02-19 10:50:00','2023-02-25 04:50:59'),(90,4,4,'Office Cost',9090,'2023-02-20 10:51:00','2023-02-25 04:54:28'),(91,4,4,'Office Cost',36468,'2023-02-22 10:54:00','2023-02-25 04:54:53'),(92,4,4,'Office Cost',8565,'2023-02-23 10:55:00','2023-02-25 04:55:09'),(93,2,2,'none',1535,'2023-02-13 12:37:00','2023-02-25 06:37:55'),(94,2,2,'none',3860,'2023-02-14 12:40:00','2023-02-25 06:41:02'),(95,2,2,'none',510,'2023-02-15 12:41:00','2023-02-25 06:41:30'),(96,2,2,'none',4030,'2023-02-16 12:41:00','2023-02-25 06:41:55'),(97,2,2,'none',4070,'2023-02-18 12:42:00','2023-02-25 06:42:22'),(98,2,2,'none',1840,'2023-02-19 12:42:00','2023-02-25 06:42:48'),(99,2,2,'none',1390,'2023-02-20 12:43:00','2023-02-25 06:43:16'),(100,2,2,'none',2575,'2023-02-21 12:43:00','2023-02-25 06:43:42'),(101,2,2,'none',3480,'2023-02-22 12:44:00','2023-02-25 06:44:06'),(102,2,2,'none',870,'2023-02-23 12:44:00','2023-02-25 06:44:29'),(103,2,1,'none',1250,'2023-01-01 12:45:00','2023-02-25 06:46:01'),(104,2,1,'none',2370,'2023-01-02 12:46:00','2023-02-25 06:46:27'),(105,2,1,'none',3860,'2023-01-03 12:46:00','2023-02-25 06:46:59'),(106,2,1,'none',4550,'2023-01-04 12:47:00','2023-02-25 06:47:28'),(107,2,1,'none',310,'2023-01-05 12:47:00','2023-02-25 06:47:54'),(108,2,1,'none',5630,'2023-01-07 12:48:00','2023-02-25 06:48:18'),(109,2,1,'none',2460,'2023-01-08 12:48:00','2023-02-25 06:48:44'),(110,2,1,'none',345,'2023-01-09 12:49:00','2023-02-25 06:49:09'),(111,2,1,'none',440,'2023-01-10 12:49:00','2023-02-25 06:49:34'),(112,2,1,'none',1535,'2023-01-11 12:49:00','2023-02-25 06:50:05'),(113,2,1,'none',235,'2023-01-12 12:50:00','2023-02-25 06:50:30'),(114,2,1,'none',4185,'2023-01-14 12:50:00','2023-02-25 06:51:06'),(115,2,1,'none',2530,'2023-01-15 12:51:00','2023-02-25 06:51:36'),(116,2,1,'none',3075,'2023-01-16 12:51:00','2023-02-25 06:52:02'),(117,2,1,'none',425,'2023-01-17 12:52:00','2023-02-25 06:52:29'),(118,2,1,'none',1050,'2023-01-18 12:52:00','2023-02-25 06:52:59'),(119,2,1,'none',620,'2023-01-19 12:53:00','2023-02-25 06:53:27'),(120,2,1,'none',3840,'2023-01-21 12:53:00','2023-02-25 06:53:58'),(121,2,1,'none',725,'2023-01-22 12:54:00','2023-02-25 06:54:24'),(122,2,1,'none',5240,'2023-01-23 12:54:00','2023-02-25 06:54:59'),(123,2,1,'none',2385,'2023-01-24 12:55:00','2023-02-25 06:55:31'),(124,2,1,'none',3760,'2023-01-25 12:55:00','2023-02-25 06:55:58'),(125,2,1,'none',3650,'2023-01-26 12:56:00','2023-02-25 06:56:29'),(126,2,1,'none',11350,'2023-01-28 12:56:00','2023-02-25 06:57:02'),(127,2,1,'none',1815,'2023-01-29 12:57:00','2023-02-25 06:57:37'),(128,2,1,'none',1160,'2023-01-30 12:58:00','2023-02-25 06:58:11'),(129,2,1,'none',2300,'2023-01-31 12:58:00','2023-02-25 06:58:41'),(130,2,1,'none',190,'2023-02-01 12:59:00','2023-02-25 06:59:16'),(131,2,1,'none',3630,'2023-02-02 12:59:00','2023-02-25 06:59:51'),(132,2,1,'none',3740,'2023-02-04 13:00:00','2023-02-25 07:00:23'),(133,2,1,'none',2410,'2023-02-05 13:00:00','2023-02-25 07:00:51'),(134,2,1,'none',595,'2023-02-06 13:01:00','2023-02-25 07:01:17'),(135,2,1,'none',2520,'2023-02-07 13:01:00','2023-02-25 07:01:43'),(136,2,1,'none',150,'2023-02-08 13:02:00','2023-02-25 07:02:10'),(137,2,1,'none',940,'2023-02-09 13:02:00','2023-02-25 07:02:37'),(138,2,1,'none',3945,'2023-02-11 13:03:00','2023-02-25 07:03:11'),(139,2,1,'none',3840,'2023-02-12 13:03:00','2023-02-25 07:03:44'),(140,2,1,'none',840,'2023-02-13 13:04:00','2023-02-25 07:04:16'),(141,2,1,'none',1670,'2023-02-14 13:04:00','2023-02-25 07:05:05'),(142,2,1,'none',325,'2023-02-15 13:05:00','2023-02-25 07:05:26'),(143,2,1,'none',440,'2023-02-16 13:05:00','2023-02-25 07:05:55'),(144,2,1,'none',4020,'2023-02-18 13:06:00','2023-02-25 07:06:22'),(145,2,1,'none',1080,'2023-02-19 13:06:00','2023-02-25 07:06:50'),(146,2,1,'none',645,'2023-02-20 13:07:00','2023-02-25 07:07:31'),(147,2,1,'none',160,'2023-02-21 13:08:00','2023-02-25 07:08:25'),(148,2,1,'none',4470,'2023-02-22 13:08:00','2023-02-25 07:08:59'),(149,2,1,'none',970,'2023-02-23 13:09:00','2023-02-25 07:09:36'),(150,2,6,'Mistry',2375,'2023-01-01 13:11:00','2023-02-25 07:11:45'),(151,2,6,'mistry',32300,'2023-01-02 13:12:00','2023-02-25 07:12:39'),(152,2,6,'mistry',2800,'2023-01-03 13:13:00','2023-02-25 07:13:46'),(153,2,6,'mistry',2800,'2023-01-04 13:14:00','2023-02-25 07:14:40'),(154,2,6,'mistry',2800,'2023-01-05 13:15:00','2023-02-25 07:15:17'),(155,2,6,'mistry',3300,'2023-01-07 13:15:00','2023-02-25 07:15:47'),(156,2,6,'mistry',7280,'2023-01-09 13:16:00','2023-02-25 07:16:37'),(157,2,6,'mistry',5730,'2023-01-10 13:17:00','2023-02-25 07:17:08'),(158,2,6,'mistry',5300,'2023-01-11 13:17:00','2023-02-25 07:17:41'),(159,2,6,'mistry',4600,'2023-01-12 13:18:00','2023-02-25 07:18:16'),(160,2,6,'mistry',4870,'2023-01-14 13:18:00','2023-02-25 07:18:56'),(161,2,6,'mistry,cement',16400,'2023-01-15 13:20:00','2023-02-25 07:20:25'),(162,2,6,'mistry',4700,'2023-01-16 13:20:00','2023-02-25 07:21:02'),(163,2,6,'mistry',5250,'2023-01-17 13:21:00','2023-02-25 07:21:55'),(164,2,6,'mistry',5410,'2023-01-18 13:22:00','2023-02-25 07:22:27'),(165,2,6,'mistry',5150,'2023-01-19 13:22:00','2023-02-25 07:23:05'),(166,2,6,'mistry,cement',15400,'2023-01-21 13:23:00','2023-02-25 07:24:01'),(167,2,6,'mistry',3800,'2023-01-22 13:24:00','2023-02-25 07:25:10'),(168,2,6,'mistry',5100,'2023-01-23 13:25:00','2023-02-25 07:25:35'),(169,2,6,'mistry',5600,'2023-01-24 13:26:00','2023-02-25 07:26:10'),(170,2,6,'mistry',4100,'2023-01-25 13:26:00','2023-02-25 07:26:35'),(171,2,6,'mistry',4100,'2023-01-26 13:26:00','2023-02-25 07:27:03'),(172,2,6,'mistry',3800,'2023-01-28 13:27:00','2023-02-25 07:27:28'),(173,2,6,'mistry,cement',84180,'2023-01-29 13:28:00','2023-02-25 07:28:30'),(174,2,6,'mistry',3800,'2023-01-30 13:28:00','2023-02-25 07:28:57'),(175,2,6,'mistry',3800,'2023-01-31 13:29:00','2023-02-25 07:29:23'),(176,2,6,'mistry',3800,'2023-02-01 13:30:00','2023-02-25 07:30:21'),(177,2,6,'mistry',4100,'2023-02-02 13:30:00','2023-02-25 07:30:46'),(178,2,6,'mistry',4475,'2023-02-04 13:31:00','2023-02-25 07:31:13'),(179,2,6,'mistry',2800,'2023-02-05 13:31:00','2023-02-25 07:31:36'),(180,2,6,'mistry',4343,'2023-02-06 13:32:00','2023-02-25 07:32:14'),(181,2,6,'mistry',15775,'2023-02-07 13:32:00','2023-02-25 07:32:48'),(182,2,6,'mistry',6000,'2023-02-08 13:33:00','2023-02-25 07:33:17'),(183,2,6,'mistry',3200,'2023-02-09 13:33:00','2023-02-25 07:33:46'),(184,2,6,'mistry',4100,'2023-02-11 13:34:00','2023-02-25 07:34:16'),(185,2,6,'mistry',3200,'2023-02-12 13:34:00','2023-02-25 07:34:44'),(186,2,6,'mistry',4100,'2023-02-13 13:35:00','2023-02-25 07:35:12'),(187,2,6,'mistry',4100,'2023-02-14 13:35:00','2023-02-25 07:35:51'),(188,2,6,'mistry',4100,'2023-02-15 13:37:00','2023-02-25 07:37:45'),(189,2,6,'mistry,cement',15720,'2023-02-16 13:38:00','2023-02-25 07:38:52'),(190,2,6,'mistry',3800,'2023-02-18 13:39:00','2023-02-25 07:39:19'),(191,2,6,'mistry',4100,'2023-02-19 13:39:00','2023-02-25 07:39:48'),(192,2,6,'mistry',4700,'2023-02-20 13:40:00','2023-02-25 07:40:12'),(193,2,6,'mistry',8750,'2023-02-21 13:40:00','2023-02-25 07:40:42'),(194,2,6,'mistry,cement',15000,'2023-02-22 13:41:00','2023-02-25 07:41:19'),(195,2,6,'mistry',3200,'2023-02-23 13:41:00','2023-02-25 07:41:49');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventments`
--

DROP TABLE IF EXISTS `inventments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventments_user_id_foreign` (`user_id`),
  KEY `inventments_category_id_foreign` (`category_id`),
  CONSTRAINT `inventments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `inventments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventments`
--

LOCK TABLES `inventments` WRITE;
/*!40000 ALTER TABLE `inventments` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lbs_log`
--

DROP TABLE IF EXISTS `lbs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lbs_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `provider` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lbs_log`
--

LOCK TABLES `lbs_log` WRITE;
/*!40000 ALTER TABLE `lbs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `lbs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_03_31_114745_remove_backpackuser_model',1),(6,'2023_02_08_071512_create_permission_tables',1),(7,'2023_02_08_072205_create_categories_table',1),(8,'2023_02_08_072914_create_expenses_table',1),(9,'2023_02_08_083414_create_inventments_table',1),(10,'2023_02_08_090204_create_profits_table',1),(11,'2023_02_08_092133_create_salaries_table',1),(12,'2023_02_08_092750_add_fileds_to_category',1),(13,'2023_02_08_155148_create_d_h_losses_table',1),(14,'2023_02_08_183159_create_laravelbd_sms_table',1),(15,'2023_02_24_160020_create_activity_log_table',1),(16,'2023_02_24_160021_add_event_column_to_activity_log_table',1),(17,'2023_02_24_160022_add_batch_uuid_column_to_activity_log_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profits`
--

DROP TABLE IF EXISTS `profits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profits_user_id_foreign` (`user_id`),
  KEY `profits_category_id_foreign` (`category_id`),
  CONSTRAINT `profits_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `profits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profits`
--

LOCK TABLES `profits` WRITE;
/*!40000 ALTER TABLE `profits` DISABLE KEYS */;
/*!40000 ALTER TABLE `profits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salaries_user_id_foreign` (`user_id`),
  KEY `salaries_category_id_foreign` (`category_id`),
  CONSTRAINT `salaries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jahangir','jahangir7200@live.com',NULL,'$2y$10$FL.hg9CQ4qF.ZeO0xposS.Ks1Ortm3SSo95RubDDygIFQwEdToEVS',NULL,'2023-02-24 18:22:51','2023-02-24 18:22:51'),(2,'Asad','asad@tt.com',NULL,'$2y$10$qnopWn7m6gu1RMLTSCMHDeltUhXCOGTf9hmYyIc.BTNyHTVrMKlN.',NULL,'2023-02-25 03:30:40','2023-02-25 03:30:40'),(3,'Nahid','akmjobied@gmail.com',NULL,'$2y$10$jZvmSgmVnxs71PLvwgVYOuBeEajS/ntUNfEy1rmbqF0B99vzGF5UC',NULL,'2023-02-25 03:57:09','2023-02-25 03:57:09'),(4,'Shakil','kshakil221@gmail.com',NULL,'$2y$10$DzFUjvPVf7BexxnsnL4EYe2M4W.akNMBp.e2YQg6o0/cmYDbRxlxa',NULL,'2023-02-25 04:21:07','2023-02-25 04:21:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 15:33:38
