/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP TABLE IF EXISTS `board`;
CREATE TABLE IF NOT EXISTS `board` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `writer` varchar(45) NOT NULL,
  `dropMenuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DELETE FROM `board`;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`id`, `title`, `content`, `writer`, `dropMenuId`) VALUES
	(1, 'TESTING FREE BOARD1', 'TEST CONTENT1', 'dongju', 17),
	(2, 'TESTING FREE BOARD1', 'TEST CONTENT1', 'dongju', 17),
	(3, 'TESTING FREE BOARD2', 'TEST CONTENT2', 'dongju', 17),
	(4, 'TESTING FREE BOARD3', 'TEST CONTENT3', 'dongju', 17),
	(5, 'TESTING NOTICE BOARD1', 'TEST NOTICE CONTENT1', 'dongju', 16),
	(6, 'TESTING NOTICE BOARD2', 'TEST NOTICE CONTENT2', 'dongju', 16),
	(7, 'TESTING NOTICE BOARD3', 'TEST NOTICE CONTENT3', 'dongju', 16),
	(8, 'TESTING NOTICE BOARD4', 'TEST NOTICE CONTENT4', 'dongju', 16);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

DROP TABLE IF EXISTS `drop_menu`;
CREATE TABLE IF NOT EXISTS `drop_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `drop_menu`;
/*!40000 ALTER TABLE `drop_menu` DISABLE KEYS */;
INSERT INTO `drop_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(0, '홈으로', 1, '/'),
	(1, '인사말', 2, 'Greet'),
	(2, '둘러보기', 2, 'Look'),
	(3, '진료시간/약도', 2, 'Time'),
	(4, '목/허리티스크(비수술)', 3, 'Neck'),
	(5, '신경성형술', 3, 'Nerve'),
	(6, '대상포진 신경통', 3, 'Shingles'),
	(7, '퇴행성 관절염', 3, 'Arthritis'),
	(8, '오십견/버거병', 3, 'Zoster'),
	(9, '비급여항목', 3, 'Nnonsalary'),
	(16, '공지사항', 4, 'Nnotice'),
	(17, '자유게시판', 4, 'Free'),
	(18, '사진갤러리', 4, 'Photo'),
	(19, '예약하기', 5, 'DoReserve'),
	(20, '예약확인', 5, 'ReserveCheck');
/*!40000 ALTER TABLE `drop_menu` ENABLE KEYS */;

DROP TABLE IF EXISTS `header_menu`;
CREATE TABLE IF NOT EXISTS `header_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `header_menu`;
/*!40000 ALTER TABLE `header_menu` DISABLE KEYS */;
INSERT INTO `header_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(1, 'HOME', 1, '/'),
	(2, '본원소개', 2, 'introduce'),
	(3, '진료정보', 3, 'medicinfo'),
	(5, '커뮤니티', 4, 'community/'),
	(6, '예약', 5, 'reserve');
/*!40000 ALTER TABLE `header_menu` ENABLE KEYS */;

DROP TABLE IF EXISTS `hospital_info`;
CREATE TABLE IF NOT EXISTS `hospital_info` (
  `phone` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `openTime` varchar(45) DEFAULT NULL,
  `saturdayTime` varchar(45) DEFAULT NULL,
  `lunchTime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `hospital_info`;
/*!40000 ALTER TABLE `hospital_info` DISABLE KEYS */;
INSERT INTO `hospital_info` (`phone`, `fax`, `email`, `address`, `openTime`, `saturdayTime`, `lunchTime`) VALUES
	('02-536-1777', '02-536-1777', 'npclinic@gmail.com', '서울 서초구 방배동 1770번지 2층 ', '09:00 ~ 19:00', '09:00 ~ 14:00', '13:00 ~ 14:00');
/*!40000 ALTER TABLE `hospital_info` ENABLE KEYS */;

DROP TABLE IF EXISTS `reserve_data`;
CREATE TABLE IF NOT EXISTS `reserve_data` (
  `userID` varchar(50) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `reserve_data`;
/*!40000 ALTER TABLE `reserve_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve_data` ENABLE KEYS */;

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(45) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `reg_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `password`, `name`, `gender`, `birth`, `type`, `email`, `phone`, `last_login`, `reg_login`) VALUES
	('dongju', '123asd23', '최동주', '남', '19930623', 'admin', 'dongju@', '01028008891', '2019-10-19 00:00:00', '2019-10-18 00:00:00'),
	('dongjuppp', '123456', '최동주', '남자', '1993/06/23', NULL, 'dongjuppp@gmail.com', '01028008891', '2019-10-29 23:32:25', '2019-10-29 23:32:25'),
	('test1', '456as', '홍길동', '남', '19991205', 'admin', 'test1@naver.com', '01012345678', '2019-01-10 00:00:00', '2019-01-01 00:00:00'),
	('user', '123', '박지우', '여', '1998/03/25', 'user', 'dpfmsk11@naver.com', '01074761054', '2019-11-05 21:16:43', '2019-11-05 21:16:44');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `typeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `user_type`;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
