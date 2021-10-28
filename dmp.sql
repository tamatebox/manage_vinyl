-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: manage_vinyl_development
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0ubuntu0.20.04.1
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `ar_internal_metadata`
--
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `ar_internal_metadata`
--
LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */
;
INSERT INTO `ar_internal_metadata`
VALUES (
    'environment',
    'development',
    '2021-05-18 15:18:56.970437',
    '2021-05-18 15:18:56.970437'
  );
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `schema_migrations`
--
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `schema_migrations`
--
LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */
;
INSERT INTO `schema_migrations`
VALUES ('20210518151236'),
  ('20210518155151'),
  ('20210519033732'),
  ('20210519034239'),
  ('20210519035258'),
  ('20210520072713'),
  ('20210520073353'),
  ('20210520073504');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `vinyls`
--
DROP TABLE IF EXISTS `vinyls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `vinyls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alphabet_artist` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `japanese` tinyint(1) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `compilation` tinyint(1) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `artist` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 239 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `vinyls`
--
LOCK TABLES `vinyls` WRITE;
/*!40000 ALTER TABLE `vinyls` DISABLE KEYS */
;
INSERT INTO `vinyls`
VALUES (
    1,
    'Adele',
    '21',
    2011,
    'Pop',
    0,
    12,
    '2020-05-18 15:23:33.894496',
    '2020-05-20 17:20:42.226525',
    '',
    0,
    0,
    'Good Music',
    'Adele'
  );
/*!40000 ALTER TABLE `vinyls` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2021-10-28 20:47:41