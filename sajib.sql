-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: sabredb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `category_tbl`
--

DROP TABLE IF EXISTS `category_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKidwlxxkiagf179evunqjf1btl` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tbl`
--

LOCK TABLES `category_tbl` WRITE;
/*!40000 ALTER TABLE `category_tbl` DISABLE KEYS */;
INSERT INTO `category_tbl` VALUES (1,'T-Shart','active'),(2,'Polo Shart','active'),(3,'Fullpant','active'),(4,'Shart','active'),(5,'bagRead','active');
/*!40000 ALTER TABLE `category_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_tbl`
--

DROP TABLE IF EXISTS `employee_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `hired_date` datetime(6) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2d4s64g5gfkbjbpl4mkpnpn8w` (`location_id`),
  KEY `FKm4ibklxowtduj8tbfrv0dy02l` (`store_id`),
  CONSTRAINT `FK2d4s64g5gfkbjbpl4mkpnpn8w` FOREIGN KEY (`location_id`) REFERENCES `location_tbl` (`id`),
  CONSTRAINT `FKm4ibklxowtduj8tbfrv0dy02l` FOREIGN KEY (`store_id`) REFERENCES `store_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_tbl`
--

LOCK TABLES `employee_tbl` WRITE;
/*!40000 ALTER TABLE `employee_tbl` DISABLE KEYS */;
INSERT INTO `employee_tbl` VALUES (1,'topu@gmail.com','Topu ','2021-08-07 18:00:00.000000','Raihan','4534534535',2,1),(2,'sajibsarif401@gmil.com','Md.','2021-08-24 18:00:00.000000','Sajib','4534534535',4,4),(3,'bashirrosulpur@gmail.com','Bashir','2021-08-25 18:00:00.000000','Rosulpur','4534534535',6,2),(4,'sajibsarif401@gmil.com','SaJib','2022-06-23 18:00:00.000000','Sarif','4534534535',12,5),(5,'arifrahaman401@gmail.com','Arif','2021-08-25 18:00:00.000000','Rahaman','0176648569',15,7),(6,'tuhin@gmail.com','Md.','2021-02-08 18:00:00.000000','Tuhin','01777894521',18,9),(7,'adninarif@gmail.com','Adnin','2021-09-24 18:00:00.000000','Arif','4534534535',21,10);
/*!40000 ALTER TABLE `employee_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission_tbl`
--

DROP TABLE IF EXISTS `group_permission_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_permission_tbl` (
  `group_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  KEY `FK2g745y7raiay9jxs829kvcm2r` (`permission_id`),
  KEY `FK2mq0e5wec5kepj2ep4qcpsfcc` (`group_id`),
  CONSTRAINT `FK2g745y7raiay9jxs829kvcm2r` FOREIGN KEY (`permission_id`) REFERENCES `permission_tbl` (`id`),
  CONSTRAINT `FK2mq0e5wec5kepj2ep4qcpsfcc` FOREIGN KEY (`group_id`) REFERENCES `group_tbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission_tbl`
--

LOCK TABLES `group_permission_tbl` WRITE;
/*!40000 ALTER TABLE `group_permission_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_permission_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_tbl`
--

DROP TABLE IF EXISTS `group_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKa7ram8rcvetoy8li0qiqdtbi1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_tbl`
--

LOCK TABLES `group_tbl` WRITE;
/*!40000 ALTER TABLE `group_tbl` DISABLE KEYS */;
INSERT INTO `group_tbl` VALUES (5,'Asa'),(4,'cococola'),(7,'Sajaibgrup'),(1,'Sajib'),(6,'SopnoGrup');
/*!40000 ALTER TABLE `group_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_tbl`
--

DROP TABLE IF EXISTS `location_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_tbl`
--

LOCK TABLES `location_tbl` WRITE;
/*!40000 ALTER TABLE `location_tbl` DISABLE KEYS */;
INSERT INTO `location_tbl` VALUES (1,'Dhaka','Dhaka'),(2,'Dhaka','Dhaka'),(3,'Dhaka','Dhaka'),(4,'Dhaka','Dhaka'),(5,'Rosulpur','Narangonj'),(6,'Rosulpur','Narangonj'),(7,'Dhaka','Fatulla'),(8,'Dhaka','Fatulla'),(9,'Narangonj','Pagla'),(10,'BCC','Fatulla'),(11,'Munsigonj','pagla'),(12,'Narayngonj','Ponchoboti'),(13,'Kurigram','Rongpur'),(14,'Kurigram','Rongpur'),(15,'Rongpur','Churigram'),(16,'Dhaka','Gajipur'),(17,'Dhaka','Gajipur'),(18,'Rupgonj','Gajipur'),(19,'Dhaka','Plotn'),(20,' Bangladesh','Dhaka'),(21,'Dhaka','Dhaka');
/*!40000 ALTER TABLE `location_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_tbl`
--

DROP TABLE IF EXISTS `login_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdh31ekma9xh7ar8v3a6sapm6e` (`username`),
  KEY `FKrtuh2gq0emb334r5so4l07quh` (`employee_id`),
  KEY `FK135m3aru70sxpyesj02hrjqaf` (`group_id`),
  CONSTRAINT `FK135m3aru70sxpyesj02hrjqaf` FOREIGN KEY (`group_id`) REFERENCES `group_tbl` (`id`),
  CONSTRAINT `FKrtuh2gq0emb334r5so4l07quh` FOREIGN KEY (`employee_id`) REFERENCES `employee_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_tbl`
--

LOCK TABLES `login_tbl` WRITE;
/*!40000 ALTER TABLE `login_tbl` DISABLE KEYS */;
INSERT INTO `login_tbl` VALUES (1,'$2a$10$AUDYC2ke9Rip3yBXB1NFKu7rR0bXt5W2l.3fD0dsaUtk.r0uK9b4e','topu',1,1),(3,'$2a$10$aPvPnABAPum0dB7fYbj0AecAUe9glV6j8E8oj1t9XbDFOXIZPAQCC','abc',3,4),(4,'$2a$10$6uW546k5eM/mkAO5OdOYTutvPLbl/xht9.DtsSUyRskttuBXo20X.','Sajib',4,1),(5,'$2a$10$iWq54jBY8D9m4yp1pJ9uLO0GE1yGni6kQ3nuL2CbV7L9kyL6PQu2u','ratul',5,4);
/*!40000 ALTER TABLE `login_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products_tbl`
--

DROP TABLE IF EXISTS `order_products_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products_tbl` (
  `qty` bigint DEFAULT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `FK1lr60g44qga4xtvppwy66rxnp` (`product_id`),
  CONSTRAINT `FK1lr60g44qga4xtvppwy66rxnp` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`id`),
  CONSTRAINT `FKasxqq9896mbg5bww6twalo6ir` FOREIGN KEY (`order_id`) REFERENCES `order_tbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products_tbl`
--

LOCK TABLES `order_products_tbl` WRITE;
/*!40000 ALTER TABLE `order_products_tbl` DISABLE KEYS */;
INSERT INTO `order_products_tbl` VALUES (15,2,2),(30,3,2),(10,4,1),(10,5,2),(110,6,1),(10,6,2);
/*!40000 ALTER TABLE `order_products_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tbl`
--

DROP TABLE IF EXISTS `order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `gross_amount` double DEFAULT NULL,
  `net_amount` double DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `paid` bit(1) DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `vat_charge` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tbl`
--

LOCK TABLES `order_tbl` WRITE;
/*!40000 ALTER TABLE `order_tbl` DISABLE KEYS */;
INSERT INTO `order_tbl` VALUES (2,'Dhaka','Topu','014785698',5,90000,94050,'2021-08-24',_binary '\0',10,9000),(3,'Narangonj','Ratul','014783258',20,180000,158400,'2021-08-31',_binary '\0',10,18000),(4,'Dhaka','MD Ratul','014578',10,5000,4860,'2021-09-02',_binary '\0',8,400),(5,'Fatulla','Bashir','01458765',10,60000,59400,'2021-09-05',_binary '',10,6000),(6,'dhaka','sajib','0147858552',10,115000,119025,'2021-09-08',_binary '',15,17250);
/*!40000 ALTER TABLE `order_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_tbl`
--

DROP TABLE IF EXISTS `permission_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrbr7un5yy7an5yn109u7lsysl` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_tbl`
--

LOCK TABLES `permission_tbl` WRITE;
/*!40000 ALTER TABLE `permission_tbl` DISABLE KEYS */;
INSERT INTO `permission_tbl` VALUES (1,'sajib');
/*!40000 ALTER TABLE `permission_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tbl`
--

DROP TABLE IF EXISTS `product_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `availability` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5xwqb9thqesvk5qhq52ivqe9l` (`category_id`),
  KEY `FK1idn2tq6ttefx3b5lg7n4jpbn` (`store_id`),
  KEY `FKi8nj0yq8t5pt0meky1gta8w0p` (`supplier_id`),
  CONSTRAINT `FK1idn2tq6ttefx3b5lg7n4jpbn` FOREIGN KEY (`store_id`) REFERENCES `store_tbl` (`id`),
  CONSTRAINT `FK5xwqb9thqesvk5qhq52ivqe9l` FOREIGN KEY (`category_id`) REFERENCES `category_tbl` (`id`),
  CONSTRAINT `FKi8nj0yq8t5pt0meky1gta8w0p` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tbl`
--

LOCK TABLES `product_tbl` WRITE;
/*!40000 ALTER TABLE `product_tbl` DISABLE KEYS */;
INSERT INTO `product_tbl` VALUES (1,'yes','gd product','cococola',500,20,1,1,1),(2,'yes','Red coller','FullShart',6000,20,4,3,2),(4,'yes','this good product','bag',500,10,5,8,4),(5,'no','This is goot product','Shart',200,0,4,10,4),(6,'yes','gd product','cococola',15000,15,2,1,2),(7,'no','gd product','T-Shart',15000,0,3,10,2),(8,'yes','this is sajib','cococola',500,20,3,10,3);
/*!40000 ALTER TABLE `product_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_tbl`
--

DROP TABLE IF EXISTS `settings_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `vat_charge` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_tbl`
--

LOCK TABLES `settings_tbl` WRITE;
/*!40000 ALTER TABLE `settings_tbl` DISABLE KEYS */;
INSERT INTO `settings_tbl` VALUES (1,'Dhaka','Sajib','Bangladesh','sajibsarif401@gmail.com','01766474090',15);
/*!40000 ALTER TABLE `settings_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_tbl`
--

DROP TABLE IF EXISTS `store_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrdj0xkogb7yyjy0lnohh24kf6` (`location_id`),
  CONSTRAINT `FKrdj0xkogb7yyjy0lnohh24kf6` FOREIGN KEY (`location_id`) REFERENCES `location_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_tbl`
--

LOCK TABLES `store_tbl` WRITE;
/*!40000 ALTER TABLE `store_tbl` DISABLE KEYS */;
INSERT INTO `store_tbl` VALUES (1,'Dhaka','active',1),(2,'SonarBangla','active',5),(3,'JoyBangla','active',7),(4,'JoyBangla','active',8),(5,'FatullStore','active',9),(6,'AlishaMat','active',13),(7,'AlishaMat','active',14),(8,'Sopno','active',16),(9,'Sopno','active',17),(10,'BangladeshShop','inactive',20);
/*!40000 ALTER TABLE `store_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_tbl`
--

DROP TABLE IF EXISTS `supplier_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf0t6dp093volsi8kjc9p1pynp` (`location_id`),
  CONSTRAINT `FKf0t6dp093volsi8kjc9p1pynp` FOREIGN KEY (`location_id`) REFERENCES `location_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_tbl`
--

LOCK TABLES `supplier_tbl` WRITE;
/*!40000 ALTER TABLE `supplier_tbl` DISABLE KEYS */;
INSERT INTO `supplier_tbl` VALUES (1,'Amin Grup','4534534535',3),(2,'Faria','0147888',10),(3,'Corrony','0147555',11),(4,'SopnoGrup','0147855555',19);
/*!40000 ALTER TABLE `supplier_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-30 11:43:50
