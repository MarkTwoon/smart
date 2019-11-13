/*
Navicat MySQL Data Transfer

Source Server         : tg
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-11-12 16:36:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `age` int(255) NOT NULL,
  `birthday` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '易绍轩', '男', '20', '2019-06-18 11:45:06.000000');
INSERT INTO `admin` VALUES ('2', '熊大', '男', '23', '1996-06-06 00:00:00.000000');
INSERT INTO `admin` VALUES ('4', '熊二', '男', '25', '1996-06-06 00:00:00.000000');

-- ----------------------------
-- Table structure for chenji
-- ----------------------------
DROP TABLE IF EXISTS `chenji`;
CREATE TABLE `chenji` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `YUWEN` int(11) NOT NULL,
  `SHUXUE` int(11) NOT NULL,
  `YINGYU` int(11) NOT NULL,
  `ZONGFEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chenji
-- ----------------------------
INSERT INTO `chenji` VALUES ('1', '110', '115', '120', '355');
INSERT INTO `chenji` VALUES ('2', '115', '110', '120', '345');
INSERT INTO `chenji` VALUES ('3', '90', '78', '88', '256');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL COMMENT '姓名',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `AGE` int(11) DEFAULT NULL COMMENT '密码',
  `SEX` varchar(255) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fyitier1ne0qepku8s64q62yv` (`USER_ID`),
  CONSTRAINT `FK_fyitier1ne0qepku8s64q62yv` FOREIGN KEY (`USER_ID`) REFERENCES `tb_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '香蕉', '200', '1');
INSERT INTO `tb_goods` VALUES ('2', '苹果', '20', '3');

-- ----------------------------
-- Table structure for tb_singer
-- ----------------------------
DROP TABLE IF EXISTS `tb_singer`;
CREATE TABLE `tb_singer` (
  `SINGER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SINGER_NAME` varchar(255) NOT NULL,
  `SINGER_SEX` int(11) NOT NULL,
  `SINGER_DATE` varchar(255) NOT NULL,
  `SINGER_NATION` varchar(255) NOT NULL,
  `SINGER_MONEY` int(255) NOT NULL,
  PRIMARY KEY (`SINGER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_singer
-- ----------------------------
INSERT INTO `tb_singer` VALUES ('1', '刘德华', '1', '1967-01-05', '中国-香港', '2000');
INSERT INTO `tb_singer` VALUES ('2', '苏有朋', '1', '1973-05-17', '中国-香港', '800');
INSERT INTO `tb_singer` VALUES ('3', '赵四', '1', '1965-04-22', '中国-东北', '200');
INSERT INTO `tb_singer` VALUES ('4', '林志炫', '1', '1977-05-24', '中国-台湾', '400');
INSERT INTO `tb_singer` VALUES ('5', '韩红', '0', '1988-05-06', '中国-大陆', '500');
INSERT INTO `tb_singer` VALUES ('6', '王源', '1', '1977-05-24', '中国-大陆', '100');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SEX` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AGE` int(11) NOT NULL,
  `BIRTHDAY` datetime(6) NOT NULL,
  `TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `A` (`TEACHER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('1', '王一明', '男', '21', '2019-10-15 18:59:57.000000', '本科生', '1');
INSERT INTO `tb_student` VALUES ('2', '李老八', '男', '25', '0000-00-00 00:00:00.000000', '硕士', '1');
INSERT INTO `tb_student` VALUES ('3', '李三', '男', '67', '0000-00-00 00:00:00.000000', '博士', '1');
INSERT INTO `tb_student` VALUES ('4', '王小军', '男', '32', '0000-00-00 00:00:00.000000', '硕士', '1');
INSERT INTO `tb_student` VALUES ('5', '王小华', '男', '46', '0000-00-00 00:00:00.000000', '本科生', '1');
INSERT INTO `tb_student` VALUES ('6', '王小虎', '男', '37', '0000-00-00 00:00:00.000000', '硕士', '1');
INSERT INTO `tb_student` VALUES ('7', '张花花', '女', '70', '2019-10-08 19:03:48.000000', '博士', '3');
INSERT INTO `tb_student` VALUES ('8', '朱小红', '女', '19', '2019-10-27 20:02:16.000000', '本科生', '2');

-- ----------------------------
-- Table structure for tb_studentmoney
-- ----------------------------
DROP TABLE IF EXISTS `tb_studentmoney`;
CREATE TABLE `tb_studentmoney` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MONEY` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_studentmoney
-- ----------------------------
INSERT INTO `tb_studentmoney` VALUES ('1', '本科生', '5000');
INSERT INTO `tb_studentmoney` VALUES ('2', '硕士', '9000');
INSERT INTO `tb_studentmoney` VALUES ('3', '博士', '16000');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SEX` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('1', '易绍轩', '男');
INSERT INTO `tb_teacher` VALUES ('2', '李鹏', '男');

-- ----------------------------
-- Table structure for tb_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_test`;
CREATE TABLE `tb_test` (
  `TEST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEST_NAME` varchar(255) NOT NULL,
  `TEST_AGE` int(255) NOT NULL,
  `TEST_TIME` datetime NOT NULL,
  `TEST_PID` int(11) NOT NULL,
  PRIMARY KEY (`TEST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_test
-- ----------------------------
INSERT INTO `tb_test` VALUES ('1', 'AAA', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tb_test` VALUES ('2', 'bbb', '0', '0000-00-00 00:00:00', '1');
INSERT INTO `tb_test` VALUES ('3', '熊大', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tb_test` VALUES ('4', '熊二', '25', '2019-11-02 02:37:33', '3');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '易绍轩', '123', '20', '男');
INSERT INTO `tb_user` VALUES ('3', '胖胖哥', '456', '20', '男');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'user0', '20');
INSERT INTO `user` VALUES ('3', 'user1', '20');
INSERT INTO `user` VALUES ('4', 'user2', '20');
INSERT INTO `user` VALUES ('5', 'user3', '20');
INSERT INTO `user` VALUES ('6', 'user4', '20');
INSERT INTO `user` VALUES ('7', 'user5', '20');
INSERT INTO `user` VALUES ('8', 'user6', '20');
INSERT INTO `user` VALUES ('9', 'user7', '20');
INSERT INTO `user` VALUES ('10', 'user8', '20');
INSERT INTO `user` VALUES ('11', 'user9', '20');
INSERT INTO `user` VALUES ('12', 'user10', '20');
INSERT INTO `user` VALUES ('13', 'user11', '20');
INSERT INTO `user` VALUES ('14', 'user12', '20');
INSERT INTO `user` VALUES ('15', 'user13', '20');
INSERT INTO `user` VALUES ('16', 'user14', '20');
INSERT INTO `user` VALUES ('17', 'user15', '20');
INSERT INTO `user` VALUES ('18', 'user16', '20');
INSERT INTO `user` VALUES ('19', 'user17', '20');
INSERT INTO `user` VALUES ('20', 'user18', '20');
INSERT INTO `user` VALUES ('21', 'user19', '20');
INSERT INTO `user` VALUES ('22', 'user20', '20');
DROP TRIGGER IF EXISTS `ins_admin`;
DELIMITER ;;
CREATE TRIGGER `ins_admin` AFTER INSERT ON `admin` FOR EACH ROW begin  
      insert into tb_test ( TEST_NAME, TEST_PID,TEST_AGE,TEST_TIME)  
        values( new.name, 0,NEW.age,NOW());  
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `trigger_test_1`;
DELIMITER ;;
CREATE TRIGGER `trigger_test_1` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
insert INTO test VALUES(0);
end
;;
DELIMITER ;
