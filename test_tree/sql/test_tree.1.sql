-- MySQL dump 10.11
--
-- Host: localhost    Database: test_tree
-- ------------------------------------------------------
-- Server version	5.0.77

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
-- Table structure for table `tree_elements`
--

DROP TABLE IF EXISTS `tree_elements`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tree_elements` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `position` int(10) unsigned NOT NULL default '0',
  `ownerEl` int(10) unsigned NOT NULL default '0' COMMENT 'parent',
  `slave` binary(1) NOT NULL default '0',
  `domain_id` int(11) default NULL,
  `extention_id` int(11) default NULL,
  `type` int(11) default NULL,
  `site_id` int(11) default NULL,
  `url` varchar(200) default NULL,
  `page_id` int(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tree_elements`
--

LOCK TABLES `tree_elements` WRITE;
/*!40000 ALTER TABLE `tree_elements` DISABLE KEYS */;
INSERT INTO `tree_elements` VALUES (1,'asfd',1,0,'0',NULL,NULL,2,NULL,'0',NULL),(2,'testdasfaf',0,1,'0',NULL,NULL,2,NULL,'http://devbilling.comadfsadf',NULL),(3,'hihi',1,1,'0',NULL,NULL,2,NULL,' http://devbilling.com/devel/test_tree/menus/test.ph',NULL),(4,'hjkhkl',0,2,'1',NULL,NULL,2,NULL,'test',NULL),(5,'asdfsad',2,0,'0',NULL,NULL,0,NULL,'undefined',NULL),(6,'ewqr',0,5,'0',NULL,NULL,0,NULL,'sadf',NULL),(7,'sdf',3,0,'0',NULL,NULL,2,NULL,'dsaf',NULL),(8,'adsf',4,0,'0',NULL,NULL,2,NULL,' ',NULL),(9,'men u 9',0,0,'0',NULL,NULL,2,NULL,' ',NULL);
/*!40000 ALTER TABLE `tree_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test_tree'
--
DELIMITER ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-12 18:42:22
