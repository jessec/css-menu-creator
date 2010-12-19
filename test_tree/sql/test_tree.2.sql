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
-- Table structure for table `css`
--

DROP TABLE IF EXISTS `css`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `css` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `style` text NOT NULL,
  `menu_type` int(11) NOT NULL,
  `menu_id` int(11) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `css`
--

LOCK TABLES `css` WRITE;
/*!40000 ALTER TABLE `css` DISABLE KEYS */;
INSERT INTO `css` VALUES (1,'choose name','		\r\n/*vertic-menu*/\r\n/*Credits: Dynamic Drive CSS Library */\r\n/*URL: http://www.dynamicdrive.com/style/ */\r\n.sidebarmenu0 ul {\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style-type: none;\r\n    font: bold 13px Verdana;\r\n    width: 180px; /* Main Menu Item widths */\r\n    border-bottom: 1px solid #ccc;\r\n}\r\n\r\n.sidebarmenu0 ul li {\r\n    position: relative;\r\n}\r\n\r\n/* Top level menu links style */\r\n.sidebarmenu0 ul li a {\r\n    display: block;\r\n    overflow: auto; /*force hasLayout in IE7 */\r\n    color: white;\r\n    text-decoration: none;\r\n    padding: 6px;\r\n    border-bottom: 1px solid #778;\r\n    border-right: 1px solid #778;\r\n}\r\n\r\n.sidebarmenu0 ul li a:link, .sidebarmenu0 ul li a:visited, .sidebarmenu0 ul li a:active {\r\n    background-color: #012D58; /*background of tabs (default state)*/\r\n}\r\n\r\n.sidebarmenu0 ul li a:visited {\r\n    color: white;\r\n}\r\n\r\n.sidebarmenu0 ul li a:hover {\r\n    background-color: black;\r\n}\r\n\r\n/*Sub level menu items */\r\n.sidebarmenu0 ul li ul {\r\n    position: absolute;\r\n    width: 170px; /*Sub Menu Items width */\r\n    top: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n.sidebarmenu0 a.subfolderstyle {\r\n    background: url(right.gif) no-repeat 97% 50%;\r\n}\r\n\r\n/* Holly Hack for IE */ * html .sidebarmenu0 ul li {\r\n    float: left;\r\n    height: 1%;\r\n}\r\n* html .sidebarmenu0 ul li a {\r\n    height: 1%;\r\n}\r\n\r\n\r\n\r\n		\r\n\r\n\r\n\r\n\r\n',0,0),(2,'choose name','		\r\n/*horizoal-menu*/\r\n#myslidemenu0{\r\nposition:relative;\r\nwidth:100%;\r\n}\r\n.jqueryslidemenu0{\r\nfont: bold 12px Verdana;\r\nbackground: transparent; /* #ccc*/\r\nwidth: 100%;\r\n}\r\n\r\n.jqueryslidemenu0 ul{\r\nmargin: 0;\r\npadding: 0;\r\nlist-style-type: none;\r\n}\r\n\r\n/*Top level list items*/\r\n.jqueryslidemenu0 ul li{\r\nposition: relative;\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n/*Top level menu link items style*/\r\n.jqueryslidemenu0 ul li a{\r\ndisplay: block;\r\nbackground: #414141; /*background of tabs (default state)*/\r\ncolor: white;\r\npadding: 8px 10px;\r\nborder-right: 1px solid #778;\r\ncolor: #2d2b2b;\r\ntext-decoration: none;\r\n}\r\n\r\n* html .jqueryslidemenu0 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\r\ndisplay: inline-block;\r\n}\r\n\r\n.jqueryslidemenu0 ul li a:link, .jqueryslidemenu0 ul li a:visited{\r\ncolor: white;\r\n}\r\n\r\n.jqueryslidemenu0 ul li a:hover{\r\nbackground: black; /*tab link background during hover state*/\r\ncolor: white;\r\n}\r\n	\r\n/*1st sub level menu*/\r\n.jqueryslidemenu0 ul li ul{\r\nposition: absolute;\r\nleft: 0;\r\ndisplay: block;\r\nvisibility: hidden;\r\n}\r\n\r\n/*Sub level menu list items (undo style from Top level List Items)*/\r\n.jqueryslidemenu0 ul li ul li{\r\ndisplay: list-item;\r\nfloat: none;\r\n}\r\n\r\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\r\n.jqueryslidemenu0 ul li ul li ul{\r\ntop: 0;\r\n}\r\n\r\n/* Sub level menu links style */\r\n.jqueryslidemenu0 ul li ul li a{\r\nfont: normal 13px Verdana;\r\nwidth: 160px; /*width of sub menus*/\r\npadding: 5px;\r\nmargin: 0;\r\nborder-top-width: 0;\r\nborder-bottom: 1px solid gray;\r\n}\r\n\r\n.jqueryslidemenu0 ul li ul li a:hover{ /*sub menus hover style*/\r\nbackground: #ccc;\r\ncolor: black;\r\n}\r\n\r\n/* ######### CSS classes applied to down and right arrow images  ######### */\r\n\r\n.downarrowclass{\r\nposition: absolute;\r\ntop: 12px;\r\nright: 7px;\r\n}\r\n\r\n.rightarrowclass{\r\nposition: absolute;\r\ntop: 6px;\r\nright: 5px;\r\n}\r\n		\r\n		\r\n\r\n\r\n',1,0),(3,'choose name','/*vertical-menu*/\r\n/*Credits: Dynamic Drive CSS Library */\r\n/*URL: http://www.dynamicdrive.com/style/ */\r\n.sidebarmenu19 ul {\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style-type: none;\r\n    font: bold 13px Verdana;\r\n    width: 180px; /* Main Menu Item widths */\r\n    border-bottom: 1px solid #ccc;\r\n}\r\n\r\n.sidebarmenu19 ul li {\r\n    position: relative;\r\n}\r\n\r\n/* Top level menu links style */\r\n.sidebarmenu19 ul li a {\r\n    display: block;\r\n    overflow: auto; /*force hasLayout in IE7 */\r\n    color: white;\r\n    text-decoration: none;\r\n    padding: 6px;\r\n    border-bottom: 1px solid #778;\r\n    border-right: 1px solid #778;\r\n}\r\n\r\n.sidebarmenu19 ul li a:link, .sidebarmenu19 ul li a:visited, .sidebarmenu19 ul li a:active {\r\n    background-color: #012D58; /*background of tabs (default state)*/\r\n}\r\n\r\n.sidebarmenu19 ul li a:visited {\r\n    color: white;\r\n}\r\n\r\n.sidebarmenu19 ul li a:hover {\r\n    background-color: black;\r\n}\r\n\r\n/*Sub level menu items */\r\n.sidebarmenu19 ul li ul {\r\n    position: absolute;\r\n    width: 170px; /*Sub Menu Items width */\r\n    top: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n.sidebarmenu19 a.subfolderstyle {\r\n    background: url(right.gif) no-repeat 97% 50%;\r\n}\r\n\r\n/* Holly Hack for IE */ * html .sidebarmenu19 ul li {\r\n    float: left;\r\n    height: 1%;\r\n}\r\n* html .sidebarmenu19 ul li a {\r\n    height: 1%;\r\n}\r\n\r\n',0,19);
/*!40000 ALTER TABLE `css` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tree_elements`
--

LOCK TABLES `tree_elements` WRITE;
/*!40000 ALTER TABLE `tree_elements` DISABLE KEYS */;
INSERT INTO `tree_elements` VALUES (1,'good',1,7,'0',NULL,NULL,2,NULL,'0',NULL),(2,'testdasfaf',0,1,'0',NULL,NULL,2,NULL,'http://devbilling.comadfsadf',NULL),(3,'hihi',1,1,'0',NULL,NULL,2,NULL,' http://devbilling.com/devel/test_tree/menus/test.ph',NULL),(4,'hjkhkl',0,2,'1',NULL,NULL,2,NULL,'test',NULL),(5,'2 third last',0,9,'0',NULL,NULL,0,NULL,'undefined',NULL),(6,'3 second last',0,5,'0',NULL,NULL,0,NULL,'sadf',NULL),(7,'sdf',1,0,'0',NULL,NULL,2,NULL,'dsaf',NULL),(8,'adsf',0,18,'0',NULL,NULL,2,NULL,' ',NULL),(9,'1 first',0,0,'0',NULL,NULL,2,NULL,' ',NULL),(10,'dsaf',0,7,'0',NULL,NULL,2,NULL,' ',NULL),(11,'dfsa',0,8,'0',NULL,NULL,2,NULL,' ',NULL),(12,'sdaf',1,8,'0',NULL,NULL,2,NULL,' ',NULL),(13,'asdf',2,7,'0',NULL,NULL,2,NULL,' ',NULL),(14,'dsaf',1,2,'0',NULL,NULL,2,NULL,' ',NULL),(15,'dfsa',0,10,'0',NULL,NULL,2,NULL,' ',NULL),(16,'dsaf',0,11,'0',NULL,NULL,2,NULL,' ',NULL),(17,'4 last',0,6,'0',NULL,NULL,2,NULL,'dsaf',NULL),(18,'another one',1,9,'0',NULL,NULL,2,NULL,' ',NULL),(19,'afafs',2,0,'0',NULL,NULL,2,NULL,' ',NULL),(20,'dsaf',0,19,'0',NULL,NULL,2,NULL,' ',NULL),(21,'sadf',0,20,'0',NULL,NULL,2,NULL,' ',NULL),(22,'asdf',3,0,'0',NULL,NULL,2,NULL,' ',NULL),(23,'asdfdsaf',0,22,'0',NULL,NULL,2,NULL,' ',NULL);
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

-- Dump completed on 2010-12-13 17:25:45
