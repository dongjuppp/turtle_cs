-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- npclinic 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `npclinic`;
CREATE DATABASE IF NOT EXISTS `npclinic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `npclinic`;

-- 테이블 npclinic.drop_menu 구조 내보내기
DROP TABLE IF EXISTS `drop_menu`;
CREATE TABLE IF NOT EXISTS `drop_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.drop_menu:~10 rows (대략적) 내보내기
DELETE FROM `drop_menu`;
/*!40000 ALTER TABLE `drop_menu` DISABLE KEYS */;
INSERT INTO `drop_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(0, '홈으로', 1, '/'),
	(1, '인사말', 2, 'introduce'),
	(2, '둘러보기', 2, 'introduce'),
	(3, '진료시간/약도', 2, 'introduce'),
	(16, '공지사항', 5, 'notice_board'),
	(17, '자유게시판', 5, 'free_board'),
	(18, '사진갤러리', 5, 'introduce'),
	(19, '예약하기', 6, 'reserve'),
	(20, '예약확인', 6, 'reserveCheck');
/*!40000 ALTER TABLE `drop_menu` ENABLE KEYS */;

-- 테이블 npclinic.header_menu 구조 내보내기
DROP TABLE IF EXISTS `header_menu`;
CREATE TABLE IF NOT EXISTS `header_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.header_menu:~6 rows (대략적) 내보내기
DELETE FROM `header_menu`;
/*!40000 ALTER TABLE `header_menu` DISABLE KEYS */;
INSERT INTO `header_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(1, 'HOME', 1, '/'),
	(2, '본원소개', 2, 'introduce'),
	(3, '진료정보', 3, 'medicinfo'),
	(4, '건강정보', 4, 'healthinfo'),
	(5, '커뮤니티', 5, 'community'),
	(6, '예약', 6, 'reserve');
/*!40000 ALTER TABLE `header_menu` ENABLE KEYS */;

-- 테이블 npclinic.hospital_info 구조 내보내기
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

-- 테이블 데이터 npclinic.hospital_info:~0 rows (대략적) 내보내기
DELETE FROM `hospital_info`;
/*!40000 ALTER TABLE `hospital_info` DISABLE KEYS */;
INSERT INTO `hospital_info` (`phone`, `fax`, `email`, `address`, `openTime`, `saturdayTime`, `lunchTime`) VALUES
	('02-536-1777', '02-536-1777', 'npclinic@gmail.com', '서울 서초구 방배동 1770번지 2층 ', '09:00 ~ 19:00', '09:00 ~ 14:00', '13:00 ~ 14:00');
/*!40000 ALTER TABLE `hospital_info` ENABLE KEYS */;

-- 테이블 npclinic.reserve_data 구조 내보내기
DROP TABLE IF EXISTS `reserve_data`;
CREATE TABLE IF NOT EXISTS `reserve_data` (
  `userID` varchar(50) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.reserve_data:~18 rows (대략적) 내보내기
DELETE FROM `reserve_data`;
/*!40000 ALTER TABLE `reserve_data` DISABLE KEYS */;
INSERT INTO `reserve_data` (`userID`, `doctor`, `subject`, `date`, `message`) VALUES
	('dongjuppp', '전동병', '목/허리디스크(비수술)', '2019-10-31 00:00:00', 'asdqwe'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-29 00:00:00', 'ggg'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-29 00:00:00', 'ggg'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-29 00:00:00', 'ggg'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-31 00:00:00', 'asd23'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-31 00:00:00', 'asd2323'),
	('dongjuppp', '김갑수', '목/허리디스크(비수술)', '2019-10-24 00:00:00', 'asd23'),
	('dongjuppp', '전동병', '대상포진 신경통', '2019-10-31 00:00:00', 'asdqweqwe'),
	('dongjuppp', '전동병', '대상포진 신경통', '2019-10-31 00:00:00', 'asdeqwe'),
	('dongjuppp', '김갑수', '대상포진 신경통', '2019-10-31 00:00:00', 'asdqwe'),
	('dongjuppp', '김갑수', '신경성형술', '2019-10-23 00:00:00', 'asdqweqwe'),
	('dongjuppp', '김갑수', '신경성형술', '2019-10-31 00:00:00', 'asdqweqwe'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-16 00:00:00', 'asdqwe'),
	('dongjuppp', '의사', '신경성형술', '2019-10-31 00:00:00', 'ㅁㄴㅇㅈㄷ'),
	('dongjuppp', '전동병', '신경성형술', '2019-10-23 00:00:00', 'SDAsaS'),
	('dongjuppp', '김갑수', '신경성형술', '2019-10-08 00:00:00', 'j'),
	('dongjuppp', '김갑수', '신경성형술', '2019-10-09 00:00:00', 'd'),
	('dongju', '김갑수', '신경성형술', '2019-10-16 00:00:00', '.');
/*!40000 ALTER TABLE `reserve_data` ENABLE KEYS */;

-- 테이블 npclinic.user 구조 내보내기
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

-- 테이블 데이터 npclinic.user:~3 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `password`, `name`, `gender`, `birth`, `type`, `email`, `phone`, `last_login`, `reg_login`) VALUES
	('dongju', '123asd23', '최동주', '남', '19930623', 'admin', 'dongju@', '01028008891', '2019-10-19 00:00:00', '2019-10-18 00:00:00'),
	('dongjuppp', '123456', '최동주', '남자', '1993/06/23', NULL, 'dongjuppp@gmail.com', '01028008891', '2019-10-29 23:32:25', '2019-10-29 23:32:25'),
	('test1', '456as', '홍길동', '남', '19991205', 'admin', 'test1@naver.com', '01012345678', '2019-01-10 00:00:00', '2019-01-01 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 테이블 npclinic.user_type 구조 내보내기
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `typeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.user_type:~3 rows (대략적) 내보내기
DELETE FROM `user_type`;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` (`id`, `typeNumber`, `typeName`) VALUES
	(1, 1, '관리자'),
	(2, 2, '회원'),
	(3, 3, '게스트');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;

-- 테이블 npclinic.board 구조 내보내기
DROP TABLE IF EXISTS `board`;
CREATE TABLE IF NOT EXISTS `board`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(45) DEFAULT NULL,
	`content` TEXT(900),
	`writer` varchar(45) NOT NULL,
	`dropMenuId` int(11) DEFAULT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY (dropMenuId) REFERENCES drop_menu(`id`) on update cascade on delete CASCADE,
	FOREIGN KEY (writer) REFERENCES user(`id`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;

-- 테이블 데이터 npclinic.board:~3 rows (대략적) 내보내기
DELETE FROM `user_type`;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING BOARD', 'TEST CONTENT', 'dongju', 17);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING BOARD2', 'TEST CONTENT2', 'dongju', 17);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING BOARD3', 'TEST CONTENT3', 'dongju', 17);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING NOTICE BOARD1', 'TEST NOTICE CONTENT1', 'dongju', 16);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING NOTICE BOARD2', 'TEST NOTICE CONTENT2', 'dongju', 16);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING NOTICE BOARD3', 'TEST NOTICE CONTENT3', 'dongju', 16);
INSERT INTO `board`(title, content, writer, dropMenuId) VALUES
	('TESTING NOTICE BOARD4', 'TEST NOTICE CONTENT4', 'dongju', 16);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
