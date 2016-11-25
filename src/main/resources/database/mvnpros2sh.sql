/*
Navicat MySQL Data Transfer

Source Server         : 本机-liudecai
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mvnpros2sh

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-29 21:17:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssh_department
-- ----------------------------
DROP TABLE IF EXISTS `ssh_department`;
CREATE TABLE `ssh_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd77nff7i9ijjm7cqwdnvpqep9` (`parentId`),
  CONSTRAINT `FKd77nff7i9ijjm7cqwdnvpqep9` FOREIGN KEY (`parentId`) REFERENCES `ssh_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssh_department
-- ----------------------------
INSERT INTO `ssh_department` VALUES ('1', '部门一', '这是部门一', null);
INSERT INTO `ssh_department` VALUES ('2', '部门二', '这是部门二', null);

-- ----------------------------
-- Table structure for ssh_role
-- ----------------------------
DROP TABLE IF EXISTS `ssh_role`;
CREATE TABLE `ssh_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssh_role
-- ----------------------------
INSERT INTO `ssh_role` VALUES ('3', '角色一', '这是角色一');
INSERT INTO `ssh_role` VALUES ('4', '角色二', '这是角色二');

-- ----------------------------
-- Table structure for ssh_user
-- ----------------------------
DROP TABLE IF EXISTS `ssh_user`;
CREATE TABLE `ssh_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `departmentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsx7aelwep299q6dye7t12q4qr` (`departmentId`),
  CONSTRAINT `FKsx7aelwep299q6dye7t12q4qr` FOREIGN KEY (`departmentId`) REFERENCES `ssh_department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssh_user
-- ----------------------------

-- ----------------------------
-- Table structure for ssh_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ssh_user_role`;
CREATE TABLE `ssh_user_role` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `FKg3e9197voecqbqwfca3jjp51h` (`roleId`),
  CONSTRAINT `FKg3e9197voecqbqwfca3jjp51h` FOREIGN KEY (`roleId`) REFERENCES `ssh_role` (`id`),
  CONSTRAINT `FKsgxmr1ensw0oro8b187y96dvy` FOREIGN KEY (`userId`) REFERENCES `ssh_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssh_user_role
-- ----------------------------
