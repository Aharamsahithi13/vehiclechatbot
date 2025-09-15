-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: ramp_data
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_vehicle_info`
--

DROP TABLE IF EXISTS `customer_vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_vehicle_info` (
  `customer_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique id for the customer or vehicle in the system.',
  `customer_name` varchar(110) NOT NULL COMMENT 'Name of the customer or vehicle owner.',
  `customer_mobile` varchar(50) NOT NULL COMMENT 'Contact number of the customer or vehicle owner.',
  `customer_vehicle_number` varchar(25) NOT NULL COMMENT 'Vehicle Number',
  `update_date` datetime DEFAULT NULL,
  `technician` varchar(25) NOT NULL,
  `nbr_of_coupons` int NOT NULL DEFAULT '0' COMMENT 'Number of active coupons',
  `vehicle_type` longtext NOT NULL COMMENT 'Contains the brand , model and variant of the vehicle, separated by -',
  `location_name` varchar(50) NOT NULL COMMENT 'The location name of the customer or vehicle owner.',
  `customer_email` varchar(55) NOT NULL COMMENT 'The email id of the customer or vehicle owner',
  `customer_address` longtext NOT NULL COMMENT 'The address of the customer or vehicle owner',
  `emp_name` varchar(75) NOT NULL,
  `chasis_no` varchar(50) DEFAULT NULL COMMENT 'Chasis number of the vehicle',
  `engine_no` varchar(50) DEFAULT NULL COMMENT 'Engine number of the vehicle',
  `cubic_capacity` double DEFAULT NULL COMMENT 'Cubic capacity of the vehicle',
  `wheel_base` varchar(55) DEFAULT NULL COMMENT 'Wheel size of the vehicle',
  `seating_capacity` int DEFAULT NULL COMMENT 'Seating Capacity of the vehicle',
  `unladen_weight` varchar(30) DEFAULT NULL COMMENT 'The weight of the vehicle',
  `color` varchar(15) DEFAULT NULL COMMENT 'Color of the vehicle',
  `date_of_registeration` date DEFAULT NULL COMMENT 'The date of registration of the vehicle',
  `reg_valid_dt` date DEFAULT NULL COMMENT 'Registration valid or expiry date',
  `rto` varchar(300) DEFAULT NULL COMMENT 'Name of the Road Tax Office',
  `hypothecated_to` varchar(98) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `registeration_owner` varchar(65) DEFAULT NULL COMMENT 'The registered owner of the vehicle.',
  `manufactured_year` varchar(25) DEFAULT NULL COMMENT 'Manufacturing year  of the vehicle',
  `person_id` varchar(98) DEFAULT NULL,
  `vehicle_category` varchar(50) DEFAULT NULL COMMENT 'The category of the vehicle like sedan , suv etc',
  `vehicle_maint_category` varchar(50) DEFAULT NULL,
  `city` varchar(155) DEFAULT NULL COMMENT 'The city to which the vehicle or vehicle owner belongs to.',
  `state` varchar(55) DEFAULT NULL COMMENT 'The state to which the vehicle or vehicle owner belongs to.',
  `pincode` int DEFAULT NULL COMMENT 'The pincode to which the vehicle or vehicle owner belongs to.',
  `customer_status` enum('ACTIVE','BLOCKED') DEFAULT NULL,
  `nbr_plate_color` varchar(80) DEFAULT NULL COMMENT 'The color of the number plate of the vehicle.',
  `fuel_type` varchar(30) DEFAULT NULL COMMENT 'The fuel type of the vehicle like, Petrol, Diesel etc.',
  `vehicle_type_cat` varchar(120) DEFAULT NULL,
  `push_status` enum('Y','N') DEFAULT NULL,
  `user_status` enum('N','Y') NOT NULL COMMENT 'E-> Enable , D-> Disable',
  `country_phone_code` varchar(50) DEFAULT NULL COMMENT 'The phone code of the country to which the vehicle or vehicle owner belongs to.',
  `row_updated_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'used for audits and analytics',
  `last_crm_contact_date` date DEFAULT NULL COMMENT 'The date when the customer was last contacted by CRM team.',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='This table contains the information related to the vehicle and its owner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_vehicle_info`
--

LOCK TABLES `customer_vehicle_info` WRITE;
/*!40000 ALTER TABLE `customer_vehicle_info` DISABLE KEYS */;
INSERT INTO `customer_vehicle_info` VALUES (1,'TEST CUSTOMER 1','8919344944','TSXXAFXXXX','2023-03-31 11:07:56','',2,'Audi-A3-2.0 TSI','Hyderabad','venkata.ysqa@gmail.com','Hyderabad','','TESTDATA78478','TESTDATAEN123',2000,'',5,'','Flash Red','0000-00-00','0000-00-00','TS-XX','',0,'Test Customer 1','2018',NULL,'4',NULL,'','',0,NULL,'WHITE(PRIVATE VEHICLE)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL),(2,'TEST CUSTOMER 2','8464887117','JH00AQ0000','2023-03-31 11:08:53','',0,'Toyota-Innova-CRYSTA 2.4G','Hyderabad','contact@shanrohi.com','Hyderabad','','TESTDATA78479','TESTDATAEN124',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,'2019',NULL,'22',NULL,'','',0,NULL,'WHITE(PRIVATE VEHICLE)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL),(3,'TEST CUSTOMER 3','8464887117','UPXXFG1111','2023-03-31 11:10:10','',0,'Mahindra-Scorpio-1.9 S4','Hyderabad','contact@shanrohi.com','Hyderabad','','TESTDATA78480','TESTDATAEN125',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,'2020',NULL,'8',NULL,'','UTTAR PRADESH',0,NULL,'WHITE(PRIVATE VEHICLE)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL),(4,'TEST CUSTOMER 5','8464887117','TN12TH3333','2023-03-31 11:10:44','',0,'Mahindra-Thar-LX HARDTOP','Hyderabad','contact@shanrohi.com','Hyderabad','','TESTDATA78482','TESTDATAEN127',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,'2022',NULL,'8',NULL,'','TAMIL NADU',0,NULL,'WHITE(PRIVATE VEHICLE)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL),(5,'TEST CUSTOMER4','8464887117','KL12TH2222','2023-03-31 11:31:37','',0,'Volkswagen-VIRTUS-TOPLINE TSI','Hyderabad','contact@shanrohi.com','Hyderabad','','TESTDATA78481','TESTDATAEN126',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,'2021',NULL,'4',NULL,'','KERALA',0,NULL,'WHITE(PRIVATE VEHICLE)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL),(6,'TRIAL CUSTOMER 6','7878888888','4455RDFF','2023-04-04 13:04:38','',0,'Toyota-Land Cruiser-200 VX Option Pack','Hyderabad','','','','','',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,'2020',NULL,'8',NULL,NULL,'',NULL,NULL,'BLUE(VEHICLES USED BY FOREIGN DELEGATES IN INDIA)',NULL,NULL,NULL,'N','91/IN/IND/INDIA',NULL,NULL);
/*!40000 ALTER TABLE `customer_vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_info` (
  `employee_id` int NOT NULL AUTO_INCREMENT COMMENT 'Employee ID of the employee and it has to be unique.',
  `workshop_id` int DEFAULT NULL COMMENT 'The Id of the workshop to which teh employee belongs to. The worshops will be listed in workshop_info table.',
  `email_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Email id of the employee.',
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'First name of teh employee',
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Last name of the employee',
  `designation` varchar(45) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'Designation of teh employee within the organization or workshop.',
  `user_name` varchar(100) NOT NULL COMMENT 'User name of the employee for logging into the garage management software. This is confidential. ',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Password of the employee for logging into the garage management software. This is confidential. ',
  `pswd_expiry_date` date DEFAULT NULL COMMENT 'Date on which teh current password will get expired. ',
  `contact_number` bigint DEFAULT NULL COMMENT 'Contact number of the employee. Can be a mobile number or a landline number.',
  `date_of_birth` date DEFAULT NULL COMMENT 'Date of birth of the employee.',
  `date_of_anniversary` date DEFAULT NULL COMMENT 'Date of marriage anniversary of the employee.',
  `address` varchar(200) DEFAULT NULL COMMENT 'Address of the employee.',
  `person_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Employee Id of the user who created or updated this record in the table.',
  `update_date` datetime DEFAULT NULL COMMENT 'The date when this record got created or updated this record in the table.',
  `first_time_login` enum('Y','N','') NOT NULL COMMENT 'The flag which denotes whether the client has ever logged in to the system or not. If its Y, the user has never logged in.',
  `is_authorized` enum('N','Y','') NOT NULL COMMENT 'The flag to denote if the user has access to use the mobile app for garage management system.',
  `status` enum('ACTIVE','BLOCKED') NOT NULL COMMENT 'It denotes the status of the employee in the system. Only active users are eligible to use the system.',
  `tnc_accept_flag` enum('N','Y') NOT NULL COMMENT 'This flag denotes if the user has accepted the terms and conditions to use the system or not. Y denotes the acceptance.',
  `tnc_accept_date` datetime DEFAULT NULL COMMENT 'The date on which the user accepted the terms and conditions.',
  `tnc_addnl_data` varchar(555) DEFAULT NULL COMMENT 'Additional data for terms and conditions in JSON format',
  `updates_available` enum('YES','NO') NOT NULL,
  `full_perm_flag` enum('N','Y') NOT NULL COMMENT 'The flag to denote if the user has full access to the whole system or not. The value Y, denotes full access. ',
  `compare_bill` enum('ALL','DETAILED','STANDARD') DEFAULT NULL,
  `otp` int DEFAULT NULL COMMENT 'One Time Password. Confidential',
  `push_notification_token` text,
  `countryCode` varchar(10) DEFAULT NULL COMMENT 'Country Code of the user address',
  `phoneCode` varchar(10) DEFAULT NULL COMMENT 'Country Code of the user contact number.',
  `login_type` varchar(10) NOT NULL DEFAULT 'OLD' COMMENT 'This flag denotes if the user has logged in with the old login logic or the new one. OLD=> md5, NEW=>hash',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='This table contains the data of employees in the organization';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_info`
--

LOCK TABLES `employee_info` WRITE;
/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
INSERT INTO `employee_info` VALUES (5,1,'test@shanrohi.com','Workshop','Admin','Technician','ramp','$2y$10$wMxmRS3/QI9xNP1Ygvog4ueocDiMUPI/NRLFmMqpfxzy0L6MBZXKy','2025-08-11',9121223601,'0000-00-00','0000-00-00','Demo','Workshop','2023-03-31 12:47:13','N','Y','ACTIVE','Y','2023-03-29 02:39:14','{\"ip\":\"172.225.219.11\",\"browser\":\"Safari\",\"browserVersion\":\"605.1.15\",\"platform\":\"Mac OS X\",\"time\":\"2023-03-29 02:39:14\"}','YES','N',NULL,NULL,'fb6DQRvQRAEhG3PdqlF4Tw:APA91bGW277RQqh8L-yUFtcBQbbVSMB6AgbnGNz4eBiRLa6qp8Lzy5pBjPHntMLw4g4NDxCRO5tHMgsy5KsxmPvSbs9l7P4eigQ1yGARKxffW1qV30A2-n03YMFKHvhOORJMKs2-6-LX',NULL,NULL,'OLD'),(6,1,'','Technician','X','Technician','TechnicianX','$2y$10$Db/h1pUWOJgZKpiFxQZ2V.p7DShX5bkI2.VOPMTjCIpRaH6qEN7ZG','2025-01-31',9876543210,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:18:26','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(7,1,'','Technician','1','Technician','Technician1','$2y$10$rfzDQd4xt2c1n1CSVfRbuOeBWq1niSR2QARxsjS9AN3sVOuv2d.UO','2025-01-31',9876543211,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:19:36','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(8,1,'','Technician','2','Technician','Technician2','$2y$10$89yhA9loe88WIXV4WW7IguE77jKy5i9aZleJcq.irzFRACaDmh6Be','2025-01-31',9876543212,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:20:38','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(9,1,'','Technician','3','Technician','Technician3','$2y$10$xp9gX2gO2OcguAai07SP3.HHPQnG8IQfY59APvixC73B1kGv2WQlq','2025-01-31',9876543213,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:21:22','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(10,1,'','Technician','4','Technician','Technician4','$2y$10$BCIs8OgasLhHmSJ3H40s1e5huSb4sENws2Nllur3R/.jkz6O5bXgW','2025-01-31',9876543214,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:22:20','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(11,1,'','Supervisor','X','Supervisor','SupervisorX','$2y$10$A9W9QgfKMXlPLxpgEtcc7OwFkEuxXuwF0CZihn8t1gbnCHRjXCQt2','2025-01-31',8745632109,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:23:39','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(12,1,'','Supervisor','1','Supervisor','Supervisor1','$2y$10$E7JSF/6frWhsucK00GAEvOmxtE9/z38pjECNMWqN/QayJLpNXmsZC','2025-01-31',8746523102,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:24:13','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(13,1,'','Supervisor','2','Supervisor','Supervisor2','$2y$10$bYGme9lBgWm1wfRrXxNeGObD1khoC/hEXogr7uSY8jz7kzjFd04du','2025-12-10',8745632110,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:24:55','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(14,1,'','Supervisor','3','Supervisor','Supervisor3','$2y$10$Xx9fHTD7TjxcqZ6Sp19BGuZa.aolMiMxKe4WQPDSNW/CtMZG93aGW','2025-01-31',9876543222,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:25:37','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW'),(15,1,'','Supervisor','4','Supervisor','Supervisor4','$2y$10$WEde4sbkCEeie/j2Mb4UCO4VutZ/roUbDk.etyPvYhmZmd2ol2Mi.','2025-01-31',8745632122,'0000-00-00','0000-00-00','','Workshop','2023-03-30 19:26:15','Y','N','ACTIVE','N',NULL,NULL,'YES','N',NULL,NULL,NULL,NULL,NULL,'NEW');
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_card_details`
--

DROP TABLE IF EXISTS `job_card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_card_details` (
  `job_card_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this table.',
  `customer_id` int NOT NULL COMMENT 'The customer identification which denotes the customer or the vehicle number from customer_vehicle_info table for which the job card is opened. ',
  `vehicle_svc_id` int NOT NULL COMMENT 'The service identification which denotes the service details from vehicle_service_summary table for which the job card is opened. ',
  `problem_desc` varchar(150) NOT NULL COMMENT 'The description of the problem encountered in the vehicle for which repair is required.',
  `complaint_status` varchar(100) DEFAULT NULL COMMENT 'The status of the problem or the complaint to denote whether its addressed or not.',
  `workshop_finding` varchar(555) DEFAULT NULL COMMENT 'The findings of the workshop while dealing with the problem reported in the vehicle.',
  `created_on` datetime DEFAULT NULL COMMENT 'Job card created date',
  `created_by` int DEFAULT NULL COMMENT 'The id of the employee who created the job card.',
  PRIMARY KEY (`job_card_id`),
  KEY `vehicleSvcId4` (`vehicle_svc_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COMMENT='This table contains all the informations about the job card that gets opened when the vehicle comes for a service. Job card contains the problems identified in the vehicle for which service has to be undertaken.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_card_details`
--

LOCK TABLES `job_card_details` WRITE;
/*!40000 ALTER TABLE `job_card_details` DISABLE KEYS */;
INSERT INTO `job_card_details` VALUES (7,5,5,'TEST COMPLAINT 1 ENGINE SOUND',NULL,NULL,NULL,NULL),(8,5,5,'TEST COMPLAINT 2 AC COOLING ISSUE',NULL,NULL,NULL,NULL),(9,5,5,'TEST COMPLAINT 3WATER WASH',NULL,NULL,NULL,NULL),(10,5,5,'TEST COMPLAINT 4 WHEEL ALIGNMENT',NULL,NULL,NULL,NULL),(11,5,5,'TEST COMPLAINT 5 WHEEL BALANCING',NULL,NULL,NULL,NULL),(12,5,5,'TEST COMPLAINT 6 GENERAL SERVICING',NULL,NULL,NULL,NULL),(13,1,1,'TEST COMPLAINT 1 ENGINE SOUND',NULL,NULL,NULL,NULL),(14,1,1,'TEST COMPLAINT 2 AC COOLING ISSUE',NULL,NULL,NULL,NULL),(15,1,1,'TEST COMPLAINT 3WATER WASH',NULL,NULL,NULL,NULL),(16,1,1,'TEST COMPLAINT 4 WHEEL ALIGNMENT',NULL,NULL,NULL,NULL),(17,1,1,'TEST COMPLAINT 5 WHEEL BALANCING',NULL,NULL,NULL,NULL),(18,1,1,'TEST COMPLAINT 6 GENERAL SERVICING',NULL,NULL,NULL,NULL),(19,2,2,'TEST COMPLAINT 1 ENGINE SOUND',NULL,NULL,NULL,NULL),(20,2,2,'TEST COMPLAINT 2 AC COOLING ISSUE',NULL,NULL,NULL,NULL),(21,2,2,'TEST COMPLAINT 3WATER WASH',NULL,NULL,NULL,NULL),(22,2,2,'TEST COMPLAINT 4 WHEEL ALIGNMENT',NULL,NULL,NULL,NULL),(23,3,3,'TEST COMPLAINT 1 ENGINE SOUND',NULL,NULL,NULL,NULL),(24,3,3,'TEST COMPLAINT 2 AC COOLING ISSUE',NULL,NULL,NULL,NULL),(25,3,3,'TEST COMPLAINT 3WATER WASH',NULL,NULL,NULL,NULL),(26,3,3,'TEST COMPLAINT 4 WHEEL ALIGNMENT',NULL,NULL,NULL,NULL),(27,3,3,'TEST COMPLAINT 5 WHEEL BALANCING',NULL,NULL,NULL,NULL),(28,3,3,'TEST COMPLAINT 6 GENERAL SERVICING',NULL,NULL,NULL,NULL),(29,4,4,'TEST COMPLAINT 1 ENGINE SOUND',NULL,NULL,NULL,NULL),(30,4,4,'TEST COMPLAINT 2 AC COOLING ISSUE',NULL,NULL,NULL,NULL),(31,4,4,'TEST COMPLAINT 3WATER WASH',NULL,NULL,NULL,NULL),(32,1,6,'Brakes Complaint',NULL,NULL,NULL,NULL),(33,1,6,'AC Cooling Issue',NULL,NULL,NULL,NULL),(34,1,6,'Water Wash',NULL,NULL,NULL,NULL),(35,1,6,'Wheel Alignment',NULL,NULL,NULL,NULL),(36,1,6,'Wheel Balancing',NULL,NULL,NULL,NULL),(37,1,6,'General Servicing',NULL,NULL,NULL,NULL),(38,2,7,'Brakes Complaint',NULL,NULL,NULL,NULL),(39,2,7,'AC Cooling Issue',NULL,NULL,NULL,NULL),(40,2,7,'Water Wash',NULL,NULL,NULL,NULL),(41,2,7,'Wheel Alignment',NULL,NULL,NULL,NULL),(42,2,7,'Wheel Balancing',NULL,NULL,NULL,NULL),(43,2,7,'General Servicing',NULL,NULL,NULL,NULL),(44,3,8,'Brakes Complaint',NULL,NULL,NULL,NULL),(45,3,8,'AC Cooling Issue',NULL,NULL,NULL,NULL),(46,3,8,'Water Wash',NULL,NULL,NULL,NULL),(47,3,8,'Wheel Alignment',NULL,NULL,NULL,NULL),(48,3,8,'Wheel Balancing',NULL,NULL,NULL,NULL),(49,3,8,'General Servicing',NULL,NULL,NULL,NULL),(50,5,9,'Test Complaint 1',NULL,NULL,NULL,NULL),(51,5,9,'Test Complaint 2',NULL,NULL,NULL,NULL),(52,6,11,'TRIAL COMPLAINT 1 Suspension problem',NULL,NULL,NULL,NULL),(53,6,11,'TRIAL COMPLAINT 2 Steering function',NULL,NULL,NULL,NULL),(54,6,11,'TRIAL COMPLAINT 3 Oil replacements',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `job_card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_service_details`
--

DROP TABLE IF EXISTS `vehicle_service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_service_details` (
  `vehicle_svc_details_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL COMMENT 'Customer identification referring to customer in customer_vehicle_info table.',
  `vehicle_svc_id` int NOT NULL COMMENT 'Unique service id referring to the record in the vehicle_service_summary table.',
  `counter_sale_id` int DEFAULT NULL COMMENT 'Unique identification referring to the counter_sale_info table for the sales summary of the spare parts done over the counter.',
  `service_type_cd` varchar(50) NOT NULL COMMENT 'Its a flag to denote whether its apart or a service. PR means spare parts and S means service or labour involved during servicing',
  `service_desc` longtext NOT NULL COMMENT 'Description of the spare parts or service/labour type used while servicing the vehicle.',
  `quantity` varchar(50) NOT NULL COMMENT 'Quantity of spare parts or labour used',
  `amount` varchar(50) NOT NULL COMMENT 'Amount or cost of the spare parts or labour used while servicing the vehicle',
  `service_date` datetime DEFAULT NULL COMMENT 'The date when teh service was done on the vehicle.',
  `service_desc_code` longtext NOT NULL COMMENT 'Description of the spare parts or service/labour type used while servicing the vehicle.',
  `bill_type` varchar(25) DEFAULT NULL COMMENT 'Flag which denotes if this service is categorized under tax invoice or non tax invoice. Standard denotes non tax and Detailed denotes tax invoice',
  `location_name` varchar(75) NOT NULL COMMENT 'Location of the garage or workshop',
  `service_cat_code` varchar(50) DEFAULT NULL COMMENT 'The category under which the spares or services fall under',
  `tax_rate` double DEFAULT NULL COMMENT 'Tax rate',
  `tax_name` varchar(56) DEFAULT NULL COMMENT 'Tax name. Contains HSN Code aswell',
  `tax_sub_type` enum('SGST/UGST','IGST','GST','VAT','ST','') DEFAULT NULL COMMENT 'Denotes different tax types',
  `inclusive` int DEFAULT '1' COMMENT 'Flag to denote if the amount is inclusive of tax or exclusive. 1 denotes inclusive and 0 denotes exclusive.',
  `discount_amount` double DEFAULT NULL COMMENT 'The discount amount',
  `identifier` enum('Billing','CounterSales') NOT NULL COMMENT 'Flag to denote if the spares or labour is used while servicing or while selling over the counter. Billing denotes servicing and CounterSales denotes selling of spares over the counter',
  `parts_id` int DEFAULT NULL,
  `part_identifier` enum('Spares','Consumables','Generic Spares','') DEFAULT NULL COMMENT 'Denotes the type of spares if they are generic, consumables or particularly spares',
  `check_flag` enum('checkInsert','checkUpdate','DN','SL','emptyFlag') DEFAULT NULL,
  `purchase_order_id` varchar(55) DEFAULT NULL,
  `discount_type` varchar(10) DEFAULT NULL COMMENT 'discount type denoting if the discount is provided in percentage or absolute amount.',
  `amount_value` decimal(10,2) DEFAULT NULL COMMENT 'The value of the discount percentage if discount type is %.',
  `vehicle_esvc_details_id` int DEFAULT NULL,
  `salvage_parts_id` int DEFAULT NULL,
  `salvage_status` enum('A','B') DEFAULT NULL,
  `spi_child_id` int DEFAULT NULL,
  `approval_status` enum('A','R') DEFAULT NULL COMMENT 'A->Accepted,R->Rejected',
  `approval_comments_cust` varchar(555) DEFAULT NULL,
  `approval_comments_wks` varchar(555) DEFAULT NULL,
  `vsad_id` int DEFAULT NULL COMMENT 'vehicle service approval table primary id',
  `veh_checklist_id` int DEFAULT NULL,
  `issued_qty` varchar(50) DEFAULT NULL,
  `po_status` varchar(255) DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT NULL,
  `package_id` varchar(50) DEFAULT NULL,
  `coverage_id` varchar(50) DEFAULT NULL,
  `split_invoicing_category` varchar(25) DEFAULT NULL,
  `split_invoicing_name` varchar(50) DEFAULT NULL,
  `split_invoicing_amount` double DEFAULT NULL,
  `split_invoicing_remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`vehicle_svc_details_id`),
  KEY `counter_sale_id` (`counter_sale_id`),
  KEY `vsd_partid` (`parts_id`),
  KEY `cust1` (`customer_id`),
  KEY `vehicleSvcId1` (`vehicle_svc_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COMMENT='This table contains the detailed information related to the spares and services used during the servicing of a vehicle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_service_details`
--

LOCK TABLES `vehicle_service_details` WRITE;
/*!40000 ALTER TABLE `vehicle_service_details` DISABLE KEYS */;
INSERT INTO `vehicle_service_details` VALUES (1,1,1,NULL,'PR','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','1','2250','2023-03-31 12:22:45','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,1757.81,'Billing',22,'Spares','checkInsert',NULL,'%',100.00,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,1,NULL,'PR','Generator (Electric Vehicle/Hybrid Vehicle/Fuel Cell Ve-P00006 TEST DATA-TEST ZF','1','628.56','2023-03-31 12:22:45','Generator (Electric Vehicle/Hybrid Vehicle/Fuel Cell Ve-P00006 TEST DATA-TEST ZF','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 93 00','SGST/UGST',1,20,'Billing',9,'Spares','checkInsert',NULL,'Amount',20.00,NULL,NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,1,NULL,'PR','FLYWHEEL RING GEAR-P000025 TEST DATA-TEST BOSCH','1','3745.28','2023-03-31 12:22:45','FLYWHEEL RING GEAR-P000025 TEST DATA-TEST BOSCH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 94 00','SGST/UGST',1,0,'Billing',24,'Spares','checkInsert',NULL,'Select Typ',0.00,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,1,NULL,'PR','DRIVE PLATE-P000027 TEST DATA-TEST MOTHERSON','1','2967','2023-03-31 12:22:45','DRIVE PLATE-P000027 TEST DATA-TEST MOTHERSON','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 92 00','SGST/UGST',1,0,'Billing',26,'Spares','checkInsert',NULL,'Select Typ',0.00,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,1,NULL,'PR','AIR FUEL MODULE-P000028 TEST DATA-TEST WABCO','1','1020','2023-03-31 12:22:45','AIR FUEL MODULE-P000028 TEST DATA-TEST WABCO','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 91 00','SGST/UGST',1,0,'Billing',27,'Spares','checkInsert',NULL,'Select Typ',0.00,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,1,NULL,'S','COWL TOP PANEL REPAIR','1','1500','2023-03-31 12:31:44','COWL TOP PANEL REPAIR','Detailed','Hyderabad','Engine Work',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','checkInsert',NULL,'Select Typ',0.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,1,NULL,'S','DAMPER PULLEY REPLACEMENT','1','2000','2023-03-31 12:31:44','DAMPER PULLEY REPLACEMENT','Detailed','Hyderabad','Engine Work',0.18,'998714','SGST/UGST',0,140,'Billing',0,'','checkInsert',NULL,'%',7.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,1,NULL,'S','DAMPER SHEET INSTALLATION','1','1200','2023-03-31 12:31:44','DAMPER SHEET INSTALLATION','Detailed','Hyderabad','Engine Work',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','checkInsert',NULL,'Select Typ',0.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,2,NULL,'PR','Boots-P00010 TEST DATA-TEST BOSCH','4','6080','2023-03-31 12:34:33','Boots-P00010 TEST DATA-TEST BOSCH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,0.4,'Billing',14,'Spares','DN',NULL,'Amount',0.40,1,NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,2,NULL,'PR','Nickel metal hydride battery modules-SP103 TEST DATA-TEST WURTH','1','1920','2023-03-31 12:34:33','Nickel metal hydride battery modules-SP103 TEST DATA-TEST WURTH','Detailed','Hyderabad','Electrification component',0.28,'8708 80 00','SGST/UGST',1,0,'Billing',12,'Spares','DN',NULL,'Select Typ',0.00,2,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,2,NULL,'S','GENERAL CHECK UP','1','2500','2023-03-31 12:34:47','GENERAL CHECK UP','Detailed','Hyderabad','Inspection',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','DN',NULL,'Select Typ',0.00,3,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,3,3,NULL,'PR','ENGINE PULLEY-SP201 TEST DATA-TEST WURTH','1','2250','2023-03-31 12:36:31','ENGINE PULLEY-SP201 TEST DATA-TEST WURTH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,87.89,'Billing',17,'Spares','DN',NULL,'%',5.00,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,3,3,NULL,'PR','Torsional Damper-PART NO D TEST DATA-TEST RANE','1','3600','2023-03-31 12:36:31','Torsional Damper-PART NO D TEST DATA-TEST RANE','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 95 00','SGST/UGST',1,168.75,'Billing',29,'Spares','DN',NULL,'%',6.00,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,3,3,NULL,'PR','FLYWHEEL RING GEAR-P000021 TEST DATA-TEST BOSCH','1','3745.28','2023-03-31 12:36:31','FLYWHEEL RING GEAR-P000021 TEST DATA-TEST BOSCH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 94 00','SGST/UGST',1,0,'Billing',19,'Spares','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,3,NULL,'PR','AIR FUEL MODULE-P000034 TEST DATA-TEST WABCO','1','1440','2023-03-31 12:36:31','AIR FUEL MODULE-P000034 TEST DATA-TEST WABCO','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 91 00','SGST/UGST',1,0,'Billing',33,'Spares','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,3,NULL,'S','COWL TOP PANEL REPAIR','1','2000','2023-03-31 12:36:48','COWL TOP PANEL REPAIR','Detailed','Hyderabad','Engine Work',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,3,NULL,'S','GENERAL CHECK UP','1','1000','2023-03-31 12:36:48','GENERAL CHECK UP','Detailed','Hyderabad','Inspection',0.18,'998714','SGST/UGST',0,85,'Billing',0,'','DN',NULL,'Amount',85.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,4,4,NULL,'PR','Generator (Electric Vehicle/Hybrid Vehicle/Fuel Cell Ve','1','1000','2023-03-31 12:39:08','Generator (Electric Vehicle/Hybrid Vehicle/Fuel Cell Ve','Detailed','Hyderabad','Electrification components (drive motors, batterie',0,'ST','SGST/UGST',1,150,'Billing',34,'Spares','DN',NULL,'%',15.00,NULL,NULL,NULL,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,4,4,NULL,'PR','AIR FUEL MODULE-P000024 TEST DATA-TEST WABCO','2','1020','2023-03-31 12:39:08','AIR FUEL MODULE-P000024 TEST DATA-TEST WABCO','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 91 00','SGST/UGST',1,0,'Billing',21,'Spares','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,4,4,NULL,'PR','DRIVE PLATE-P000033 TEST DATA-TEST MOTHERSON','1','4320','2023-03-31 12:39:08','DRIVE PLATE-P000033 TEST DATA-TEST MOTHERSON','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 92 00','SGST/UGST',1,0,'Billing',32,'Spares','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,4,4,NULL,'PR','ENGINE PULLEY-SP203 TEST DATA-TEST WURTH','1','2880','2023-03-31 12:39:08','ENGINE PULLEY-SP203 TEST DATA-TEST WURTH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,0,'Billing',28,'Spares','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,4,4,NULL,'S','GENERAL CHECK UP','1','2500','2023-03-31 12:39:28','GENERAL CHECK UP','Detailed','Hyderabad','Inspection',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,4,4,NULL,'S','WIPER COWL PANEL CLEAN','1','1000','2023-03-31 12:39:28','WIPER COWL PANEL CLEAN','Detailed','Hyderabad','Car Cleaning Services',0.18,'998714','SGST/UGST',0,0,'Billing',0,'','DN',NULL,'Select Typ',0.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,2,2,NULL,'SL','Boots-P00010 TEST DATA-TEST BOSCH','4','121.60','2023-04-01 14:17:47','Boots-P00010 TEST DATA-TEST BOSCH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,NULL,'Billing',14,NULL,'checkInsert',NULL,NULL,NULL,NULL,1,'A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,2,2,NULL,'SL','Nickel metal hydride battery modules-SP103 TEST DATA-TEST WURTH','1','1920.00','2023-04-01 14:17:47','Nickel metal hydride battery modules-SP103 TEST DATA-TEST WURTH','Detailed','Hyderabad','Electrification component',0.28,'8708 80 00','SGST/UGST',1,NULL,'Billing',12,NULL,'checkInsert',NULL,NULL,NULL,NULL,2,'A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,5,5,NULL,'PR','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','1','2250','2023-04-01 14:26:13','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','',1,35.16,'Billing',22,'Spares','DN',NULL,'%',2.00,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,5,5,NULL,'PR','DRIVE PLATE-P000027 TEST DATA-TEST MOTHERSON','8','2967','2023-04-01 14:26:13','DRIVE PLATE-P000027 TEST DATA-TEST MOTHERSON','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 92 00','',1,185.44,'Billing',26,'Spares','DN',NULL,'%',1.00,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,5,5,NULL,'PR','Tool Set-P00008 TEST DATA-TEST WABCO','2','1176','2023-04-01 14:26:13','Tool Set-P00008 TEST DATA-TEST WABCO','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 91 00','',1,9.19,'Billing',11,'Spares','DN',NULL,'%',0.50,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,5,5,NULL,'S','ABS MODULE REPAIR','1','1200','2023-04-01 14:29:12','ABS MODULE REPAIR','Detailed','Hyderabad','Mechanical Services',0.18,'998714','',0,48,'Billing',0,'','DN',NULL,'%',4.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,5,5,NULL,'S','BODY B PILLAR REPAIR RH','1','4500','2023-04-01 14:29:12','BODY B PILLAR REPAIR RH','Detailed','Hyderabad','Mechanical Services',0.18,'998714','',0,360,'Billing',0,'','DN',NULL,'%',8.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,5,5,NULL,'S','BUMPER REPAIR FR','1','800','2023-04-01 14:29:12','BUMPER REPAIR FR','Detailed','Hyderabad','Mechanical Services',0.18,'998714','',0,8,'Billing',0,'','DN',NULL,'%',1.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,5,5,NULL,'S','ALLOY WHEEL REPAIR','4','160','2023-04-01 14:29:12','ALLOY WHEEL REPAIR','Detailed','Hyderabad','Wheels Repair Work',0.18,'998714','',0,12.8,'Billing',0,'','DN',NULL,'%',-14.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,5,5,NULL,'S','POST SERVICE CHECKLIST (BASIC- 20)','1','1500','2023-04-01 14:48:26','POST SERVICE CHECKLIST (BASIC- 20)','Detailed','Hyderabad','Labour Works',0.18,'998714','',0,150,'Billing',NULL,NULL,'DN',NULL,'Amount',150.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,1,6,NULL,'PR','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','1','2250','2023-04-01 15:04:04','ENGINE PULLEY-SP202 TEST DATA-TEST WURTH','','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','',1,NULL,'Billing',22,'Spares','DN',NULL,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,1,6,NULL,'PR','FLYWHEEL RING GEAR-P000026 TEST DATA-TEST ZF','1','563.76','2023-04-01 15:04:04','FLYWHEEL RING GEAR-P000026 TEST DATA-TEST ZF','','Hyderabad','Tax Exempted Products',0.28,'8708 93 00','',1,NULL,'Billing',25,'Spares','DN',NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,1,6,NULL,'PR','Brake Pedal','1','500','2023-04-01 15:05:04','Brake Pedal',NULL,'Hyderabad','Drive Train - Pedal',0.28,'8708 99 00','',1,NULL,'Billing',35,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,1,6,NULL,'PR','Clutch Pedal','1','1200','2023-04-01 15:05:04','Clutch Pedal',NULL,'Hyderabad','Drive Train - Pedal',0.28,'8708 93 00','',1,NULL,'Billing',36,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,3,8,NULL,'PR','ENGINE PULLEY-SP201 TEST DATA-TEST WURTH','21','2250','2023-04-01 16:27:12','ENGINE PULLEY-SP201 TEST DATA-TEST WURTH','Standard','Hyderabad','Tax Exempted Products',0.28,'8708 99 00','SGST/UGST',1,NULL,'Billing',17,'Spares','checkInsert',NULL,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,3,8,NULL,'PR','Torsional Damper-PART NO B TEST DATA-TEST RANE','1','2447.5','2023-04-01 16:27:12','Torsional Damper-PART NO B TEST DATA-TEST RANE','Standard','Hyderabad','Tax Exempted Products',0.28,'8708 95 00','SGST/UGST',1,NULL,'Billing',18,'Spares','checkInsert',NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,2,7,NULL,'PR','HVAC Module','1','3000','2023-04-03 12:39:02','HVAC Module',NULL,'Hyderabad','Climate Control - HVAC Module',0.28,'8708 29 00','',1,NULL,'Billing',37,'Spares','DN',NULL,NULL,NULL,NULL,NULL,NULL,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,2,7,NULL,'PR','Brake Pedal','1','2500','2023-04-03 12:39:02','Brake Pedal',NULL,'Hyderabad','Drive Train - Pedal',0.28,'8708 30 00','',1,NULL,'Billing',38,'Spares','DN',NULL,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,2,7,NULL,'S','WASHING & CLEANING','1','1500','2023-04-03 12:39:35','WASHING & CLEANING','','Hyderabad','Car Cleaning Services',0.18,'998714','',0,NULL,'Billing',0,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,2,7,NULL,'S','WHEEL ALIGNMENT','1','500','2023-04-03 12:40:26','WHEEL ALIGNMENT','','Hyderabad','Wheel Alignment Work',0.18,'998714','',0,NULL,'Billing',0,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,2,7,NULL,'S','WHEEL BALANCING 4X16\"','1','800','2023-04-03 12:40:26','WHEEL BALANCING 4X16\"',NULL,'Hyderabad','Wheel Balancing Work',0.18,'998714','',0,NULL,'Billing',0,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,2,7,NULL,'S','WHEEL BALANCING 4X16','1','800','2023-04-03 12:41:16','WHEEL BALANCING 4X16',NULL,'Hyderabad','Wheel Balancing Work',0.18,'998714','',0,NULL,'Billing',0,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,2,7,NULL,'S','PERIODIC MAINTENANCE SERVICE','1','600','2023-04-03 12:41:16','PERIODIC MAINTENANCE SERVICE',NULL,'Hyderabad','General Maintenance',0.18,'998714','',0,NULL,'Billing',0,'','DN',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,5,9,NULL,'PR','Tool Set-P00008 TEST DATA-TEST WABCO','1','1176','2023-04-03 12:42:51','Tool Set-P00008 TEST DATA-TEST WABCO','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 91 00','SGST/UGST',1,9.19,'Billing',11,'Spares','DN',NULL,'%',1.00,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,5,9,NULL,'PR','Child Seat-P00007 TEST DATA-TEST MOTHERSON','4','3277.5','2023-04-03 12:42:51','Child Seat-P00007 TEST DATA-TEST MOTHERSON','Detailed','Hyderabad','Tax Exempted Products',0.28,'8708 92 00','SGST/UGST',1,1024.22,'Billing',10,'Spares','DN',NULL,'%',10.00,NULL,NULL,NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,5,9,NULL,'S','AC SYSTEM LEAK TEST','1','2000','2023-04-03 12:43:14','AC SYSTEM LEAK TEST','Detailed','Hyderabad','AC Services',0.18,'998714','SGST/UGST',0,40,'Billing',0,'','DN',NULL,'%',2.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,5,9,NULL,'S','INJECTOR TESTING','1','1300','2023-04-03 12:43:14','INJECTOR TESTING','Detailed','Hyderabad','Engine Work',0.18,'998714','SGST/UGST',0,65,'Billing',0,'','DN',NULL,'%',5.00,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,5,9,NULL,'S','POST SERVICE CHECKLIST (BASIC- 20)','1','0.00','2023-04-03 12:44:19','POST SERVICE CHECKLIST (BASIC- 20)','Detailed','Hyderabad','Labour Works',0.18,'998714','SGST/UGST',0,0,'Billing',NULL,NULL,'DN',NULL,'%',1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vehicle_service_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_vehicle_service_details_insert` BEFORE INSERT ON `vehicle_service_details` FOR EACH ROW BEGIN 
DECLARE inclusive INT;

select inclusive_tax INTO inclusive from service_type_info where service_type_cd = new.service_type_cd;

set new.inclusive = inclusive;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_vehicle_service_details_insert` AFTER INSERT ON `vehicle_service_details` FOR EACH ROW BEGIN
 
DECLARE numRows INT;
DECLARE svcAmount DOUBLE;
DECLARE salvageAmount DOUBLE;
DECLARE salvageTax DOUBLE;
DECLARE salvageNetAmount DOUBLE;
DECLARE partsAmount DOUBLE;
DECLARE svcNetAmount DOUBLE;
DECLARE partsNetAmount DOUBLE;
DECLARE svcTax DOUBLE;
DECLARE vatTax DOUBLE;
DECLARE totalAmount DOUBLE;
 
DECLARE ignoreTax INT ;
DECLARE tax_rate double;
DECLARE inclusive_tax INT;
declare cashless int;
declare showCess varchar(20);
set sql_mode="";
 SET svcAmount = 0;
 SET svcTax = 0;
 SET svcNetAmount = 0;
 SET vatTax = 0;
 SET partsNetAmount = 0;
 SET partsAmount = 0;
 SET totalAmount = 0;
 SET salvageAmount = 0;
 SET salvageTax = 0;
 SET salvageNetAmount = 0;
 set cashless = 0;

 SET ignoreTax = 1;
 SET showCess = '';
 
select COUNT(1) into cashless  from customer_insurance_details where  insurance_claim='Yes' and insurance_claim_type = 'C' and vehicle_svc_id=new.vehicle_svc_id;

SELECT meta_data.value INTO showCess FROM meta_data WHERE meta_data.key = 'showCess';

 IF NEW.bill_type = '' AND showCess = 'Yes' THEN
       SET ignoreTax = 1;
 ELSEIF NEW.bill_type = '' THEN
       SET ignoreTax = 0;
 ELSEIF NEW.bill_type = 'Standard' THEN
       SET ignoreTax = 0;
 END IF;
 
 if cashless=1 then
    set ignoreTax=1;
end if;

 
 IF NEW.identifier = 'Billing' THEN
 
 SELECT COUNT(1) INTO numRows FROM vehicle_service_summary vss where vss.vehicle_svc_id=new.vehicle_svc_id;
  
 IF numRows < 1 THEN
    
    SELECT sti.inclusive_tax into inclusive_tax FROM service_type_info sti WHERE sti.service_type_cd = new.service_type_cd ;
    
     
   IF new.service_type_cd = 'PR' THEN
      SET partsAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET vatTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET partsNetAmount = IFNULL(partsAmount,0) + IFNULL(vatTax,0);
      SET svcTax = 0;
      SET svcNetAmount = 0;
      SET svcAmount = 0;
      SET salvageAmount = 0;
      SET salvageTax = 0;
      SET salvageNetAmount = 0;
      SET totalAmount = IFNULL(salvageNetAmount,0)+IFNULL(svcNetAmount,0) + IFNULL(partsNetAmount,0);
    ELSEIF new.service_type_cd = 'S' THEN
      SET svcAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET svcTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET svcNetAmount = svcAmount + svcTax;
      SET vatTax = 0;
      SET partsNetAmount = 0;
      SET partsAmount = 0;
      SET salvageAmount = 0;
      SET salvageTax = 0;
      SET salvageNetAmount = 0;
      SET totalAmount = IFNULL(salvageNetAmount,0)+IFNULL(svcNetAmount,0) + IFNULL(partsNetAmount,0);
    ELSEIF new.service_type_cd = 'SL' THEN
      SET salvageAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET salvageTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
      SET salvageNetAmount = salvageAmount + salvageTax;
      SET svcAmount = 0;
      SET svcTax = 0;
      SET svcNetAmount = 0;
      SET vatTax = 0;
      SET partsNetAmount = 0;
      SET partsAmount = 0;
      SET totalAmount = IFNULL(salvageNetAmount,0)+IFNULL(svcNetAmount,0) + IFNULL(partsNetAmount,0);
    END IF;

   INSERT INTO vehicle_service_summary ( customer_id,vehicle_svc_id, service_date, service_amt, service_tax, service_net_amt, parts_amt, vat_tax, parts_net_amt, total_amt, salvage_amount,salvage_tax_amt,salvage_net_amt) VALUES
(new.customer_id,new.vehicle_svc_id, new.service_date, svcAmount, svcTax, svcNetAmount, partsAmount, vatTax, partsNetAmount, totalAmount, salvageAmount,salvageTax,salvageNetAmount);


 ELSE

   UPDATE vehicle_service_summary
    SET service_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='S'),  

    service_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='S'),

    service_net_amt = IFNULL(service_amt,0) + IFNULL(service_tax,0),

parts_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='PR'), 

    vat_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='PR'),
     
    parts_net_amt = IFNULL(parts_amt,0) + IFNULL(vat_tax,0),
    salvage_amount = 
   COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' 
    ),0),
    salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' ),0),
    salvage_net_amt = IFNULL(salvage_amount,0) + IFNULL(salvage_tax_amt,0),
    total_amt = IFNULL(service_net_amt,0) + IFNULL(parts_net_amt,0) + IFNULL(salvage_net_amt,0),
    line_level_discount=(SELECT SUM(COALESCE(vsd.discount_amount,0)) FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id)
    WHERE vehicle_svc_id=new.vehicle_svc_id;
    
 END IF;
 
 ELSE
 
 
     SELECT COUNT(1) INTO numRows FROM vehicle_service_summary vss where vss.counter_sale_info_id=new.counter_sale_id; 
      
     IF numRows < 1 THEN
        
        SELECT sti.inclusive_tax into inclusive_tax FROM service_type_info sti WHERE sti.service_type_cd = new.service_type_cd ;
        
         
       IF new.service_type_cd = 'PR' THEN
          SET partsAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET vatTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET partsNetAmount = partsAmount + vatTax;
          SET svcTax = 0;
          SET svcNetAmount = 0;
          SET svcAmount = 0;
          SET totalAmount = svcNetAmount + partsNetAmount;
          SET salvageAmount = 0;
          SET salvageTax = 0;
          SET salvageNetAmount = 0;
        ELSEIF new.service_type_cd = 'S' THEN
          SET svcAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET svcTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET svcNetAmount = svcAmount + svcTax;
          SET vatTax = 0;
          SET partsNetAmount = 0;
          SET partsAmount = 0;
          SET totalAmount = svcNetAmount + partsNetAmount;
          SET salvageAmount = 0;
          SET salvageTax = 0;
          SET salvageNetAmount = 0;
        ELSEIF new.service_type_cd = 'SL' THEN
          SET salvageAmount = (new.quantity * new.amount)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET salvageTax = (new.amount * new.quantity * new.tax_rate * ignoreTax)/(1+( new.tax_rate * ignoreTax * inclusive_tax ));
          SET salvageNetAmount = salvageAmount + salvageTax;
          SET svcAmount = 0;
          SET svcTax = 0;
          SET svcNetAmount = 0;
          SET vatTax = 0;
          SET partsNetAmount = 0;
          SET partsAmount = 0;
          SET totalAmount = salvageNetAmount+svcNetAmount + partsNetAmount;
        END IF;
       
       INSERT INTO vehicle_service_summary ( counter_sale_info_id, service_date, service_amt, service_tax, service_net_amt, parts_amt, vat_tax, parts_net_amt, total_amt, salvage_amount,salvage_tax_amt,salvage_net_amt) VALUES
    (new.counter_sale_id, new.service_date, svcAmount, svcTax, svcNetAmount, partsAmount, vatTax, partsNetAmount, totalAmount, salvageAmount,salvageTax,salvageNetAmount);


     ELSE

       UPDATE vehicle_service_summary
        SET service_amt = (SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
            FROM vehicle_service_details vsd, service_type_info sti
            WHERE vsd.counter_sale_id=new.counter_sale_id AND
            sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='S' 
        ),
       
        service_tax = (SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) )
            FROM vehicle_service_details vsd, service_type_info sti
            WHERE vsd.counter_sale_id=new.counter_sale_id AND
            sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='S' )
        ,

        service_net_amt = IFNULL(service_amt,0) + IFNULL(service_tax,0),
        parts_amt = 
       (SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
         FROM vehicle_service_details vsd, service_type_info sti
         WHERE vsd.counter_sale_id=new.counter_sale_id AND
         sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='PR' 
        ),
        vat_tax = (SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
         FROM vehicle_service_details vsd, service_type_info sti
         WHERE vsd.counter_sale_id=new.counter_sale_id AND
         sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='PR' )
            ,
        parts_net_amt = IFNULL(parts_amt,0) + IFNULL(vat_tax,0),
        salvage_amount = 
        COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
         FROM vehicle_service_details vsd, service_type_info sti
         WHERE vsd.counter_sale_id=new.counter_sale_id AND
         sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' 
        ),0),
        salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
         FROM vehicle_service_details vsd, service_type_info sti
         WHERE vsd.counter_sale_id=new.counter_sale_id AND
         sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' ),0),
        salvage_net_amt = IFNULL(salvage_amount,0) + IFNULL(salvage_tax_amt,0),
        total_amt = IFNULL(service_net_amt,0) + IFNULL(parts_net_amt,0) + IFNULL(salvage_net_amt,0)
        WHERE counter_sale_info_id=new.counter_sale_id;
        
     END IF;
 
 END IF;

IF NEW.service_type_cd = 'SL' THEN      
    update salvage_parts_info set available_qty=  coalesce(available_qty,0) - new.quantity , assigned_qty = coalesce(assigned_qty,0) + new.quantity where salvage_parts_info_id=new.salvage_parts_id AND new.salvage_status ='A' ; 
END IF;
    

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_vehicle_service_details_update` AFTER UPDATE ON `vehicle_service_details` FOR EACH ROW BEGIN

DECLARE editQty INT;
DECLARE editSalvageQty INT;
DECLARE ignoreTax INT ;
declare cashless int;
declare showCess varchar(20);
SET ignoreTax = 1;
set cashless = 0;
SET showCess = '';

select COUNT(1) into cashless  from customer_insurance_details where  insurance_claim='Yes' and insurance_claim_type = 'C' and vehicle_svc_id=new.vehicle_svc_id;

SELECT meta_data.value INTO showCess FROM meta_data WHERE meta_data.key = 'showCess';

IF NEW.bill_type = '' AND showCess = 'Yes' THEN
       SET ignoreTax = 1;
 ELSEIF NEW.bill_type = '' THEN
       SET ignoreTax = 0;
 ELSEIF NEW.bill_type = 'Standard' THEN
       SET ignoreTax = 0;
 END IF;

if cashless=1 then
    set ignoreTax=1;
end if;


IF NEW.identifier = 'Billing' THEN

UPDATE vehicle_service_summary
    SET service_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='S'),  

    service_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='S'),

    service_net_amt = service_amt + service_tax, 

parts_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='PR'), 

    vat_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND vsd.service_type_cd='PR'),
     
    parts_net_amt = parts_amt + vat_tax,
    salvage_amount = 
   COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' 
    ),0),
    salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.vehicle_svc_id=new.vehicle_svc_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' ),0),
    salvage_net_amt = salvage_amount + salvage_tax_amt,
    total_amt = service_net_amt + parts_net_amt + salvage_net_amt, 
    line_level_discount=(SELECT SUM(COALESCE(vsd.discount_amount,0)) FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=new.vehicle_svc_id)
    WHERE vehicle_svc_id=new.vehicle_svc_id;

    IF old.bill_type = '' AND new.bill_type != '' THEN
        UPDATE vehicle_service_summary SET bill_type=new.bill_type WHERE vehicle_svc_id=new.vehicle_svc_id;
    END IF;
    
    ELSE
    
        UPDATE vehicle_service_summary
        SET service_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
            FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=new.counter_sale_id AND vsd.service_type_cd='S'),  

        service_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
            FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=new.counter_sale_id AND vsd.service_type_cd='S'),

        service_net_amt = service_amt + service_tax, 
        parts_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
            FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=new.counter_sale_id AND vsd.service_type_cd='PR'), 

        vat_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
            FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=new.counter_sale_id AND vsd.service_type_cd='PR'),
         
        parts_net_amt = parts_amt + vat_tax,
        salvage_amount = 
   COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.counter_sale_id=new.counter_sale_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' 
    ),0),
    salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * sti.inclusive_tax )) ) 
     FROM vehicle_service_details vsd, service_type_info sti
     WHERE vsd.counter_sale_id=new.counter_sale_id AND
     sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='SL' ),0),
    salvage_net_amt = salvage_amount + salvage_tax_amt,
        total_amt = service_net_amt + parts_net_amt + salvage_net_amt, 
        line_level_discount=(SELECT SUM(COALESCE(vsd.discount_amount,0)) FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=new.counter_sale_id )
        WHERE counter_sale_info_id=new.counter_sale_id;

        IF old.bill_type = '' AND new.bill_type != '' THEN
            UPDATE vehicle_service_summary SET bill_type=new.bill_type WHERE counter_sale_info_id=new.counter_sale_id;
        END IF;
    
    END IF;

    IF NEW.service_type_cd = 'SL' THEN  
        IF NEW.identifier ='Billing' THEN 
            set editSalvageQty = 0 ;
        update salvage_parts_info set total_qty=new.quantity, available_qty= editSalvageQty, assigned_qty = new.quantity where salvage_parts_info_id=old.salvage_parts_id AND old.salvage_status ='A';
        
        ELSEIF NEW.identifier ='CounterSales' THEN 
            set editSalvageQty = old.quantity - new.quantity ;
        update salvage_parts_info set available_qty= COALESCE(available_qty,0) + editSalvageQty, assigned_qty = COALESCE(assigned_qty,0) - editSalvageQty where salvage_parts_info_id=old.salvage_parts_id AND old.salvage_status ='A';
        
        END IF;
    END IF;  
      
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_vehicle_service_details_delete` AFTER DELETE ON `vehicle_service_details` FOR EACH ROW BEGIN
 
DECLARE editQty INT;
DECLARE ignoreTax INT ;
declare cashless int;
declare showCess varchar(20);
declare storeMgmt varchar(20);
declare billCount int;
SET ignoreTax = 1;
set cashless = 0;
set storeMgmt = '';
set showCess = '';
set billCount = 0;

select COUNT(1) into cashless  from customer_insurance_details where  insurance_claim='Yes' and insurance_claim_type = 'C' and vehicle_svc_id=old.vehicle_svc_id;

 SELECT meta_data.value INTO showCess FROM meta_data WHERE meta_data.key = 'showCess';
 
 SELECT meta_data.value INTO storeMgmt FROM meta_data WHERE meta_data.key = 'store_mgmt';
 
select COUNT(1) into billCount  from vehicle_service_summary where vehicle_svc_id=old.vehicle_svc_id and (invoice_id > 0 or cash_invoice_id > 0);

 IF OLD.bill_type = '' AND showCess = 'Yes' THEN
       SET ignoreTax = 1;
 ELSEIF OLD.bill_type = '' THEN
       SET ignoreTax = 0;
 ELSEIF OLD.bill_type = 'Standard' THEN
       SET ignoreTax = 0;
 END IF;
 
 if cashless=1 then
    set ignoreTax=1;
end if;
 
 IF OLD.identifier = 'Billing' THEN
 
UPDATE vehicle_service_summary
    SET service_amt = (SELECT IFNULL(SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0) 
        FROM vehicle_service_details vsd, service_type_info sti
        WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND
        sti.service_type_cd = vsd.service_type_cd AND vsd.service_type_cd='S' 
    ),
   
    service_tax = (SELECT IFNULL(SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0)
        FROM vehicle_service_details vsd, service_type_info sti
        WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND
        sti.service_type_cd = vsd.service_type_cd  AND vsd.service_type_cd='S' )
    ,

    service_net_amt = IFNULL(service_amt,0) + IFNULL(service_tax,0),
    parts_amt = (SELECT IFNULL(SUM(  ((  vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )))- COALESCE(vsd.discount_amount,0) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND vsd.service_type_cd='PR'), 

    vat_tax = (SELECT IFNULL(SUM( (( vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))) - (COALESCE(vsd.discount_amount,0)* vsd.tax_rate * ignoreTax) ),0)
FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND vsd.service_type_cd='PR'),
    parts_net_amt = IFNULL(parts_amt,0) + IFNULL(vat_tax,0),
    salvage_amount = 
   COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )) ) 
     FROM vehicle_service_details vsd
     WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND vsd.service_type_cd='SL' 
    ),0),
    salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )) ) 
     FROM vehicle_service_details vsd
     WHERE vsd.vehicle_svc_id=old.vehicle_svc_id AND vsd.service_type_cd='SL' ),0),
    salvage_net_amt = IFNULL(salvage_amount,0) + IFNULL(salvage_tax_amt,0),
    total_amt = service_net_amt + parts_net_amt + salvage_net_amt,
    line_level_discount=(SELECT SUM(COALESCE(vsd.discount_amount,0)) FROM vehicle_service_details vsd WHERE vsd.vehicle_svc_id=old.vehicle_svc_id)
    WHERE vehicle_svc_id=old.vehicle_svc_id;
        
        
    ELSE 
    
    UPDATE vehicle_service_summary
    SET service_amt = (SELECT IFNULL(SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0) 
        FROM vehicle_service_details vsd
        WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='S' 
    ),
   
    service_tax = (SELECT IFNULL(SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0)
        FROM vehicle_service_details vsd
        WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='S' )
    ,

    service_net_amt = IFNULL(service_amt,0) + IFNULL(service_tax,0),
    parts_amt = 
   (SELECT IFNULL(SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0) 
     FROM vehicle_service_details vsd
     WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='PR' 
    ),
    vat_tax = (SELECT IFNULL(SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive ))- COALESCE(vsd.discount_amount,0) ),0) 
     FROM vehicle_service_details vsd
     WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='PR' )
        ,
    parts_net_amt = IFNULL(parts_amt,0) + IFNULL(vat_tax,0),
    total_amt = service_net_amt + parts_net_amt,
    salvage_amount = 
    COALESCE((SELECT SUM((vsd.amount * vsd.quantity)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )) ) 
     FROM vehicle_service_details vsd
     WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='SL' 
    ),0),
    salvage_tax_amt = COALESCE((SELECT SUM((vsd.amount * vsd.quantity * vsd.tax_rate * ignoreTax)/(1+(vsd.tax_rate * ignoreTax * vsd.inclusive )) ) 
     FROM vehicle_service_details vsd
     WHERE vsd.counter_sale_id=OLD.counter_sale_id AND vsd.service_type_cd='SL' ),0),
    salvage_net_amt = IFNULL(salvage_amount,0) + IFNULL(salvage_tax_amt,0),
    total_amt = service_net_amt + parts_net_amt + salvage_net_amt,
    line_level_discount=(SELECT SUM(COALESCE(vsd.discount_amount,0)) FROM vehicle_service_details vsd WHERE vsd.counter_sale_id=OLD.counter_sale_id)
    WHERE counter_sale_info_id=OLD.counter_sale_id;
    
    END IF;
    
    IF old.service_type_cd = 'SL' THEN  
        update salvage_parts_info 
            set available_qty= coalesce(available_qty,0) + old.quantity
            , assigned_qty = coalesce(assigned_qty,0) - old.quantity
            where salvage_parts_info_id=old.salvage_parts_id AND old.salvage_status ='A' ;
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vehicle_service_summary`
--

DROP TABLE IF EXISTS `vehicle_service_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_service_summary` (
  `vehicle_svc_summary_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL COMMENT 'Customer identification referring to customer in customer_vehicle_info table.',
  `vehicle_svc_id` int NOT NULL COMMENT 'Unique service id which will denote the service summary done on a vehicle.',
  `counter_sale_info_id` int DEFAULT NULL COMMENT 'Unique identification referring to the counter_sale_info table for the sales summary of the spare parts done over the counter.',
  `service_date` datetime DEFAULT NULL COMMENT 'The date when the service of the vehicle happened.',
  `service_amt` double NOT NULL DEFAULT '0' COMMENT 'The labour charge amount.',
  `service_tax` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'The tax on the labour charge amount',
  `service_net_amt` double NOT NULL DEFAULT '0' COMMENT 'Total labour charge amount which is service_amt + service_tax',
  `parts_amt` double NOT NULL DEFAULT '0' COMMENT 'The spare parts amount.',
  `vat_tax` double NOT NULL DEFAULT '0' COMMENT 'The tax on the spare parts amount. ',
  `parts_net_amt` double NOT NULL DEFAULT '0' COMMENT 'Total spare parts amount which is parts_amt + vat_tax',
  `salvage_amount` decimal(10,2) DEFAULT NULL COMMENT 'Salvage amount',
  `salvage_tax_amt` decimal(10,2) DEFAULT NULL COMMENT 'Total tax on salvage amount.',
  `salvage_net_amt` decimal(10,2) DEFAULT NULL COMMENT 'Total salvage amount which is salvage_amount + salvage_tax_amt',
  `total_amt` double NOT NULL DEFAULT '0' COMMENT 'Total amount for the vehicle service which is service_net_amt + parts_net_amt',
  `total_paid` decimal(10,2) DEFAULT NULL COMMENT 'Total amount paid by the customer for this service.',
  `invoice_id` int NOT NULL DEFAULT '0' COMMENT 'Invoice number for the tax invoice. If populated , then this service has the tax invoice',
  `cash_invoice_id` int NOT NULL DEFAULT '0' COMMENT 'Invoice number for the non tax invoice. If populated , then this service has the non tax invoice',
  `bill_no` int NOT NULL DEFAULT '0' COMMENT 'Bill of supply sequence number',
  `updated_on` datetime DEFAULT NULL COMMENT 'Date when this record got updated',
  `invoice_create_date` datetime DEFAULT NULL COMMENT 'Date when the invoice got created.',
  `line_level_discount` double DEFAULT NULL COMMENT 'The total discount amount that is applied at parts and service level.',
  `coupon_nbr` int DEFAULT NULL COMMENT 'Coupon Nbr , if applied',
  `coupon_discount` double NOT NULL DEFAULT '0' COMMENT 'The discount amount that got applied through coupon.',
  `invoice_blocking_reason` varchar(500) DEFAULT NULL COMMENT 'The reason for deleting an invoice.',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'The discount amount that is applied at an invoice level.',
  `disc_type` varchar(10) DEFAULT NULL COMMENT 'The type of discount whether its absolute discount or discount in percentage.',
  `amount_value` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'The value of discount applied in terms of percentage.',
  `due_date` date DEFAULT NULL COMMENT 'Date by which the service has to be complete or by when the vehicle has to be delivered.',
  `service_status` enum('A','R','B','D') NOT NULL COMMENT 'The status of the vehicle servicing where A->Arrived,R->Ready,B->Blocked,D->Done',
  `sms_reminders` enum('N','Y') NOT NULL COMMENT 'The flag to denote whether the customer has registered for SMS. Y is Yes and N is No.',
  `svc_registered_dt` datetime NOT NULL COMMENT 'The date on which the vehicle got registered in the system for servicing. update date of old CVI',
  `technician` varchar(25) DEFAULT NULL COMMENT 'The technician to whom the vehicle is assigned for servicing.',
  `supervisor_name` varchar(85) DEFAULT NULL COMMENT 'The supervisor to whom the vehicle is assigned for servicing.',
  `note` varchar(5000) DEFAULT NULL COMMENT 'Any special note from the customer that needs to be captured in invoice.',
  `svc_done_dt` date DEFAULT NULL COMMENT 'The date on which the service got completed. invoice date of old CVI',
  `internal_note` varchar(450) DEFAULT NULL COMMENT 'Internal note regarding customer or service. Does not get published in the invoice.',
  `company_name` varchar(25) DEFAULT NULL COMMENT 'The company from where the vehicle has come for servicing.',
  `freight_charges` decimal(10,2) DEFAULT '0.00' COMMENT 'The freight charges amount.',
  `revert_reason` varchar(500) DEFAULT NULL COMMENT 'Reason to revert the invoice from Standard or Non Tax Invoice to None.',
  `reverted_by` varchar(95) DEFAULT NULL COMMENT 'The person who reverted the invoice type from Standard to None.',
  `revert_date` date DEFAULT NULL COMMENT 'The date on which the invoice type was reverted from Standard to None.',
  `delivery_time` datetime DEFAULT NULL COMMENT 'The time taken for the service of the vehicle',
  `fleet_service_id` int DEFAULT NULL,
  `fleet_vehicle_number_id` int DEFAULT NULL,
  `bill_type` enum('Standard','Detailed','') DEFAULT NULL COMMENT 'S-Standard,D->Detailed',
  `kilometer_driven` varchar(550) DEFAULT NULL COMMENT 'The odometer reading or the kilometers driven by the vehicle',
  `customer_name` varchar(110) DEFAULT NULL COMMENT 'Customer or vehicle Owner name',
  `customer_mobile` varchar(15) DEFAULT NULL COMMENT 'Contact number of customer or vehicle owner',
  `customer_email` varchar(75) DEFAULT NULL COMMENT 'Email id of customer or vehicle owner',
  `customer_address` varchar(550) DEFAULT NULL COMMENT 'Address of customer or vehicle owner',
  `location_name` varchar(200) DEFAULT NULL COMMENT 'Location of customer or vehicle owner',
  `person_id` int DEFAULT NULL,
  `total_paid_cust` decimal(10,2) DEFAULT NULL COMMENT 'Total amount paid by customer towards the invoice amount.',
  `total_paid_ins` decimal(10,2) DEFAULT NULL COMMENT 'Total amount paid by insurance company towards the invoice amount.',
  `insurance_claim` varchar(25) DEFAULT NULL,
  `total_due_cust` decimal(10,2) DEFAULT NULL COMMENT 'Total due amount to be paid by customer towards the invoice amount.',
  `total_due_ins` decimal(10,2) DEFAULT NULL COMMENT 'Total due amount to be paid by insurance company towards the invoice amount.',
  `ramp_veh_booking_id` int DEFAULT NULL COMMENT 'In case of source type GOC this is goc_svc_id',
  `total_cess_value` decimal(10,2) DEFAULT NULL,
  `payment_details_data` varchar(555) DEFAULT NULL,
  `booking_type` varchar(50) DEFAULT NULL,
  `corp_ref_no` varchar(100) DEFAULT NULL COMMENT 'storing ref id for corporate customers',
  `crm_enquiry_id` varchar(25) DEFAULT NULL,
  `cancel_status` enum('S','D','A') DEFAULT NULL COMMENT 'S->Sent, D->Declined,A->Accepted',
  `goc_cancel_reason` varchar(555) DEFAULT NULL,
  `gms_cancel_reason` varchar(555) DEFAULT NULL,
  `country_phone_code` varchar(50) DEFAULT NULL,
  `progress_total` varchar(55) DEFAULT NULL,
  `fuel_level` varchar(50) DEFAULT NULL,
  `dte_kms` varchar(50) DEFAULT NULL,
  `testdrive_comments` varchar(50) DEFAULT NULL,
  `dynamic_jobcard_pdf_path` varchar(255) DEFAULT NULL,
  `pymt_receipt_path` varchar(255) NOT NULL,
  `row_updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Used for audit and analytics',
  `tax_sub_type` enum('SGST/UGST','IGST','GST','VAT','ST') DEFAULT NULL,
  `place_of_supply` varchar(255) DEFAULT NULL,
  `booking_id` varchar(50) DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `vehicle_in_date` datetime DEFAULT NULL,
  `vehicle_out_date` datetime DEFAULT NULL,
  `package_status` enum('Not Required','Mapped','Partially Mapped') NOT NULL DEFAULT 'Not Required',
  PRIMARY KEY (`vehicle_svc_summary_id`),
  KEY `counter_sale_info_id` (`counter_sale_info_id`),
  KEY `cust2` (`customer_id`),
  KEY `vehicleSvcId3` (`vehicle_svc_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='This table stores the summary of the service for a particular vehicle of a customer. It also contains the summary of spares sold over the counter for a vehcile of a customer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_service_summary`
--

LOCK TABLES `vehicle_service_summary` WRITE;
/*!40000 ALTER TABLE `vehicle_service_summary` DISABLE KEYS */;
INSERT INTO `vehicle_service_summary` VALUES (1,1,1,NULL,'2023-03-31 11:07:56',4560,820.80,5380.8,6511.9087500000005,1823.3344500000003,8335.2432,0.00,0.00,0.00,13716.0432,NULL,1,0,0,'2023-04-01 13:40:58','2023-04-01 13:29:59',1917.81,1,2000,NULL,0.04,'amount',0.04,'2023-07-01','D','N','2023-03-31 11:07:56','5','Supervisor X',NULL,'2023-04-01',NULL,'SUPER AUTO',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Detailed','85000','TEST CUSTOMER 1','8919344944','test.customer@gmail.com','Hyderabad','Hyderabad',5,11716.00,NULL,'No',0.00,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','60',NULL,NULL,NULL,NULL,'','2023-04-01 13:40:58',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(2,2,2,NULL,'2023-03-31 11:08:53',2500,450.00,2950,20499.6,5739.888,26239.487999999998,1880.00,526.40,2406.40,31595.888,NULL,2,0,0,'2023-04-01 14:21:34','2023-04-01 14:18:11',0.4,NULL,0,NULL,1499.00,'amount',1499.00,'2023-06-01','D','Y','2023-03-31 11:08:53','7','Supervisor 1',NULL,'2023-04-01',NULL,'17',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Detailed','87000','TEST CUSTOMER 2','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,10419.00,15000.00,'Yes',-0.11,4678.00,0,NULL,NULL,'Direct','','0',NULL,NULL,NULL,'91/IN/IND/INDIA','50',NULL,NULL,NULL,NULL,'','2023-04-01 14:21:34',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(3,3,3,NULL,'2023-03-31 11:10:10',2915,524.70,3439.7,8364.6725,2342.1083000000003,10706.7808,0.00,0.00,0.00,14146.480800000001,NULL,3,0,0,'2023-04-01 14:35:06','2023-04-01 14:32:19',341.64,NULL,0,NULL,630.00,'amount',630.00,'2023-06-01','D','Y','2023-03-31 11:10:10','8','Supervisor 2',NULL,'2023-04-01',NULL,'16',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Detailed','2000','TEST CUSTOMER 3','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,13516.48,NULL,'No',0.00,0.00,0,NULL,NULL,'Direct','','0',NULL,NULL,NULL,'91/IN/IND/INDIA','70',NULL,NULL,NULL,NULL,'','2023-04-01 14:35:06',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(4,4,4,NULL,'2023-03-31 11:10:44',3500,630.00,4130,8068.75,2021.25,10090,0.00,0.00,0.00,14220,NULL,4,0,0,'2023-04-01 14:37:31','2023-04-01 14:35:48',150,NULL,0,NULL,20.00,'amount',20.00,'2023-05-01','D','Y','2023-03-31 11:10:44','9','Supervisor 3',NULL,'2023-04-01',NULL,'SUPER AUTO',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Detailed','19000','TEST CUSTOMER 5','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,14200.00,NULL,'No',0.00,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','70',NULL,NULL,NULL,NULL,'','2023-04-01 14:37:31',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(5,5,5,NULL,'2023-03-31 11:31:37',8061.2,1451.02,9512.22,21909.272500000003,6134.596300000001,28043.868800000004,0.00,0.00,0.00,37556.088800000005,NULL,5,0,0,'2023-04-03 12:34:51','2023-04-03 12:29:15',808.5899999999999,NULL,0,NULL,6.09,'amount',6.09,'2023-06-03','D','Y','2023-03-31 11:31:37','10','Supervisor 4',NULL,'2023-04-03',NULL,'16',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Detailed','2000','TEST CUSTOMER4','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,37550.00,NULL,'No',0.00,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','80',NULL,NULL,NULL,NULL,'','2023-04-03 12:34:51',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(6,1,6,NULL,'2023-04-01 14:57:55',0,0.00,0,3526.375,987.3850000000002,4513.76,0.00,0.00,0.00,4513.76,NULL,0,0,0,'2023-04-04 11:36:23',NULL,0,NULL,0,NULL,0.00,NULL,0.00,NULL,'R','Y','2023-04-01 14:57:55','6','Supervisor X',NULL,NULL,NULL,'SUPER AUTO',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'85000','TRIAL CUSTOMER 1','8919344944','venkata.ysqa@gmail.com','Hyderabad','Hyderabad',5,NULL,NULL,'No',4513.76,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','20',NULL,NULL,NULL,NULL,'','2023-04-25 17:48:20',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(7,2,7,NULL,'2023-04-01 15:15:06',4200,756.00,4956,4296.875,1203.1250000000002,5500,0.00,0.00,0.00,10456,NULL,0,0,0,'2023-04-04 11:36:08',NULL,0,5,200,NULL,0.00,NULL,0.00,NULL,'A','N','2023-04-01 15:15:06','7','Supervisor 1',NULL,NULL,NULL,'17',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'97000','TRIAL CUSTOMER 2','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,2000.00,NULL,'No',8256.00,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','10',NULL,NULL,NULL,NULL,'','2023-04-04 11:36:08',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(8,3,8,NULL,'2023-04-01 16:07:55',0,0.00,0,49697.5,0,49697.5,0.00,0.00,0.00,49697.5,NULL,0,1,0,'2023-04-04 11:35:55','2023-04-03 12:57:36',0,NULL,0,NULL,999.00,'amount',999.00,'2023-07-03','R','Y','2023-04-01 16:07:55','8','Supervisor 2',NULL,NULL,NULL,'16',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'Standard','15000','TRIAL CUSTOMER 3','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,NULL,NULL,'No',48698.50,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','30',NULL,NULL,NULL,NULL,'','2023-04-04 11:35:55',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(9,5,9,NULL,'2023-04-01 16:31:24',3195,575.10,3770.1,10127.5275,2835.7077,12963.2352,0.00,0.00,0.00,16733.335199999998,NULL,6,0,0,'2023-04-04 11:34:39','2023-04-03 12:44:53',1138.41,4,150,NULL,0.00,NULL,0.00,NULL,'R','Y','2023-04-01 16:31:24','9','Supervisor 3',NULL,NULL,NULL,'16',0.00,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,'Detailed','2000','TRIAL CUSTOMER 4','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,5000.00,NULL,'No',11583.34,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','70',NULL,NULL,NULL,NULL,'','2023-04-04 13:01:16',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(10,4,10,NULL,'2023-04-01 16:34:44',0,0.00,0,0,0,0,NULL,NULL,NULL,0,NULL,0,0,0,'2023-04-04 11:34:26',NULL,NULL,NULL,0,NULL,0.00,NULL,0.00,NULL,'A','Y','2023-04-01 16:34:44','10','Supervisor 4',NULL,NULL,NULL,'15',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30000','TRIAL CUSTOMER 5','8464887117','contact@shanrohi.com','Hyderabad','Hyderabad',5,NULL,NULL,'Yes',1200.00,-1200.00,0,NULL,NULL,'Direct','#TESTID','0',NULL,NULL,NULL,'91/IN/IND/INDIA',NULL,NULL,NULL,NULL,NULL,'','2023-04-04 11:34:26',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required'),(11,6,11,NULL,'2023-04-04 13:04:38',0,0.00,0,0,0,0,NULL,NULL,NULL,0,NULL,0,0,0,'2023-04-04 13:05:40',NULL,NULL,NULL,0,NULL,0.00,NULL,0.00,NULL,'A','Y','2023-04-04 13:04:38','7','Supervisor 1',NULL,NULL,NULL,'15',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34000','TRIAL CUSTOMER 6','7878888888','','','Hyderabad',5,NULL,NULL,'Decide Later',0.00,0.00,0,NULL,NULL,'Direct',NULL,'0',NULL,NULL,NULL,'91/IN/IND/INDIA','10',NULL,NULL,NULL,NULL,'','2023-04-04 13:05:40',NULL,NULL,NULL,NULL,NULL,NULL,'Not Required');
/*!40000 ALTER TABLE `vehicle_service_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_vehicle_service_summary` AFTER INSERT ON `vehicle_service_summary` FOR EACH ROW BEGIN

IF(new.vehicle_svc_id > 0) THEN

INSERT into customer_insurance_details(customer_id,vehicle_svc_id) values (new.customer_id,new.vehicle_svc_id);

END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_vehicle_service_summary_update` AFTER UPDATE ON `vehicle_service_summary` FOR EACH ROW BEGIN 
  
	DECLARE no_of_bills INT;
	DECLARE actualBill INT;

	DECLARE actuallBills INT;
    DECLARE currentPackage VARCHAR(50);
    DECLARE currentExpiryDate DATE;
	
    SELECT meta_data.value INTO currentExpiryDate FROM meta_data WHERE meta_data.key = 'subscriptionexpiry';
  SELECT meta_data.value INTO actuallBills FROM meta_data WHERE meta_data.key = 'actuall_bills';
  SELECT meta_data.value INTO currentPackage FROM meta_data WHERE meta_data.key = 'package_cd';
  
	SELECT meta_data.value INTO actualBill FROM meta_data WHERE meta_data.key = 'actual_bills';

	IF ((new.invoice_id > 0 OR new.cash_invoice_id > 0) AND old.invoice_id = 0 AND old.cash_invoice_id = 0) THEN
	   SET no_of_bills = 1;
	   ELSE
	   SET no_of_bills = 0;
		   
	END IF;

	UPDATE meta_data
	   SET meta_data.value = actualBill + no_of_bills where meta_data.key = 'actual_bills' AND new.customer_id =new.customer_id;

IF (actuallBills = 0 AND currentPackage = 'Trial') THEN
    UPDATE meta_data SET meta_data.value=DATE_ADD(currentExpiryDate, INTERVAL 3 DAY) WHERE meta_data.key='subscriptionexpiry';
  END IF; 
		   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `workshop_info`
--

DROP TABLE IF EXISTS `workshop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_info` (
  `workshop_id` int NOT NULL AUTO_INCREMENT COMMENT 'The unique id for the workshop.',
  `workshop_name` varchar(100) NOT NULL COMMENT 'The name of the workshop.',
  `address` varchar(500) NOT NULL COMMENT 'The address of the workshop.',
  `location_name` varchar(50) DEFAULT NULL COMMENT 'The location of the workshop.',
  `city` varchar(50) DEFAULT NULL COMMENT 'The city of the workshop.',
  `state` varchar(50) DEFAULT NULL COMMENT 'The state of the workshop.',
  `country` varchar(150) DEFAULT NULL COMMENT 'The country of the workshop.',
  `contact_person_name` varchar(100) DEFAULT NULL COMMENT 'The contact person name of the workshop.',
  `contact_nbr` varchar(120) NOT NULL COMMENT 'The contact number of the workshop.',
  `email_id` varchar(40) NOT NULL COMMENT 'The email id of the workshop.',
  `caption` varchar(150) DEFAULT NULL COMMENT 'The caption for the workshop brand.',
  `prefix` varchar(80) DEFAULT NULL,
  `suffix` varchar(80) DEFAULT NULL,
  `tin_no` varchar(20) NOT NULL COMMENT 'The business pin of the workshop. Tax Identification Number.',
  `company_name` varchar(95) NOT NULL COMMENT 'The registered company name for the workshop',
  `cin_no` varchar(25) NOT NULL COMMENT 'One of the business identifier. Company Identification Number',
  `service_tax_no` varchar(25) NOT NULL COMMENT 'Service Tax Number of the business.',
  `owner_number` varchar(25) DEFAULT NULL COMMENT 'Contact number of the owner of the workshop.',
  `daily_notifications` enum('N','Y') NOT NULL,
  `template` varchar(550) DEFAULT NULL,
  `gst_number` varchar(35) DEFAULT NULL COMMENT 'The GST number of the workshop.',
  `reset_invoice` enum('Yes','No') DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL COMMENT 'Pincode of the workshop.',
  `website` varchar(80) DEFAULT NULL COMMENT 'Website of the workshop.',
  `jma_flag` enum('N','Y') NOT NULL,
  `tnm` enum('N','Y') NOT NULL,
  `about_us` text NOT NULL COMMENT 'Description about the workshop.',
  `geo_location` varchar(255) DEFAULT NULL COMMENT 'Geo location or coordinates of the workshop.',
  PRIMARY KEY (`workshop_id`),
  UNIQUE KEY `location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='This table contains the information related to a vehicle repair workshop or garage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_info`
--

LOCK TABLES `workshop_info` WRITE;
/*!40000 ALTER TABLE `workshop_info` DISABLE KEYS */;
INSERT INTO `workshop_info` VALUES (1,'RAMP WORKSHOP','Jubilee Enclave, Madhapur, Hyderabad','Hyderabad','Hyderabad','NA','India',NULL,'9121223601','test@shanrohi.com',NULL,NULL,NULL,'0000','','','',NULL,'N','RAMP+WORKSHOP(9121223601).',NULL,'Yes',NULL,NULL,'N','N','',NULL);
/*!40000 ALTER TABLE `workshop_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-15 19:45:15
