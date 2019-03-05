/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : familytree

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-04 20:57:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(64) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(64) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(64) DEFAULT NULL,
  `clientId` varchar(64) DEFAULT NULL,
  `scope` varchar(64) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(64) NOT NULL,
  `resource_ids` varchar(64) DEFAULT NULL,
  `client_secret` varchar(64) DEFAULT NULL,
  `scope` varchar(64) DEFAULT NULL,
  `authorized_grant_types` varchar(64) DEFAULT NULL,
  `web_server_redirect_uri` varchar(64) DEFAULT NULL,
  `authorities` varchar(64) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(64) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(64) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(64) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(64) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_menu`;
CREATE TABLE `security_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `id_path` varchar(300) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tq5314uwm3dsbq5mjd8mwdg2f` (`code`),
  UNIQUE KEY `UK_4kk1vl4bvpaho8ked9v4xkr9d` (`name`),
  KEY `FK1v7v4vmwtttsu58xdxwyq2w42` (`parent`),
  CONSTRAINT `FK1v7v4vmwtttsu58xdxwyq2w42` FOREIGN KEY (`parent`) REFERENCES `security_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_menu_right`;
CREATE TABLE `security_menu_right` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK306320p23sp27qdrnpttxlwab` (`menu_id`),
  CONSTRAINT `FK306320p23sp27qdrnpttxlwab` FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu`;
CREATE TABLE `security_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `own` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf3mud4qoc7ayew8nml4plkevo` (`menu_id`),
  KEY `FKkeitxsgxwayackgqllio4ohn5` (`role_id`),
  CONSTRAINT `FKf3mud4qoc7ayew8nml4plkevo` FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`),
  CONSTRAINT `FKkeitxsgxwayackgqllio4ohn5` FOREIGN KEY (`role_id`) REFERENCES `security_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu_right`;
CREATE TABLE `security_role_menu_right` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `role_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh0fdh7sgt1wmtpqb90yo369q` (`menu_id`),
  KEY `FK79xbbokkngyy6bfksl9jin1qt` (`menu_right_id`),
  KEY `FKdw9o0ovwgn26yu60apy1k8ako` (`role_menu_id`),
  CONSTRAINT `FK79xbbokkngyy6bfksl9jin1qt` FOREIGN KEY (`menu_right_id`) REFERENCES `security_menu_right` (`id`),
  CONSTRAINT `FKdw9o0ovwgn26yu60apy1k8ako` FOREIGN KEY (`role_menu_id`) REFERENCES `security_role_menu` (`id`),
  CONSTRAINT `FKh0fdh7sgt1wmtpqb90yo369q` FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu`;
CREATE TABLE `security_user_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `own` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6va8c3wvegutnirrjla5dqpnn` (`menu_id`),
  KEY `FKfqsgyqt79xa4wybipbli5e0pn` (`user_id`),
  CONSTRAINT `FK6va8c3wvegutnirrjla5dqpnn` FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`),
  CONSTRAINT `FKfqsgyqt79xa4wybipbli5e0pn` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu_right`;
CREATE TABLE `security_user_menu_right` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `user_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpl8rv8pbcvliq88y0kaofnf9k` (`menu_id`),
  KEY `FKhvi1q3qr9bopyj6s6kqhxvdt9` (`menu_right_id`),
  KEY `FK7scysiwcbhgbfmwtt4hhthrl5` (`user_menu_id`),
  CONSTRAINT `FK7scysiwcbhgbfmwtt4hhthrl5` FOREIGN KEY (`user_menu_id`) REFERENCES `security_user_menu` (`id`),
  CONSTRAINT `FKhvi1q3qr9bopyj6s6kqhxvdt9` FOREIGN KEY (`menu_right_id`) REFERENCES `security_menu_right` (`id`),
  CONSTRAINT `FKpl8rv8pbcvliq88y0kaofnf9k` FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_role
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role`;
CREATE TABLE `security_user_role` (
  `user` bigint(20) NOT NULL,
  `role` bigint(20) NOT NULL,
  KEY `FKbpyc3re68tllbhpfkwv3mp1ss` (`role`),
  CONSTRAINT `FKbpyc3re68tllbhpfkwv3mp1ss` FOREIGN KEY (`role`) REFERENCES `security_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_login` bit(1) NOT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1102048669307265026 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for verification_token
-- ----------------------------
DROP TABLE IF EXISTS `verification_token`;
CREATE TABLE `verification_token` (
  `id` bigint(20) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
