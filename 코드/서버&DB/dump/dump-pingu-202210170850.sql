-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: pingu
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `daily_learn_info`
--

DROP TABLE IF EXISTS `daily_learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_learn_info` (
  `daily_learn_info_if` varchar(100) DEFAULT NULL,
  `weekly_learn_info_id` varchar(100) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `learn_day` date DEFAULT NULL,
  `learning_time` datetime DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_learn_info`
--

LOCK TABLES `daily_learn_info` WRITE;
/*!40000 ALTER TABLE `daily_learn_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learn_info`
--

DROP TABLE IF EXISTS `learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learn_info` (
  `learn_info_id` varchar(100) DEFAULT NULL,
  `day_learn_info_id` varchar(100) DEFAULT NULL,
  `voca_note_id` varchar(100) DEFAULT NULL,
  `learning_time` datetime DEFAULT NULL,
  `new_know_word` int DEFAULT NULL,
  `exam_rate` double DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learn_info`
--

LOCK TABLES `learn_info` WRITE;
/*!40000 ALTER TABLE `learn_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_learn_info`
--

DROP TABLE IF EXISTS `monthly_learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_learn_info` (
  `monthly_learn_info_id` varchar(100) DEFAULT NULL,
  `learn_month` varchar(100) DEFAULT NULL,
  `learning_time` date DEFAULT NULL,
  `attendance_date` int DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_learn_info`
--

LOCK TABLES `monthly_learn_info` WRITE;
/*!40000 ALTER TABLE `monthly_learn_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_company`
--

DROP TABLE IF EXISTS `publishing_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_company` (
  `company_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_company`
--

LOCK TABLES `publishing_company` WRITE;
/*!40000 ALTER TABLE `publishing_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `publishing_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textbook` (
  `textbook_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `publishing_date` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `school` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `grade` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `word_number` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `authority_level` varchar(7) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin','ADMIN','관리자','aaa@bbb.com',0,NULL,NULL,NULL,NULL,NULL),('test1','test111','USER','사용자',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('바보','바보1','바보다','바보임?','헐',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` varchar(20) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `total_learn_time` datetime DEFAULT NULL,
  `total_attendance_date` int DEFAULT NULL,
  `total_know_word` int DEFAULT NULL,
  `exam_rate` double DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca`
--

DROP TABLE IF EXISTS `voca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca` (
  `voca_note_id` varchar(100) NOT NULL,
  `word` varchar(100) NOT NULL,
  `mean` varchar(100) DEFAULT NULL,
  `word_class` varchar(10) DEFAULT NULL,
  `overlapping_number` int DEFAULT NULL,
  `importance_level` int DEFAULT NULL,
  `sentences_example` varchar(1000) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`voca_note_id`,`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca`
--

LOCK TABLES `voca` WRITE;
/*!40000 ALTER TABLE `voca` DISABLE KEYS */;
INSERT INTO `voca` VALUES ('VN20221004145505556','test','사과','명사',1,1,'test is hard','127.0.0.1','2022-10-04 14:55:06','2022-10-04 14:55:06','2022-10-04 05:55:06');
/*!40000 ALTER TABLE `voca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca_note`
--

DROP TABLE IF EXISTS `voca_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca_note` (
  `voca_note_id` varchar(100) DEFAULT NULL,
  `voca_unit_id` varchar(100) DEFAULT NULL,
  `word_number` int DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca_note`
--

LOCK TABLES `voca_note` WRITE;
/*!40000 ALTER TABLE `voca_note` DISABLE KEYS */;
INSERT INTO `voca_note` VALUES ('VN20221005174429857',':I_voca_unit_id',0,'0','','2022-10-05 17:44:30','2022-10-05 17:44:30','2022-10-05 08:44:30');
/*!40000 ALTER TABLE `voca_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca_unit`
--

DROP TABLE IF EXISTS `voca_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca_unit` (
  `voca_unit_id` varchar(100) DEFAULT NULL,
  `textbook_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `word_number` int DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca_unit`
--

LOCK TABLES `voca_unit` WRITE;
/*!40000 ALTER TABLE `voca_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `voca_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_learn_info`
--

DROP TABLE IF EXISTS `weekly_learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_learn_info` (
  `weekly_learn_info_id` varchar(100) DEFAULT NULL,
  `month_learn_info_id` varchar(100) DEFAULT NULL,
  `learn_week` varchar(10) DEFAULT NULL,
  `learning_time` datetime DEFAULT NULL,
  `attendance_date` int DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_learn_info`
--

LOCK TABLES `weekly_learn_info` WRITE;
/*!40000 ALTER TABLE `weekly_learn_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pingu'
--
/*!50003 DROP PROCEDURE IF EXISTS `textbook__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `textbook__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM textbook
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; -- 트랜잭션 시작(필요할 경우 사용. 생략 가능)
	EXECUTE stmt;  -- 쿼리 실행    
	DEALLOCATE PREPARE stmt; -- prepare문을 해제한다.
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `textbook__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `textbook__UpdateNInsert`(
	IN `I_textbook_id` VARCHAR(100),
	IN `I_title` VARCHAR(100),
	IN `I_publishing_date` VARCHAR(100),
	IN `I_company_name` VARCHAR(100),
	IN `I_school` VARCHAR(20),
	IN `I_grade` VARCHAR(10),
	IN `I_word_number` INT,
	IN `I_status` VARCHAR(10),
	IN `I_remark` VARCHAR(1000),
	OUT `O_textbook_id` VARCHAR(100)
)
BEGIN
	SET O_textbook_id = '';
	IF EXISTS (SELECT * FROM textbook WHERE textbook_id = I_textbook_id) THEN
		UPDATE textbook 
		   SET	title  = I_title,
		   		publishing_date = I_publishing_date,
		   		company_name = I_company_name,
		   		school = I_school,
		   		grade = I_grade,
				word_number = I_word_number,
				status = I_status,
		   		remark = I_remark,
				update_time = NOW(3),
				TIME_STAMP = NOW(3)
		 WHERE textbook_id = I_textbook_id;
	ELSE
		SELECT CONCAT('TB',  REPLACE(REPLACE(REPLACE(REPLACE(NOW(3),'-',''),' ',''),':',''),'.','')) INTO @ID;
		SET O_textbook_id = @ID;
	
		INSERT INTO textbook 
			  VALUES (@ID,I_title,I_publishing_date,I_company_name,I_school,I_grade,I_word_number,I_status,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca_note__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_note__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM voca_note
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; -- 트랜잭션 시작(필요할 경우 사용. 생략 가능)
	EXECUTE stmt;  -- 쿼리 실행    
	DEALLOCATE PREPARE stmt; -- prepare문을 해제한다.
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca_note__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_note__UpdateNInsert`(
	IN `I_voca_note_id` VARCHAR(100),
	IN `I_voca_unit_id` VARCHAR(100),
	IN `I_word_number` INT,
	IN `I_type` VARCHAR(10),
	IN `I_remark` VARCHAR(1000),
	OUT `O_voca_note_id` VARCHAR(100)
)
BEGIN
	SET O_voca_note_id = '';
	IF EXISTS (SELECT * FROM voca_note WHERE voca_note_id = I_voca_note_id) THEN
		UPDATE voca_note
		   SET	voca_unit_id = I_voca_unit_id,
				word_number = I_word_number,
				`type`  = I_type,
		   		remark = I_remark,
				update_time = NOW(3),
				TIME_STAMP = NOW(3)
		 WHERE voca_note_id = I_voca_note_id AND word = I_word;
	ELSE
		SELECT CONCAT('VN',  REPLACE(REPLACE(REPLACE(REPLACE(NOW(3),'-',''),' ',''),':',''),'.','')) INTO @ID;
		SET O_voca_note_id = @ID;
	
		INSERT INTO voca_note 
			  VALUES (@ID,I_voca_unit_id,I_word_number,I_type,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca_unit__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_unit__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM voca_unit
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; -- 트랜잭션 시작(필요할 경우 사용. 생략 가능)
	EXECUTE stmt;  -- 쿼리 실행    
	DEALLOCATE PREPARE stmt; -- prepare문을 해제한다.
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca_unit__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_unit__UpdateNInsert`(
	IN `I_voca_unit_id` VARCHAR(100),
	IN `I_textbook_id` VARCHAR(100),
	IN `I_title` VARCHAR(100),
	IN `I_word_number` INT,
	IN `I_type` VARCHAR(10),
	IN `I_remark` VARCHAR(1000),
	OUT `O_voca_unit_id` VARCHAR(100)
)
BEGIN
	SET O_voca_unit_id = '';
	IF EXISTS (SELECT * FROM voca_unit WHERE voca_unit_id  = I_voca_unit_id) THEN
		UPDATE voca_unit
		   SET	textbook_id  = I_textbook_id,
		   		title  = I_title,
				word_number = I_word_number,
				`type`  = I_type,
		   		remark = I_remark,
				update_time = NOW(3),
				TIME_STAMP = NOW(3)
		 WHERE voca_unit_id = I_voca_unit_id;
	ELSE
		SELECT CONCAT('VU',  REPLACE(REPLACE(REPLACE(REPLACE(NOW(3),'-',''),' ',''),':',''),'.','')) INTO @ID;
		SET O_voca_unit_id = @ID;
	
		INSERT INTO voca_unit 
			  VALUES (@ID,I_textbook_id,I_title,I_word_number,I_type,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca__Create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca__Create`(
	IN `I_textbook_id` VARCHAR(100),
	IN `I_tb_title` VARCHAR(100),
	IN `I_vu_title` VARCHAR(100),
	IN `I_publishing_date` VARCHAR(100),
	IN `I_company_name` VARCHAR(100),
	IN `I_school` VARCHAR(20),
	IN `I_grade` VARCHAR(10),
	IN `I_status` VARCHAR(10),
	IN `I_remark` VARCHAR(1000)
)
BEGIN
	CALL pingu.textbook__UpdateNInsert(I_textbook_id,I_tb_title,I_publishing_date,I_company_name,I_school,I_grade,0,I_status,I_remark,@TB_ID) ;
	
	CALL pingu.voca_unit__UpdateNInsert(I_voca_unit_id,@TB_ID,I_vu_title,0,I_type,'',@VU_ID) ;
	
	CALL pingu.voca_note__UpdateNInsert(I_voca_note_id,@VU_ID,0,I_type,'',@VN_ID) ;
	
	CALL pingu.voca__UpdateNInsert(@VN_ID,I_word,I_mean,I_word_class,I_overlapping_number,I_importance_level,I_sentences_example,'') ;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM voca
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; -- 트랜잭션 시작(필요할 경우 사용. 생략 가능)
	EXECUTE stmt;  -- 쿼리 실행    
	DEALLOCATE PREPARE stmt; -- prepare문을 해제한다.
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voca__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca__UpdateNInsert`(
	IN `I_voca_note_id` VARCHAR(100),
	IN `I_word` VARCHAR(100),
	IN `I_mean` VARCHAR(100),
	IN `I_word_class` VARCHAR(10),
	IN `I_overlapping_number` INT,
	IN `I_importance_level` INT,
	IN `I_sentences_example` VARCHAR(1000),
	IN `I_remark` VARCHAR(1000)
)
BEGIN
	IF EXISTS (SELECT * FROM voca WHERE voca_note_id = I_voca_note_id AND word = I_word) THEN
		UPDATE voca
		   SET mean = I_mean,
		       word_class = I_word_class,
		       overlapping_number = I_overlapping_number,
		       importance_level = I_importance_level,
		       sentences_example = I_sentences_example,
		       remark = I_remark,
		       update_time = NOW(3),
		       TIME_STAMP = NOW(3)
		 WHERE voca_note_id = I_voca_note_id AND word = I_word;
	ELSE
		INSERT INTO voca 
			  VALUES (I_voca_note_id,I_word,I_mean,I_word_class,I_overlapping_number,I_importance_level,I_sentences_example,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
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

-- Dump completed on 2022-10-17  8:50:30
