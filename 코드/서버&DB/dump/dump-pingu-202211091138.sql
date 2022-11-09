-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 43.200.194.211    Database: pingu
-- ------------------------------------------------------
-- Server version	5.7.40-0ubuntu0.18.04.1

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
  `daily_learn_info_id` varchar(100) NOT NULL COMMENT '일일학습ID',
  `weekly_learn_info_id` varchar(100) DEFAULT NULL COMMENT '주간학습ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '사용자ID',
  `learn_day` date DEFAULT NULL COMMENT '학습일',
  `learning_time` int(11) DEFAULT '0' COMMENT '학습시간',
  `new_know_word` int(11) DEFAULT '0' COMMENT '학습단어수',
  `exam_rate` double DEFAULT '0' COMMENT '시험성적',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`daily_learn_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_learn_info`
--

LOCK TABLES `daily_learn_info` WRITE;
/*!40000 ALTER TABLE `daily_learn_info` DISABLE KEYS */;
INSERT INTO `daily_learn_info` VALUES ('1','1','123','2022-10-24',18,20,77,NULL,NULL,NULL,NULL),('2','2','123','2022-10-23',22,30,35,NULL,NULL,NULL,NULL),('3','3','123','2022-10-22',45,30,45,NULL,NULL,NULL,NULL),('4','4','123','2022-10-21',60,45,32,NULL,NULL,NULL,NULL),('5','5','123','2022-10-20',36,33,82,NULL,NULL,NULL,NULL),('6','6','123','2022-10-19',54,57,75,NULL,NULL,NULL,NULL),('7','7','123','2022-10-18',51,35,98,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `daily_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learn_info`
--

DROP TABLE IF EXISTS `learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learn_info` (
  `learn_info_id` varchar(100) NOT NULL COMMENT '학습정보ID',
  `day_learn_info_id` varchar(100) DEFAULT NULL COMMENT '일일학습ID',
  `voca_note_id` varchar(100) DEFAULT NULL COMMENT '노트ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '사용자ID',
  `learning_time` int(11) DEFAULT NULL COMMENT '학습시간',
  `new_know_word` int(11) DEFAULT NULL COMMENT '학습단어수',
  `exam_rate` double DEFAULT NULL COMMENT '시험성적',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`learn_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learn_info`
--

LOCK TABLES `learn_info` WRITE;
/*!40000 ALTER TABLE `learn_info` DISABLE KEYS */;
INSERT INTO `learn_info` VALUES ('test1','day','noteid','qwe',30,10,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_learn_info`
--

DROP TABLE IF EXISTS `monthly_learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_learn_info` (
  `monthly_learn_info_id` varchar(100) NOT NULL COMMENT '월간학습ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '사용자ID',
  `learn_month` varchar(10) DEFAULT NULL COMMENT '학습월',
  `learning_time` int(11) DEFAULT NULL COMMENT '학습시간',
  `new_know_word` int(11) DEFAULT NULL COMMENT '학습단어수',
  `exam_rate` double DEFAULT NULL COMMENT '시험성적',
  `attendance_date` int(11) DEFAULT NULL COMMENT '출석일',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`monthly_learn_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_learn_info`
--

LOCK TABLES `monthly_learn_info` WRITE;
/*!40000 ALTER TABLE `monthly_learn_info` DISABLE KEYS */;
INSERT INTO `monthly_learn_info` VALUES ('1','123','2022-10',605,458,65,20,NULL,NULL,NULL,NULL),('2','123','2022-09',450,345,45,18,NULL,NULL,NULL,NULL),('3','123','2022-05',687,550,87,23,NULL,NULL,NULL,NULL),('4','123','2022-07',388,247,57,25,NULL,NULL,NULL,NULL),('5','123','2022-06',427,335,70,21,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `monthly_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_company`
--

DROP TABLE IF EXISTS `publishing_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_company` (
  `company_id` varchar(100) NOT NULL COMMENT '출판사ID',
  `company_name` varchar(100) DEFAULT NULL COMMENT '출판사이름',
  `email` varchar(100) DEFAULT NULL COMMENT '이메일',
  `status` tinyint(4) DEFAULT NULL COMMENT '상태 (0: 사용불가능, 1: 부분사용가능, 2: 사용가능)',
  `phone_number` varchar(20) DEFAULT NULL COMMENT '전화번호',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_company`
--

LOCK TABLES `publishing_company` WRITE;
/*!40000 ALTER TABLE `publishing_company` DISABLE KEYS */;
INSERT INTO `publishing_company` VALUES ('PNC20221024071055099','천재교육','hjy0108@chunjae.co.kr',0,'1577-6226','','2022-10-24 07:10:55','2022-10-24 07:20:28','2022-10-23 22:20:28'),('PNC20221024071317270','비상','webmaster@visang.com',0,'1544-0554','','2022-10-24 07:13:17','2022-10-24 07:13:17','2022-10-23 22:13:17'),('PNC20221024071343243','교학사','webmaster@kyohak.co.kr',0,'02-707-5100','','2022-10-24 07:13:43','2022-10-24 07:13:43','2022-10-23 22:13:43'),('PNC20221024071416005','동아출판','',0,'','','2022-10-24 07:14:16','2022-10-24 07:14:16','2022-10-23 22:14:16'),('PNC20221024071443862','미래앤','webadmin@mirae-n.com',0,'800-8890','','2022-10-24 07:14:44','2022-10-24 07:14:44','2022-10-23 22:14:44'),('PNC20221024071506841','지학사','WEBMASTER@JIHAK.CO.KR',0,'02-330-5200','','2022-10-24 07:15:07','2022-10-24 07:15:07','2022-10-23 22:15:07');
/*!40000 ALTER TABLE `publishing_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textbook` (
  `textbook_id` varchar(100) NOT NULL COMMENT '교과서ID',
  `title` varchar(100) DEFAULT NULL COMMENT '제목',
  `publishing_date` varchar(100) DEFAULT NULL COMMENT '출판일',
  `company_id` varchar(100) DEFAULT NULL COMMENT '출판사ID',
  `school` varchar(20) DEFAULT NULL COMMENT '학교',
  `grade` varchar(10) DEFAULT NULL COMMENT '학년',
  `word_number` int(11) DEFAULT NULL COMMENT '단어수',
  `status` tinyint(4) DEFAULT NULL COMMENT '상태 (0: 사용불가능, 1: 부분사용가능, 2: 사용가능, -1: 사용불가)',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`textbook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
INSERT INTO `textbook` VALUES ('TB20221023191636356','제목','2022-10-23 19:16:22.820932','이름','1','2',150,-1,'','2022-10-23 19:16:36','2022-10-23 20:43:37','2022-10-23 11:43:37'),('TB20221024072610624','Engilsh1','2015-03-01 07:25:45','미래앤','가온중학교','1',0,0,'저자:최연희','2022-10-24 07:26:11','2022-10-24 07:26:11','2022-10-23 22:26:11'),('test1','test',NULL,'taset','aset','aset',NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL COMMENT '사용자ID',
  `password` varchar(100) NOT NULL COMMENT '비밀번호',
  `authority_level` int(11) DEFAULT '0' COMMENT '권한 (0: 사용자, 1: 관리자, 2: 개발자)',
  `name` varchar(50) DEFAULT NULL COMMENT '이름',
  `email` varchar(50) DEFAULT NULL COMMENT '이메일',
  `status` tinyint(4) DEFAULT '0' COMMENT '상태 (0: 로그아웃, 1: 로그인, -1: 탈퇴)',
  `logintime` datetime DEFAULT NULL COMMENT '로그인 시간',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123','456',0,'66','',0,NULL,'','2022-10-23 20:46:38','2022-10-23 20:46:38','2022-10-23 11:46:38'),('20162023','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',0,'','12',0,NULL,'','2022-10-26 06:27:36','2022-10-26 06:39:55','2022-10-26 06:39:55'),('admin','admin',0,'관리자','aaa@bbb.com',0,NULL,'test',NULL,'2022-10-23 01:53:12','2022-10-22 16:53:12'),('qwe','rqwr',1,'afff','test',0,NULL,'111','2022-10-23 20:45:18','2022-10-23 20:45:37','2022-10-23 11:45:37'),('rsa','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'','',-1,NULL,'','2022-10-26 11:27:38','2022-10-26 11:27:39','2022-10-26 11:27:39'),('test1','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,'','',1,NULL,'','2022-10-26 06:41:39','2022-10-26 11:26:37','2022-10-26 11:26:37'),('test222','1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9',0,'','',1,NULL,'','2022-10-26 11:23:29','2022-10-26 11:23:29','2022-10-26 11:23:29');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` varchar(20) NOT NULL COMMENT '사용자ID',
  `nickname` varchar(50) DEFAULT NULL COMMENT '별명',
  `school` varchar(50) DEFAULT NULL COMMENT '학교',
  `grade` varchar(10) DEFAULT NULL COMMENT '학년',
  `total_learn_time` int(11) DEFAULT '0' COMMENT '총학습시간',
  `total_attendance_date` int(11) DEFAULT '0' COMMENT '총출석일',
  `total_know_word` int(11) DEFAULT '0' COMMENT '총학습단어수',
  `exam_rate` double DEFAULT '0' COMMENT '총시험성적',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('123','김시영','매원중학교','2학년',NULL,300,14,80,NULL,'2022-10-26 13:26:08','2022-10-26 13:26:08','2022-10-26 13:26:08'),('admin','김다영','매후중학교','3학년',NULL,300,14,80,NULL,'2022-10-26 13:26:08','2022-10-26 13:26:08','2022-10-26 13:26:08');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca`
--

DROP TABLE IF EXISTS `voca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca` (
  `voca_note_id` varchar(100) NOT NULL COMMENT '노트ID',
  `word` varchar(100) NOT NULL COMMENT '단어',
  `mean` varchar(100) DEFAULT NULL COMMENT '뜻',
  `pos` varchar(10) DEFAULT NULL COMMENT '품사',
  `overlapping_number` int(11) DEFAULT NULL COMMENT '중복단어수',
  `importance_level` int(11) DEFAULT NULL COMMENT '중요도(0~5)',
  `sentences_example` varchar(1000) DEFAULT NULL COMMENT '예제',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`voca_note_id`,`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca`
--

LOCK TABLES `voca` WRITE;
/*!40000 ALTER TABLE `voca` DISABLE KEYS */;
INSERT INTO `voca` VALUES ('VN20221005174429857','message','메세지','동사',1,1,NULL,'','2022-10-24 18:39:57','2022-10-24 18:39:57','2022-10-24 09:39:57'),('VN20221005174429857','result','결과',NULL,0,0,NULL,'','2022-10-24 18:39:57','2022-10-24 18:39:57','2022-10-24 09:39:57'),('VN20221005174429857','srclang','쨍그랑거리다',NULL,0,0,NULL,'','2022-10-24 18:39:57','2022-10-24 18:39:57','2022-10-24 09:39:57'),('VN20221005174429857','srclangtype','srclang형',NULL,0,0,NULL,'','2022-10-24 18:39:57','2022-10-24 18:39:57','2022-10-24 09:39:57'),('VN20221024073755345','dict','구술하다','동사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','en','엥','감탄사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','enginetype','엔진 타입','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','ko','코','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','message','메세지','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','naverservice','순진한 서비스','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','nmt','nmt','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','null','무효의','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','pivot','추축의','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','pretrans','전치환','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','proxy','대리인의',NULL,0,0,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','response','대답','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','result','결과','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','service','서비스','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','srclangtype','srclang형','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','tardict','지각의','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','tarlangtype','타랑 활자','',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','translatedtext','번역본','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','type','유형','명사',1,1,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53'),('VN20221024073755345','version','판본',NULL,0,0,NULL,'','2022-10-24 18:44:53','2022-10-24 18:44:53','2022-10-24 09:44:53');
/*!40000 ALTER TABLE `voca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca_note`
--

DROP TABLE IF EXISTS `voca_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca_note` (
  `voca_note_id` varchar(100) NOT NULL COMMENT '노트ID',
  `voca_unit_id` varchar(100) DEFAULT NULL COMMENT '유닛ID',
  `word_number` int(11) DEFAULT NULL COMMENT '단어수',
  `type` tinyint(4) DEFAULT '0' COMMENT '타입 (0: 기본, 1: 커스텀, -1: 사용불가)',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`voca_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca_note`
--

LOCK TABLES `voca_note` WRITE;
/*!40000 ALTER TABLE `voca_note` DISABLE KEYS */;
INSERT INTO `voca_note` VALUES ('VN20221005174429857',':I_voca_unit_id',0,2,'','2022-10-05 17:44:30','2022-10-24 07:37:30','2022-10-23 22:37:30'),('VN20221024073744728','VU20221024073051179',0,2,'','2022-10-24 07:37:45','2022-10-24 07:37:45','2022-10-23 22:37:45'),('VN20221024073750540','VU20221024073303062',0,2,'','2022-10-24 07:37:51','2022-10-24 07:37:51','2022-10-23 22:37:51'),('VN20221024073755345','VU20221024073313166',0,0,'','2022-10-24 07:37:55','2022-10-24 07:37:55','2022-10-23 22:37:55'),('VN20221024073759661','VU20221024073324139',0,0,'','2022-10-24 07:38:00','2022-10-24 07:38:00','2022-10-23 22:38:00'),('VN20221024073804221','VU20221024073332522',0,2,'','2022-10-24 07:38:04','2022-10-24 07:38:04','2022-10-23 22:38:04');
/*!40000 ALTER TABLE `voca_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voca_unit`
--

DROP TABLE IF EXISTS `voca_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voca_unit` (
  `voca_unit_id` varchar(100) NOT NULL COMMENT '유닛ID',
  `textbook_id` varchar(100) DEFAULT NULL COMMENT '교과서ID',
  `title` varchar(100) DEFAULT NULL COMMENT '제목',
  `word_number` int(11) DEFAULT NULL COMMENT '단어수',
  `type` tinyint(4) DEFAULT NULL COMMENT '타입 (0: 기본, 1: 커스텀, -1: 사용불가)',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`voca_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voca_unit`
--

LOCK TABLES `voca_unit` WRITE;
/*!40000 ALTER TABLE `voca_unit` DISABLE KEYS */;
INSERT INTO `voca_unit` VALUES ('VU20221024073051179','TB20221024072610624','Lesson 1 You and Me',0,-1,'','2022-10-24 07:30:51','2022-10-24 07:30:51','2022-10-23 22:30:51'),('VU20221024073303062','TB20221024072610624','Lesson 2 Let\'s Have Fun Together',0,-1,'','2022-10-24 07:33:03','2022-10-24 07:33:03','2022-10-23 22:33:03'),('VU20221024073313166','TB20221024072610624','Lesson 3 What Do People Eat Around the World?',0,-1,'','2022-10-24 07:33:13','2022-10-24 07:33:13','2022-10-23 22:33:13'),('VU20221024073324139','TB20221024072610624','Lesson 4 Stories from Our History',0,-1,'','2022-10-24 07:33:24','2022-10-24 07:33:24','2022-10-23 22:33:24'),('VU20221024073332522','TB20221024072610624','Lesson 5 My Dream Trip',0,-1,'','2022-10-24 07:33:33','2022-10-24 07:33:33','2022-10-23 22:33:33'),('VU20221024073341220','TB20221024072610624','Lesson 6 Animals Around Us',1,-1,'','2022-10-24 07:33:41','2022-10-24 07:35:52','2022-10-23 22:35:52'),('VU20221024073350275','TB20221024072610624','Lesson 7 The World of Work',0,-1,'','2022-10-24 07:33:50','2022-10-24 07:33:50','2022-10-23 22:33:50'),('VU20221024073453866','TB20221024072610624','Lesson 8 Science from Curiosity',0,-1,'','2022-10-24 07:34:54','2022-10-24 07:34:54','2022-10-23 22:34:54');
/*!40000 ALTER TABLE `voca_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_learn_info`
--

DROP TABLE IF EXISTS `weekly_learn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_learn_info` (
  `weekly_learn_info_id` varchar(100) NOT NULL COMMENT '주간학습ID',
  `monthly_learn_info_id` varchar(100) DEFAULT NULL COMMENT '월간학습ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '사용자ID',
  `learn_week` varchar(10) DEFAULT NULL COMMENT '학습주',
  `learning_time` int(11) DEFAULT NULL COMMENT '학습시간',
  `new_know_word` int(11) DEFAULT NULL COMMENT '학습단어수',
  `exam_rate` double DEFAULT NULL COMMENT '시험성적',
  `attendance_date` int(11) DEFAULT NULL COMMENT '출석일',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`weekly_learn_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_learn_info`
--

LOCK TABLES `weekly_learn_info` WRITE;
/*!40000 ALTER TABLE `weekly_learn_info` DISABLE KEYS */;
INSERT INTO `weekly_learn_info` VALUES ('1','1','123','2022-10 1',300,120,20,5,NULL,NULL,NULL,NULL),('2','2','123','2022-10 2',200,456,54,4,NULL,NULL,NULL,NULL),('3','3','123','2022-10 3',331,354,45,7,NULL,NULL,NULL,NULL),('4','4','123','2022-10 4',242,786,80,6,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `weekly_learn_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pingu'
--
/*!50003 DROP PROCEDURE IF EXISTS `daily__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `daily__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM daily_learn_info
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `month__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `month__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM monthly_learn_info
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `publishing_company__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `publishing_company__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM publishing_company
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `publishing_company__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `publishing_company__UpdateNInsert`(
	IN `I_company_id` VARCHAR(100),
	IN `I_company_name` VARCHAR(100),
	IN `I_email` VARCHAR(100),
	IN `I_status` TINYINT,
	IN `I_phone_number` VARCHAR(20),
	IN `I_remark` VARCHAR(10)
)
BEGIN
	IF EXISTS (SELECT * FROM publishing_company  WHERE company_id  = I_company_id) THEN
		UPDATE publishing_company 
		   SET  company_name = I_company_name,
		   		email = I_email,
				status = I_status,
				phone_number = I_phone_number,
		   		remark = I_remark,
				update_time = NOW(3),
				TIME_STAMP = NOW(3)
		 WHERE company_id = I_company_id;
	ELSE
		SELECT CONCAT('PNC',  REPLACE(REPLACE(REPLACE(REPLACE(NOW(3),'-',''),' ',''),':',''),'.','')) INTO @ID;
	
		INSERT INTO publishing_company 
			  VALUES (@ID,I_company_name,I_email,I_status,I_phone_number,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `textbook__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `textbook__UpdateNInsert`(
	IN `I_textbook_id` VARCHAR(100),
	IN `I_title` VARCHAR(100),
	IN `I_publishing_date` VARCHAR(100),
	IN `I_company_id` VARCHAR(100),
	IN `I_school` VARCHAR(20),
	IN `I_grade` VARCHAR(10),
	IN `I_word_number` INT,
	IN `I_status` TINYINT,
	IN `I_remark` VARCHAR(1000),
	OUT `O_textbook_id` VARCHAR(100)
)
BEGIN
	SET O_textbook_id = '';
	IF EXISTS (SELECT * FROM textbook WHERE textbook_id = I_textbook_id) THEN
		UPDATE textbook 
		   SET	title  = I_title,
		   		publishing_date = I_publishing_date,
		   		company_id = I_company_id,
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
			  VALUES (@ID,I_title,I_publishing_date,I_company_id,I_school,I_grade,I_word_number,I_status,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_info__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_info__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM user_info UI, `user` U
						WHERE UI.user_id = U.user_id 
						AND U.status != 3
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_info__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_info__UpdateNInsert`(
	IN `I_user_id` VARCHAR(20),
	IN `I_nickname` VARCHAR(50),
	IN `I_school` VARCHAR(50),
	IN `I_grade` VARCHAR(10),
	IN `I_total_learn_time` INT,
	IN `I_total_attendance_date` INT,
	IN `I_total_know_word` INT,
	IN `I_exam_rate` DOUBLE,
	IN `I_remark` VARCHAR(1000)
)
BEGIN
	IF EXISTS (SELECT * FROM user_info ui  WHERE user_id = I_user_id) THEN
		UPDATE user_info
		   SET nickname = I_nickname,
		       school = I_school,
		       grade = I_grade,
		       total_learn_time = I_total_learn_time,
		       total_attendance_date = I_total_attendance_date,
		       total_know_word = I_total_know_word,
		       exam_rate = I_exam_rate,
		       remark = I_remark,
		       update_time = NOW(3),
		       TIME_STAMP = NOW(3)
		 WHERE user_id = I_user_id;
	ELSE
		INSERT INTO user_info 
			  VALUES (I_user_id,I_nickname,I_school,I_grade,I_total_learn_time,I_total_attendance_date,I_total_know_word,I_exam_rate,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM user
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user__UpdateNInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user__UpdateNInsert`(
	IN `I_user_id` VARCHAR(20),
	IN `I_password` VARCHAR(20),
	IN `I_authority_level` VARCHAR(7),
	IN `I_name` VARCHAR(50),
	IN `I_email` VARCHAR(50),
	IN `I_status` TINYINT,
	IN `I_remark` VARCHAR(1000)
)
BEGIN
	IF EXISTS (SELECT * FROM `user` WHERE user_id = I_user_id) THEN
		UPDATE `user`
		   SET authority_level = I_authority_level,
		       name = I_name,
		       email = I_email,
		       status = I_status,
		       remark = I_remark,
		       update_time = NOW(3),
		       TIME_STAMP = NOW(3)
		 WHERE user_id = I_user_id;
	ELSE
		INSERT INTO user 
			  VALUES (I_user_id,SHA1(I_password),I_authority_level,I_name,I_email,I_status,null,I_remark,NOW(3),NOW(3),NOW(3));
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_note__UpdateNInsert`(
	IN `I_voca_note_id` VARCHAR(100),
	IN `I_voca_unit_id` VARCHAR(100),
	IN `I_word_number` INT,
	IN `I_type` TINYINT,
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
		 WHERE voca_note_id = I_voca_note_id;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca_unit__UpdateNInsert`(
	IN `I_voca_unit_id` VARCHAR(100),
	IN `I_textbook_id` VARCHAR(100),
	IN `I_title` VARCHAR(100),
	IN `I_word_number` INT,
	IN `I_type` TINYINT,
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voca__UpdateNInsert`(
	IN `I_voca_note_id` VARCHAR(100),
	IN `I_word` VARCHAR(100),
	IN `I_mean` VARCHAR(100),
	IN `I_pos` VARCHAR(10),
	IN `I_overlapping_number` INT,
	IN `I_importance_level` INT,
	IN `I_sentences_example` VARCHAR(1000),
	IN `I_remark` VARCHAR(1000)
)
BEGIN
	IF EXISTS (SELECT * FROM voca WHERE voca_note_id = I_voca_note_id AND word = I_word) THEN
		UPDATE voca
		   SET mean = I_mean,
		       pos = I_pos,
		       overlapping_number = I_overlapping_number,
		       importance_level = I_importance_level,
		       sentences_example = I_sentences_example,
		       remark = I_remark,
		       update_time = NOW(3),
		       TIME_STAMP = NOW(3)
		 WHERE voca_note_id = I_voca_note_id AND word = I_word;
	ELSE
		INSERT INTO voca 
			  VALUES (I_voca_note_id,I_word,I_mean,I_pos,I_overlapping_number,I_importance_level,I_sentences_example,I_remark,NOW(3),NOW(3),NOW(3));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `weekly__Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `weekly__Select`(
	in `I_WHERE` varchar(1000)
)
begin
	SET @xSql = CONCAT('
						SELECT * 
						FROM weekly_learn_info
						', I_WHERE,'
						');


	PREPARE stmt FROM @xSql; 
	 
	START TRANSACTION; 
	EXECUTE stmt;  
	DEALLOCATE PREPARE stmt; 
	COMMIT;
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

-- Dump completed on 2022-11-09 11:38:53
