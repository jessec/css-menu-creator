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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `css`
--

LOCK TABLES `css` WRITE;
/*!40000 ALTER TABLE `css` DISABLE KEYS */;
INSERT INTO `css` VALUES (4,'choose name','		\n/*vertical-menu*/\n/*Credits: Dynamic Drive CSS Library */\n/*URL: http://www.dynamicdrive.com/style/ */\n.sidebarmenu0 ul {\n    margin: 0;\n    padding: 0;\n    list-style-type: none;\n    font: bold 13px Verdana;\n    width: 180px; /* Main Menu Item widths */\n    border-bottom: 1px solid #ccc;\n}\n\n.sidebarmenu0 ul li {\n    position: relative;\n}\n\n/* Top level menu links style */\n.sidebarmenu0 ul li a {\n    display: block;\n    overflow: auto; /*force hasLayout in IE7 */\n    color: white;\n    text-decoration: none;\n    padding: 6px;\n    border-bottom: 1px solid #778;\n    border-right: 1px solid #778;\n}\n\n.sidebarmenu0 ul li a:link, .sidebarmenu0 ul li a:visited, .sidebarmenu0 ul li a:active {\n    background-color: #012D58; /*background of tabs (default state)*/\n}\n\n.sidebarmenu0 ul li a:visited {\n    color: white;\n}\n\n.sidebarmenu0 ul li a:hover {\n    background-color: black;\n}\n\n/*Sub level menu items */\n.sidebarmenu0 ul li ul {\n    position: absolute;\n    width: 170px; /*Sub Menu Items width */\n    top: 0;\n    visibility: hidden;\n}\n\n.sidebarmenu0 a.subfolderstyle {\n    background: url(right.gif) no-repeat 97% 50%;\n}\n\n/* Holly Hack for IE */ * html .sidebarmenu0 ul li {\n    float: left;\n    height: 1%;\n}\n* html .sidebarmenu0 ul li a {\n    height: 1%;\n}\n\n\n\n		',0,0),(5,'choose name','		\n/*vertical-menu*/\n/*Credits: Dynamic Drive CSS Library */\n/*URL: http://www.dynamicdrive.com/style/ */\n.sidebarmenu22 ul {\n    margin: 0;\n    padding: 0;\n    list-style-type: none;\n    font: bold 13px Verdana;\n    width: 180px; /* Main Menu Item widths */\n    border-bottom: 1px solid #ccc;\n}\n\n.sidebarmenu22 ul li {\n    position: relative;\n}\n\n/* Top level menu links style */\n.sidebarmenu22 ul li a {\n    display: block;\n    overflow: auto; /*force hasLayout in IE7 */\n    color: white;\n    text-decoration: none;\n    padding: 6px;\n    border-bottom: 1px solid #778;\n    border-right: 1px solid #778;\n}\n\n.sidebarmenu22 ul li a:link, .sidebarmenu22 ul li a:visited, .sidebarmenu22 ul li a:active {\n    background-color: #012D58; /*background of tabs (default state)*/\n}\n\n.sidebarmenu22 ul li a:visited {\n    color: white;\n}\n\n.sidebarmenu22 ul li a:hover {\n    background-color: black;\n}\n\n/*Sub level menu items */\n.sidebarmenu22 ul li ul {\n    position: absolute;\n    width: 170px; /*Sub Menu Items width */\n    top: 0;\n    visibility: hidden;\n}\n\n.sidebarmenu22 a.subfolderstyle {\n    background: url(right.gif) no-repeat 97% 50%;\n}\n\n/* Holly Hack for IE */ * html .sidebarmenu22 ul li {\n    float: left;\n    height: 1%;\n}\n* html .sidebarmenu22 ul li a {\n    height: 1%;\n}\n\n\n\n		',0,22),(3,'choose name','		\r\n/*horizontal-menu*/\r\n#myslidemenu0{\r\nposition:relative;\r\nwidth:100%;\r\n}\r\n.jqueryslidemenu0{\r\nfont: bold 12px Verdana;\r\nbackground: transparent; /* #ccc*/\r\nwidth: 100%;\r\n}\r\n\r\n.jqueryslidemenu0 ul{\r\nmargin: 0;\r\npadding: 0;\r\nlist-style-type: none;\r\n}\r\n\r\n/*Top level list items*/\r\n.jqueryslidemenu0 ul li{\r\nposition: relative;\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n/*Top level menu link items style*/\r\n.jqueryslidemenu0 ul li a{\r\ndisplay: block;\r\nbackground: #414141; /*background of tabs (default state)*/\r\ncolor: white;\r\npadding: 8px 10px;\r\nborder-right: 1px solid #778;\r\ncolor: #2d2b2b;\r\ntext-decoration: none;\r\n}\r\n\r\n* html .jqueryslidemenu0 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\r\ndisplay: inline-block;\r\n}\r\n\r\n.jqueryslidemenu0 ul li a:link, .jqueryslidemenu0 ul li a:visited{\r\ncolor: white;\r\n}\r\n\r\n.jqueryslidemenu0 ul li a:hover{\r\nbackground: black; /*tab link background during hover state*/\r\ncolor: white;\r\n}\r\n	\r\n/*1st sub level menu*/\r\n.jqueryslidemenu0 ul li ul{\r\nposition: absolute;\r\nleft: 0;\r\ndisplay: block;\r\nvisibility: hidden;\r\n}\r\n\r\n/*Sub level menu list items (undo style from Top level List Items)*/\r\n.jqueryslidemenu0 ul li ul li{\r\ndisplay: list-item;\r\nfloat: none;\r\n}\r\n\r\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\r\n.jqueryslidemenu0 ul li ul li ul{\r\ntop: 0;\r\n}\r\n\r\n/* Sub level menu links style */\r\n.jqueryslidemenu0 ul li ul li a{\r\nfont: normal 13px Verdana;\r\nwidth: 160px; /*width of sub menus*/\r\npadding: 5px;\r\nmargin: 0;\r\nborder-top-width: 0;\r\nborder-bottom: 1px solid gray;\r\n}\r\n\r\n.jqueryslidemenu0 ul li ul li a:hover{ /*sub menus hover style*/\r\nbackground: #ccc;\r\ncolor: black;\r\n}\r\n\r\n/* ######### CSS classes applied to down and right arrow images  ######### */\r\n\r\n.downarrowclass{\r\nposition: absolute;\r\ntop: 12px;\r\nright: 7px;\r\n}\r\n\r\n.rightarrowclass{\r\nposition: absolute;\r\ntop: 6px;\r\nright: 5px;\r\n}\r\n		\r\n		\r\n',1,0),(6,'choose name','		\n/*horizontal-menu*/\n#myslidemenu22{\nposition:relative;\nwidth:100%;\n}\n.jqueryslidemenu22{\nfont: bold 12px Verdana;\nbackground: transparent; /* #ccc*/\nwidth: 100%;\n}\n\n.jqueryslidemenu22 ul{\nmargin: 0;\npadding: 0;\nlist-style-type: none;\n}\n\n/*Top level list items*/\n.jqueryslidemenu22 ul li{\nposition: relative;\ndisplay: inline;\nfloat: left;\n}\n\n/*Top level menu link items style*/\n.jqueryslidemenu22 ul li a{\ndisplay: block;\nbackground: #414141; /*background of tabs (default state)*/\ncolor: white;\npadding: 8px 10px;\nborder-right: 1px solid #778;\ncolor: #2d2b2b;\ntext-decoration: none;\n}\n\n* html .jqueryslidemenu22 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\ndisplay: inline-block;\n}\n\n.jqueryslidemenu22 ul li a:link, .jqueryslidemenu22 ul li a:visited{\ncolor: white;\n}\n\n.jqueryslidemenu22 ul li a:hover{\nbackground: black; /*tab link background during hover state*/\ncolor: white;\n}\n	\n/*1st sub level menu*/\n.jqueryslidemenu22 ul li ul{\nposition: absolute;\nleft: 0;\ndisplay: block;\nvisibility: hidden;\n}\n\n/*Sub level menu list items (undo style from Top level List Items)*/\n.jqueryslidemenu22 ul li ul li{\ndisplay: list-item;\nfloat: none;\n}\n\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\n.jqueryslidemenu22 ul li ul li ul{\ntop: 0;\n}\n\n/* Sub level menu links style */\n.jqueryslidemenu22 ul li ul li a{\nfont: normal 13px Verdana;\nwidth: 160px; /*width of sub menus*/\npadding: 5px;\nmargin: 0;\nborder-top-width: 0;\nborder-bottom: 1px solid gray;\n}\n\n.jqueryslidemenu22 ul li ul li a:hover{ /*sub menus hover style*/\nbackground: #ccc;\ncolor: black;\n}\n\n/* ######### CSS classes applied to down and right arrow images  ######### */\n\n.downarrowclass{\nposition: absolute;\ntop: 12px;\nright: 7px;\n}\n\n.rightarrowclass{\nposition: absolute;\ntop: 6px;\nright: 5px;\n}\n		\n		',1,22),(7,'choose name','		\n/*vertical-menu*/\n/*Credits: Dynamic Drive CSS Library */\n/*URL: http://www.dynamicdrive.com/style/ */\n.sidebarmenu9 ul {\n    margin: 0;\n    padding: 0;\n    list-style-type: none;\n    font: bold 13px Verdana;\n    width: 180px; /* Main Menu Item widths */\n    border-bottom: 1px solid #ccc;\n}\n\n.sidebarmenu9 ul li {\n    position: relative;\n}\n\n/* Top level menu links style */\n.sidebarmenu9 ul li a {\n    display: block;\n    overflow: auto; /*force hasLayout in IE7 */\n    color: white;\n    text-decoration: none;\n    padding: 6px;\n    border-bottom: 1px solid #778;\n    border-right: 1px solid #778;\n}\n\n.sidebarmenu9 ul li a:link, .sidebarmenu9 ul li a:visited, .sidebarmenu9 ul li a:active {\n    background-color: #012D58; /*background of tabs (default state)*/\n}\n\n.sidebarmenu9 ul li a:visited {\n    color: white;\n}\n\n.sidebarmenu9 ul li a:hover {\n    background-color: black;\n}\n\n/*Sub level menu items */\n.sidebarmenu9 ul li ul {\n    position: absolute;\n    width: 170px; /*Sub Menu Items width */\n    top: 0;\n    visibility: hidden;\n}\n\n.sidebarmenu9 a.subfolderstyle {\n    background: url(right.gif) no-repeat 97% 50%;\n}\n\n/* Holly Hack for IE */ * html .sidebarmenu9 ul li {\n    float: left;\n    height: 1%;\n}\n* html .sidebarmenu9 ul li a {\n    height: 1%;\n}\n\n\n\n		',0,9),(8,'choose name','		\r\n/*horizontal-menu*/\r\n#myslidemenu9{\r\nposition:relative;\r\nwidth:100%;\r\n}\r\n.jqueryslidemenu9{\r\nfont: bold 12px Verdana;\r\nbackground: transparent; /* #ccc*/\r\nwidth: 100%;\r\n}\r\n\r\n.jqueryslidemenu9 ul{\r\nmargin: 0;\r\npadding: 0;\r\nlist-style-type: none;\r\n}\r\n\r\n/*Top level list items*/\r\n.jqueryslidemenu9 ul li{\r\nposition: relative;\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n/*Top level menu link items style*/\r\n.jqueryslidemenu9 ul li a{\r\ndisplay: block;\r\nbackground: #414141; /*background of tabs (default state)*/\r\ncolor: white;\r\npadding: 8px 10px;\r\nborder-right: 1px solid #778;\r\ncolor: #2d2b2b;\r\ntext-decoration: none;\r\n}\r\n\r\n* html .jqueryslidemenu9 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\r\ndisplay: inline-block;\r\n}\r\n\r\n.jqueryslidemenu9 ul li a:link, .jqueryslidemenu9 ul li a:visited{\r\ncolor: white;\r\n}\r\n\r\n.jqueryslidemenu9 ul li a:hover{\r\nbackground: black; /*tab link background during hover state*/\r\ncolor: white;\r\n}\r\n	\r\n/*1st sub level menu*/\r\n.jqueryslidemenu9 ul li ul{\r\nposition: absolute;\r\nleft: 0;\r\ndisplay: block;\r\nvisibility: hidden;\r\n}\r\n\r\n/*Sub level menu list items (undo style from Top level List Items)*/\r\n.jqueryslidemenu9 ul li ul li{\r\ndisplay: list-item;\r\nfloat: none;\r\n}\r\n\r\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\r\n.jqueryslidemenu9 ul li ul li ul{\r\ntop: 0;\r\n}\r\n\r\n/* Sub level menu links style */\r\n.jqueryslidemenu9 ul li ul li a{\r\nfont: normal 13px Verdana;\r\nwidth: 160px; /*width of sub menus*/\r\npadding: 5px;\r\nmargin: 0;\r\nborder-top-width: 0;\r\nborder-bottom: 1px solid gray;\r\n}\r\n\r\n.jqueryslidemenu9 ul li ul li a:hover{ /*sub menus hover style*/\r\nbackground: #ccc;\r\ncolor: black;\r\n}\r\n\r\n/* ######### CSS classes applied to down and right arrow images  ######### */\r\n\r\n.downarrowclass{\r\nposition: absolute;\r\ntop: 12px;\r\nright: 7px;\r\n}\r\n\r\n.rightarrowclass{\r\nposition: absolute;\r\ntop: 6px;\r\nright: 5px;\r\n}\r\n		\r\n		\r\n\r\n\r\n',1,9),(9,'choose name','		\n/*horizontal-menu*/\n#myslidemenu19{\nposition:relative;\nwidth:100%;\n}\n.jqueryslidemenu19{\nfont: bold 12px Verdana;\nbackground: transparent; /* #ccc*/\nwidth: 100%;\n}\n\n.jqueryslidemenu19 ul{\nmargin: 0;\npadding: 0;\nlist-style-type: none;\n}\n\n/*Top level list items*/\n.jqueryslidemenu19 ul li{\nposition: relative;\ndisplay: inline;\nfloat: left;\n}\n\n/*Top level menu link items style*/\n.jqueryslidemenu19 ul li a{\ndisplay: block;\nbackground: #414141; /*background of tabs (default state)*/\ncolor: white;\npadding: 8px 10px;\nborder-right: 1px solid #778;\ncolor: #2d2b2b;\ntext-decoration: none;\n}\n\n* html .jqueryslidemenu19 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\ndisplay: inline-block;\n}\n\n.jqueryslidemenu19 ul li a:link, .jqueryslidemenu19 ul li a:visited{\ncolor: white;\n}\n\n.jqueryslidemenu19 ul li a:hover{\nbackground: black; /*tab link background during hover state*/\ncolor: white;\n}\n	\n/*1st sub level menu*/\n.jqueryslidemenu19 ul li ul{\nposition: absolute;\nleft: 0;\ndisplay: block;\nvisibility: hidden;\n}\n\n/*Sub level menu list items (undo style from Top level List Items)*/\n.jqueryslidemenu19 ul li ul li{\ndisplay: list-item;\nfloat: none;\n}\n\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\n.jqueryslidemenu19 ul li ul li ul{\ntop: 0;\n}\n\n/* Sub level menu links style */\n.jqueryslidemenu19 ul li ul li a{\nfont: normal 13px Verdana;\nwidth: 160px; /*width of sub menus*/\npadding: 5px;\nmargin: 0;\nborder-top-width: 0;\nborder-bottom: 1px solid gray;\n}\n\n.jqueryslidemenu19 ul li ul li a:hover{ /*sub menus hover style*/\nbackground: #ccc;\ncolor: black;\n}\n\n/* ######### CSS classes applied to down and right arrow images  ######### */\n\n.downarrowclass{\nposition: absolute;\ntop: 12px;\nright: 7px;\n}\n\n.rightarrowclass{\nposition: absolute;\ntop: 6px;\nright: 5px;\n}\n		\n		',1,19),(10,'choose name','		\n/*horizontal-menu*/\n#myslidemenu7{\nposition:relative;\nwidth:100%;\n}\n.jqueryslidemenu7{\nfont: bold 12px Verdana;\nbackground: transparent; /* #ccc*/\nwidth: 100%;\n}\n\n.jqueryslidemenu7 ul{\nmargin: 0;\npadding: 0;\nlist-style-type: none;\n}\n\n/*Top level list items*/\n.jqueryslidemenu7 ul li{\nposition: relative;\ndisplay: inline;\nfloat: left;\n}\n\n/*Top level menu link items style*/\n.jqueryslidemenu7 ul li a{\ndisplay: block;\nbackground: #414141; /*background of tabs (default state)*/\ncolor: white;\npadding: 8px 10px;\nborder-right: 1px solid #778;\ncolor: #2d2b2b;\ntext-decoration: none;\n}\n\n* html .jqueryslidemenu7 ul li a{ /*IE6 hack to get sub menu links to behave correctly*/\ndisplay: inline-block;\n}\n\n.jqueryslidemenu7 ul li a:link, .jqueryslidemenu7 ul li a:visited{\ncolor: white;\n}\n\n.jqueryslidemenu7 ul li a:hover{\nbackground: black; /*tab link background during hover state*/\ncolor: white;\n}\n	\n/*1st sub level menu*/\n.jqueryslidemenu7 ul li ul{\nposition: absolute;\nleft: 0;\ndisplay: block;\nvisibility: hidden;\n}\n\n/*Sub level menu list items (undo style from Top level List Items)*/\n.jqueryslidemenu7 ul li ul li{\ndisplay: list-item;\nfloat: none;\n}\n\n/*All subsequent sub menu levels vertical offset after 1st level sub menu */\n.jqueryslidemenu7 ul li ul li ul{\ntop: 0;\n}\n\n/* Sub level menu links style */\n.jqueryslidemenu7 ul li ul li a{\nfont: normal 13px Verdana;\nwidth: 160px; /*width of sub menus*/\npadding: 5px;\nmargin: 0;\nborder-top-width: 0;\nborder-bottom: 1px solid gray;\n}\n\n.jqueryslidemenu7 ul li ul li a:hover{ /*sub menus hover style*/\nbackground: #ccc;\ncolor: black;\n}\n\n/* ######### CSS classes applied to down and right arrow images  ######### */\n\n.downarrowclass{\nposition: absolute;\ntop: 12px;\nright: 7px;\n}\n\n.rightarrowclass{\nposition: absolute;\ntop: 6px;\nright: 5px;\n}\n		\n		',1,7);
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
INSERT INTO `tree_elements` VALUES (1,'good',1,7,'0',NULL,NULL,2,NULL,'0',NULL),(2,'testdasfaf',0,1,'0',NULL,NULL,2,NULL,'http://devbilling.comadfsadf',NULL),(3,'hihi',1,1,'0',NULL,NULL,2,NULL,' http://devbilling.com/devel/test_tree/menus/test.ph',NULL),(4,'hjkhkl',0,2,'1',NULL,NULL,2,NULL,'test',NULL),(5,'2 third last',0,9,'0',NULL,NULL,0,NULL,'undefined',NULL),(6,'3 second last',0,5,'0',NULL,NULL,0,NULL,'sadf',NULL),(7,'sdf',2,0,'0',NULL,NULL,2,NULL,'dsaf',NULL),(8,'adsf',0,18,'0',NULL,NULL,2,NULL,' ',NULL),(9,'1 first',1,0,'0',NULL,NULL,2,NULL,' ',NULL),(10,'dsaf',0,7,'0',NULL,NULL,2,NULL,' ',NULL),(11,'dfsa',0,8,'0',NULL,NULL,2,NULL,' ',NULL),(12,'sdaf',1,8,'0',NULL,NULL,2,NULL,' ',NULL),(13,'asdf',2,7,'0',NULL,NULL,2,NULL,' ',NULL),(14,'dsaf',1,2,'0',NULL,NULL,2,NULL,' ',NULL),(15,'dfsa',0,10,'0',NULL,NULL,2,NULL,' ',NULL),(16,'dsaf',0,11,'0',NULL,NULL,2,NULL,' ',NULL),(17,'4 last',0,6,'0',NULL,NULL,2,NULL,'dsaf',NULL),(18,'another one',1,9,'0',NULL,NULL,2,NULL,' ',NULL),(19,'afafs',0,3,'0',NULL,NULL,2,NULL,' ',NULL),(20,'dsaf',0,19,'0',NULL,NULL,2,NULL,' ',NULL),(21,'sadf',0,20,'0',NULL,NULL,2,NULL,' ',NULL),(22,'asdf',0,0,'0',NULL,NULL,2,NULL,' ',NULL),(23,'asdfdsaf',0,22,'0',NULL,NULL,2,NULL,' ',NULL);
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

-- Dump completed on 2010-12-19 16:09:56
