-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: property
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_ID` int NOT NULL AUTO_INCREMENT,
  `Address_1` varchar(60) NOT NULL,
  `Address_2` varchar(60) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` char(5) NOT NULL,
  PRIMARY KEY (`Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 Alpha St',NULL,'Lincoln','NE','68502'),(2,'123 Beta St',NULL,'Lincoln','NE','68502'),(3,'123 Charlie St',NULL,'Lincoln','NE','68502'),(4,'123 Delta St',NULL,'Lincoln','NE','68502'),(5,'123 Echo St',NULL,'Lincoln','NE','68502');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractor`
--

DROP TABLE IF EXISTS `contractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contractor` (
  `Contractor_ID` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(60) NOT NULL,
  PRIMARY KEY (`Contractor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractor`
--

LOCK TABLES `contractor` WRITE;
/*!40000 ALTER TABLE `contractor` DISABLE KEYS */;
INSERT INTO `contractor` VALUES (1,'Liam','Johnson','4535567896','LiamJohnson@gmail.com'),(2,'Noah','Williams','4452701362','NoahWilliams@gmail.com'),(3,'Oliver','Brown','4031560893','OliverBrown@gmail.com'),(4,'William','Jones','1430886755','WilliamJones@gmail.com'),(5,'Elijah','Garcia','1733942040','ElijahGarcia@gmail.com');
/*!40000 ALTER TABLE `contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `job_title` enum('Owner','Manager','Employee') NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jill','Peterson','4025559876','Owner'),(2,'Derek','Mitchell','4024443232','Manager'),(3,'Carter','Campbell','4027876543','Employee'),(4,'Ray','Taylor','4026758889','Employee'),(5,'Wilson','Martin','4024367744','Employee');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expiring_lease_90`
--

DROP TABLE IF EXISTS `expiring_lease_90`;
/*!50001 DROP VIEW IF EXISTS `expiring_lease_90`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expiring_lease_90` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_expires`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_risk_renters`
--

DROP TABLE IF EXISTS `high_risk_renters`;
/*!50001 DROP VIEW IF EXISTS `high_risk_renters`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_risk_renters` AS SELECT 
 1 AS `company`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `credit_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `insurance_provider`
--

DROP TABLE IF EXISTS `insurance_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_provider` (
  `Insurance_ID` int NOT NULL AUTO_INCREMENT,
  `Company` varchar(60) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  PRIMARY KEY (`Insurance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_provider`
--

LOCK TABLES `insurance_provider` WRITE;
/*!40000 ALTER TABLE `insurance_provider` DISABLE KEYS */;
INSERT INTO `insurance_provider` VALUES (1,'Geico','5564534469'),(2,'State Farm','5567888853'),(3,'Allstate','9574456251'),(4,'Liberty Mutual','5654421121'),(5,'MetLife','6897756741');
/*!40000 ALTER TABLE `insurance_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT,
  `Submission_date` date NOT NULL,
  `Execution_date` date NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Cost` decimal(7,2) NOT NULL,
  `Unit_ID` int NOT NULL,
  `Employee_ID` int NOT NULL,
  `Contractor_ID` int NOT NULL,
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Unit_ID2_idx` (`Unit_ID`),
  KEY `Employee_ID1_idx` (`Employee_ID`),
  KEY `fk_contractor_idx` (`Contractor_ID`),
  CONSTRAINT `Employee_ID1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_contractor` FOREIGN KEY (`Contractor_ID`) REFERENCES `contractor` (`Contractor_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Unit_ID2` FOREIGN KEY (`Unit_ID`) REFERENCES `unit` (`Unit_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,'2020-01-01','2020-01-03','Air',50.00,1,3,1),(2,'2020-01-02','2020-01-04','Door',170.00,4,4,3),(3,'2020-01-02','2020-01-10','Refrigerator',90.00,22,4,1),(4,'2020-01-03','2020-01-05','Shower',120.00,6,3,1),(5,'2020-01-04','2020-01-07','Toilet',170.00,22,4,4),(6,'2020-01-05','2020-01-08','Shower',250.00,9,4,5),(7,'2020-01-06','2020-01-12','Drains',170.00,14,3,2),(8,'2020-01-07','2020-01-16','Refrigerator',60.00,7,4,3),(9,'2020-01-08','2020-01-14','Refrigerator',200.00,26,4,4),(10,'2020-01-09','2020-01-18','Shower',160.00,6,2,2),(11,'2020-01-10','2020-01-20','Air',120.00,1,4,2),(12,'2020-01-20','2020-01-30','Sink',170.00,28,2,3),(13,'2020-02-13','2020-02-16','Refrigerator',130.00,3,4,3),(14,'2020-02-15','2020-02-22','Air',150.00,4,4,2),(15,'2020-02-27','2020-02-29','Sink',110.00,6,2,1),(16,'2020-03-12','2020-03-16','Door',130.00,13,5,3),(17,'2020-04-05','2020-04-14','Door',220.00,1,5,5),(18,'2020-04-08','2020-04-11','Toilet',230.00,22,4,2),(19,'2020-04-22','2020-05-01','Lights',250.00,10,3,4),(20,'2020-05-06','2020-05-10','Refrigerator',210.00,25,2,4),(21,'2020-05-08','2020-05-09','Lights',240.00,7,2,2),(22,'2020-05-23','2020-05-27','Toilet',90.00,23,3,1),(23,'2020-05-26','2020-06-05','Air',160.00,8,5,4),(24,'2020-06-10','2020-06-14','Lights',190.00,25,4,2),(25,'2020-06-19','2020-06-22','Lights',90.00,4,3,1),(26,'2020-07-05','2020-07-13','Oven',220.00,23,4,2),(27,'2020-07-12','2020-07-17','Air',220.00,4,2,3),(28,'2020-07-17','2020-07-25','Shower',170.00,4,2,1),(29,'2020-07-22','2020-07-24','Oven',160.00,8,3,3),(30,'2020-07-22','2020-07-28','Drains',220.00,2,5,1),(31,'2020-07-25','2020-08-02','Refrigerator',140.00,18,4,2),(32,'2020-08-04','2020-08-12','Lights',160.00,17,4,3),(33,'2020-08-11','2020-08-16','Drains',250.00,4,5,3),(34,'2020-08-14','2020-08-19','Sink',100.00,5,4,2),(35,'2020-08-20','2020-08-27','Air',80.00,13,5,1),(36,'2020-08-25','2020-09-04','Door',60.00,10,2,4),(37,'2020-08-29','2020-09-08','Refrigerator',150.00,13,2,3),(38,'2020-08-31','2020-09-10','Drains',120.00,7,5,1),(39,'2020-09-03','2020-09-10','Drains',170.00,4,4,1),(40,'2020-09-19','2020-09-28','Door',150.00,11,5,3),(41,'2020-09-22','2020-10-02','Toilet',50.00,10,3,1),(42,'2020-09-23','2020-10-02','Bathtub',240.00,30,5,1),(43,'2020-10-11','2020-10-12','Door',230.00,3,4,1),(44,'2020-10-13','2020-10-16','Door',110.00,17,4,5),(45,'2020-11-10','2020-11-16','Door',100.00,17,5,5),(46,'2020-11-16','2020-11-20','Shower',120.00,5,5,1),(47,'2020-11-18','2020-11-24','Oven',240.00,25,2,1),(48,'2020-11-21','2020-11-27','Shower',110.00,6,5,1),(49,'2020-12-18','2020-12-20','Shower',120.00,28,3,4),(50,'2020-12-27','2021-01-04','Air',100.00,17,5,2);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `occupied_units_by_property`
--

DROP TABLE IF EXISTS `occupied_units_by_property`;
/*!50001 DROP VIEW IF EXISTS `occupied_units_by_property`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `occupied_units_by_property` AS SELECT 
 1 AS `Occupied_Units`,
 1 AS `property_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `PropertyID` int NOT NULL AUTO_INCREMENT,
  `property_name` varchar(45) NOT NULL,
  `building_type` enum('Apartment','House','Business') NOT NULL,
  `Address_ID` int NOT NULL,
  PRIMARY KEY (`PropertyID`),
  KEY `fk_address_ID6_idx` (`Address_ID`),
  CONSTRAINT `fk_addressID_property` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Woodland Gardens','Apartment',2),(2,'Fairview Mansion','House',1),(3,'Wells Fargo Building','Business',5),(4,'Cliffview Heights','Apartment',3),(5,'Evergreen Grove','Apartment',4);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `q4_sales_leaders`
--

DROP TABLE IF EXISTS `q4_sales_leaders`;
/*!50001 DROP VIEW IF EXISTS `q4_sales_leaders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q4_sales_leaders` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `Units_Sold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rental_agreement`
--

DROP TABLE IF EXISTS `rental_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_agreement` (
  `agreement_ID` int NOT NULL AUTO_INCREMENT,
  `date_signed` date NOT NULL,
  `date_expires` date NOT NULL,
  `rent_amount` decimal(7,2) NOT NULL,
  `Employee_ID` int NOT NULL,
  `Tenant_ID` int NOT NULL,
  PRIMARY KEY (`agreement_ID`),
  KEY `Employee_ID2_idx` (`Employee_ID`),
  KEY `fk_tenantID_RA_idx` (`Tenant_ID`),
  CONSTRAINT `Employee_ID2` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tenantID_RA` FOREIGN KEY (`Tenant_ID`) REFERENCES `tenant` (`tenant_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_agreement`
--

LOCK TABLES `rental_agreement` WRITE;
/*!40000 ALTER TABLE `rental_agreement` DISABLE KEYS */;
INSERT INTO `rental_agreement` VALUES (1,'2019-01-01','2021-01-01',700.00,2,1),(2,'2019-01-11','2021-01-10',730.00,2,22),(3,'2019-01-13','2021-01-13',770.00,1,5),(4,'2019-01-31','2021-02-01',720.00,1,19),(5,'2019-02-03','2021-02-05',650.00,1,3),(6,'2019-02-22','2021-02-25',610.00,2,25),(7,'2019-03-14','2021-03-18',740.00,2,9),(8,'2019-04-08','2021-04-13',780.00,2,21),(9,'2019-05-11','2021-05-17',700.00,2,2),(10,'2019-05-16','2021-05-23',650.00,2,14),(11,'2019-05-25','2021-06-02',650.00,2,8),(12,'2019-05-27','2021-06-05',670.00,1,12),(13,'2019-06-09','2021-06-19',790.00,1,17),(14,'2019-06-12','2021-06-23',680.00,2,20),(15,'2019-06-19','2021-07-01',800.00,2,10),(16,'2019-06-21','2021-07-04',730.00,2,4),(17,'2019-08-29','2021-09-12',770.00,1,23),(18,'2019-09-21','2021-10-06',710.00,1,24),(19,'2019-09-24','2021-10-10',780.00,1,16),(20,'2019-10-03','2021-10-20',770.00,2,7),(21,'2019-11-17','2021-12-05',610.00,1,6),(22,'2019-12-11','2021-12-30',670.00,2,18),(23,'2019-12-16','2022-01-05',610.00,2,11),(24,'2019-12-30','2022-01-20',760.00,1,13),(25,'2020-01-01','2022-01-23',620.00,1,15);
/*!40000 ALTER TABLE `rental_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `tenant_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `credit_score` int NOT NULL,
  `Address_ID` int NOT NULL,
  PRIMARY KEY (`tenant_id`),
  KEY `Address_ID1_idx` (`Address_ID`),
  CONSTRAINT `fk_addressID_tenant` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES (1,'Tim','Johnson','1927734135','TimJohnson@gmail.com',590,5),(2,'Rachel','Smith','3989576394','RachelSmith@gmail.com',710,4),(3,'Robert','Thompson','4942859335','RobertThompson@gmail.com',670,1),(4,'Andy','Henderson','7716499471','AndyHenderson@gmail.com',720,3),(5,'Kyle','Miller','9125068062','KyleMiller@gmail.com',480,5),(6,'William','Davis','3858283739','WilliamDavis@gmail.com',560,5),(7,'Dylan','Wilson','7608622638','DylanWilson@gmail.com',630,1),(8,'James','Moore','1497364197','JamesMoore@gmail.com',680,4),(9,'Taylor','Lee','8508580380','TaylorLee@gmail.com',740,5),(10,'Grant','Adams','1376740532','GrantAdams@gmail.com',720,2),(11,'Thomas','Jenkins','4901995983','ThomasJenkins@gmail.com',590,1),(12,'Josh','Clark','1049883702','JoshClark@gmail.com',580,5),(13,'Sam','Ramirez','8869348187','SamRamirez@gmail.com',520,5),(14,'Josh','Lewis','8927928315','JoshLewis@gmail.com',690,3),(15,'Sam','Robinson','1961751906','SamRobinson@gmail.com',710,5),(16,'Charlie','Walker','1702250469','CharlieWalker@gmail.com',510,5),(17,'Matt','Young','3456719395','MattYoung@gmail.com',500,3),(18,'Gary','Allen','2701697798','GaryAllen@gmail.com',570,3),(19,'Ann','King','6963916178','AnnKing@gmail.com',590,2),(20,'George','Wright','1600900741','GeorgeWright@gmail.com',600,4),(21,'Jennifer','Scott','7059896525','JenniferScott@gmail.com',630,5),(22,'Charlie','Torres','2275489221','CharlieTorres@gmail.com',590,1),(23,'Chris','Nguyen','2981986371','ChrisNguyen@gmail.com',740,1),(24,'Ron','Hill','7249625779','RonHill@gmail.com',620,5),(25,'Matt','Flores','1876890936','MattFlores@gmail.com',700,4);
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_insurance`
--

DROP TABLE IF EXISTS `tenant_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_insurance` (
  `sale_ID` int NOT NULL AUTO_INCREMENT,
  `Price/month` decimal(7,2) NOT NULL,
  `Tenant_ID` int NOT NULL,
  `Insurance_ID` int NOT NULL,
  PRIMARY KEY (`sale_ID`),
  KEY `fk_insurance_idx` (`Insurance_ID`),
  KEY `fk_tenantID_insurance_idx` (`Tenant_ID`),
  CONSTRAINT `fk_insurance` FOREIGN KEY (`Insurance_ID`) REFERENCES `insurance_provider` (`Insurance_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_tenantID_insurance` FOREIGN KEY (`Tenant_ID`) REFERENCES `tenant` (`tenant_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_insurance`
--

LOCK TABLES `tenant_insurance` WRITE;
/*!40000 ALTER TABLE `tenant_insurance` DISABLE KEYS */;
INSERT INTO `tenant_insurance` VALUES (1,20.00,1,1),(2,30.00,15,2),(3,20.00,18,5),(4,40.00,20,3),(5,30.00,2,2),(6,30.00,7,4),(7,20.00,11,2),(8,10.00,16,5),(9,30.00,6,3),(10,40.00,19,2),(11,30.00,9,4),(12,10.00,22,2),(13,30.00,25,3),(14,20.00,8,5),(15,20.00,17,1),(16,30.00,23,5),(17,30.00,13,2),(18,30.00,12,5),(19,10.00,24,4),(20,40.00,5,3),(21,30.00,4,2),(22,10.00,14,2),(23,30.00,21,5),(24,40.00,3,1),(25,10.00,10,5);
/*!40000 ALTER TABLE `tenant_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_rent_by_building`
--

DROP TABLE IF EXISTS `total_rent_by_building`;
/*!50001 DROP VIEW IF EXISTS `total_rent_by_building`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_rent_by_building` AS SELECT 
 1 AS `building_type`,
 1 AS `Total_rent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `Unit_ID` int NOT NULL,
  `Vacant_yes_no` enum('Y','N') NOT NULL,
  `Tenant_ID` int DEFAULT NULL,
  PRIMARY KEY (`Unit_ID`),
  KEY `fk_tenantID_unit_idx` (`Tenant_ID`),
  CONSTRAINT `fk_tenantID_unit` FOREIGN KEY (`Tenant_ID`) REFERENCES `tenant` (`tenant_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'N',1),(2,'N',21),(3,'N',25),(4,'N',19),(5,'N',8),(6,'N',3),(7,'N',2),(8,'N',11),(9,'N',23),(10,'N',4),(11,'N',12),(12,'N',16),(13,'Y',NULL),(14,'Y',NULL),(15,'N',9),(16,'N',15),(17,'N',10),(18,'N',14),(19,'N',24),(20,'Y',NULL),(21,'N',20),(22,'N',18),(23,'N',7),(24,'Y',NULL),(25,'N',6),(26,'N',17),(27,'N',13),(28,'N',5),(29,'Y',NULL),(30,'N',22);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'property'
--

--
-- Dumping routines for database 'property'
--

--
-- Final view structure for view `expiring_lease_90`
--

/*!50001 DROP VIEW IF EXISTS `expiring_lease_90`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expiring_lease_90` AS select `tenant`.`first_name` AS `first_name`,`tenant`.`last_name` AS `last_name`,`rental_agreement`.`date_expires` AS `date_expires` from (`tenant` join `rental_agreement` on((`tenant`.`tenant_id` = `rental_agreement`.`Tenant_ID`))) where (`rental_agreement`.`date_expires` between curdate() and (curdate() - interval -(90) day)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_risk_renters`
--

/*!50001 DROP VIEW IF EXISTS `high_risk_renters`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_risk_renters` AS select `insurance_provider`.`Company` AS `company`,`tenant`.`first_name` AS `first_name`,`tenant`.`last_name` AS `last_name`,`tenant`.`credit_score` AS `credit_score` from (`insurance_provider` join (`tenant` join `tenant_insurance` on((`tenant`.`tenant_id` = `tenant_insurance`.`Tenant_ID`))) on((`insurance_provider`.`Insurance_ID` = `tenant_insurance`.`Insurance_ID`))) where (`tenant`.`credit_score` < 600) order by `insurance_provider`.`Company` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `occupied_units_by_property`
--

/*!50001 DROP VIEW IF EXISTS `occupied_units_by_property`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `occupied_units_by_property` AS select count(`a`.`Vacant_yes_no`) AS `Occupied_Units`,`d`.`property_name` AS `property_name` from (((`unit` `a` join `tenant` `b` on((`a`.`Tenant_ID` = `b`.`tenant_id`))) join `address` `c` on((`b`.`Address_ID` = `c`.`Address_ID`))) join `property` `d` on((`c`.`Address_ID` = `d`.`Address_ID`))) group by `d`.`property_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q4_sales_leaders`
--

/*!50001 DROP VIEW IF EXISTS `q4_sales_leaders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q4_sales_leaders` AS select `employee`.`first_name` AS `first_name`,`employee`.`last_name` AS `last_name`,count(`rental_agreement`.`agreement_ID`) AS `Units_Sold` from (`employee` join `rental_agreement` on((`employee`.`employee_id` = `rental_agreement`.`Employee_ID`))) where (`rental_agreement`.`date_signed` between '2019-10-01' and '2019-12-31') group by `employee`.`first_name`,`employee`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_rent_by_building`
--

/*!50001 DROP VIEW IF EXISTS `total_rent_by_building`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_rent_by_building` AS select `property`.`building_type` AS `building_type`,sum(`rental_agreement`.`rent_amount`) AS `Total_rent` from (`rental_agreement` join (`property` join `tenant` on((`property`.`Address_ID` = `tenant`.`Address_ID`))) on((`rental_agreement`.`Tenant_ID` = `tenant`.`tenant_id`))) group by `property`.`building_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  5:24:27
