-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: garden_db
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `admins_num` int(11) NOT NULL AUTO_INCREMENT,
  `admins_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `admins_pw` varchar(20) COLLATE utf8_bin NOT NULL,
  `admins_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `admins_email` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`admins_num`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (10001,'sodam23','12345','김소담','sodam23@gmail.com'),(10002,'jihye38','54321','이지혜','jihye38@naver.com'),(10003,'soyoung88','abcde','최수영','soyoung88@naver.com'),(10004,'nolja12345','edcga','오주연','nolj35a@naver.com'),(10005,'heechul19','fjjjoo','정희철','heechul450@gmail.com');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_info`
--

DROP TABLE IF EXISTS `group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `group_info` (
  `group_num` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `area` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`group_num`)
) ENGINE=InnoDB AUTO_INCREMENT=40011 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_info`
--

LOCK TABLES `group_info` WRITE;
/*!40000 ALTER TABLE `group_info` DISABLE KEYS */;
INSERT INTO `group_info` VALUES (40001,'에이콘아카데미','서울특별시'),(40002,'부산대학교 컴퓨터랩실','부산광역시'),(40003,'인천대학교 행정실','인천광역시'),(40004,'경기대학교 기계공학과 학생회관','경기도'),(40005,'한국전력공사 설비팀','충청도'),(40006,'수자원공사 행정팀','전라도'),(40007,'경기도청','경기도청'),(40008,'서울시 일자리센터','서울특별시'),(40009,'NCSOFT','경기도'),(40010,'부산 해운대 호텔','부산광역시');
/*!40000 ALTER TABLE `group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_memb`
--

DROP TABLE IF EXISTS `group_memb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `group_memb` (
  `users_num` int(11) NOT NULL,
  `group_num` int(11) NOT NULL,
  PRIMARY KEY (`users_num`,`group_num`),
  KEY `FK_group_info_TO_group_memb` (`group_num`),
  CONSTRAINT `FK_group_info_TO_group_memb` FOREIGN KEY (`group_num`) REFERENCES `group_info` (`group_num`),
  CONSTRAINT `FK_users_TO_group_memb` FOREIGN KEY (`users_num`) REFERENCES `users` (`users_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_memb`
--

LOCK TABLES `group_memb` WRITE;
/*!40000 ALTER TABLE `group_memb` DISABLE KEYS */;
INSERT INTO `group_memb` VALUES (20001,40001),(20002,40001),(20003,40002),(20004,40002);
/*!40000 ALTER TABLE `group_memb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `memo` (
  `memo_num` int(11) NOT NULL AUTO_INCREMENT,
  `users_num` int(11) NOT NULL,
  `petplant_num` int(11) NOT NULL,
  `memo_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo_con` text COLLATE utf8_bin NOT NULL,
  `memo_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`memo_num`),
  KEY `FK_users_TO_memo` (`users_num`),
  KEY `FK_petplant_TO_memo` (`petplant_num`),
  CONSTRAINT `FK_petplant_TO_memo` FOREIGN KEY (`petplant_num`) REFERENCES `petplant` (`petplant_num`),
  CONSTRAINT `FK_users_TO_memo` FOREIGN KEY (`users_num`) REFERENCES `users` (`users_num`)
) ENGINE=InnoDB AUTO_INCREMENT=70028 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES (70001,20001,50001,'2019-06-23 08:26:17','You\'re always the best. Thank you for giving me a great support. ',1),(70002,20002,50002,'2019-06-30 08:24:20','더 잘 키워서 식물 마스터가 될테야! OH YEAH!',0),(70003,20003,50003,'2019-07-08 08:25:19','Finally, it has come to an end!! it was the best weekend in my life. Thank you lalala. I am overly grateful to have met our loves around the world. I learned, enjoyed so many things in the past 2 years, i\'ll cherish these memory in deep don my heart forever. Thank you. ',1),(70004,20004,50004,'2019-07-15 08:25:40','정말 너는 알다가도 모르겠구나. Seriously! 너의 정체는 무엇이니? 너에 대해 Really really 궁금하다....',1),(70005,20005,50005,'2019-07-20 08:05:06','Hua, Thank u for letting us get a step closer to such a pure, smart and sweet energy like yours. Love u. ',0),(70006,20002,50004,'2019-07-24 08:25:19','언제 퇴근할까~~~? 뇸뇸이 물주러 얼른 집가고 싶다!!!! 조금만 기다려 Plzzzzzz:)',1),(70026,20002,50001,'2019-07-29 08:26:06','how r u ? I\'m feeling good. Today is my birthday. Please say me, Happy birthday!!!! Love u guys. ',1);
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notice` (
  `notice_num` int(11) NOT NULL AUTO_INCREMENT,
  `admins_num` int(11) NOT NULL,
  `notice_con` mediumtext COLLATE utf8_bin NOT NULL,
  `noticeview` int(11) NOT NULL,
  `noticesub` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notice_num`),
  KEY `FK_admins_TO_notice` (`admins_num`),
  CONSTRAINT `FK_admins_TO_notice` FOREIGN KEY (`admins_num`) REFERENCES `admins` (`admins_num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,10002,'019년 7월 17일 Spring웹 서비스가 시작됩니다.',105,'현재 유럽연합 국가에서 시행된 GDPR 정책으로 인해 잠시 웹을 이용하실 수 없으며 이후 해당 정책에 맞춰 서비스를 재개할 수 있도록 준비하고 있습니다.'),(2,10002,'일괄 탈퇴 서비스 이용 중단',30,'웹서비스 정기점검으로 인하여 Spring ID 회원님들의 경우 일시적으로 일괄탈퇴 서비스를 이용하실 수 없습니다. 양해 부탁드리며, 추후 업데이트 내용은 재공지하오니 확인 부탁드립니다. 감사합니다.'),(3,10002,'추가 점검 시간 안내',75,'■ 점검 시간 : 2019년 7월 24일(수) 02:00 ~ 06:00 (4시간) 동안 점검이 추가로 진행되오니 양해 부탁 드립니다. '),(4,10001,'1.0.1 버전의 주요 서비스 내용 소개 및 사용 방법 안내',203,'1.0.1으로 웹이 새롭게 수정되었으며, 주요 서비스에 대해 안내드리겠습니다. 새롭게 그룹추가와 물주기 체크 기능이 사용 가능합니다. 문제가 있을 시, sodam23@gmail.com으로 연락주시길 바랍니다. 감사합니다. '),(5,10002,'알림 서비스가 새롭게 추가됩니다. ',354,'알림 서비스가 새롭게 추가 됩니다. 식물 별 알림 설정이 가능하며, 알림을 원하지 않을 시 내 정보에 가져서 수정하실 수 있습니다. 참고 부탁드립니다. 감사합니다. '),(6,10001,'멤버를 새롭게 추가하는 방법 공지',59,'기존 웹서비스에서는 10명의 멤버까지만 초대가 가능했다면, 추가적인 요청사항에 의해 최대 50명까지 멤버 추가 가능하오니 확인 부탁드립니다. 또한, 그 외의 요구사항이 있을 시에는 sodam23@gmail.com으로 문의 주시면 고려해 웹서비스 성장을 이뤄나겠습니다. 감사합니다. ');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petplant`
--

DROP TABLE IF EXISTS `petplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `petplant` (
  `petplant_num` int(11) NOT NULL AUTO_INCREMENT,
  `plant_num` int(11) NOT NULL,
  `petplant_wterm` int(11) NOT NULL,
  `petplant_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `group_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`petplant_num`),
  KEY `FK_plant_TO_petplant` (`plant_num`),
  KEY `FK_group_info_TO_petplant` (`group_num`),
  CONSTRAINT `FK_group_info_TO_petplant` FOREIGN KEY (`group_num`) REFERENCES `group_info` (`group_num`),
  CONSTRAINT `FK_plant_TO_petplant` FOREIGN KEY (`plant_num`) REFERENCES `plant` (`plant_num`)
) ENGINE=InnoDB AUTO_INCREMENT=50011 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petplant`
--

LOCK TABLES `petplant` WRITE;
/*!40000 ALTER TABLE `petplant` DISABLE KEYS */;
INSERT INTO `petplant` VALUES (50001,30001,7,'나의 이름은 식물이야',40001),(50002,30002,15,'토끼와 거북이',40002),(50003,30001,4,'해와 달',40002),(50004,30005,5,'잭과 콩나무',40004),(50005,30012,6,'신데렐라',40003),(50006,30015,10,'백설공주',40002),(50007,30014,2,'인어공주',40005),(50008,30013,6,'스프링파티',40004),(50009,30008,8,'해피투게더',40005),(50010,30007,7,'무한도전',40004);
/*!40000 ALTER TABLE `petplant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plant` (
  `plant_num` int(11) NOT NULL AUTO_INCREMENT,
  `plant_sciname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `plant_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `plant_type` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_fcolor` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_ftime` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_light` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_lowtemp` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_managelv` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_flang` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_humid` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_place` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_fert` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `plant_watersp` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `plant_watersu` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `plant_waterfa` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `plant_waterwi` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `plant_img` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`plant_num`)
) ENGINE=InnoDB AUTO_INCREMENT=30016 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (30001,'Brunfelsia australis Bench','브룬펠시아','관목형','보라색','봄','중간광도','10','초','사랑의 기쁨','50%','거실 창측(150~300cm)','보통','5','5','5','6','Brunfelsia australis Bench.jpg'),(30002,'Trachelospermum asiaticum var.variegatum','무늬마삭줄','덩굴성','노랑색','봄','높은광도','5','상',NULL,'50%','거실 창측(150~300cm)','보통','4','4','4','5','Trachelospermum asiaticum var.variegatum.jpg'),(30003,'Monstera Deliciosa','몬스테라 델리시오사','덩굴성','녹색','봄','중간광도','13','초','기쁜 소식','70%','거실 창측(150~300cm)','보통','4','4','4','5','Monstera Deliciosa.jpg'),(30004,'Gaultheria procumbens','가울테리아','관목형','분홍색','여름','중간광도','0','중상',NULL,'50%','거실 창측(150~300cm)','보통','5','5','5','6','Gaultheria procumbens.jpg'),(30005,'Sansevieria trifasciata','산세베리아','다육형','','','낮은광도','13','초','관용','50%','실내 어두운 곳 (실내 깊이 500이상 cm)','거의 없음.','3','3','3','4','Sansevieria trifasciata.jpg'),(30006,'Chamaedorea elegans','테이블야자','직립형','','','중간광도','13','초','우아함','50%','실내 어두운 곳 (실내 깊이 500이상 cm)','보통','5','5','5','7','Chamaedorea elegans.jpg'),(30007,'Ardisia pusilla','산호수','관목형','흰색','봄','낮은광도','5','초','총명','50%','거실 내측 (실내깊이 300~500cm)','보통','5','5','5','6','Ardisia pusilla.jpg'),(30008,'Epipremnum aureum','스킨답서스','덩굴성',NULL,NULL,'낮은광도','13','중','우아한 심성','50%','실내 어두운 곳 (실내깊이 500 이상cm)','보통','4','4','4','6','Epipremnum aureum.jpg'),(30009,'Podocarous nagi','죽백나무','직립형',NULL,NULL,'중간광도','10','초','소원 성취','50%','거실 창측 (실내깊이 150~300cm','보통','5','5','5','7','Podocarous nagi.jpg'),(30010,'Dendrobium phalaenopsis','덴파레','관목형','보라색','봄','높은광도','13','중상','축복','50%','거실 창측 (실내깊이 150~300cm)','거의 없음.','4','4','4','4','Dendrobium phalaenopsis.jpg'),(30011,'Aerides japonica','나도풍란','로제트형','흰색','봄','중간광도','7','중상','인내','70%','발코니 내측 (실내깊이 50~150cm)','거의 없음.','4','4','4','4','Aerides japonica.jpg'),(30012,'Ardisia pusilla','산호수','관목형','흰색','봄','낮은광도','5','초','용감','50%','거실 내측 (실내깊이 300~500cm)','보통','5','5','5','7','Ardisia pusilla.jpg'),(30013,'Iberis sempervirens','숙근이베리스','관목형','녹색','봄','높은광도','10','중상','깨끗함','50%','거실 창측 (실내깊이 150~300cm)','거의 없음.','5','5','5','7','Iberis sempervirens.jpg'),(30014,'Adenium obesum','아데니움','관목형','녹색','봄','높은광도','13','중상','무모한 사랑','50%','거실 창측 (실내깊이 150~300cm)','보통(2회)','5','5','5','7','Adenium obesum.jpg'),(30015,'Oncidium spp','온시디움','다육형','노랑색','봄','중간광도','13','중','순박한 마음','50%','거실 창측 (실내깊이 150~300cm)','거의 없음.','4','4','4','5','Oncidium spp.jpg');
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qna` (
  `QnA_num` int(11) NOT NULL AUTO_INCREMENT,
  `QnA_con` text COLLATE utf8_bin NOT NULL,
  `admins_num` int(11) NOT NULL,
  PRIMARY KEY (`QnA_num`),
  KEY `FK_admins_TO_QnA` (`admins_num`),
  CONSTRAINT `FK_admins_TO_QnA` FOREIGN KEY (`admins_num`) REFERENCES `admins` (`admins_num`)
) ENGINE=InnoDB AUTO_INCREMENT=5004 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (5001,'그룹 멤버를 삭제하려면 어떻게 해야하나요?',10003),(5002,'그룹 이름을 수정하고 싶습니다.',10003),(5003,'물을 주는 날짜를 직접 기입해서 수정할 수 있나요?',10003);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `users_num` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `users_pw` varchar(30) COLLATE utf8_bin NOT NULL,
  `users_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `users_gender` int(11) NOT NULL,
  `users_email` varchar(40) COLLATE utf8_bin NOT NULL,
  `users_phone` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `users_birthday` date NOT NULL,
  PRIMARY KEY (`users_num`)
) ENGINE=InnoDB AUTO_INCREMENT=20006 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20001,'sarom14','12345','정새롬',0,'saromm2@gmail.com','01054321456','1990-12-10'),(20002,'jiho455','54321','김지호',1,'jihorang@gmail.com','01089875262','1997-10-23'),(20003,'jonghyun59','abcde','박종현',1,'jonghyun161@naver.com','01095946258','1992-05-10'),(20004,'minho308','bcdvq','한민호',1,'minhosanda@naver.com','01024564451','1991-06-18'),(20005,'dohyun127','cdet2','진도연',0,'dorami@gmail.com','01075486895','1985-07-23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water`
--

DROP TABLE IF EXISTS `water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `water` (
  `petplant_num` int(11) NOT NULL AUTO_INCREMENT,
  `water_date` date NOT NULL,
  `users_num` int(11) NOT NULL,
  PRIMARY KEY (`petplant_num`,`water_date`),
  KEY `FK_users_TO_water` (`users_num`),
  CONSTRAINT `FK_petplant_TO_water` FOREIGN KEY (`petplant_num`) REFERENCES `petplant` (`petplant_num`),
  CONSTRAINT `FK_users_TO_water` FOREIGN KEY (`users_num`) REFERENCES `users` (`users_num`)
) ENGINE=InnoDB AUTO_INCREMENT=50003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water`
--

LOCK TABLES `water` WRITE;
/*!40000 ALTER TABLE `water` DISABLE KEYS */;
INSERT INTO `water` VALUES (50001,'2019-07-18',20001),(50002,'2019-07-16',20002);
/*!40000 ALTER TABLE `water` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 18:07:58
