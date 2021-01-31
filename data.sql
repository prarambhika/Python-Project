-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `Sales_customuser`
--

DROP TABLE IF EXISTS `Sales_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales_customuser` (
  `id` varchar(0) DEFAULT NULL,
  `password` varchar(0) DEFAULT NULL,
  `last_login` varchar(0) DEFAULT NULL,
  `is_superuser` varchar(0) DEFAULT NULL,
  `username` varchar(0) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` varchar(0) DEFAULT NULL,
  `is_active` varchar(0) DEFAULT NULL,
  `date_joined` varchar(0) DEFAULT NULL,
  `is_admin` varchar(0) DEFAULT NULL,
  `is_shop` varchar(0) DEFAULT NULL,
  `is_customer` varchar(0) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_customuser`
--

LOCK TABLES `Sales_customuser` WRITE;
/*!40000 ALTER TABLE `Sales_customuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales_customuser_groups`
--

DROP TABLE IF EXISTS `Sales_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales_customuser_groups` (
  `id` varchar(0) DEFAULT NULL,
  `customuser_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_customuser_groups`
--

LOCK TABLES `Sales_customuser_groups` WRITE;
/*!40000 ALTER TABLE `Sales_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales_customuser_user_permissions`
--

DROP TABLE IF EXISTS `Sales_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales_customuser_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `customuser_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_customuser_user_permissions`
--

LOCK TABLES `Sales_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `Sales_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales_product`
--

DROP TABLE IF EXISTS `Sales_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales_product` (
  `id` varchar(0) DEFAULT NULL,
  `product_name` varchar(0) DEFAULT NULL,
  `price` varchar(0) DEFAULT NULL,
  `discount` varchar(0) DEFAULT NULL,
  `image` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_product`
--

LOCK TABLES `Sales_product` WRITE;
/*!40000 ALTER TABLE `Sales_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales_shop`
--

DROP TABLE IF EXISTS `Sales_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales_shop` (
  `id` varchar(0) DEFAULT NULL,
  `shop_name` varchar(0) DEFAULT NULL,
  `contact` varchar(0) DEFAULT NULL,
  `location` varchar(0) DEFAULT NULL,
  `category` varchar(0) DEFAULT NULL,
  `contact_person` varchar(0) DEFAULT NULL,
  `branded` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `password` varchar(0) DEFAULT NULL,
  `password2` varchar(0) DEFAULT NULL,
  `CustomUser_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales_shop`
--

LOCK TABLES `Sales_shop` WRITE;
/*!40000 ALTER TABLE `Sales_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_contenttype','Can add content type'),(14,4,'change_contenttype','Can change content type'),(15,4,'delete_contenttype','Can delete content type'),(16,4,'view_contenttype','Can view content type'),(17,5,'add_session','Can add session'),(18,5,'change_session','Can change session'),(19,5,'delete_session','Can delete session'),(20,5,'view_session','Can view session'),(21,6,'add_product','Can add product'),(22,6,'change_product','Can change product'),(23,6,'delete_product','Can delete product'),(24,6,'view_product','Can view product'),(25,7,'add_customuser','Can add user'),(26,7,'change_customuser','Can change user'),(27,7,'delete_customuser','Can delete user'),(28,7,'view_customuser','Can view user'),(29,8,'add_shop','Can add shop'),(30,8,'change_shop','Can change shop'),(31,8,'delete_shop','Can delete shop'),(32,8,'view_shop','Can view shop');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` varchar(0) DEFAULT NULL,
  `action_time` varchar(0) DEFAULT NULL,
  `object_id` varchar(0) DEFAULT NULL,
  `object_repr` varchar(0) DEFAULT NULL,
  `change_message` varchar(0) DEFAULT NULL,
  `content_type_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `action_flag` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'Sales','customuser'),(6,'Sales','product'),(8,'Sales','shop'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-30'),(2,'contenttypes','0002_remove_content_type_name','2021-01-30'),(3,'auth','0001_initial','2021-01-30'),(4,'auth','0002_alter_permission_name_max_length','2021-01-30'),(5,'auth','0003_alter_user_email_max_length','2021-01-30'),(6,'auth','0004_alter_user_username_opts','2021-01-30'),(7,'auth','0005_alter_user_last_login_null','2021-01-30'),(8,'auth','0006_require_contenttypes_0002','2021-01-30'),(9,'auth','0007_alter_validators_add_error_messages','2021-01-30'),(10,'auth','0008_alter_user_username_max_length','2021-01-30'),(11,'auth','0009_alter_user_last_name_max_length','2021-01-30'),(12,'auth','0010_alter_group_name_max_length','2021-01-30'),(13,'auth','0011_update_proxy_permissions','2021-01-30'),(14,'Sales','0001_initial','2021-01-30'),(15,'admin','0001_initial','2021-01-30'),(16,'admin','0002_logentry_remove_auto_add','2021-01-30'),(17,'admin','0003_logentry_add_action_flag_choices','2021-01-30'),(18,'sessions','0001_initial','2021-01-30'),(19,'Sales','0002_auto_20210130_1542','2021-01-30'),(20,'auth','0012_alter_user_first_name_max_length','2021-01-30');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(0) DEFAULT NULL,
  `session_data` varchar(0) DEFAULT NULL,
  `expire_date` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',20),('django_content_type',8),('auth_permission',32),('auth_group',0),('django_admin_log',0),('Sales_customuser',0);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:26:18
