-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formulario
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
-- Table structure for table `app_post`
--

DROP TABLE IF EXISTS `app_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `gusta_hacer` varchar(50) NOT NULL,
  `si_o_no` varchar(2) NOT NULL,
  `que_piensas` longtext NOT NULL,
  `fecha_post` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_post`
--

LOCK TABLES `app_post` WRITE;
/*!40000 ALTER TABLE `app_post` DISABLE KEYS */;
INSERT INTO `app_post` VALUES (1,'Amaya (admin)','cocalombia','Jugar juegos jugables','Si','no se, ojala respondan el test XD','2021-09-12'),(2,'ochoa','Mexico','que te importa','Si','inigualable, indescriptible, perfecta','2021-09-10'),(3,'Papi','México','Jugar juegos jugables','Si','Es una lenteja o la tomas o la dejas','2021-08-12'),(4,'XD','De tu vieja','que te importa','No','Que sos gay','2021-08-30'),(5,'P','Mexico','Jugar juegos jugables','No','no vale la pena destruyamos a la civilización que esclavisa y destruye la naturaleza','2021-09-01'),(6,'Miguel','Colombia','Jugar juegos jugables','Si','Sexo','2021-09-12'),(7,'Eric Abrahm','Mexico','Ver anime','Si','Que es un juego que se tiene que vivir al maximo','2021-09-11'),(8,'El Fifa','Mexico','que te importa','Si','Normal','2021-09-09'),(9,'Que te importa careverga❤️','Rusia','masturbarme','No','Que te importa careverga','2021-09-12'),(10,'Yagos','De donde nacio tu puta madre','que te importa','No','Que... Vale verga','2021-07-29'),(11,'Sael','Ecuador','Jugar juegos jugables','No','Que no tiene sentido pero igual hay que vivirla','2021-07-13'),(12,'Tonto pendejo estúpido de mierda','Afganistán','masturbarme','No','Si','0001-12-29'),(13,'C. Trap','Kwai','Jugar juegos jugables','No','Que no se puede vivir sin que me caguen en la boca los jueves','0001-01-01'),(14,'A waifu wawa AHAHAHAHA(Jade)','México zzz','Ver anime','Si','K es una kk y me gusta chino q','2021-09-28'),(15,'Soy tilin','Canada','masturbarme','Si','Tengo sida flaco, todas putas','2021-11-30');
/*!40000 ALTER TABLE `app_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$u8cvjlU6FpCQN9FAjoM6QA$FMKu9ScgsyoSlYaCSpvrzKhdnbmgPA/dnSPrRrOO97s=','2021-11-30 17:32:40.870028',1,'juank','','','iefaz.juanamaya@gmail.com',1,1,'2021-10-11 15:47:03.132689');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-11 15:56:58.823702','1','post object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-10-19 21:29:33.931563','3','post object (3)',1,'[{\"added\": {}}]',7,1),(3,'2021-11-30 17:33:40.170539','5','post object (5)',1,'[{\"added\": {}}]',7,1),(4,'2021-11-30 17:34:23.778922','6','post object (6)',1,'[{\"added\": {}}]',7,1),(5,'2021-11-30 17:34:56.833017','7','post object (7)',1,'[{\"added\": {}}]',7,1),(6,'2021-11-30 17:35:25.089303','8','post object (8)',1,'[{\"added\": {}}]',7,1),(7,'2021-11-30 17:35:28.990074','8','post object (8)',2,'[]',7,1),(8,'2021-11-30 17:36:03.840067','9','post object (9)',1,'[{\"added\": {}}]',7,1),(9,'2021-11-30 17:36:36.949068','10','post object (10)',1,'[{\"added\": {}}]',7,1),(10,'2021-11-30 17:37:29.211028','11','post object (11)',1,'[{\"added\": {}}]',7,1),(11,'2021-11-30 17:38:07.686717','12','post object (12)',1,'[{\"added\": {}}]',7,1),(12,'2021-11-30 17:38:58.203739','13','post object (13)',1,'[{\"added\": {}}]',7,1),(13,'2021-11-30 17:39:21.612356','12','post object (12)',2,'[]',7,1),(14,'2021-11-30 17:40:02.740975','14','post object (14)',1,'[{\"added\": {}}]',7,1),(15,'2021-11-30 19:00:11.033950','15','post object (15)',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','post'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-09 00:25:39.059322'),(2,'auth','0001_initial','2021-10-09 00:26:18.914421'),(3,'admin','0001_initial','2021-10-09 00:26:26.217908'),(4,'admin','0002_logentry_remove_auto_add','2021-10-09 00:26:26.285903'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-09 00:26:26.356900'),(6,'contenttypes','0002_remove_content_type_name','2021-10-09 00:26:29.485351'),(7,'auth','0002_alter_permission_name_max_length','2021-10-09 00:26:34.158053'),(8,'auth','0003_alter_user_email_max_length','2021-10-09 00:26:35.285038'),(9,'auth','0004_alter_user_username_opts','2021-10-09 00:26:35.540968'),(10,'auth','0005_alter_user_last_login_null','2021-10-09 00:26:42.068195'),(11,'auth','0006_require_contenttypes_0002','2021-10-09 00:26:42.295184'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-09 00:26:42.544212'),(13,'auth','0008_alter_user_username_max_length','2021-10-09 00:26:45.031054'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-09 00:26:48.161807'),(15,'auth','0010_alter_group_name_max_length','2021-10-09 00:26:48.771831'),(16,'auth','0011_update_proxy_permissions','2021-10-09 00:26:48.853828'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-09 00:26:51.886210'),(18,'sessions','0001_initial','2021-10-09 00:26:55.129002'),(19,'app','0001_initial','2021-10-11 15:50:28.730966');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fs61ko81vsksi09bdry1okgmlghch49y','.eJxVjDsOwjAQRO_iGll2jH-U9DmDtd7d4ABypDipEHcHSymgG817My-RYN9K2huvaSZxEVqcfrsM-ODaAd2h3haJS93WOcuuyIM2OS7Ez-vh_h0UaOW7RlZRk7MGPeiAZjoPhMYOikgp6MHmSMFRiNZ4jTwZyjly0M6SJyXeH912N8w:1ms6zh:spXx_ogtT1BxJ8F3MvaovEX2tbQq27F31HMDMmBMqno','2021-12-14 17:32:41.009010'),('y8l3ua7j20dvg7l4ovw8x9d8uknfzoht','.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EGQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQ5szOT7PS7QcIHtR3ke2q3zrG3dZmB7wo_6ODXnul5Ody_g5pG_dZkvZRBFGdV8dJoq71zgMWAczoEJdBPokjQhoLyKF1AQ5MiUMInK4C9P6_eNr4:1mZxWv:A2u42lRNcUsDYzO_T80gcqUvUY9lgp_cI8vn6Yztx9g','2021-10-25 15:47:57.918298'),('zy7r5nojwh2fmkan6bqbg4o50aho5gu7','.eJxVjDsOwjAQRO_iGll2jH-U9DmDtd7d4ABypDipEHcHSymgG817My-RYN9K2huvaSZxEVqcfrsM-ODaAd2h3haJS93WOcuuyIM2OS7Ez-vh_h0UaOW7RlZRk7MGPeiAZjoPhMYOikgp6MHmSMFRiNZ4jTwZyjly0M6SJyXeH912N8w:1mcwds:fWqaOreI0HMysQKbvHFSYUsMYYqxvmeV5_lJQG_XSDs','2021-11-02 21:27:28.765709');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 14:09:18
