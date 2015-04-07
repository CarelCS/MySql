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
  `PKiAdvertID` int(11) NOT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `sAdvertURL` varchar(45) DEFAULT NULL,
  `imgAdvertImage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiAdvertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemployees` (
  `PKiEmployeeID` int(11) NOT NULL AUTO_INCREMENT,
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
  `FKiEmployeeType` int(11) DEFAULT NULL,
  `dtStartDate` datetime DEFAULT NULL,
  `dtEndDate` datetime DEFAULT NULL,
  `bGender` varchar(45) DEFAULT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `bActiveStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiEmployeeID`),
  UNIQUE KEY `PKi_tblEmployeesID_UNIQUE` (`PKiEmployeeID`),
  KEY `PKiProviderID_idx` (`FKiProviderID`),
  CONSTRAINT `PKiProviderID` FOREIGN KEY (`FKiProviderID`) REFERENCES `tblproviders` (`PKiProviderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblluemployeetype`
--

DROP TABLE IF EXISTS `tblluemployeetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblluemployeetype` (
  `PKiEmployeeTypeID` int(11) NOT NULL,
  `sEmployeeTypeName` varchar(45) DEFAULT NULL,
  `sEmployeeTypeDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiEmployeeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbllusubmenus`
--

DROP TABLE IF EXISTS `tbllusubmenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllusubmenus` (
  `PKiSubMenuID` int(11) NOT NULL,
  `sSubMenuName` varchar(45) DEFAULT NULL,
  `sSubMenuDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiSubMenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblmenu`
--

DROP TABLE IF EXISTS `tblmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmenu` (
  `PKiMenuID` int(11) NOT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `sMenuItemName` varchar(45) DEFAULT NULL,
  `sMenuItemDescription` varchar(45) DEFAULT NULL,
  `dtMenuItemModified` datetime DEFAULT NULL,
  `dblMenuItemPrice` decimal(10,0) DEFAULT NULL,
  `imgMenuItemImage` varchar(45) DEFAULT NULL,
  `FKiMenuID` int(11) DEFAULT NULL,
  `FKiSubMenuID` int(11) DEFAULT NULL,
  `bActiveStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiMenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorders` (
  `PKiOrderID` int(11) NOT NULL,
  `dtOrderDateStamp` datetime DEFAULT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `FKiPatronID` int(11) DEFAULT NULL,
  `FKiMenuID` int(11) DEFAULT NULL,
  `sMenuItemChanges` varchar(45) DEFAULT NULL,
  `sOrderStatus` varchar(45) DEFAULT NULL,
  `FKiTableID` int(11) DEFAULT NULL,
  `dblOrderValue` decimal(10,0) DEFAULT NULL,
  `iBillID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKiOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorderssubitems`
--

DROP TABLE IF EXISTS `tblorderssubitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderssubitems` (
  `PKiOrdersSubItemID` int(11) NOT NULL,
  `FKiOrdersID` int(11) DEFAULT NULL,
  `FKiMenuID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKiOrdersSubItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblpatrons`
--

DROP TABLE IF EXISTS `tblpatrons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpatrons` (
  `PKiPatronID` int(11) NOT NULL,
  `sPatronName` varchar(45) DEFAULT NULL,
  `sPatronSurname` varchar(45) DEFAULT NULL,
  `sPatronContactNumber` varchar(45) DEFAULT NULL,
  `sPatronEmail` varchar(45) DEFAULT NULL,
  `bGender` varchar(45) DEFAULT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `dtSignUpDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PKiPatronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblproviders`
--

DROP TABLE IF EXISTS `tblproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproviders` (
  `PKiProviderID` int(11) NOT NULL,
  `sProviderName` varchar(45) DEFAULT NULL,
  `sProviderLocation` varchar(45) DEFAULT NULL,
  `dtProviderJoined` datetime DEFAULT NULL,
  `sProviderContactPerson` varchar(45) DEFAULT NULL,
  `sProviderContactInfo` varchar(45) DEFAULT NULL,
  `sProviderEmail` varchar(45) DEFAULT NULL,
  `sProviderStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiProviderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblspecials`
--

DROP TABLE IF EXISTS `tblspecials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblspecials` (
  `PKiSpecialID` int(11) NOT NULL,
  `FKiMenuID` int(11) DEFAULT NULL,
  `dtStartDate` datetime DEFAULT NULL,
  `dtEndDate` datetime DEFAULT NULL,
  `sDaysOfWeek` varchar(45) DEFAULT NULL,
  `tStartTime` varchar(45) DEFAULT NULL,
  `tEndTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiSpecialID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltables`
--

DROP TABLE IF EXISTS `tbltables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltables` (
  `PKiTableID` int(11) NOT NULL,
  `FKiEmployeeID` int(11) DEFAULT NULL,
  `FKiProviderID` int(11) DEFAULT NULL,
  `iGuestNumber` int(11) DEFAULT NULL,
  `dtStartDateTime` datetime DEFAULT NULL,
  `dtEndDateTime` datetime DEFAULT NULL,
  `UIDGenerated` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PKiTableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-07 10:49:18
