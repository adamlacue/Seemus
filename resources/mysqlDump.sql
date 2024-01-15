-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Seemus
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sysAudit`
--

DROP TABLE IF EXISTS `sysAudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysAudit` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdAction` varchar(45) DEFAULT NULL,
  `fdID_User` varchar(45) DEFAULT NULL,
  `fdID_Content` varchar(45) DEFAULT NULL,
  `fdDate` date DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysAudit`
--

LOCK TABLES `sysAudit` WRITE;
/*!40000 ALTER TABLE `sysAudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysAudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysDropdowns`
--

DROP TABLE IF EXISTS `sysDropdowns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysDropdowns` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdID` int(11) DEFAULT NULL,
  `fdDropdown` varchar(45) DEFAULT NULL,
  `fdDisplay` varchar(45) DEFAULT NULL,
  `fdValue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysDropdowns`
--

LOCK TABLES `sysDropdowns` WRITE;
/*!40000 ALTER TABLE `sysDropdowns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysDropdowns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysSystem`
--

DROP TABLE IF EXISTS `sysSystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysSystem` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysSystem`
--

LOCK TABLES `sysSystem` WRITE;
/*!40000 ALTER TABLE `sysSystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysSystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbContent`
--

DROP TABLE IF EXISTS `tbContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbContent` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdID` varchar(45) NOT NULL,
  `fdTitle` varchar(45) DEFAULT NULL,
  `fdDescription` varchar(45) DEFAULT NULL,
  `fdHTML` varchar(45) DEFAULT NULL,
  `fdDateCreatedl` date NOT NULL,
  `fdDateUpdated` date DEFAULT NULL,
  `fdCreator` varchar(45) DEFAULT NULL,
  `fdArchive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`),
  UNIQUE KEY `fdID_UNIQUE` (`fdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbContent`
--

LOCK TABLES `tbContent` WRITE;
/*!40000 ALTER TABLE `tbContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbFile`
--

DROP TABLE IF EXISTS `tbFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbFile` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdCopy` varchar(45) DEFAULT NULL,
  `fdExcept` varchar(45) DEFAULT NULL,
  `fdFileName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbFile`
--

LOCK TABLES `tbFile` WRITE;
/*!40000 ALTER TABLE `tbFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbJoinUsersContent`
--

DROP TABLE IF EXISTS `tbJoinUsersContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbJoinUsersContent` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdID` int(11) NOT NULL,
  `fdID_Content` int(11) NOT NULL,
  `fdID_User` int(11) NOT NULL,
  `fdRead` varchar(45) DEFAULT NULL,
  `fdWrite` varchar(45) DEFAULT NULL,
  `fdArchive` varchar(45) DEFAULT NULL,
  `fdDelete` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `fdAutoID_UNIQUE` (`fdAutoID`),
  UNIQUE KEY `fdID_UNIQUE` (`fdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbJoinUsersContent`
--

LOCK TABLES `tbJoinUsersContent` WRITE;
/*!40000 ALTER TABLE `tbJoinUsersContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbJoinUsersContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbUsers`
--

DROP TABLE IF EXISTS `tbUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbUsers` (
  `fdAutoID` int(11) NOT NULL AUTO_INCREMENT,
  `fdID` varchar(45) NOT NULL,
  `fdEmail` varchar(45) NOT NULL,
  `fdFullName` varchar(45) NOT NULL,
  `fdNickName` varchar(45) DEFAULT NULL,
  `fdRole` varchar(45) DEFAULT NULL,
  `fdCreated` date DEFAULT NULL,
  `fdUpdated` date DEFAULT NULL,
  `fdPassword` varchar(45) DEFAULT NULL,
  `fdLastPassChanged` date DEFAULT NULL,
  `fdArchive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fdAutoID`),
  UNIQUE KEY `=_UNIQUE` (`fdAutoID`),
  UNIQUE KEY `fdID_UNIQUE` (`fdID`),
  UNIQUE KEY `fdEmail_UNIQUE` (`fdEmail`),
  UNIQUE KEY `fdFullName_UNIQUE` (`fdFullName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbUsers`
--

LOCK TABLES `tbUsers` WRITE;
/*!40000 ALTER TABLE `tbUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbUsers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 10:44:19
