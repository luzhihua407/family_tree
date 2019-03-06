/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : familytree

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2019-03-06 18:12:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basic_dict`
-- ----------------------------
DROP TABLE IF EXISTS `basic_dict`;
CREATE TABLE `basic_dict` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`code`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`dis`  int(11) NULL DEFAULT 1 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`num_value`  decimal(12,2) NULL DEFAULT NULL ,
`remark`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`value`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`parent_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`parent_id`) REFERENCES `basic_dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKkag6v4ncplo4fr8vg5hfr50yp` (`parent_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1103178805607944194

;

-- ----------------------------
-- Table structure for `oauth_access_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
`token_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`token`  mediumblob NULL ,
`authentication_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`user_name`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`client_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`authentication`  mediumblob NULL ,
`refresh_token`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`authentication_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `oauth_approvals`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
`userId`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`clientId`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`scope`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`status`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`expiresAt`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
`lastModifiedAt`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `oauth_client_details`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
`client_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`resource_ids`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`client_secret`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`scope`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`authorized_grant_types`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`web_server_redirect_uri`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`authorities`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`access_token_validity`  int(11) NULL DEFAULT NULL ,
`refresh_token_validity`  int(11) NULL DEFAULT NULL ,
`additional_information`  varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`autoapprove`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`client_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `oauth_client_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
`token_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`token`  mediumblob NULL ,
`authentication_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`user_name`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`client_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`authentication_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `oauth_code`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
`code`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`authentication`  mediumblob NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `oauth_refresh_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
`token_id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`token`  mediumblob NULL ,
`authentication`  mediumblob NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `security_menu`
-- ----------------------------
DROP TABLE IF EXISTS `security_menu`;
CREATE TABLE `security_menu` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`code`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`icon`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`id_path`  varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`remark`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`type`  int(11) NULL DEFAULT NULL ,
`url`  varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`parent`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`parent`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `UK_tq5314uwm3dsbq5mjd8mwdg2f` (`code`) USING BTREE ,
UNIQUE INDEX `UK_4kk1vl4bvpaho8ked9v4xkr9d` (`name`) USING BTREE ,
INDEX `FK1v7v4vmwtttsu58xdxwyq2w42` (`parent`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_menu_right`
-- ----------------------------
DROP TABLE IF EXISTS `security_menu_right`;
CREATE TABLE `security_menu_right` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`code`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FK306320p23sp27qdrnpttxlwab` (`menu_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_role`
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`admin`  bit(1) NULL DEFAULT NULL ,
`code`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`remark`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu`;
CREATE TABLE `security_role_menu` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`own`  bit(1) NULL DEFAULT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
`role_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`role_id`) REFERENCES `security_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKf3mud4qoc7ayew8nml4plkevo` (`menu_id`) USING BTREE ,
INDEX `FKkeitxsgxwayackgqllio4ohn5` (`role_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_role_menu_right`
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu_right`;
CREATE TABLE `security_role_menu_right` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
`menu_right_id`  bigint(20) NULL DEFAULT NULL ,
`role_menu_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`menu_right_id`) REFERENCES `security_menu_right` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`role_menu_id`) REFERENCES `security_role_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKh0fdh7sgt1wmtpqb90yo369q` (`menu_id`) USING BTREE ,
INDEX `FK79xbbokkngyy6bfksl9jin1qt` (`menu_right_id`) USING BTREE ,
INDEX `FKdw9o0ovwgn26yu60apy1k8ako` (`role_menu_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu`;
CREATE TABLE `security_user_menu` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`own`  bit(1) NULL DEFAULT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
`user_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FK6va8c3wvegutnirrjla5dqpnn` (`menu_id`) USING BTREE ,
INDEX `FKfqsgyqt79xa4wybipbli5e0pn` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_user_menu_right`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu_right`;
CREATE TABLE `security_user_menu_right` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
`menu_right_id`  bigint(20) NULL DEFAULT NULL ,
`user_menu_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_menu_id`) REFERENCES `security_user_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`menu_right_id`) REFERENCES `security_menu_right` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`menu_id`) REFERENCES `security_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKpl8rv8pbcvliq88y0kaofnf9k` (`menu_id`) USING BTREE ,
INDEX `FKhvi1q3qr9bopyj6s6kqhxvdt9` (`menu_right_id`) USING BTREE ,
INDEX `FK7scysiwcbhgbfmwtt4hhthrl5` (`user_menu_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `security_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role`;
CREATE TABLE `security_user_role` (
`user`  bigint(20) NOT NULL ,
`role`  bigint(20) NOT NULL ,
FOREIGN KEY (`role`) REFERENCES `security_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKbpyc3re68tllbhpfkwv3mp1ss` (`role`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spring_session`
-- ----------------------------
DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session` (
`PRIMARY_ID`  char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`SESSION_ID`  char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`CREATION_TIME`  bigint(20) NOT NULL ,
`LAST_ACCESS_TIME`  bigint(20) NOT NULL ,
`MAX_INACTIVE_INTERVAL`  int(11) NOT NULL ,
`EXPIRY_TIME`  bigint(20) NOT NULL ,
`PRINCIPAL_NAME`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`PRIMARY_ID`),
UNIQUE INDEX `SPRING_SESSION_IX1` (`SESSION_ID`) USING BTREE ,
INDEX `SPRING_SESSION_IX2` (`EXPIRY_TIME`) USING BTREE ,
INDEX `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spring_session_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes` (
`SESSION_PRIMARY_ID`  char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ATTRIBUTE_NAME`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ATTRIBUTE_BYTES`  blob NOT NULL ,
PRIMARY KEY (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`),
FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`create_time`  datetime NULL DEFAULT NULL ,
`creater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
`updater`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`valid`  bit(1) NULL DEFAULT NULL ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`first_login`  bit(1) NOT NULL ,
`last_login_time`  datetime NULL DEFAULT NULL ,
`mobile`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`username`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`password`  varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`real_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`register_time`  datetime NULL DEFAULT NULL ,
`type`  int(11) NULL DEFAULT NULL ,
`age`  int(11) NULL DEFAULT NULL ,
`gender`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1103178724532047875

;

-- ----------------------------
-- Table structure for `verification_token`
-- ----------------------------
DROP TABLE IF EXISTS `verification_token`;
CREATE TABLE `verification_token` (
`id`  bigint(20) NULL DEFAULT NULL ,
`token`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_id`  bigint(20) NULL DEFAULT NULL ,
`expiry_date`  datetime NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Auto increment value for `basic_dict`
-- ----------------------------
ALTER TABLE `basic_dict` AUTO_INCREMENT=1610633218;

-- ----------------------------
-- Auto increment value for `security_menu`
-- ----------------------------
ALTER TABLE `security_menu` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_menu_right`
-- ----------------------------
ALTER TABLE `security_menu_right` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_role`
-- ----------------------------
ALTER TABLE `security_role` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_role_menu`
-- ----------------------------
ALTER TABLE `security_role_menu` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_role_menu_right`
-- ----------------------------
ALTER TABLE `security_role_menu_right` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_user_menu`
-- ----------------------------
ALTER TABLE `security_user_menu` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `security_user_menu_right`
-- ----------------------------
ALTER TABLE `security_user_menu_right` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `sys_user`
-- ----------------------------
ALTER TABLE `sys_user` AUTO_INCREMENT=2139115523;
