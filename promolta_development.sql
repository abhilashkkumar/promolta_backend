-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: localhost    Database: promolta_development
-- ------------------------------------------------------
-- Server version	5.7.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT NULL,
  `is_trash` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_emails_on_user_id` (`user_id`),
  KEY `index_emails_on_email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'abc@gmail.com','abc@xyz.com','jhgjshsd',1,NULL,NULL,NULL,'2017-08-10 10:53:49','2017-08-10 10:53:49',1,NULL,'shfgsjd'),(2,'abc@gmail.com','abc@xyz.com','jhgjshsd',NULL,NULL,NULL,1,'2017-08-10 10:53:49','2017-08-10 13:01:48',2,NULL,'shfgsjd'),(3,'abc@gmail.com','abc@xyz.com','testing',1,NULL,NULL,NULL,'2017-08-10 10:58:17','2017-08-10 10:58:17',1,NULL,'new'),(4,'abc@gmail.com','abc@xyz.com','testing',NULL,NULL,NULL,1,'2017-08-10 10:58:17','2017-08-10 13:01:50',2,NULL,'new'),(5,'abc@xyz.com','abc@xyz.com','testing',1,NULL,NULL,NULL,'2017-08-10 10:58:18','2017-08-10 10:58:18',1,NULL,'new'),(6,'abc@xyz.com','abc@xyz.com','testing',NULL,NULL,NULL,1,'2017-08-10 10:58:18','2017-08-11 09:47:48',1,NULL,'new'),(7,NULL,NULL,'gjdsh',NULL,1,NULL,NULL,'2017-08-10 13:14:16','2017-08-10 13:14:16',2,NULL,'jgfsj'),(8,NULL,NULL,'gjdshhfgsdjfhgsdjsgfdsjssabhilash',NULL,1,NULL,NULL,'2017-08-10 14:05:16','2017-08-10 14:12:23',2,NULL,'jgfsj'),(9,'abc@xyz.com','abc@gmail.com','gjdshhfgsdjfhgsdjsgfdsjssabhilash',1,NULL,NULL,NULL,'2017-08-10 14:12:50','2017-08-10 14:12:50',2,NULL,'abhilash'),(10,'abc@xyz.com','abc@gmail.com','gjdshhfgsdjfhgsdjsgfdsjssabhilash',NULL,NULL,NULL,1,'2017-08-10 14:12:50','2017-08-11 09:43:51',1,NULL,'abhilash'),(11,'abc@gmail.com','abc@gmail.com','gjdshhfgsdjfhgsdjsgfdsjssabhilash',1,NULL,NULL,NULL,'2017-08-10 14:12:50','2017-08-10 14:12:50',2,NULL,'abhilash'),(12,'abc@gmail.com','abc@gmail.com','gjdshhfgsdjfhgsdjsgfdsjssabhilash',NULL,NULL,NULL,1,'2017-08-10 14:12:50','2017-08-10 14:13:14',2,NULL,'abhilash'),(13,NULL,NULL,'gjdshhfgsdjfhgsdjsgfdsjssabhilashsdsjfsdf',NULL,1,NULL,NULL,'2017-08-10 16:10:29','2017-08-10 16:10:53',2,NULL,'abhilash'),(14,'abc@gmail.com','abc@xyz.com','writing this to you\n	2017-08-10T14:12:50.000Z < abc@gmail.com > wrote:\n	gjdshhfgsdjfhgsdjsgfdsjssabhilash',1,NULL,NULL,NULL,'2017-08-11 09:48:39','2017-08-11 09:48:39',1,NULL,'abhilash'),(15,'abc@gmail.com','abc@xyz.com','writing this to you\n	2017-08-10T14:12:50.000Z < abc@gmail.com > wrote:\n	gjdshhfgsdjfhgsdjsgfdsjssabhilash',NULL,NULL,NULL,1,'2017-08-11 09:48:39','2017-08-11 09:49:01',2,NULL,'abhilash'),(16,'abc@xyz.com','abc@gmail.com','yeah leatning...\n	2017-08-11T09:48:39.000Z < abc@xyz.com > wrote:\n	writing this to you\n	2017-08-10T14:12:50.000Z < abc@gmail.com > wrote:\n	gjdshhfgsdjfhgsdjsgfdsjssabhilash',1,NULL,NULL,NULL,'2017-08-11 09:49:24','2017-08-11 09:49:24',2,NULL,'abhilash'),(17,'abc@xyz.com','abc@gmail.com','yeah leatning...\n	2017-08-11T09:48:39.000Z < abc@xyz.com > wrote:\n	writing this to you\n	2017-08-10T14:12:50.000Z < abc@gmail.com > wrote:\n	gjdshhfgsdjfhgsdjsgfdsjssabhilash',NULL,NULL,NULL,1,'2017-08-11 09:49:24','2017-08-11 09:49:44',1,NULL,'abhilash'),(18,'abc@gmail.com','abc@xyz.com','hello there',1,NULL,NULL,NULL,'2017-08-11 09:53:34','2017-08-11 09:53:34',1,NULL,'abhilash'),(19,'abc@gmail.com','abc@xyz.com','hello there',NULL,NULL,NULL,1,'2017-08-11 09:53:34','2017-08-11 09:53:48',2,NULL,'abhilash'),(20,'abc@xyz.com','abc@gmail.com','yes listning\n	2017-08-11T09:53:34.000Z < abc@xyz.com > wrote: hello there',1,NULL,NULL,NULL,'2017-08-11 09:54:01','2017-08-11 09:54:01',2,NULL,'abhilash'),(21,'abc@xyz.com','abc@gmail.com','yes listning\n	2017-08-11T09:53:34.000Z < abc@xyz.com > wrote: hello there',NULL,NULL,NULL,1,'2017-08-11 09:54:01','2017-08-11 09:54:15',1,NULL,'abhilash'),(22,'abc@gmail.com','abc@xyz.com','hello',1,NULL,NULL,NULL,'2017-08-11 09:55:21','2017-08-11 09:55:21',1,NULL,'abhilash'),(23,'abc@gmail.com','abc@xyz.com','hello',NULL,NULL,NULL,1,'2017-08-11 09:55:21','2017-08-11 09:55:47',2,NULL,'abhilash'),(24,'abc@xyz.com','abc@gmail.com','yeah listning\n	2017-08-11T09:55:21.000Z < abc@xyz.com > wrote: \n	hello',1,NULL,NULL,NULL,'2017-08-11 09:56:02','2017-08-11 09:56:02',2,NULL,'abhilash'),(25,'abc@xyz.com','abc@gmail.com','yeah listning\n	2017-08-11T09:55:21.000Z < abc@xyz.com > wrote: \n	hello',NULL,NULL,NULL,1,'2017-08-11 09:56:02','2017-08-11 09:56:16',1,NULL,'abhilash'),(26,'abc@gmail.com','abc@xyz.com','hello there',1,NULL,NULL,NULL,'2017-08-11 09:58:02','2017-08-11 09:58:02',1,NULL,'abhilash'),(27,'abc@gmail.com','abc@xyz.com','hello there',NULL,NULL,NULL,1,'2017-08-11 09:58:02','2017-08-11 09:58:33',2,NULL,'abhilash'),(28,'abc@xyz.com','abc@gmail.com','yeah listning\n	2017-08-11T09:58:02.000Z < abc@xyz.com > wrote:\n		hello there',1,NULL,NULL,NULL,'2017-08-11 09:58:45','2017-08-11 09:58:45',2,NULL,'abhilash'),(29,'abc@xyz.com','abc@gmail.com','yeah listning\n	2017-08-11T09:58:02.000Z < abc@xyz.com > wrote:\n		hello there',NULL,NULL,NULL,1,'2017-08-11 09:58:45','2017-08-11 09:59:26',1,NULL,'abhilash'),(30,'abc@gmail.com','abc@xyz.com','jdfhgsdhfgdsjhf\n		2017-08-11T09:58:45.000Z < abc@gmail.com > wrote:\n	yeah listning\n	2017-08-11T09:58:02.000Z < abc@xyz.com > wrote:\n		hello there',1,NULL,NULL,NULL,'2017-08-11 10:02:20','2017-08-11 10:02:20',1,NULL,'abhilash'),(31,'abc@gmail.com','abc@xyz.com','jdfhgsdhfgdsjhf\n		2017-08-11T09:58:45.000Z < abc@gmail.com > wrote:\n	yeah listning\n	2017-08-11T09:58:02.000Z < abc@xyz.com > wrote:\n		hello there',NULL,NULL,NULL,1,'2017-08-11 10:02:20','2017-08-11 10:02:45',2,NULL,'abhilash'),(32,'abc@xyz.com','abc@gmail.com','hello',1,NULL,NULL,NULL,'2017-08-11 10:03:01','2017-08-11 10:03:01',2,NULL,'abhilash'),(33,'abc@xyz.com','abc@gmail.com','hello',NULL,NULL,NULL,1,'2017-08-11 10:03:01','2017-08-11 10:03:24',1,NULL,'abhilash'),(34,'abc@gmail.com','abc@xyz.com','tehe\n	2017-08-11T10:03:01.000Z < abc@gmail.com > wrote:\n		hello',1,NULL,NULL,NULL,'2017-08-11 10:05:21','2017-08-11 10:05:21',1,NULL,'abhilash'),(35,'abc@gmail.com','abc@xyz.com','tehe\n	2017-08-11T10:03:01.000Z < abc@gmail.com > wrote:\n		hello',NULL,NULL,NULL,1,'2017-08-11 10:05:21','2017-08-11 10:05:34',2,NULL,'abhilash'),(36,'abc@xyz.com','abc@gmail.com','abhi',1,NULL,NULL,NULL,'2017-08-11 10:17:08','2017-08-11 10:17:08',2,NULL,'abhilash'),(37,'abc@xyz.com','abc@gmail.com','abhi',NULL,NULL,NULL,1,'2017-08-11 10:17:08','2017-08-11 10:17:22',1,NULL,'abhilash'),(38,'abc@gmail.com','abc@xyz.com','lash\n	2017-08-11T10:17:08.000Z < abc@gmail.com > wrote:\n	abhi',1,NULL,NULL,NULL,'2017-08-11 10:17:31','2017-08-11 10:17:31',1,NULL,'abhilash'),(39,'abc@gmail.com','abc@xyz.com','lash\n	2017-08-11T10:17:08.000Z < abc@gmail.com > wrote:\n	abhi',NULL,NULL,NULL,1,'2017-08-11 10:17:31','2017-08-11 10:17:45',2,NULL,'abhilash'),(40,'abc@xyz.com','abc@gmail.com','sjhgdjfs\n	2017-08-11T10:17:31.000Z < abc@xyz.com > wrote:\n	lash\n		2017-08-11T10:17:08.000Z < abc@gmail.com > wrote:\n	abhi',1,NULL,NULL,NULL,'2017-08-11 10:34:30','2017-08-11 10:34:30',2,NULL,'abhilash'),(41,'abc@xyz.com','abc@gmail.com','sjhgdjfs\n	2017-08-11T10:17:31.000Z < abc@xyz.com > wrote:\n	lash\n		2017-08-11T10:17:08.000Z < abc@gmail.com > wrote:\n	abhi',NULL,NULL,NULL,1,'2017-08-11 10:34:30','2017-08-11 10:34:56',1,NULL,'abhilash'),(42,'abc@gmail.com','abc@xyz.com','abhi',1,NULL,NULL,NULL,'2017-08-11 10:35:57','2017-08-11 10:35:57',1,NULL,'abhilash'),(43,'abc@gmail.com','abc@xyz.com','abhi',NULL,NULL,NULL,1,'2017-08-11 10:35:57','2017-08-11 10:36:08',2,NULL,'abhilash'),(44,'abc@xyz.com','abc@gmail.com','lash\n	2017-08-11T10:35:57.000Z < abc@xyz.com > wrote:\n	abhi',1,NULL,NULL,NULL,'2017-08-11 10:38:00','2017-08-11 10:38:00',2,NULL,'abhilash'),(45,'abc@xyz.com','abc@gmail.com','lash\n	2017-08-11T10:35:57.000Z < abc@xyz.com > wrote:\n	abhi',NULL,NULL,NULL,1,'2017-08-11 10:38:00','2017-08-11 10:38:14',1,NULL,'abhilash'),(46,'abc@gmail.com','abc@xyz.com','sjfhsdjfsd\n	2017-08-11T10:38:00.000Z < abc@gmail.com > wrote:\n	lash\n		2017-08-11T10:35:57.000Z < abc@xyz.com > wrote:\n	abhi',1,NULL,NULL,NULL,'2017-08-11 10:49:24','2017-08-11 10:49:24',1,NULL,'abhilash'),(47,'abc@gmail.com','abc@xyz.com','sjfhsdjfsd\n	2017-08-11T10:38:00.000Z < abc@gmail.com > wrote:\n	lash\n		2017-08-11T10:35:57.000Z < abc@xyz.com > wrote:\n	abhi',NULL,NULL,NULL,1,'2017-08-11 10:49:24','2017-08-11 10:49:37',2,NULL,'abhilash'),(48,'abc@gmail.com','abc@gmail.com','test',1,NULL,NULL,NULL,'2017-08-11 10:58:44','2017-08-11 10:58:44',2,NULL,'test'),(49,'abc@gmail.com','abc@gmail.com','test',NULL,NULL,NULL,1,'2017-08-11 10:58:44','2017-08-11 10:58:48',2,NULL,'test'),(50,'abc@gmail.com','abc@gmail.com','dhfjdsfsd\n	2017-08-11T10:58:44.000Z < abc@gmail.com > wrote:\n	test',1,NULL,NULL,NULL,'2017-08-11 10:59:00','2017-08-11 10:59:00',2,NULL,'test'),(51,'abc@gmail.com','abc@gmail.com','dhfjdsfsd\n	2017-08-11T10:58:44.000Z < abc@gmail.com > wrote:\n	test',NULL,NULL,NULL,1,'2017-08-11 10:59:01','2017-08-11 10:59:02',2,NULL,'test'),(52,'abc@gmail.com','abc@gmail.com','2017-08-11T10:59:01.000Z < abc@gmail.com > wrote:\n	dhfjdsfsd\n		2017-08-11T10:58:44.000Z < abc@gmail.com > wrote:\n	        test',1,NULL,NULL,NULL,'2017-08-11 11:07:51','2017-08-11 11:07:51',2,NULL,'test'),(53,'abc@gmail.com','abc@gmail.com','2017-08-11T10:59:01.000Z < abc@gmail.com > wrote:\n	dhfjdsfsd\n		2017-08-11T10:58:44.000Z < abc@gmail.com > wrote:\n	        test',NULL,NULL,NULL,1,'2017-08-11 11:07:51','2017-08-11 11:08:24',2,NULL,'test'),(54,'abc@gmail.com','abc@gmail.com','test',1,NULL,NULL,NULL,'2017-08-11 11:11:38','2017-08-11 11:11:38',2,NULL,'test'),(55,'abc@gmail.com','abc@gmail.com','test',NULL,NULL,NULL,1,'2017-08-11 11:11:38','2017-08-11 11:11:42',2,NULL,'test'),(56,'abc@gmail.com','abc@gmail.com','test2\n	2017-08-11T11:11:38.000Z < abc@gmail.com > wrote:\n	test',1,NULL,NULL,NULL,'2017-08-11 11:12:04','2017-08-11 11:12:04',2,NULL,'test'),(57,'abc@gmail.com','abc@gmail.com','test2\n	2017-08-11T11:11:38.000Z < abc@gmail.com > wrote:\n	test',NULL,NULL,NULL,1,'2017-08-11 11:12:04','2017-08-11 11:12:06',2,NULL,'test'),(58,'abc@gmail.com','abc@gmail.com','test1',1,NULL,NULL,NULL,'2017-08-11 11:22:50','2017-08-11 11:22:50',2,NULL,'test'),(59,'abc@gmail.com','abc@gmail.com','test1',NULL,NULL,NULL,1,'2017-08-11 11:22:50','2017-08-11 11:22:58',2,NULL,'test'),(60,'abc@gmail.com','abc@gmail.com','test2\n	2017-08-11T11:22:50.000Z < abc@gmail.com > wrote:\n	test1',1,NULL,NULL,NULL,'2017-08-11 11:23:09','2017-08-11 11:23:09',2,NULL,'test'),(61,'abc@gmail.com','abc@gmail.com','test2\n	2017-08-11T11:22:50.000Z < abc@gmail.com > wrote:\n	test1',NULL,NULL,NULL,1,'2017-08-11 11:23:09','2017-08-11 11:23:11',2,NULL,'test');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160419182357'),('20170810052711'),('20170810071400'),('20170810071809'),('20170810105300');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abc@xyz.com','$2a$10$cJ2SvrR1p6VP5AAkbamPQ.2T6soJM4LvLsz.ihKG79grywe./IN/S',NULL,'2017-08-10 05:36:20','2017-08-10 05:36:20','57631d2b1c63992b35737235583b8e80'),(2,'abc@gmail.com','$2a$10$KchYQCM3NyII7MPg1rYxr.Z2NNgfzRFo/vPgrxXtMFl2BxUsIUT5K',NULL,'2017-08-10 09:25:25','2017-08-10 09:25:25','27c7c51e1e7506a44e47c0cd588cbdb3');
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

-- Dump completed on 2017-08-11 17:40:18
