CREATE DATABASE  IF NOT EXISTS `handup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `handup`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: handup
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `tbladverts`
--

DROP TABLE IF EXISTS `tbladverts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladverts` (
  `PKiAdvertID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiProviderID` int(11) NOT NULL,
  `sAdvertURL` varchar(45) DEFAULT NULL,
  `imgAdvertImage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiAdvertID`),
  KEY `FK_AD_PROVIDER_idx` (`FKiProviderID`),
  CONSTRAINT `FK_AD_PROVIDER` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladverts`
--

LOCK TABLES `tbladverts` WRITE;
/*!40000 ALTER TABLE `tbladverts` DISABLE KEYS */;
INSERT INTO `tbladverts` VALUES (1,1,'www.google.co.za','images/AddImages/adGoogle.jpg'),(2,1,'www.youtube.com','images/AddImages/adGoogle.jpg');
/*!40000 ALTER TABLE `tbladverts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemployees` (
  `PKiEmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiProviderID` int(11) NOT NULL,
  `FKiEmployeeType` int(11) NOT NULL,
  `sEmployeeName` varchar(45) DEFAULT NULL,
  `sEmployeeSurname` varchar(45) DEFAULT NULL,
  `sEmployeeID` varchar(45) DEFAULT NULL,
  `sEmployeeEmail` varchar(45) DEFAULT NULL,
  `sEmployeeTel` varchar(45) DEFAULT NULL,
  `sEmployeeAddress1` varchar(45) DEFAULT NULL,
  `sEmployeeAddress2` varchar(45) DEFAULT NULL,
  `sEmployeeAddress3` varchar(45) DEFAULT NULL,
  `sEmployeeNationality` varchar(45) DEFAULT NULL,
  `sUserName` varchar(45) DEFAULT NULL,
  `sPassword` varchar(45) DEFAULT NULL,
  `dtStartDate` datetime DEFAULT NULL,
  `dtEndDate` datetime DEFAULT NULL,
  `bGender` varchar(45) DEFAULT NULL,
  `bActiveStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiEmployeeID`),
  UNIQUE KEY `PKi_tblEmployeesID_UNIQUE` (`PKiEmployeeID`),
  KEY `PKiProviderID_idx` (`FKiProviderID`),
  KEY `FK_EMP_EMPTYPE_idx` (`FKiEmployeeType`),
  CONSTRAINT `FK_EMP_EMPTYPE` FOREIGN KEY (`FKiEmployeeType`) REFERENCES `tblluemployeetype` (`PKiEmployeeTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EMP_PROVIDER` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemployees`
--

LOCK TABLES `tblemployees` WRITE;
/*!40000 ALTER TABLE `tblemployees` DISABLE KEYS */;
INSERT INTO `tblemployees` VALUES (1,1,3,'Carel','Scholtz','1111','carel.c.scholtz@gmail.com','0847938746',NULL,NULL,NULL,'RSA','Carel','Admin',NULL,NULL,NULL,NULL),(2,1,1,'Carine','Krynauw','2222',NULL,NULL,NULL,NULL,NULL,NULL,'Carine','Admin','0001-01-01 00:00:00','0001-01-01 00:00:00','',''),(3,1,2,'Hein','Durow','3333',NULL,NULL,NULL,NULL,NULL,NULL,'Hein','Admin',NULL,NULL,NULL,NULL),(4,1,4,'Admin','Admin','44444',NULL,NULL,NULL,NULL,NULL,NULL,'Admin','Admin','0001-01-01 00:00:00','0001-01-01 00:00:00','',''),(5,1,5,'Kitchen','Kitchen','55555',NULL,NULL,NULL,NULL,NULL,NULL,'Kitchen','Admin',NULL,NULL,NULL,NULL),(6,1,6,'Bar','Bar','6666',NULL,NULL,NULL,NULL,NULL,NULL,'Bar','Admin',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblluemployeetype`
--

DROP TABLE IF EXISTS `tblluemployeetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblluemployeetype` (
  `PKiEmployeeTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `sEmployeeTypeName` varchar(45) DEFAULT NULL,
  `sEmployeeTypeDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiEmployeeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblluemployeetype`
--

LOCK TABLES `tblluemployeetype` WRITE;
/*!40000 ALTER TABLE `tblluemployeetype` DISABLE KEYS */;
INSERT INTO `tblluemployeetype` VALUES (1,'Waiter','Waiter'),(2,'Patron','Patron'),(3,'Processor','Processor'),(4,'Admin','Admin'),(5,'Kitchen','Kitchen'),(6,'Bar','Bar');
/*!40000 ALTER TABLE `tblluemployeetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllumenugroups`
--

DROP TABLE IF EXISTS `tbllumenugroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllumenugroups` (
  `PKiMenuGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `sMenuGroupName` varchar(45) DEFAULT NULL,
  `sMenuGroupDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiMenuGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllumenugroups`
--

LOCK TABLES `tbllumenugroups` WRITE;
/*!40000 ALTER TABLE `tbllumenugroups` DISABLE KEYS */;
INSERT INTO `tbllumenugroups` VALUES (1,'Starters','Starters '),(2,'Drinks','Drinks'),(3,'Main','Main');
/*!40000 ALTER TABLE `tbllumenugroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllusubmenugrouptype`
--

DROP TABLE IF EXISTS `tbllusubmenugrouptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllusubmenugrouptype` (
  `PKiSubMenuGroupTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `sSubMenuGroupTypeName` varchar(45) DEFAULT NULL,
  `sSubMenuGroupTypeDescription` varchar(45) DEFAULT NULL,
  `bActiveStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKiSubMenuGroupTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllusubmenugrouptype`
--

LOCK TABLES `tbllusubmenugrouptype` WRITE;
/*!40000 ALTER TABLE `tbllusubmenugrouptype` DISABLE KEYS */;
INSERT INTO `tbllusubmenugrouptype` VALUES (1,'Prepare','How it should be done, eg:Rare,Meduim or Well',1),(2,'Souces','Souces like Peper, Cheese, ect',1),(3,'Startch','Startch Sides',1);
/*!40000 ALTER TABLE `tbllusubmenugrouptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllusubmenus`
--

DROP TABLE IF EXISTS `tbllusubmenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllusubmenus` (
  `PKiSubMenuID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiMenuID` int(11) NOT NULL,
  `FKiSubMenuGroupTypeID` int(11) NOT NULL,
  `sSubMenuName` varchar(45) DEFAULT NULL,
  `sSubMenuDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiSubMenuID`),
  KEY `index2` (`FKiMenuID`,`FKiSubMenuGroupTypeID`),
  KEY `FK_SUBMENU_GROUP_idx` (`FKiSubMenuGroupTypeID`),
  CONSTRAINT `FK_SUBMENU_GROUP` FOREIGN KEY (`FKiSubMenuGroupTypeID`) REFERENCES `tbllusubmenugrouptype` (`PKiSubMenuGroupTypeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SUBMENU_MENU` FOREIGN KEY (`FKiMenuID`) REFERENCES `tblmenu` (`PKiMenuID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllusubmenus`
--

LOCK TABLES `tbllusubmenus` WRITE;
/*!40000 ALTER TABLE `tbllusubmenus` DISABLE KEYS */;
INSERT INTO `tbllusubmenus` VALUES (1,3,2,'Peper','Peper'),(2,3,2,'Monkeygland','Monkey stuff'),(3,3,3,'Chips','Chips'),(4,3,3,'Baked Patato','Baked'),(5,3,1,'Rare','Bloddy'),(6,3,1,'Med-Rare','Best'),(7,3,1,'Medium','Mmmmm'),(8,3,1,'Well-done','Hit him in the mouth and tell him to f-off');
/*!40000 ALTER TABLE `tbllusubmenus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmenu`
--

DROP TABLE IF EXISTS `tblmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmenu` (
  `PKiMenuID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiProviderID` int(11) NOT NULL,
  `FKiMenuID` int(11) DEFAULT '0',
  `FKiMenuGroupID` int(11) NOT NULL,
  `sMenuItemName` varchar(45) DEFAULT NULL,
  `sMenuItemDescription` varchar(45) DEFAULT NULL,
  `dtMenuItemModified` datetime DEFAULT NULL,
  `dblMenuItemPrice` decimal(10,0) DEFAULT NULL,
  `imgMenuItemImage` varchar(45) DEFAULT NULL,
  `bActiveStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKiMenuID`),
  KEY `index3` (`FKiProviderID`,`FKiMenuGroupID`),
  KEY `FK_MENU_GROUP_idx` (`FKiMenuGroupID`),
  CONSTRAINT `FK_MENU_GROUP` FOREIGN KEY (`FKiMenuGroupID`) REFERENCES `tbllumenugroups` (`PKiMenuGroupID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MENU_PROVIDER` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmenu`
--

LOCK TABLES `tblmenu` WRITE;
/*!40000 ALTER TABLE `tblmenu` DISABLE KEYS */;
INSERT INTO `tblmenu` VALUES (1,1,NULL,1,'Burger','Burger and Chips',NULL,60,'images/MenuImages/Burger.jpg',1),(2,1,NULL,1,'Chips','Chips',NULL,3,'images/MenuImages/Steak.jpg',1),(3,1,NULL,3,'sTEAK','Steak',NULL,45,'images/MenuImages/Burger.jpg',1),(4,1,0,3,'Pasta','Pasta',NULL,49,'images/MenuImages/Steak.jpg',1),(5,1,NULL,2,'Coffee','Coffeee',NULL,15,'images/MenuImages/Steak.jpg',1);
/*!40000 ALTER TABLE `tblmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorders` (
  `PKiOrderID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiProviderID` int(11) NOT NULL,
  `FKiPatronID` int(11) DEFAULT NULL,
  `FKiMenuID` int(11) NOT NULL,
  `FKiTableID` int(11) NOT NULL,
  `FKiMenuGroupID` int(11) DEFAULT NULL,
  `dtOrderDateStamp` datetime DEFAULT NULL,
  `sMenuItemChanges` varchar(255) DEFAULT NULL,
  `sOrderStatus` varchar(45) DEFAULT NULL,
  `dblOrderValue` decimal(10,0) DEFAULT NULL,
  `iBillID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKiOrderID`),
  KEY `FK_ORDER_PROVIDER_idx` (`FKiProviderID`),
  KEY `FK_ORDER_MENU_idx` (`FKiMenuID`),
  KEY `FK_ORDER_TABLE_idx` (`FKiTableID`),
  CONSTRAINT `FK_ORDER_MENU` FOREIGN KEY (`FKiMenuID`) REFERENCES `tblmenu` (`PKiMenuID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_PROVIDER` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_TABLE` FOREIGN KEY (`FKiTableID`) REFERENCES `tbltables` (`PKiTableID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO `tblorders` VALUES (1,1,0,1,1,1,'2015-04-14 13:41:29','wsadfg','4',60,0),(2,1,0,1,1,1,'2015-04-14 13:46:07','asdf','4',60,0),(3,1,0,1,1,1,'2015-04-14 13:47:42','zdfghfdsgh','4',60,0),(4,1,0,1,1,1,'2015-04-15 07:38:34','<br /> CAREL TEXT2<br /> text3<br /> s','4',60,0),(5,1,0,1,1,1,'2015-04-15 07:46:39','<br /> rare','4',60,0),(6,1,0,1,1,1,'2015-04-15 07:49:00','<br /> another','4',60,0),(7,1,0,1,1,1,'2015-04-15 07:57:41','','4',60,0),(8,1,0,1,2,1,'2015-04-15 09:19:16','<br /> zCsDC<br /> ASDaS<br /> ASDAsdas','1',60,0),(9,1,0,3,1,3,'2015-04-17 14:30:26','Peper <br /> carel steakpepper added','4',45,0),(10,1,0,3,1,3,'2015-04-17 14:33:27','Peper <br /> DFASDFASFADFASDFJKSDRFGKLJSERIOTJAWEP','2',45,0),(11,1,0,3,1,3,'2015-04-17 14:35:20','Peper Chips Med-Rare ','4',45,0),(12,1,0,3,1,3,'2015-04-17 14:41:13','<br />Peper <br />Chips <br />Medium ','4',45,0),(13,1,0,3,1,3,'2015-04-17 14:45:54','<br />Monkeygland <br />Chips <br />Med-Rare ','2',45,0),(14,1,0,3,1,3,'2015-04-17 14:55:00','<br /> Peper <br /> Chips <br /> Rare ','4',45,0),(15,1,0,3,1,3,'2015-04-17 14:59:58','<br /> 1 <br /> 1 <br /> 1 <br /> Carel test','2',45,0),(16,1,0,3,1,3,'2015-04-17 15:12:58','<br /> Peper <br /> Baked Patato <br /> 1 ','4',45,0),(17,1,0,3,1,3,'2015-04-17 15:13:39','<br /> Peper <br /> Baked Patato <br /> 1 ','1',45,0),(18,1,0,3,1,3,'2015-04-17 15:25:50','<br /> 1 <br /> 1 <br /> 1 ','1',45,0),(19,1,0,3,1,3,'2015-04-17 15:26:04','<br /> 1 <br /> Baked Patato <br /> Med-Rare ','3',45,0),(20,1,0,3,1,3,'2015-04-17 15:27:48','<br /> Peper <br /> 1 <br /> 1 ','4',45,0),(21,1,0,3,1,3,'2015-04-19 10:16:33','<br /> 1 <br /> 1 <br /> 1 ','1',45,0),(22,1,0,3,1,3,'2015-04-19 11:14:03','<br /> 1 <br /> 1 <br /> 1 ','1',45,0),(23,1,0,3,1,3,'2015-04-19 11:16:01','<br /> 1 <br /> 1 <br /> Rare ','1',45,0),(24,1,0,3,1,3,'2015-04-19 11:18:44','<br /> 1 <br /> 1 <br /> 1 ','1',45,0),(25,1,0,3,1,3,'2015-04-19 11:24:27','<br /> 1 <br /> Chips <br /> 1 ','1',45,0),(26,1,0,3,1,3,'2015-04-19 11:29:36','<br /> Peper <br /> Chips <br /> 1 <br /> Werk<br /> With salad extra<br /> With salad extra','1',45,0),(27,1,0,3,1,3,'2015-04-22 12:53:11','<br /> Peper <br /> Baked Patato <br /> Med-Rare <br /> Cream<br /> Cream','1',45,0),(28,1,0,3,1,3,'2015-04-22 12:55:13','<br /> Peper <br /> Baked Patato <br /> Med-Rare <br /> Crispy','1',45,0),(29,1,0,3,1,3,'2015-04-28 14:37:00','<br /> Monkeygland <br /> Baked Patato <br /> Rare ','1',45,0),(30,1,0,1,4,1,'2015-04-28 14:43:37','','1',60,0),(31,1,0,5,1,2,'2015-04-30 13:37:36','<br /> COld milk. Brown Sugar X 3','1',15,0);
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderssubitems`
--

DROP TABLE IF EXISTS `tblorderssubitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderssubitems` (
  `PKiOrdersSubItemID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiOrdersID` int(11) NOT NULL,
  `FKiMenuID` int(11) NOT NULL,
  PRIMARY KEY (`PKiOrdersSubItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderssubitems`
--

LOCK TABLES `tblorderssubitems` WRITE;
/*!40000 ALTER TABLE `tblorderssubitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorderssubitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpatrons`
--

DROP TABLE IF EXISTS `tblpatrons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpatrons` (
  `PKiPatronID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiProviderID` int(11) NOT NULL,
  `sPatronName` varchar(45) DEFAULT NULL,
  `sPatronSurname` varchar(45) DEFAULT NULL,
  `sPatronContactNumber` varchar(45) DEFAULT NULL,
  `sPatronEmail` varchar(45) DEFAULT NULL,
  `bGender` varchar(45) DEFAULT NULL,
  `dtSignUpDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PKiPatronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpatrons`
--

LOCK TABLES `tblpatrons` WRITE;
/*!40000 ALTER TABLE `tblpatrons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpatrons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproviders`
--

DROP TABLE IF EXISTS `tblproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproviders` (
  `PKiProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `sProviderName` varchar(45) DEFAULT NULL,
  `sProviderLocation` varchar(45) DEFAULT NULL,
  `dtProviderJoined` datetime DEFAULT NULL,
  `sProviderContactPerson` varchar(45) DEFAULT NULL,
  `sProviderContactInfo` varchar(45) DEFAULT NULL,
  `sProviderEmail` varchar(45) DEFAULT NULL,
  `sProviderStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiProviderID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproviders`
--

LOCK TABLES `tblproviders` WRITE;
/*!40000 ALTER TABLE `tblproviders` DISABLE KEYS */;
INSERT INTO `tblproviders` VALUES (1,'HandUp',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblproviders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblspecials`
--

DROP TABLE IF EXISTS `tblspecials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblspecials` (
  `PKiSpecialID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiMenuID` int(11) NOT NULL,
  `dtStartDate` datetime DEFAULT NULL,
  `dtEndDate` datetime DEFAULT NULL,
  `sDaysOfWeek` varchar(45) DEFAULT NULL,
  `tStartTime` varchar(45) DEFAULT NULL,
  `tEndTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiSpecialID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblspecials`
--

LOCK TABLES `tblspecials` WRITE;
/*!40000 ALTER TABLE `tblspecials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblspecials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltablealerts`
--

DROP TABLE IF EXISTS `tbltablealerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltablealerts` (
  `PKiTableAlertsID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiTableID` int(11) NOT NULL,
  `FKiEployeeID` int(11) NOT NULL,
  `dtAlertStartTime` datetime DEFAULT NULL,
  `dtAlertConfimTime` datetime DEFAULT NULL,
  `sAlertMessage` varchar(45) DEFAULT NULL,
  `bActiveStatus` int(11) DEFAULT NULL,
  `sAlertGUI` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`PKiTableAlertsID`),
  KEY `FK_ALERT_EMP_idx` (`FKiEployeeID`),
  KEY `FK_ALERT_TABLE_idx` (`FKiTableID`),
  CONSTRAINT `FK_ALERT_EMP` FOREIGN KEY (`FKiEployeeID`) REFERENCES `tblemployees` (`PKiEmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ALERT_TABLE` FOREIGN KEY (`FKiTableID`) REFERENCES `tbltables` (`PKiTableID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltablealerts`
--

LOCK TABLES `tbltablealerts` WRITE;
/*!40000 ALTER TABLE `tbltablealerts` DISABLE KEYS */;
INSERT INTO `tbltablealerts` VALUES (1,1,2,'2015-04-14 12:52:50','0001-01-01 00:00:00','Table call',0,'QWE'),(2,2,2,NULL,NULL,'Close Bill',1,NULL);
/*!40000 ALTER TABLE `tbltablealerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltables`
--

DROP TABLE IF EXISTS `tbltables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltables` (
  `PKiTableID` int(11) NOT NULL AUTO_INCREMENT,
  `FKiEmployeeID` int(11) NOT NULL,
  `FKiProviderID` int(11) NOT NULL,
  `iGuestNumber` int(11) DEFAULT NULL,
  `dtStartDateTime` datetime DEFAULT NULL,
  `dtEndDateTime` datetime DEFAULT NULL,
  `UIDGenerated` varchar(45) DEFAULT NULL,
  `sTableName` varchar(45) DEFAULT NULL,
  `sTableDescription` varchar(45) DEFAULT NULL,
  `bActiveStatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PKiTableID`),
  KEY `FK_TABLE_EMP_idx` (`FKiEmployeeID`),
  KEY `FK_TABLE_PROVIDER_idx` (`FKiProviderID`),
  CONSTRAINT `FK_TABLE_EMP` FOREIGN KEY (`FKiEmployeeID`) REFERENCES `tblemployees` (`PKiEmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TABLE_PROVIDER` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltables`
--

LOCK TABLES `tbltables` WRITE;
/*!40000 ALTER TABLE `tbltables` DISABLE KEYS */;
INSERT INTO `tbltables` VALUES (1,2,1,1,'2015-04-14 11:29:32','0001-01-01 00:00:00','GUI1','Table1',NULL,1),(2,2,1,4,'2015-04-14 11:29:32','0001-01-01 00:00:00','37ROY','Table2',NULL,1),(3,2,1,6,'2015-04-14 11:31:57','0001-01-01 00:00:00','13HME','Table3',NULL,1),(4,2,1,5,'2015-04-14 11:37:43','0001-01-01 00:00:00','8H5O4','Table4',NULL,1);
/*!40000 ALTER TABLE `tbltables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'handup'
--

--
-- Dumping routines for database 'handup'
--
/*!50003 DROP PROCEDURE IF EXISTS `tbladverts_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbladverts_INSERT`(
IN FKiProviderID Int(11),
IN sAdvertURL VarChar(45),
IN imgAdvertImage VarChar(45),
OUT outPKiAdvertID INTEGER)
BEGIN
	INSERT INTO tbladverts
	(FKiProviderID,sAdvertURL,imgAdvertImage)
	VALUES
	(FKiProviderID,sAdvertURL,imgAdvertImage);
Set outPKiAdvertID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbladverts_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbladverts_UPDATE`(
IN inPKiAdvertID Int(11),
IN inFKiProviderID Int(11),
IN insAdvertURL VarChar(45),
IN inimgAdvertImage VarChar(45)
)
BEGIN
	UPDATE tbladverts
	SET
	FKiProviderID=inFKiProviderID,sAdvertURL=insAdvertURL,imgAdvertImage=inimgAdvertImage
	WHERE PKiAdvertID=inPKiAdvertID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblemployees_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblemployees_INSERT`(
IN FKiProviderID Int(11),
IN FKiEmployeeType Int(11),
IN sEmployeeName VarChar(45),
IN sEmployeeSurname VarChar(45),
IN sEmployeeID VarChar(45),
IN sEmployeeEmail VarChar(45),
IN sEmployeeTel VarChar(45),
IN sEmployeeAddress1 VarChar(45),
IN sEmployeeAddress2 VarChar(45),
IN sEmployeeAddress3 VarChar(45),
IN sEmployeeNationality VarChar(45),
IN sUserName VarChar(45),
IN sPassword VarChar(45),
IN dtStartDate DateTime,
IN dtEndDate DateTime,
IN bGender VarChar(45),
IN bActiveStatus VarChar(45),
OUT outPKiEmployeeID INTEGER)
BEGIN
	INSERT INTO tblemployees
	(FKiProviderID,FKiEmployeeType,sEmployeeName,sEmployeeSurname,sEmployeeID,sEmployeeEmail,sEmployeeTel,sEmployeeAddress1,sEmployeeAddress2,sEmployeeAddress3,sEmployeeNationality,sUserName,sPassword,dtStartDate,dtEndDate,bGender,bActiveStatus)
	VALUES
	(FKiProviderID,FKiEmployeeType,sEmployeeName,sEmployeeSurname,sEmployeeID,sEmployeeEmail,sEmployeeTel,sEmployeeAddress1,sEmployeeAddress2,sEmployeeAddress3,sEmployeeNationality,sUserName,sPassword,dtStartDate,dtEndDate,bGender,bActiveStatus);
Set outPKiEmployeeID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblemployees_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblemployees_UPDATE`(
IN inPKiEmployeeID Int(11),
IN inFKiProviderID Int(11),
IN inFKiEmployeeType Int(11),
IN insEmployeeName VarChar(45),
IN insEmployeeSurname VarChar(45),
IN insEmployeeID VarChar(45),
IN insEmployeeEmail VarChar(45),
IN insEmployeeTel VarChar(45),
IN insEmployeeAddress1 VarChar(45),
IN insEmployeeAddress2 VarChar(45),
IN insEmployeeAddress3 VarChar(45),
IN insEmployeeNationality VarChar(45),
IN insUserName VarChar(45),
IN insPassword VarChar(45),
IN indtStartDate DateTime,
IN indtEndDate DateTime,
IN inbGender VarChar(45),
IN inbActiveStatus VarChar(45)
)
BEGIN
	UPDATE tblemployees
	SET
	FKiProviderID=inFKiProviderID,FKiEmployeeType=inFKiEmployeeType,sEmployeeName=insEmployeeName,sEmployeeSurname=insEmployeeSurname,sEmployeeID=insEmployeeID,sEmployeeEmail=insEmployeeEmail,sEmployeeTel=insEmployeeTel,sEmployeeAddress1=insEmployeeAddress1,sEmployeeAddress2=insEmployeeAddress2,sEmployeeAddress3=insEmployeeAddress3,sEmployeeNationality=insEmployeeNationality,sUserName=insUserName,sPassword=insPassword,dtStartDate=indtStartDate,dtEndDate=indtEndDate,bGender=inbGender,bActiveStatus=inbActiveStatus
	WHERE PKiEmployeeID=inPKiEmployeeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblluemployeetype_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblluemployeetype_INSERT`(
IN sEmployeeTypeName VarChar(45),
IN sEmployeeTypeDescription VarChar(45),
OUT outPKiEmployeeTypeID INTEGER)
BEGIN
	INSERT INTO tblluemployeetype
	(sEmployeeTypeName,sEmployeeTypeDescription)
	VALUES
	(sEmployeeTypeName,sEmployeeTypeDescription);
Set outPKiEmployeeTypeID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblluemployeetype_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblluemployeetype_UPDATE`(
IN inPKiEmployeeTypeID Int(11),
IN insEmployeeTypeName VarChar(45),
IN insEmployeeTypeDescription VarChar(45)
)
BEGIN
	UPDATE tblluemployeetype
	SET
	sEmployeeTypeName=insEmployeeTypeName,sEmployeeTypeDescription=insEmployeeTypeDescription
	WHERE PKiEmployeeTypeID=inPKiEmployeeTypeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllumenugroups_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllumenugroups_INSERT`(
IN sMenuGroupName VarChar(45),
IN sMenuGroupDescription VarChar(45),
OUT outPKiMenuGroupID INTEGER)
BEGIN
	INSERT INTO tbllumenugroups
	(sMenuGroupName,sMenuGroupDescription)
	VALUES
	(sMenuGroupName,sMenuGroupDescription);
Set outPKiMenuGroupID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllumenugroups_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllumenugroups_UPDATE`(
IN inPKiMenuGroupID Int(11),
IN insMenuGroupName VarChar(45),
IN insMenuGroupDescription VarChar(45)
)
BEGIN
	UPDATE tbllumenugroups
	SET
	sMenuGroupName=insMenuGroupName,sMenuGroupDescription=insMenuGroupDescription
	WHERE PKiMenuGroupID=inPKiMenuGroupID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllusubmenugrouptype_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllusubmenugrouptype_INSERT`(
IN sSubMenuGroupTypeName VarChar(45),
IN sSubMenuGroupTypeDescription VarChar(45),
IN bActiveStatus Int(11),
OUT outPKiSubMenuGroupTypeID INTEGER)
BEGIN
	INSERT INTO tbllusubmenugrouptype
	(sSubMenuGroupTypeName,sSubMenuGroupTypeDescription,bActiveStatus)
	VALUES
	(sSubMenuGroupTypeName,sSubMenuGroupTypeDescription,bActiveStatus);
Set outPKiSubMenuGroupTypeID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllusubmenugrouptype_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllusubmenugrouptype_UPDATE`(
IN inPKiSubMenuGroupTypeID Int(11),
IN insSubMenuGroupTypeName VarChar(45),
IN insSubMenuGroupTypeDescription VarChar(45),
IN inbActiveStatus Int(11)
)
BEGIN
	UPDATE tbllusubmenugrouptype
	SET
	sSubMenuGroupTypeName=insSubMenuGroupTypeName,sSubMenuGroupTypeDescription=insSubMenuGroupTypeDescription,bActiveStatus=inbActiveStatus
	WHERE PKiSubMenuGroupTypeID=inPKiSubMenuGroupTypeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllusubmenus_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllusubmenus_INSERT`(
IN FKiMenuID Int(11),
IN FKiSubMenuGroupTypeID Int(11),
IN sSubMenuName VarChar(45),
IN sSubMenuDescription VarChar(45),
OUT outPKiSubMenuID INTEGER)
BEGIN
	INSERT INTO tbllusubmenus
	(FKiMenuID,FKiSubMenuGroupTypeID,sSubMenuName,sSubMenuDescription)
	VALUES
	(FKiMenuID,FKiSubMenuGroupTypeID,sSubMenuName,sSubMenuDescription);
Set outPKiSubMenuID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbllusubmenus_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbllusubmenus_UPDATE`(
IN inPKiSubMenuID Int(11),
IN inFKiMenuID Int(11),
IN inFKiSubMenuGroupTypeID Int(11),
IN insSubMenuName VarChar(45),
IN insSubMenuDescription VarChar(45)
)
BEGIN
	UPDATE tbllusubmenus
	SET
	FKiMenuID=inFKiMenuID,FKiSubMenuGroupTypeID=inFKiSubMenuGroupTypeID,sSubMenuName=insSubMenuName,sSubMenuDescription=insSubMenuDescription
	WHERE PKiSubMenuID=inPKiSubMenuID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblmenu_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblmenu_INSERT`(
IN FKiProviderID Int(11),
IN FKiMenuID Int(11),
IN FKiMenuGroupID Int(11),
IN sMenuItemName VarChar(45),
IN sMenuItemDescription VarChar(45),
IN dtMenuItemModified DateTime,
IN dblMenuItemPrice Decimal(11,0),
IN imgMenuItemImage VarChar(45),
IN bActiveStatus Int(11),
OUT outPKiMenuID INTEGER)
BEGIN
	INSERT INTO tblmenu
	(FKiProviderID,FKiMenuID,FKiMenuGroupID,sMenuItemName,sMenuItemDescription,dtMenuItemModified,dblMenuItemPrice,imgMenuItemImage,bActiveStatus)
	VALUES
	(FKiProviderID,FKiMenuID,FKiMenuGroupID,sMenuItemName,sMenuItemDescription,dtMenuItemModified,dblMenuItemPrice,imgMenuItemImage,bActiveStatus);
Set outPKiMenuID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblmenu_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblmenu_UPDATE`(
IN inPKiMenuID Int(11),
IN inFKiProviderID Int(11),
IN inFKiMenuID Int(11),
IN inFKiMenuGroupID Int(11),
IN insMenuItemName VarChar(45),
IN insMenuItemDescription VarChar(45),
IN indtMenuItemModified DateTime,
IN indblMenuItemPrice Decimal(11,0),
IN inimgMenuItemImage VarChar(45),
IN inbActiveStatus Int(11)
)
BEGIN
	UPDATE tblmenu
	SET
	FKiProviderID=inFKiProviderID,FKiMenuID=inFKiMenuID,FKiMenuGroupID=inFKiMenuGroupID,sMenuItemName=insMenuItemName,sMenuItemDescription=insMenuItemDescription,dtMenuItemModified=indtMenuItemModified,dblMenuItemPrice=indblMenuItemPrice,imgMenuItemImage=inimgMenuItemImage,bActiveStatus=inbActiveStatus
	WHERE PKiMenuID=inPKiMenuID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblorderssubitems_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblorderssubitems_INSERT`(
IN FKiOrdersID Int(11),
IN FKiMenuID Int(11),
OUT outPKiOrdersSubItemID INTEGER)
BEGIN
	INSERT INTO tblorderssubitems
	(FKiOrdersID,FKiMenuID)
	VALUES
	(FKiOrdersID,FKiMenuID);
Set outPKiOrdersSubItemID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblorderssubitems_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblorderssubitems_UPDATE`(
IN inPKiOrdersSubItemID Int(11),
IN inFKiOrdersID Int(11),
IN inFKiMenuID Int(11)
)
BEGIN
	UPDATE tblorderssubitems
	SET
	FKiOrdersID=inFKiOrdersID,FKiMenuID=inFKiMenuID
	WHERE PKiOrdersSubItemID=inPKiOrdersSubItemID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblorders_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblorders_INSERT`(
IN FKiProviderID Int(11),
IN FKiPatronID Int(11),
IN FKiMenuID Int(11),
IN FKiTableID Int(11),
IN FKiMenuGroupID Int(11),
IN dtOrderDateStamp DateTime,
IN sMenuItemChanges VarChar(255),
IN sOrderStatus VarChar(45),
IN dblOrderValue Decimal(11,0),
IN iBillID Int(11),
OUT outPKiOrderID INTEGER)
BEGIN
	INSERT INTO tblorders
	(FKiProviderID,FKiPatronID,FKiMenuID,FKiTableID,FKiMenuGroupID,dtOrderDateStamp,sMenuItemChanges,sOrderStatus,dblOrderValue,iBillID)
	VALUES
	(FKiProviderID,FKiPatronID,FKiMenuID,FKiTableID,FKiMenuGroupID,dtOrderDateStamp,sMenuItemChanges,sOrderStatus,dblOrderValue,iBillID);
Set outPKiOrderID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblorders_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblorders_UPDATE`(
IN inPKiOrderID Int(11),
IN inFKiProviderID Int(11),
IN inFKiPatronID Int(11),
IN inFKiMenuID Int(11),
IN inFKiTableID Int(11),
IN inFKiMenuGroupID Int(11),
IN indtOrderDateStamp DateTime,
IN insMenuItemChanges VarChar(255),
IN insOrderStatus VarChar(45),
IN indblOrderValue Decimal(11,0),
IN iniBillID Int(11)
)
BEGIN
	UPDATE tblorders
	SET
	FKiProviderID=inFKiProviderID,FKiPatronID=inFKiPatronID,FKiMenuID=inFKiMenuID,FKiTableID=inFKiTableID,FKiMenuGroupID=inFKiMenuGroupID,dtOrderDateStamp=indtOrderDateStamp,sMenuItemChanges=insMenuItemChanges,sOrderStatus=insOrderStatus,dblOrderValue=indblOrderValue,iBillID=iniBillID
	WHERE PKiOrderID=inPKiOrderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblpatrons_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblpatrons_INSERT`(
IN FKiProviderID Int(11),
IN sPatronName VarChar(45),
IN sPatronSurname VarChar(45),
IN sPatronContactNumber VarChar(45),
IN sPatronEmail VarChar(45),
IN bGender VarChar(45),
IN dtSignUpDate DateTime,
OUT outPKiPatronID INTEGER)
BEGIN
	INSERT INTO tblpatrons
	(FKiProviderID,sPatronName,sPatronSurname,sPatronContactNumber,sPatronEmail,bGender,dtSignUpDate)
	VALUES
	(FKiProviderID,sPatronName,sPatronSurname,sPatronContactNumber,sPatronEmail,bGender,dtSignUpDate);
Set outPKiPatronID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblpatrons_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblpatrons_UPDATE`(
IN inPKiPatronID Int(11),
IN inFKiProviderID Int(11),
IN insPatronName VarChar(45),
IN insPatronSurname VarChar(45),
IN insPatronContactNumber VarChar(45),
IN insPatronEmail VarChar(45),
IN inbGender VarChar(45),
IN indtSignUpDate DateTime
)
BEGIN
	UPDATE tblpatrons
	SET
	FKiProviderID=inFKiProviderID,sPatronName=insPatronName,sPatronSurname=insPatronSurname,sPatronContactNumber=insPatronContactNumber,sPatronEmail=insPatronEmail,bGender=inbGender,dtSignUpDate=indtSignUpDate
	WHERE PKiPatronID=inPKiPatronID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblproviders_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblproviders_INSERT`(
IN sProviderName VarChar(45),
IN sProviderLocation VarChar(45),
IN dtProviderJoined DateTime,
IN sProviderContactPerson VarChar(45),
IN sProviderContactInfo VarChar(45),
IN sProviderEmail VarChar(45),
IN sProviderStatus VarChar(45),
OUT outPKiProviderID INTEGER)
BEGIN
	INSERT INTO tblproviders
	(sProviderName,sProviderLocation,dtProviderJoined,sProviderContactPerson,sProviderContactInfo,sProviderEmail,sProviderStatus)
	VALUES
	(sProviderName,sProviderLocation,dtProviderJoined,sProviderContactPerson,sProviderContactInfo,sProviderEmail,sProviderStatus);
Set outPKiProviderID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblproviders_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblproviders_UPDATE`(
IN inPKiProviderID Int(11),
IN insProviderName VarChar(45),
IN insProviderLocation VarChar(45),
IN indtProviderJoined DateTime,
IN insProviderContactPerson VarChar(45),
IN insProviderContactInfo VarChar(45),
IN insProviderEmail VarChar(45),
IN insProviderStatus VarChar(45)
)
BEGIN
	UPDATE tblproviders
	SET
	sProviderName=insProviderName,sProviderLocation=insProviderLocation,dtProviderJoined=indtProviderJoined,sProviderContactPerson=insProviderContactPerson,sProviderContactInfo=insProviderContactInfo,sProviderEmail=insProviderEmail,sProviderStatus=insProviderStatus
	WHERE PKiProviderID=inPKiProviderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblspecials_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblspecials_INSERT`(
IN FKiMenuID Int(11),
IN dtStartDate DateTime,
IN dtEndDate DateTime,
IN sDaysOfWeek VarChar(45),
IN tStartTime VarChar(45),
IN tEndTime VarChar(45),
OUT outPKiSpecialID INTEGER)
BEGIN
	INSERT INTO tblspecials
	(FKiMenuID,dtStartDate,dtEndDate,sDaysOfWeek,tStartTime,tEndTime)
	VALUES
	(FKiMenuID,dtStartDate,dtEndDate,sDaysOfWeek,tStartTime,tEndTime);
Set outPKiSpecialID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tblspecials_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tblspecials_UPDATE`(
IN inPKiSpecialID Int(11),
IN inFKiMenuID Int(11),
IN indtStartDate DateTime,
IN indtEndDate DateTime,
IN insDaysOfWeek VarChar(45),
IN intStartTime VarChar(45),
IN intEndTime VarChar(45)
)
BEGIN
	UPDATE tblspecials
	SET
	FKiMenuID=inFKiMenuID,dtStartDate=indtStartDate,dtEndDate=indtEndDate,sDaysOfWeek=insDaysOfWeek,tStartTime=intStartTime,tEndTime=intEndTime
	WHERE PKiSpecialID=inPKiSpecialID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbltablealerts_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbltablealerts_INSERT`(
IN FKiTableID Int(11),
IN FKiEployeeID Int(11),
IN dtAlertStartTime DateTime,
IN dtAlertConfimTime DateTime,
IN sAlertMessage VarChar(45),
IN bActiveStatus Int(11),
OUT outPKiTableAlertsID INTEGER)
BEGIN
	INSERT INTO tbltablealerts
	(FKiTableID,FKiEployeeID,dtAlertStartTime,dtAlertConfimTime,sAlertMessage,bActiveStatus)
	VALUES
	(FKiTableID,FKiEployeeID,dtAlertStartTime,dtAlertConfimTime,sAlertMessage,bActiveStatus);
Set outPKiTableAlertsID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbltablealerts_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbltablealerts_UPDATE`(
IN inPKiTableAlertsID Int(11),
IN inFKiTableID Int(11),
IN inFKiEployeeID Int(11),
IN indtAlertStartTime DateTime,
IN indtAlertConfimTime DateTime,
IN insAlertMessage VarChar(45),
IN inbActiveStatus Int(11)
)
BEGIN
	UPDATE tbltablealerts
	SET
	FKiTableID=inFKiTableID,FKiEployeeID=inFKiEployeeID,dtAlertStartTime=indtAlertStartTime,dtAlertConfimTime=indtAlertConfimTime,sAlertMessage=insAlertMessage,bActiveStatus=inbActiveStatus
	WHERE PKiTableAlertsID=inPKiTableAlertsID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbltables_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbltables_INSERT`(
IN FKiEmployeeID Int(11),
IN FKiProviderID Int(11),
IN iGuestNumber Int(11),
IN dtStartDateTime DateTime,
IN dtEndDateTime DateTime,
IN UIDGenerated VarChar(45),
IN sTableName VarChar(45),
IN sTableDescription VarChar(45),
IN bActiveStatus Int(11),
OUT outPKiTableID INTEGER)
BEGIN
	INSERT INTO tbltables
	(FKiEmployeeID,FKiProviderID,iGuestNumber,dtStartDateTime,dtEndDateTime,UIDGenerated,sTableName,sTableDescription,bActiveStatus)
	VALUES
	(FKiEmployeeID,FKiProviderID,iGuestNumber,dtStartDateTime,dtEndDateTime,UIDGenerated,sTableName,sTableDescription,bActiveStatus);
Set outPKiTableID = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tbltables_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Handup`@`%` PROCEDURE `tbltables_UPDATE`(
IN inPKiTableID Int(11),
IN inFKiEmployeeID Int(11),
IN inFKiProviderID Int(11),
IN iniGuestNumber Int(11),
IN indtStartDateTime DateTime,
IN indtEndDateTime DateTime,
IN inUIDGenerated VarChar(45),
IN insTableName VarChar(45),
IN insTableDescription VarChar(45),
IN inbActiveStatus Int(11)
)
BEGIN
	UPDATE tbltables
	SET
	FKiEmployeeID=inFKiEmployeeID,FKiProviderID=inFKiProviderID,iGuestNumber=iniGuestNumber,dtStartDateTime=indtStartDateTime,dtEndDateTime=indtEndDateTime,UIDGenerated=inUIDGenerated,sTableName=insTableName,sTableDescription=insTableDescription,bActiveStatus=inbActiveStatus
	WHERE PKiTableID=inPKiTableID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-19 10:54:46
