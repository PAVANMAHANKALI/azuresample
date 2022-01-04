CREATE DATABASE  IF NOT EXISTS `Maintenance_Scheduler` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Maintenance_Scheduler`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 192.168.10.56    Database: Maintenance_Scheduler
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Device_Mapping`
--

DROP TABLE IF EXISTS `Device_Mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Device_Mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Device_Sensor_Id` varchar(10) DEFAULT NULL,
  `Device_Name` varchar(10) DEFAULT NULL,
  `Device_Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Device_Mapping`
--

LOCK TABLES `Device_Mapping` WRITE;
/*!40000 ALTER TABLE `Device_Mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `Device_Mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Device_Part`
--

DROP TABLE IF EXISTS `Device_Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Device_Part` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Device_Name` varchar(10) DEFAULT NULL,
  `Part_Name` varchar(20) DEFAULT NULL,
  `Run_Hours` time DEFAULT NULL,
  `Replacement_Status` tinyint DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Device_Part`
--

LOCK TABLES `Device_Part` WRITE;
/*!40000 ALTER TABLE `Device_Part` DISABLE KEYS */;
INSERT INTO `Device_Part` VALUES (1,'D1','P1','03:52:55',1),(2,'D1','P2','05:52:57',0),(3,'D2','P1','02:00:44',0),(4,'D2','P2','02:00:44',0),(5,'D3','P1','01:10:00',0),(6,'D3','P2','01:10:00',0),(10,'D1','P1','00:00:00',0);
/*!40000 ALTER TABLE `Device_Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Device_Part_Master`
--

DROP TABLE IF EXISTS `Device_Part_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Device_Part_Master` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Device_Name` varchar(10) DEFAULT NULL,
  `Part_Name` varchar(20) DEFAULT NULL,
  `Part_Type` varchar(20) DEFAULT NULL,
  `Quantity_To_Be_Replaced` int DEFAULT NULL,
  `Units` varchar(15) DEFAULT NULL,
  `Max_Hours` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Device_Part_Master`
--

LOCK TABLES `Device_Part_Master` WRITE;
/*!40000 ALTER TABLE `Device_Part_Master` DISABLE KEYS */;
INSERT INTO `Device_Part_Master` VALUES (1,'D1','P1',NULL,NULL,NULL,10),(2,'D1','P2',NULL,NULL,NULL,20),(3,'D2','P1',NULL,NULL,NULL,15),(4,'D2','P2',NULL,NULL,NULL,30),(5,'D3','P1',NULL,NULL,NULL,100),(6,'D3','P2',NULL,NULL,NULL,200);
/*!40000 ALTER TABLE `Device_Part_Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Device_Pilferage`
--

DROP TABLE IF EXISTS `Device_Pilferage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Device_Pilferage` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Device_Id` varchar(10) DEFAULT NULL,
  `Time_Stamp` datetime DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Device_Pilferage`
--

LOCK TABLES `Device_Pilferage` WRITE;
/*!40000 ALTER TABLE `Device_Pilferage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Device_Pilferage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Device_Runbook`
--

DROP TABLE IF EXISTS `Device_Runbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Device_Runbook` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Device_Sensor_Id` varchar(10) DEFAULT NULL,
  `Start` datetime DEFAULT NULL,
  `End` datetime DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Device_Runbook`
--

LOCK TABLES `Device_Runbook` WRITE;
/*!40000 ALTER TABLE `Device_Runbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `Device_Runbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 15:09:29
