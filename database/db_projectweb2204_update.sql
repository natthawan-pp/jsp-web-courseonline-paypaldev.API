-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for projectweb2204
CREATE DATABASE IF NOT EXISTS `projectweb2204` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `projectweb2204`;


-- Dumping structure for table projectweb2204.course
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL DEFAULT '0',
  `course_description` varchar(2000) NOT NULL DEFAULT '0',
  `course_price` varchar(50) NOT NULL DEFAULT '0',
  `course_duration` varchar(50) NOT NULL DEFAULT '0',
  `instructor_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`course_id`),
  KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.course: ~8 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `course_price`, `course_duration`, `instructor_name`) VALUES
	(1, 'Front-End Web Developer', 'เรียนรู้ทักษะในการพัฒนาเว็บไซต์พื้นฐานด้วย HTML CSS, Flexbox และ CSS Grid พัฒนาเว็บไซต์เชิงโต้ตอบและแอปพลิเคชัน UI (ส่วนต่อประสานผู้ใช้) และออกแบบส่วนใช้งานหน้าเว็บไซต์ให้ทันสมัย โดยใช้ JavaScript และ HTML และเชื่อมต่อเว็บแอปพลิเคชันเพื่อสำรองข้อมูลเซิร์ฟเวอร์โดยใช้ JavaScript', 'Free', '4 Hours', 'Mark Wilson'),
	(2, 'Full Stack Web Developer', 'คุณจะได้เรียนรู้ทักษะในการสร้าง APIs ที่มีฐานข้อมูลสำรองและเว็บแอปพลิเคชัน ผู้เรียนจะสามารถออกแบบและสร้างฐานข้อมูลสำหรับแอปพลิเคชันซอฟต์แวร์และปรับใช้เว็บ API ที่มีฐานข้อมูลสำรองและรักษาความปลอดภัยและจัดการการตรวจสอบผู้ใช้และการควบคุมการเข้าถึงสำหรับฝั่งเซิร์ฟเวอร์', 'Free', '8 Hours', 'Jessica'),
	(3, 'Android Developer', 'เราสร้างโปรแกรมเหล่านี้เพื่อสนับสนุนนักพัฒนา Android โดยเฉพาะสำหรับผู้ที่ต้องการความสำเร็จด้วยการสร้างผลงานที่หลากหลายและสร้างแอพของคุณเองใน Google Play Store หากเป้าหมายของคุณคือการจ้างงานในฐานะนักพัฒนา Android โปรแกรมนี้เป็นสิ่งที่คุณต้องประสบความสำเร็จ', 'Free', '8 Hours', 'Catherine'),
	(4, 'iOS Developer', 'ในเส้นทางนี้คุณจะได้เรียนรู้เกี่ยวกับการการพัฒนาโปรแกรมใน Swift จากนั้นสร้างแอป iOS แรกของคุณตั้งแต่เริ่มต้น คุณจะสร้างพอร์ตโฟลิโอที่คุณสามารถนำเสนอในการสัมภาษณ์ และเรียนรู้พื้นฐานการพัฒนาด้านมือถือเช่นรูปแบบการออกแบบและจัเทคนิคทั่วไปเพื่อให้ได้งานในฐานะนักพัฒนา iOS', 'Free', '8 Hours', 'Mark Wilson'),
	(5, 'Back-End Web Developer', 'เรียนรู้การพัฒนาแบ็คเอนด์ด้วยภาษา Java ซึ่งเป็นหนึ่งในภาษาที่ได้รับความนิยมมากที่สุดในโลกและองค์กรขนาดใหญ่ คุณจะได้เรียนรู้การสร้างเว็บแอปพลิเคชันฝั่งเซิร์ฟเวอร์ซึ่งที่มีประสิทธิภาพเพื่อจัดเก็บข้อมูลอย่างต่อเนื่อง และสร้างแอปพลิเคชันที่สามารถรองรับและปรับขนาดเพื่อรองรับผู้ใช้', 'Free', '5 Hours', 'Jessica'),
	(6, 'Data Science', 'สร้างความเชี่ยวชาญในการจัดการข้อมูลการสร้างภาพการวิเคราะห์เชิงทำนายการเรียนรู้ของเครื่องและวิทยาศาสตร์ข้อมูล คุณสามารถเริ่มต้นหรือก้าวหน้าอาชีพด้านข้อมูลด้วยทักษะที่คุณเรียนรู้ในโปรแกรมนี้ เริ่มรับทักษะที่มีคุณค่าได้ทันทีสร้างพอร์ตโฟลิโอเพื่อแสดงความสามารถของคุณ', '1500', '12 Hours', 'Jessica'),
	(7, 'Artificial Intelligence', 'คุณจะได้เรียนรู้วิธีประเมินมูลค่าทางธุรกิจของผลิตภัณฑ์ AI ได้เรียนรู้วิธีกำหนดขอบเขตและสร้างชุดข้อมูลฝึกอบรมโมเดลและประเมินผลกระทบทางธุรกิจ ระหว่างการเรียนคุณจะตรวจสอบกรณีศึกษาและตัวอย่างเพื่อช่วยให้คุณมุ่งเน้นไปที่วิธีกำหนดเมตริกเพื่อวัดมูลค่าทางธุรกิจสำหรับผลิตภัณฑ์ที่เสนอ', '1150', '12 Hours', 'Mark Wilson'),
	(8, 'Cloud Computing', 'วันนี้ทุกบริษัทไม่ว่าเล็กหรือใหญ่กำลังใช้ระบบคลาวด์คอมพิวติ้ง การเติบโตของเทคโนโลยีนี้สร้างความต้องการอย่างไม่น่าเชื่อสำหรับงานคอมพิวเตอร์แบบคลาวด์ตั้งแต่นักพัฒนาระบบคลาวด์และบทบาท Cloud DevOps ไปจนถึงบทบาทพิเศษเช่นสถาปนิกโซลูชั่นและวิศวกรความปลอดภัยบนคลาวด์', '1250', '12 Hours', 'Mark Wilson');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table projectweb2204.course_regis
CREATE TABLE IF NOT EXISTS `course_regis` (
  `student_name` varchar(50) DEFAULT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reg_id`),
  KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.course_regis: ~11 rows (approximately)
/*!40000 ALTER TABLE `course_regis` DISABLE KEYS */;
INSERT INTO `course_regis` (`student_name`, `course_name`, `reg_id`) VALUES
	('null', 'Front-End Web Developer', 1),
	('null', 'Full Stack Web Developer', 2),
	('null', 'Android Developer', 3),
	('test1@gmail.com', 'Front-End Web Developer', 4),
	('test1@gmail.com', 'Full Stack Web Developer', 5),
	('test1@gmail.com', 'Data Science', 6),
	('test1@gmail.com', 'Cloud Computing', 7),
	('aaa@gmail.com', 'Front-End Web Developer', 8),
	('aaa@gmail.com', 'Back-End Web Developer', 9),
	('aaa@gmail.com', 'Android Developer', 10),
	('aaa@gmail.com', 'Cloud Computing', 11),
	('aaa@gmail.com', 'Full Stack Web Developer', 12);
/*!40000 ALTER TABLE `course_regis` ENABLE KEYS */;


-- Dumping structure for table projectweb2204.lesson
CREATE TABLE IF NOT EXISTS `lesson` (
  `lesson_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  `lesson_name` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.lesson: ~0 rows (approximately)
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` (`lesson_id`, `course_name`, `lesson_name`, `content`) VALUES
	(1, 'Front-End Web Developer', 'intro', ''),
	(2, 'Front-End Web Developer', 'lesson 1', ''),
	(3, 'Front-End Web Developer', 'lesson 2 ', ''),
	(4, 'Front-End Web Developer', 'lesson 3', ''),
	(5, 'Front-End Web Developer', 'lesson 4', ''),
	(6, 'Front-End Web Developer', 'lesson 5', ''),
	(7, 'Front-End Web Developer', 'lesson 6', ''),
	(8, 'Front-End Web Developer', 'lesson 7', ''),
	(9, 'Full Stack Web Developer', 'intro', ''),
	(10, 'Full Stack Web Developer', 'lesson 1 ', ''),
	(11, 'Full Stack Web Developer', 'lesson 2', ''),
	(12, 'Full Stack Web Developer', 'lesson 3', ''),
	(13, 'Full Stack Web Developer', 'lesson 4', ''),
	(14, 'Full Stack Web Developer', 'lesson 5', ''),
	(15, 'Full Stack Web Developer', 'lesson 6', ''),
	(16, 'Full Stack Web Developer', 'lesson 7', ''),
	(18, 'Android Developer', 'intro', ''),
	(19, 'Android Developer', 'lesson 1', ''),
	(20, 'Android Developer', 'lesson 2', ''),
	(21, 'Android Developer', 'lesson 3', ''),
	(22, 'Android Developer', 'lesson 4', ''),
	(23, 'Android Developer', 'lesson 5', ''),
	(24, 'Android Developer', 'lesson 6', ''),
	(25, 'iOS Developer', 'intro', ''),
	(26, 'iOS Developer', 'lesson 1', ''),
	(27, 'iOS Developer', 'lesson 2', ''),
	(28, 'iOS Developer', 'lesson 3', ''),
	(29, 'iOS Developer', 'lesson 6', ''),
	(30, 'iOS Developer', 'lesson 4', ''),
	(31, 'iOS Developer', 'lesson 5', ''),
	(32, 'Back-End Web Developer', 'intro', ''),
	(33, 'Back-End Web Developer', 'lesson 1', ''),
	(34, 'Back-End Web Developer', 'lesson 3', ''),
	(35, 'Back-End Web Developer', 'lesson 4', ''),
	(36, 'Back-End Web Developer', 'lesson 2', ''),
	(37, 'Back-End Web Developer', 'lesson 5', ''),
	(38, 'Back-End Web Developer', 'lesson 6', ''),
	(39, 'Data Science', 'intro', ''),
	(40, 'Data Science', 'lesson 1', ''),
	(41, 'Data Science', 'lesson 2', ''),
	(42, 'Data Science', 'lesson 3', ''),
	(43, 'Data Science', 'lesson 4', ''),
	(44, 'Data Science', 'lesson 5', ''),
	(45, 'Data Science', 'lesson 6', ''),
	(46, 'Artificial Intelligence', 'intro', ''),
	(47, 'Artificial Intelligence', 'lesson 1', ''),
	(48, 'Artificial Intelligence', 'lesson 2', ''),
	(49, 'Artificial Intelligence', 'lesson 3', ''),
	(50, 'Artificial Intelligence', 'lesson 4', ''),
	(51, 'Artificial Intelligence', 'lesson 5', ''),
	(52, 'Artificial Intelligence', 'lesson 6', ''),
	(53, 'Cloud Computing', 'intro', ''),
	(54, 'Cloud Computing', 'lesson 1', ''),
	(55, 'Cloud Computing', 'lesson 2', ''),
	(56, 'Cloud Computing', 'lesson 3', ''),
	(57, 'Cloud Computing', 'lesson 4', ''),
	(58, 'Cloud Computing', 'lesson 5', ''),
	(59, 'Cloud Computing', 'lesson 6', ''),
	(60, 'Android Developer', 'lesson 7', ''),
	(61, 'iOS Developer', 'lesson 7', ''),
	(62, 'Back-End Web Developer', 'lesson 7', ''),
	(63, 'Data Science', 'lesson 7', ''),
	(64, 'Artificial Intelligence', 'lesson 7', ''),
	(65, 'Cloud Computing', 'lesson 7', '');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;


-- Dumping structure for table projectweb2204.purchase_history
CREATE TABLE IF NOT EXISTS `purchase_history` (
  `date` datetime DEFAULT NULL,
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(50) DEFAULT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.purchase_history: ~4 rows (approximately)
/*!40000 ALTER TABLE `purchase_history` DISABLE KEYS */;
INSERT INTO `purchase_history` (`date`, `order_id`, `payment_id`, `course_name`, `amount`, `status`, `user`) VALUES
	(NULL, 1, 'PAYID-L7Y6QCI4UR8109878535053B', 'Data Science', 1050, 'ชำระแล้ว', 'test1@gmail.com'),
	('2021-01-03 23:03:55', 2, 'PAYID-L7Y6V2Y0SU313757S228033S', 'Data Science', 1050, 'ชำระแล้ว', 'test1@gmail.com'),
	('2021-01-03 23:12:48', 3, 'PAYID-L7Y6Z3Y9K2486964U2520135', 'Cloud Computing', 1250, 'ชำระแล้ว', 'test1@gmail.com'),
	('2021-01-03 23:20:09', 4, 'PAYID-L7Y65MQ7WM45987HC200923B', 'Cloud Computing', 1250, 'ชำระแล้ว', 'aaa@gmail.com');
/*!40000 ALTER TABLE `purchase_history` ENABLE KEYS */;


-- Dumping structure for table projectweb2204.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '0',
  `fullname` varchar(150) NOT NULL DEFAULT '0',
  `password` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `email`, `fullname`, `password`) VALUES
	(1, 'test1@gmail.com', 'test1', '111'),
	(2, 'aaa@gmail.com', 'aaa', '111');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table projectweb2204.user_logtime
CREATE TABLE IF NOT EXISTS `user_logtime` (
  `username` varchar(150) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table projectweb2204.user_logtime: ~3 rows (approximately)
/*!40000 ALTER TABLE `user_logtime` DISABLE KEYS */;
INSERT INTO `user_logtime` (`username`, `login_time`) VALUES
	('test1@gmail.com', '2021-01-03 21:07:34'),
	('test1@gmail.com', '2021-01-03 23:02:23'),
	('aaa@gmail.com', '2021-01-03 23:14:45'),
	('aaa@gmail.com', '2021-01-05 22:15:38');
/*!40000 ALTER TABLE `user_logtime` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
