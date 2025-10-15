-- MySQL dump 10.13  Distrib 9.5.0, for macos15.4 (arm64)
--
-- Host: localhost    Database: banking_management
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--


--
-- Table structure for table `bm_Acc_types`
--

DROP TABLE IF EXISTS `bm_Acc_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_Acc_types` (
  `acctype_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  PRIMARY KEY (`acctype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_Acc_types`
--

LOCK TABLES `bm_Acc_types` WRITE;
/*!40000 ALTER TABLE `bm_Acc_types` DISABLE KEYS */;
INSERT INTO `bm_Acc_types` VALUES (1,'Savings','<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>','20','ACC-CAT-4EZFO'),(2,' Retirement','<p>Retirement accounts&nbsp;offer&nbsp;tax advantages. In very general terms, you get to&nbsp;avoid paying income tax on interest&nbsp;you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs (both&nbsp;Traditional IRAs&nbsp;and&nbsp;Roth IRAs), and they may also provide&nbsp;retirement accounts for small businesses</p>','10','ACC-CAT-1QYDV'),(4,'Recurring deposit','<p><strong>Recurring deposit account or RD account</strong> is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate.&nbsp;In RD&nbsp;account a&nbsp;fixed amount is deposited&nbsp;every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.&nbsp;</p><p>The period of deposit is minimum six months and maximum ten years.&nbsp;The interest rates vary&nbsp;for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period.</p><p>These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.&nbsp;</p>','15','ACC-CAT-VBQLE'),(5,'Fixed Deposit Account','<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>','40','ACC-CAT-A86GO'),(7,'Current account','<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>','20','ACC-CAT-4O8QW');
/*!40000 ALTER TABLE `bm_Acc_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_admin`
--

DROP TABLE IF EXISTS `bm_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_admin`
--

LOCK TABLES `bm_admin` WRITE;
/*!40000 ALTER TABLE `bm_admin` DISABLE KEYS */;
INSERT INTO `bm_admin` VALUES (2,'System Administrator','sysadmin@bankingmanagement.com','iBank-ADM-0516','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad','');
/*!40000 ALTER TABLE `bm_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_bankAccounts`
--

DROP TABLE IF EXISTS `bm_bankAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_bankAccounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_bankAccounts`
--

LOCK TABLES `bm_bankAccounts` WRITE;
/*!40000 ALTER TABLE `bm_bankAccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_bankAccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_clients`
--

DROP TABLE IF EXISTS `bm_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_clients`
--

LOCK TABLES `bm_clients` WRITE;
/*!40000 ALTER TABLE `bm_clients` DISABLE KEYS */;
INSERT INTO `bm_clients` VALUES (3,'John Doe','36756481','9897890089','127007 Localhost','johndoe@gmail.com','a69681bcf334ae130217fea4505fd3c994f5683f','','iBank-CLIENT-8127');
/*!40000 ALTER TABLE `bm_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_notifications`
--

DROP TABLE IF EXISTS `bm_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_notifications`
--

LOCK TABLES `bm_notifications` WRITE;
/*!40000 ALTER TABLE `bm_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_staff`
--

DROP TABLE IF EXISTS `bm_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_staff`
--

LOCK TABLES `bm_staff` WRITE;
/*!40000 ALTER TABLE `bm_staff` DISABLE KEYS */;
INSERT INTO `bm_staff` VALUES (3,'Staff ','iBank-STAFF-6785','0704975742','staff@bankingmanagement.com','a69681bcf334ae130217fea4505fd3c994f5683f','Male','Orion.jpg');
/*!40000 ALTER TABLE `bm_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_SystemSettings`
--

DROP TABLE IF EXISTS `bm_SystemSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_SystemSettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_SystemSettings`
--

LOCK TABLES `bm_SystemSettings` WRITE;
/*!40000 ALTER TABLE `bm_SystemSettings` DISABLE KEYS */;
INSERT INTO `bm_SystemSettings` VALUES (1,'Banking Management System','Your Trusted Financial Partner','bank.png');
/*!40000 ALTER TABLE `bm_SystemSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_Transactions`
--

DROP TABLE IF EXISTS `bm_Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bm_Transactions` (
  `tr_id` int NOT NULL AUTO_INCREMENT,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bm_Transactions`
--

LOCK TABLES `bm_Transactions` WRITE;
/*!40000 ALTER TABLE `bm_Transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_Transactions` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-29  1:45:51
