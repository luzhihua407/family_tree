/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : familytree

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-06-25 09:28:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for basic_dict
-- ----------------------------
DROP TABLE IF EXISTS `basic_dict`;
CREATE TABLE `basic_dict` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `code` varchar(32) DEFAULT '',
  `dis` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT '',
  `num_value` decimal(8,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  `value` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_dict
-- ----------------------------
INSERT INTO `basic_dict` VALUES ('1167618369256423425', '2019-08-31 10:01:27', 'system', null, null, '1', 'education', null, '学历', null, null, null, null);
INSERT INTO `basic_dict` VALUES ('1167622564470595586', '2019-08-31 10:17:56', 'system', null, null, '1', 'dazhuan', null, '大专', null, '1167618369256423425', null, '大专');
INSERT INTO `basic_dict` VALUES ('1167637075726434306', '2019-08-31 11:15:47', 'system', null, null, '1', 'gaozhong', null, '高中', null, '1167618369256423425', null, null);
INSERT INTO `basic_dict` VALUES ('1167637227673485313', '2019-08-31 11:16:23', 'system', null, null, '1', 'chuzhong', null, '初中', null, '1167618369256423425', null, null);
INSERT INTO `basic_dict` VALUES ('1167637413690867714', '2019-08-31 11:17:08', 'system', null, null, '1', '中专', null, '中专', null, '1167618369256423425', null, null);
INSERT INTO `basic_dict` VALUES ('1167637559774281730', '2019-08-31 11:17:43', 'system', null, null, '1', 'xiaoxue', null, '小学', null, '1167618369256423425', null, null);
INSERT INTO `basic_dict` VALUES ('1171395568387883009', '2019-09-10 20:10:42', 'system', null, null, '1', 'none', null, '不清楚', null, '1167618369256423425', null, null);
INSERT INTO `basic_dict` VALUES ('1172882825645064194', '2019-09-14 22:40:30', 'system', null, null, '1', '房支', null, '房支', null, null, null, null);
INSERT INTO `basic_dict` VALUES ('1171374472506826753', '2019-09-14 22:40:48', 'system', null, null, '1', '五房', null, '五房', null, '1172882825645064194', null, null);
INSERT INTO `basic_dict` VALUES ('1173254983692984322', '2019-09-15 23:19:20', 'system', null, null, '1', '一房', null, '一房', null, '1172882825645064194', null, null);
INSERT INTO `basic_dict` VALUES ('1174330682776395778', '2019-09-18 22:33:46', 'system', null, null, '1', '生产队', null, '生产队', null, null, null, null);
INSERT INTO `basic_dict` VALUES ('1174330762594000898', '2019-09-18 22:34:06', 'system', null, null, '1', '一队', null, '一队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1174330813332496386', '2019-09-18 22:34:19', 'system', null, null, '1', '二队', null, '二队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1174330860799434753', '2019-09-18 22:34:30', 'system', null, null, '1', '三队', null, '三队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1174330908610306049', '2019-09-18 22:34:41', 'system', null, null, '1', '四队', null, '四队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1174330950943416321', '2019-09-18 22:34:51', 'system', null, null, '1', '五队', null, '五队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1174331002529161217', '2019-09-18 22:35:04', 'system', null, null, '1', '六队', null, '六队', null, '1174330682776395778', null, null);
INSERT INTO `basic_dict` VALUES ('1181566736331857922', '2019-10-08 21:53:47', 'system', null, null, '1', 'opt_permission', null, '操作权限', null, null, null, null);
INSERT INTO `basic_dict` VALUES ('1181566808993980418', '2019-10-08 21:47:34', 'system', null, null, '1', 'add', null, '新建', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1181566917894889474', '2019-10-08 21:48:00', 'system', null, null, '1', 'update', null, '更新', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1181566973947568129', '2019-10-08 21:48:14', 'system', null, null, '1', 'delete', null, '删除', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1181567520326967297', '2019-10-08 21:50:24', 'system', null, null, '1', 'setting_relationship', null, '设置关系', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1183270495206408193', '2019-10-13 14:37:24', 'system', null, null, '1', 'search', null, '查询', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1185737776175935490', '2019-10-20 10:01:30', 'system', null, null, '1', 'auth_menu', null, '分配菜单', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1185754569770692610', '2019-10-20 11:08:14', 'system', null, null, '1', 'reset_password', null, '重设密码', null, '1181566736331857922', null, null);
INSERT INTO `basic_dict` VALUES ('1187902543825100802', '2019-10-26 09:23:30', 'system', null, null, '1', 'two_brank', null, '二房', null, '1172882825645064194', null, null);
INSERT INTO `basic_dict` VALUES ('1193041470223429634', '2019-11-09 13:43:47', 'system', null, null, '1', 'view', null, '查看', null, '1181566736331857922', '查看', null);

-- ----------------------------
-- Table structure for basic_region
-- ----------------------------
DROP TABLE IF EXISTS `basic_region`;
CREATE TABLE `basic_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime NOT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `edit_time` datetime NOT NULL,
  `orderno` double DEFAULT NULL,
  `valid` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL,
  `area_code` varchar(20) DEFAULT '',
  `code` varchar(20) DEFAULT '',
  `full_name` varchar(100) DEFAULT '',
  `name` varchar(20) DEFAULT '',
  `post_code` varchar(20) DEFAULT '',
  `remark` varchar(250) DEFAULT '',
  `short_name` varchar(100) DEFAULT '',
  `status` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `last_update_user` bigint(20) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12706 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_region
-- ----------------------------
INSERT INTO `basic_region` VALUES ('134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '210000', '辽宁省', '辽宁省', null, null, '辽宁', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '310000', '上海', '上海', null, null, '上海', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '220000', '吉林省', '吉林省', null, null, '吉林', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '230000', '黑龙江省', '黑龙江省', null, null, '黑龙江', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('139', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '110000', '北京', '北京', null, null, '北京', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('140', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '120000', '天津', '天津', null, null, '天津', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('141', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '130000', '河北省', '河北省', null, null, '河北', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('142', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '140000', '山西省', '山西省', null, null, '山西', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('143', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '150000', '内蒙古', '内蒙古', null, null, '内蒙古', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('144', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '410000', '河南省', '河南省', null, null, '河南', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('145', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '420000', '湖北省', '湖北省', null, null, '湖北', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('146', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '430000', '湖南省', '湖南省', null, null, '湖南', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('147', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '440000', '广东省', '广东省', null, null, '广东', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('148', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '450000', '广西', '广西', null, null, '广西', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('149', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '460000', '海南省', '海南省', null, null, '海南', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('150', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '500000', '重庆', '重庆', null, null, '重庆', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('151', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '510000', '四川省', '四川省', null, null, '四川', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('152', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '330000', '浙江省', '浙江省', null, null, '浙江', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('153', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '340000', '安徽省', '安徽省', null, null, '安徽', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('154', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '350000', '福建省', '福建省', null, null, '福建', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('155', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '360000', '江西省', '江西省', null, null, '江西', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('156', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '370000', '山东省', '山东省', null, null, '山东', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('157', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '610000', '陕西省', '陕西省', null, null, '陕西', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('158', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '620000', '甘肃省', '甘肃省', null, null, '甘肃', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('159', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '630000', '青海省', '青海省', null, null, '青海', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('160', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '640000', '宁夏', '宁夏', null, null, '宁夏', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('161', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '650000', '新疆', '新疆', null, null, '新疆', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('162', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '710000', '台湾', '台湾', null, null, '台湾', '0', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('163', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '810000', '香港', '香港', null, null, '香港', '0', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('164', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '820000', '澳门', '澳门', null, null, '澳门', '0', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('165', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '520000', '贵州省', '贵州省', null, null, '贵州', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('166', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '530000', '云南省', '云南省', null, null, '云南', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('167', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '540000', '西藏', '西藏', null, null, '西藏', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('878', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210100', '辽宁省沈阳市', '沈阳市', null, null, '沈阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('879', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210200', '辽宁省大连市', '大连市', null, null, '大连', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('880', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210300', '辽宁省鞍山市', '鞍山市', null, null, '鞍山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('881', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210400', '辽宁省抚顺市', '抚顺市', null, null, '抚顺', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('882', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210500', '辽宁省本溪市', '本溪市', null, null, '本溪', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('883', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210600', '辽宁省丹东市', '丹东市', null, null, '丹东', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('884', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210700', '辽宁省锦州市', '锦州市', null, null, '锦州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('885', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210800', '辽宁省营口市', '营口市', null, null, '营口', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('886', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210900', '辽宁省阜新市', '阜新市', null, null, '阜新', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('887', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211000', '辽宁省辽阳市', '辽阳市', null, null, '辽阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('888', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0427', '211100', '辽宁省盘锦市', '盘锦市', null, null, '盘锦', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('889', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211200', '辽宁省铁岭市', '铁岭市', null, null, '铁岭', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('890', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211300', '辽宁省朝阳市', '朝阳市', null, null, '朝阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('891', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211400', '辽宁省葫芦岛市', '葫芦岛市', null, null, '葫芦岛', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('892', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310100', '上海上海市', '上海市', null, null, '上海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('893', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320100', '江苏省南京市', '南京市', null, null, '南京', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('894', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320200', '江苏省无锡市', '无锡市', null, null, '无锡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('895', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320300', '江苏省徐州市', '徐州市', null, null, '徐州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('896', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320400', '江苏省常州市', '常州市', null, null, '常州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('897', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320500', '江苏省苏州市', '苏州市', null, null, '苏州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('898', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320600', '江苏省南通市', '南通市', null, null, '南通', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('899', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320700', '江苏省连云港市', '连云港市', null, null, '连云港', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('900', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320800', '江苏省淮安市', '淮安市', null, null, '淮安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('901', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320900', '江苏省盐城市', '盐城市', null, null, '盐城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('902', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321000', '江苏省扬州市', '扬州市', null, null, '扬州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('903', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321100', '江苏省镇江市', '镇江市', null, null, '镇江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('904', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321200', '江苏省泰州市', '泰州市', null, null, '泰州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('905', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321300', '江苏省宿迁市', '宿迁市', null, null, '宿迁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('906', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220100', '吉林省长春市', '长春市', null, null, '长春', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('907', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220200', '吉林省吉林市', '吉林市', null, null, '吉林', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('908', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220300', '吉林省四平市', '四平市', null, null, '四平', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('909', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0437', '220400', '吉林省辽源市', '辽源市', null, null, '辽源', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('910', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220500', '吉林省通化市', '通化市', null, null, '通化', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('911', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220600', '吉林省白山市', '白山市', null, null, '白山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('912', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220700', '吉林省松原市', '松原市', null, null, '松原', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('913', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '436', '220800', '吉林省白城市', '白城市', null, null, '白城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('914', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222400', '吉林省延边朝鲜族自治州', '延边朝鲜族自治州', null, null, '延边', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('915', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230100', '黑龙江省哈尔滨市', '哈尔滨市', null, null, '哈尔滨', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('916', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230200', '黑龙江省齐齐哈尔市', '齐齐哈尔市', null, null, '齐齐哈尔', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('917', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230300', '黑龙江省鸡西市', '鸡西市', null, null, '鸡西', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('918', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230400', '黑龙江省鹤岗市', '鹤岗市', null, null, '鹤岗', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('919', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230500', '黑龙江省双鸭山市', '双鸭山市', null, null, '双鸭山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('920', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230600', '黑龙江省大庆市', '大庆市', null, null, '大庆', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('921', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230700', '黑龙江省伊春市', '伊春市', null, null, '伊春', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('922', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230800', '黑龙江省佳木斯市', '佳木斯市', null, null, '佳木斯', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('923', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0464', '230900', '黑龙江省七台河市', '七台河市', null, null, '七台河', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('924', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231000', '黑龙江省牡丹江市', '牡丹江市', null, null, '牡丹江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('925', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231100', '黑龙江省黑河市', '黑河市', null, null, '黑河', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('926', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231200', '黑龙江省绥化市', '绥化市', null, null, '绥化', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('927', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232700', '黑龙江省大兴安岭地区', '大兴安岭地区', null, null, '大兴安岭', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('928', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110100', '北京北京市', '北京市', null, null, '北京', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('929', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120100', '天津天津市', '天津市', null, null, '天津', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('930', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130100', '河北省石家庄市', '石家庄', null, null, '石家庄', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('931', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130200', '河北省唐山市', '唐山市', null, null, '唐山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('932', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130300', '河北省秦皇岛市', '秦皇岛', null, null, '秦皇岛', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('933', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130400', '河北省邯郸市', '邯郸市', null, null, '邯郸', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('934', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130500', '河北省邢台市', '邢台市', null, null, '邢台', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('935', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130600', '河北省保定市', '保定市', null, null, '保定', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('936', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130700', '河北省张家口市', '张家口市', null, null, '张家口', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('937', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130800', '河北省承德市', '承德市', null, null, '承德', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('938', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130900', '河北省沧州市', '沧州市', null, null, '沧州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('939', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131000', '河北省廊坊市', '廊坊市', null, null, '廊坊', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('940', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131100', '河北省衡水市', '衡水市', null, null, '衡水', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('941', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140100', '山西省太原市', '太原市', null, null, '太原', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('942', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140200', '山西省大同市', '大同市', null, null, '大同', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('943', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140300', '山西省阳泉市', '阳泉市', null, null, '阳泉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('944', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140400', '山西省长治市', '长治市', null, null, '长治', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('945', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140500', '山西省晋城市', '晋城市', null, null, '晋城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('946', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140600', '山西省朔州市', '朔州市', null, null, '朔州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('947', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140700', '山西省晋中市', '晋中市', null, null, '晋中', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('948', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140800', '山西省运城市', '运城市', null, null, '运城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('949', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140900', '山西省忻州市', '忻州市', null, null, '忻州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('950', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141000', '山西省临汾市', '临汾市', null, null, '临汾', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('951', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141100', '山西省吕梁市', '吕梁市', null, null, '吕梁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('952', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150100', '内蒙古自治区呼和浩特市', '呼和浩特市', null, null, '呼和浩特', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('953', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150200', '内蒙古自治区包头市', '包头市', null, null, '包头', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('954', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0473', '150300', '内蒙古自治区乌海市', '乌海市', null, null, '乌海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('955', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150400', '内蒙古自治区赤峰市', '赤峰市', null, null, '赤峰', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('956', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150500', '内蒙古自治区通辽市', '通辽市', null, null, '通辽', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('957', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150600', '内蒙古自治区鄂尔多斯市', '鄂尔多斯市', null, null, '鄂尔多斯', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('958', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150700', '内蒙古自治区呼伦贝尔市', '呼伦贝尔市', null, null, '呼伦贝尔', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('959', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150800', '内蒙古自治区巴彦淖尔市', '巴彦淖尔市', null, null, '巴彦淖尔', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('960', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150900', '内蒙古自治区乌兰察布市', '乌兰察布市', null, null, '乌兰察布', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('961', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152200', '内蒙古自治区兴安盟', '兴安盟', null, null, '兴安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('962', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152500', '内蒙古自治区锡林郭勒盟', '锡林郭勒盟', null, null, '锡林郭勒', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('963', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0483', '152900', '内蒙古自治区阿拉善盟', '阿拉善盟', null, null, '阿拉善', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('964', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410100', '河南省郑州市', '郑州市', null, null, '郑州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('965', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410200', '河南省开封市', '开封市', null, null, '开封', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('966', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410300', '河南省洛阳市', '洛阳市', null, null, '洛阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('967', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410400', '河南省平顶山市', '平顶山市', null, null, '平顶山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('968', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410500', '河南省安阳市', '安阳市', null, null, '安阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('969', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410600', '河南省鹤壁市', '鹤壁市', null, null, '鹤壁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('970', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410700', '河南省新乡市', '新乡市', null, null, '新乡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('971', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410800', '河南省焦作市', '焦作市', null, null, '焦作', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('972', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410900', '河南省濮阳市', '濮阳市', null, null, '濮阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('973', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411000', '河南省许昌市', '许昌市', null, null, '许昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('974', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411100', '河南省漯河市', '漯河市', null, null, '漯河', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('975', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411200', '河南省三门峡市', '三门峡市', null, null, '三门峡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('976', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411300', '河南省南阳市', '南阳市', null, null, '南阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('977', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411400', '河南省商丘市', '商丘市', null, null, '商丘', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('978', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411500', '河南省信阳市', '信阳市', null, null, '信阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('979', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411600', '河南省周口市', '周口市', null, null, '周口', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('980', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411700', '河南省驻马店市', '驻马店市', null, null, '驻马店', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('981', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '419000', '河南省省直辖', '省直辖', null, null, '省直辖', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('982', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420100', '湖北省武汉市', '武汉市', null, null, '武汉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('983', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420200', '湖北省黄石市', '黄石市', null, null, '黄石', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('984', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420300', '湖北省十堰市', '十堰市', null, null, '十堰', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('985', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420500', '湖北省宜昌市', '宜昌市', null, null, '宜昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('986', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420600', '湖北省襄阳市', '襄樊市', null, null, '襄阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('987', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0711', '420700', '湖北省鄂州市', '鄂州市', null, null, '鄂州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('988', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420800', '湖北省荆门市', '荆门市', null, null, '荆门', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('989', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420900', '湖北省孝感市', '孝感市', null, null, '孝感', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('990', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421000', '湖北省荆州市', '荆州市', null, null, '荆州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('991', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421100', '湖北省黄冈市', '黄冈市', null, null, '黄冈', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('992', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421200', '湖北省咸宁市', '咸宁市', null, null, '咸宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('993', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0722', '421300', '湖北省随州市', '随州市', null, null, '随州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('994', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422800', '湖北省恩施土家族苗族自治州', '恩施市', null, null, '恩施', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('995', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '429000', '湖北省省直辖', '省直辖', null, null, '省直辖', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('996', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430100', '湖南省长沙市', '长沙市', null, null, '长沙', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('997', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430200', '湖南省株洲市', '株洲市', null, null, '株洲', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('998', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430300', '湖南省湘潭市', '湘潭市', null, null, '湘潭', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('999', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430400', '湖南省衡阳市', '衡阳市', null, null, '衡阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1000', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430500', '湖南省邵阳市', '邵阳市', null, null, '邵阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1001', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430600', '湖南省岳阳市', '岳阳市', null, null, '岳阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1002', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430700', '湖南省常德市', '常德市', null, null, '常德', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1003', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0744', '430800', '湖南省张家界市', '张家界市', null, null, '张家界', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1004', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430900', '湖南省益阳市', '益阳市', null, null, '益阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1005', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431000', '湖南省郴州市', '郴州市', null, null, '郴州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1006', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431100', '湖南省永州市', '永州市', null, null, '永州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1007', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431200', '湖南省怀化市', '怀化市', null, null, '怀化', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1008', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431300', '湖南省娄底市', '娄底市', null, null, '娄底', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1009', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433100', '湖南省湘西土家族苗族自治州', '湘西土家族苗族自治州', null, null, '湘西', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1010', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440100', '广东省广州市', '广州市', null, null, '广州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1011', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440200', '广东省韶关市', '韶关市', null, null, '韶关', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1012', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440300', '广东省深圳市', '深圳市', null, null, '深圳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1013', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0756', '440400', '广东省珠海市', '珠海市', null, null, '珠海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1014', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440500', '广东省汕头市', '汕头市', null, null, '汕头', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1015', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0757', '440600', '广东省佛山市', '佛山市', null, null, '佛山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1016', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440700', '广东省江门市', '江门市', null, null, '江门', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1017', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440800', '广东省湛江市', '湛江市', null, null, '湛江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1018', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440900', '广东省茂名市', '茂名市', null, null, '茂名', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1019', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441200', '广东省肇庆市', '肇庆市', null, null, '肇庆', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1020', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441300', '广东省惠州市', '惠州市', null, null, '惠州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1021', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441400', '广东省梅州市', '梅州市', null, null, '梅州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1022', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0660', '441500', '广东省汕尾市', '汕尾市', null, null, '汕尾', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1023', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441600', '广东省河源市', '河源市', null, null, '河源', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1024', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0662', '441700', '广东省阳江市', '阳江市', null, null, '阳江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1025', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441800', '广东省清远市', '清远市', null, null, '清远', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1026', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0769', '441900', '广东省东莞市', '东莞市', null, null, '东莞', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1027', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0760', '442000', '广东省中山市', '中山市', null, null, '中山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1028', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0768', '445100', '广东省潮州市', '潮州市', null, null, '潮州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1029', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445200', '广东省揭阳市', '揭阳市', null, null, '揭阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1030', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445300', '广东省云浮市', '云浮市', null, null, '云浮', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1031', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450100', '广西壮族自治区南宁市', '南宁市', null, null, '南宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1032', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450200', '广西壮族自治区柳州市', '柳州市', null, null, '柳州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1033', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450300', '广西壮族自治区桂林市', '桂林市', null, null, '桂林', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1034', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450400', '广西壮族自治区梧州市', '梧州市', null, null, '梧州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1035', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0779', '450500', '广西壮族自治区北海市', '北海市', null, null, '北海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1036', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0770', '450600', '广西壮族自治区防城港市', '防城港市', null, null, '防城港', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1037', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0777', '450700', '广西壮族自治区钦州市', '钦州市', null, null, '钦州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1038', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450800', '广西壮族自治区贵港市', '贵港市', null, null, '贵港', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1039', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450900', '广西壮族自治区玉林市', '玉林市', null, null, '玉林', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1040', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451000', '广西壮族自治区百色市', '百色市', null, null, '百色', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1041', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451100', '广西壮族自治区贺州市', '贺州市', null, null, '贺州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1042', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451200', '广西壮族自治区河池市', '河池', null, null, '河池', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1043', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451300', '广西壮族自治区来宾市', '来宾市', null, null, '来宾', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1044', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451400', '广西壮族自治区崇左市', '崇左市', null, null, '崇左', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1045', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460100', '海南省海口市', '海口市', null, null, '海口', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1046', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0899', '460200', '海南省三亚市', '三亚市', null, null, '三亚', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1047', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460300', '海南省三沙市', '三沙市', null, null, '三沙', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1048', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '469000', '海南省省直辖', '省直辖', null, null, '省直辖', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1049', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500100', '重庆重庆市', '重庆市', null, null, '重庆', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1050', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510100', '四川省成都市', '成都市', null, null, '成都', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1051', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510300', '四川省自贡市', '自贡市', null, null, '自贡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1052', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510400', '四川省攀枝花市', '攀枝花市', null, null, '攀枝花', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1053', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510500', '四川省泸州市', '泸州市', null, null, '泸州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1054', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510600', '四川省德阳市', '德阳市', null, null, '德阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1055', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510700', '四川省绵阳市', '绵阳市', null, null, '绵阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1056', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510800', '四川省广元市', '广元市', null, null, '广元', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1057', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510900', '四川省遂宁市', '遂宁市', null, null, '遂宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1058', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511000', '四川省内江市', '内江市', null, null, '内江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1059', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511100', '四川省乐山市', '乐山市', null, null, '乐山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1060', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511300', '四川省南充市', '南充市', null, null, '南充', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1061', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330100', '浙江省杭州市', '杭州市', null, null, '杭州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1062', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330200', '浙江省宁波市', '宁波市', null, null, '宁波', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1063', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330300', '浙江省温州市', '温州市', null, null, '温州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1064', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330400', '浙江省嘉兴市', '嘉兴市', null, null, '嘉兴', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1065', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330500', '浙江省湖州市', '湖州市', null, null, '湖州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1066', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330600', '浙江省绍兴市', '绍兴市', null, null, '绍兴', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1067', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330700', '浙江省金华市', '金华市', null, null, '金华', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1068', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330800', '浙江省衢州市', '衢州市', null, null, '衢州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1069', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0580', '330900', '浙江省舟山市', '舟山市', null, null, '舟山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1070', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331000', '浙江省台州市', '台州市', null, null, '台州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1071', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331100', '浙江省丽水市', '丽水市', null, null, '丽水', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1072', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340100', '安徽省合肥市', '合肥市', null, null, '合肥', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1073', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340200', '安徽省芜湖市', '芜湖市', null, null, '芜湖', '1', null, null, '1997', '36');
INSERT INTO `basic_region` VALUES ('1074', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340300', '安徽省蚌埠市', '蚌埠市', null, null, '蚌埠', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1075', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340400', '安徽省淮南市', '淮南市', null, null, '淮南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1076', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340500', '安徽省马鞍山市', '马鞍山市', null, null, '马鞍山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1077', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0561', '340600', '安徽省淮北市', '淮北市', null, null, '淮北', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1078', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0562', '340700', '安徽省铜陵市', '铜陵市', null, null, '铜陵', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1079', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340800', '安徽省安庆市', '安庆市', null, null, '安庆', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1080', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341000', '安徽省黄山市', '黄山市', null, null, '黄山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1081', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341100', '安徽省滁州市', '滁州市', null, null, '滁州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1082', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341200', '安徽省阜阳市', '阜阳市', null, null, '阜阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1083', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341300', '安徽省宿州市', '宿州市', null, null, '宿州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1084', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341500', '安徽省六安地区', '六安地区', null, null, '六安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1085', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341600', '安徽省亳州市', '亳州市', null, null, '亳州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1086', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0566', '341700', '安徽省池州市', '池州市', null, null, '池州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1087', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341800', '安徽省宣城市', '宣城市', null, null, '宣城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1088', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350100', '福建省福州市', '福州市', null, null, '福州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1089', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350200', '福建省厦门市', '厦门市', null, null, '厦门', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1090', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350300', '福建省莆田市', '莆田市', null, null, '莆田', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1091', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350400', '福建省三明市', '三明市', null, null, '三明', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1092', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350500', '福建省泉州市', '泉州市', null, null, '泉州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1093', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350600', '福建省漳州市', '漳州市', null, null, '漳州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1094', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350700', '福建省南平市', '南平市', null, null, '南平', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1095', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350800', '福建省龙岩市', '龙岩市', null, null, '龙岩', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1096', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350900', '福建省宁德市', '宁德市', null, null, '宁德', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1097', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360100', '江西省南昌市', '南昌市', null, null, '南昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1098', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0798', '360200', '江西省景德镇市', '景德镇市', null, null, '景德镇', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1099', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360300', '江西省萍乡市', '萍乡市', null, null, '萍乡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1100', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360400', '江西省九江市', '九江市', null, null, '九江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1101', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0790', '360500', '江西省新余市', '新余市', null, null, '新余', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1102', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0701', '360600', '江西省鹰潭市', '鹰潭市', null, null, '鹰潭', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1103', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360700', '江西省赣州市', '赣州地区', null, null, '赣州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1104', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360800', '江西省吉安市', '吉安市', null, null, '吉安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1105', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360900', '江西省宜春市', '宜春地区', null, null, '宜春', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1106', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361000', '江西省抚州市', '抚州地区', null, null, '抚州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1107', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361100', '江西省上饶市', '上饶市', null, null, '上饶', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1108', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370100', '山东省济南市', '济南市', null, null, '济南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1109', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370200', '山东省青岛市', '青岛市', null, null, '青岛', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1110', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370300', '山东省淄博市', '淄博市', null, null, '淄博', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1111', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370400', '山东省枣庄市', '枣庄市', null, null, '枣庄', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1112', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370500', '山东省东营市', '东营市', null, null, '东营', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1113', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370600', '山东省烟台市', '烟台市', null, null, '烟台', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1114', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370700', '山东省潍坊市', '潍坊市', null, null, '潍坊', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1115', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370800', '山东省济宁市', '济宁市', null, null, '济宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1116', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370900', '山东省泰安市', '泰安市', null, null, '泰安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1117', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0631', '371000', '山东省威海市', '威海市', null, null, '威海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1118', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0633', '371100', '山东省日照市', '日照市', null, null, '日照', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1119', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0634', '371200', '山东省莱芜市', '莱芜市', null, null, '莱芜', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1120', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371300', '山东省临沂市', '临沂市', null, null, '临沂', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1121', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371400', '山东省德州市', '德州市', null, null, '德州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1122', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371500', '山东省聊城市', '聊城市', null, null, '聊城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1123', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371600', '山东省滨州市', '滨州', null, null, '滨州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1124', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371700', '山东省菏泽市', '菏泽市', null, null, '菏泽', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1125', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610100', '陕西省西安市', '西安市', null, null, '西安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1126', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0919', '610200', '陕西省铜川市', '铜川市', null, null, '铜川', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1127', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610300', '陕西省宝鸡市', '宝鸡市', null, null, '宝鸡', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1128', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610400', '陕西省咸阳市', '咸阳市', null, null, '咸阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1129', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610500', '陕西省渭南市', '渭南市', null, null, '渭南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1130', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610600', '陕西省延安市', '延安市', null, null, '延安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1131', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610700', '陕西省汉中市', '汉中市', null, null, '汉中', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1132', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610800', '陕西省榆林市', '榆林市', null, null, '榆林', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1133', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610900', '陕西省安康市', '安康市', null, null, '安康', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611000', '陕西省商洛市', '商洛市', null, null, '商洛', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620100', '甘肃省兰州市', '兰州市', null, null, '兰州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1136', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620200', '甘肃省嘉峪关市', '嘉峪关市', null, null, '嘉峪关', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620300', '甘肃省金昌市', '金昌市', null, null, '金昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620400', '甘肃省白银市', '白银市', null, null, '白银', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1139', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620500', '甘肃省天水市', '天水市', null, null, '天水', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1140', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620600', '甘肃省武威市', '武威市', null, null, '武威', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1141', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620700', '甘肃省张掖市', '张掖市', null, null, '张掖', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1142', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620800', '甘肃省平凉市', '平凉市', null, null, '平凉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1143', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620900', '甘肃省酒泉市', '酒泉市', null, null, '酒泉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1144', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621000', '甘肃省庆阳市', '庆阳市', null, null, '庆阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1145', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621100', '甘肃省定西市', '定西市', null, null, '定西', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1146', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621200', '甘肃省陇南市', '陇南市', null, null, '陇南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1147', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622900', '甘肃省临夏回族自治州', '临夏回族自治州', null, null, '临夏', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1148', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623000', '甘肃省甘南藏族自治州', '甘南藏族自治州', null, null, '甘南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1149', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630100', '青海省西宁市', '西宁市', null, null, '西宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1150', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632100', '青海省海东地区', '海东地区', null, null, '海东', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1151', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0970', '632200', '青海省海北藏族自治州', '海北藏族自治州', null, null, '海北', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1152', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0973', '632300', '青海省黄南藏族自治州', '黄南藏族自治州', null, null, '黄南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1153', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632500', '青海省海南藏族自治州', '海南藏族自治州', null, null, '海南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1154', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632600', '青海省果洛藏族自治州', '果洛藏族自治州', null, null, '果洛', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1155', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632700', '青海省玉树藏族自治州', '玉树藏族自治州', null, null, '玉树', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1156', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632800', '青海省海西蒙古族藏族自治州', '海西蒙古族藏族自治州', null, null, '海西', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1157', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640100', '宁夏回族自治区银川市', '银川市', null, null, '银川', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1158', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0952', '640200', '宁夏回族自治区石嘴山市', '石嘴山市', null, null, '石嘴山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1159', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640300', '宁夏回族自治区吴忠市', '吴忠市', null, null, '吴忠', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1160', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640400', '宁夏回族自治区固原市', '固原市', null, null, '固原', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1161', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '640500', '宁夏回族自治区中卫市', '中卫市', null, null, '中卫', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1162', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650100', '新疆维吾尔自治区乌鲁木齐市', '乌鲁木齐市', null, null, '乌鲁木齐', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1163', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0990', '650200', '新疆维吾尔自治区克拉玛依市', '克拉玛依市', null, null, '克拉玛依', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1164', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0995', '652100', '新疆维吾尔自治区吐鲁番地区', '吐鲁番地区', null, null, '吐鲁番', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1165', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0902', '652200', '新疆维吾尔自治区哈密地区', '哈密地区', null, null, '哈密', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1166', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652300', '新疆维吾尔自治区昌吉回族自治州', '昌吉回族自治州', null, null, '昌吉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1167', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0909', '652700', '新疆维吾尔自治区博尔塔拉蒙古自治州', '博尔塔拉蒙古自治州', null, null, '博尔塔拉', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1168', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州', '巴音郭楞蒙古自治州', null, null, '巴音郭楞', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1169', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652900', '新疆维吾尔自治区阿克苏地区', '阿克苏地区', null, null, '阿克苏', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1170', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0908', '653000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治\r\n\r\n州', '克孜勒苏柯尔克孜自治州', null, null, '克州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1171', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653100', '新疆维吾尔自治区喀什地区', '喀什地区', null, null, '喀什', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1172', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653200', '新疆维吾尔自治区和田地区', '和田地区', null, null, '和田', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1173', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654000', '新疆维吾尔自治区伊犁哈萨克自治州', '伊犁哈萨克自治州', null, null, '伊犁哈萨克', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1174', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0901', '654200', '新疆维吾尔自治区塔城地区', '塔城地区', null, null, '塔城', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1175', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654300', '新疆维吾尔自治区阿勒泰地区', '阿勒泰地区', null, null, '阿勒泰', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1176', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '659000', '新疆维吾尔自治区自治区直辖', '自治区直辖', null, null, '自治区直辖', '-1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1177', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710100', '台湾省台北市', '台北市', null, null, '台北', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1178', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710200', '台湾省高雄市', '高雄市', null, null, '高雄', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1179', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710300', '台湾省基隆市', '基隆市', null, null, '基隆', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1180', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710400', '台湾省台中市', '台中市', null, null, '台中', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1181', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710500', '台湾省台南市', '台南市', null, null, '台南', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1182', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710600', '台湾省新竹市', '新竹市', null, null, '新竹', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1183', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710700', '台湾省嘉义市', '嘉义市', null, null, '嘉义', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1184', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719000', '台湾省省直辖', '省直辖', null, null, '省直', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1185', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810100', '香港特别行政区香港岛', '香港岛', null, null, '香港', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1186', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810200', '香港特别行政区九龙', '九龙', null, null, '九龙', '-1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1187', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810300', '香港特别行政区新界', '新界', null, null, '新界', '-1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1188', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820100', '澳门特别行政区澳门半岛', '澳门半岛', null, null, '澳门半岛', '-1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1189', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820200', '澳门特别行政区澳门离岛', '澳门离岛', null, null, '澳门离岛', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1190', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820300', '澳门特别行政区无堂区划分区域', '无堂区划分区域', null, null, '无堂区', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1191', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511400', '四川省眉山市', '眉山市', null, null, '眉山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1192', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511500', '四川省宜宾市', '宜宾市', null, null, '宜宾', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1193', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511600', '四川省广安市', '广安市', null, null, '广安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1194', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511700', '四川省达州市', '达川地区', null, null, '达州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1195', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511800', '四川省雅安市', '雅安市', null, null, '雅安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1196', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0827', '511900', '四川省巴中市', '巴中市', null, null, '巴中', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1197', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '512000', '四川省资阳市', '资阳市', null, null, '资阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1198', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513200', '四川省阿坝藏族羌族自治州', '阿坝藏族羌族自治州', null, null, '阿坝', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1199', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513300', '四川省甘孜藏族自治州', '甘孜藏族自治州', null, null, '甘孜', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1200', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513400', '四川省凉山彝族自治州', '凉山彝族自治州', null, null, '凉山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1201', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520100', '贵州省贵阳市', '贵阳市', null, null, '贵阳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1202', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0858', '520200', '贵州省六盘水市', '六盘水市', null, null, '六盘水', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1203', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520300', '贵州省遵义市', '遵义市', null, null, '遵义', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1204', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520400', '贵州省安顺市', '安顺市', null, null, '安顺', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1205', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '856', '520600', '贵州省铜仁市', '铜仁市', null, null, '铜仁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1206', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522300', '贵州省黔西南布依族苗族自治州', '黔西南州', null, null, '黔西南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1207', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '857', '520500', '贵州省毕节市', '毕节市', null, null, '毕节', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1208', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522600', '贵州省黔东南苗族侗族自治州', '黔东南苗族侗族自治州', null, null, '黔东南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1209', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522700', '贵州省黔南布依族苗族自治州', '黔南州', null, null, '黔南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1210', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530100', '云南省昆明市', '昆明市', null, null, '昆明', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1211', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530300', '云南省曲靖市', '曲靖市', null, null, '曲靖', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1212', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530400', '云南省玉溪市', '玉溪市', null, null, '玉溪', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1213', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530500', '云南省保山市', '保山地区', null, null, '保山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1214', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530600', '云南省昭通市', '昭通地区', null, null, '昭通', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1215', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530700', '云南省丽江市', '丽江市', null, null, '丽江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1216', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530800', '云南省普洱市', '普洱市', null, null, '普洱', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1217', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530900', '云南省临沧市', '临沧市', null, null, '临沧', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1218', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532300', '云南省楚雄彝族自治州', '楚雄州', null, null, '楚雄', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1219', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532500', '云南省红河哈尼族彝族自治州', '建水县', null, null, '红河', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1220', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532600', '云南省文山壮族苗族自治州', '文山州', null, null, '文山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1221', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0691', '532800', '云南省西双版纳傣族自治州', '西双版纳傣族自治州', null, null, '西双版纳', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1222', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532900', '云南省大理白族自治州', '大理州', null, null, '大理', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1223', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533100', '云南省德宏傣族景颇族自治州', '德宏州', null, null, '德宏', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1224', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '886', '533300', '云南省怒江傈僳族自治州', '怒江傈僳族自治州', null, null, '怒江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1225', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0887', '533400', '云南省迪庆藏族自治州', '迪庆藏族自治州', null, null, '迪庆', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1226', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540100', '西藏自治区拉萨市', '拉萨市', null, null, '拉萨', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1227', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542100', '西藏自治区昌都地区', '昌都地区', null, null, '昌都', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1228', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542200', '西藏自治区山南地区', '山南地区', null, null, '山南', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1229', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542300', '西藏自治区日喀则地区', '日喀则地区', null, null, '日喀则', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1230', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542400', '西藏自治区那曲地区', '那曲地区', null, null, '那曲', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1231', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542500', '西藏自治区阿里地区', '阿里地区', null, null, '阿里', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('1232', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542600', '西藏自治区林芝地区', '林芝地区', null, null, '林芝', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('9129', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150103', '内蒙古自治区呼和浩特市回民区', '回民区', null, null, '呼和浩特回民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9130', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150104', '内蒙古自治区呼和浩特市玉泉区', '玉泉区', null, null, '呼和浩特玉泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9131', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150105', '内蒙古自治区呼和浩特市赛罕区', '赛罕区', null, null, '呼和浩特赛罕', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9132', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150121', '内蒙古自治区呼和浩特市土默特左旗', '土默特', null, null, '呼和浩特土默\r\n\r\n特左', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9133', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150122', '内蒙古自治区呼和浩特市托克托县', '托克托县', null, null, '呼和浩特托克托', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150123', '内蒙古自治区呼和浩特市和林格尔县', '和林格尔县', null, null, '呼和浩特和林\r\n\r\n格尔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150124', '内蒙古自治区呼和浩特市清水河县', '清水河县', null, null, '呼和浩特清水河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9136', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150125', '内蒙古自治区呼和浩特市武川县', '武川县', null, null, '呼和浩特武川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150202', '内蒙古自治区包头市东河区', '东河区', null, null, '包头东河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150203', '内蒙古自治区包头市昆都仑区', '昆都仑区', null, null, '包头昆都仑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9139', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150204', '内蒙古自治区包头市青山区', '青山区', null, null, '包头青山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9140', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150205', '内蒙古自治区包头市石拐区', '石拐区', null, null, '包头石拐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9141', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150206', '内蒙古自治区包头市白云鄂博矿区', '白云鄂博', null, null, '包头白云鄂博\r\n\r\n矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9142', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150207', '内蒙古自治区包头市九原区', '九原区', null, null, '包头九原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9143', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150221', '内蒙古自治区包头市土默特右旗', '土默特', null, null, '包头土默特右', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9144', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150222', '内蒙古自治区包头市固阳县', '固阳县', null, null, '包头固阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9145', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0472', '150223', '内蒙古自治区包头市达尔罕茂明安联合旗', '达尔罕茂明安', null, null, '包\r\n\r\n头达尔罕茂明安联合', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9146', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0473', '150302', '内蒙古自治区乌海市海勃湾区', '海勃湾区', null, null, '乌海海勃湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9147', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0473', '150303', '内蒙古自治区乌海市海南区', '海南区', null, null, '乌海海南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9148', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0473', '150304', '内蒙古自治区乌海市乌达区', '乌达区', null, null, '乌海乌达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9149', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150402', '内蒙古自治区赤峰市红山区', '红山区', null, null, '赤峰红山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9150', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150403', '内蒙古自治区赤峰市元宝山区', '元宝山区', null, null, '赤峰元宝山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9151', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150404', '内蒙古自治区赤峰市松山区', '松山区', null, null, '赤峰松山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9152', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150421', '内蒙古自治区赤峰市阿鲁科尔沁旗', '阿鲁科尔沁', null, null, '赤峰阿鲁科尔\r\n\r\n沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9153', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150422', '内蒙古自治区赤峰市巴林左旗', '巴林左旗', null, null, '赤峰巴林左', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9154', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150423', '内蒙古自治区赤峰市巴林右旗', '巴林右旗', null, null, '赤峰巴林右', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9155', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150424', '内蒙古自治区赤峰市林西县', '林西县', null, null, '赤峰林西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9156', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150425', '内蒙古自治区赤峰市克什克腾旗', '克什克腾旗', null, null, '赤峰克什克腾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9157', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150426', '内蒙古自治区赤峰市翁牛特旗', '翁牛特旗', null, null, '赤峰翁牛特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9158', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150428', '内蒙古自治区赤峰市喀喇沁旗', '喀喇沁旗', null, null, '赤峰喀喇沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9159', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150429', '内蒙古自治区赤峰市宁城县', '宁城县', null, null, '赤峰宁城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9160', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0476', '150430', '内蒙古自治区赤峰市敖汉旗', '敖汉旗', null, null, '赤峰敖汉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9161', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150502', '内蒙古自治区通辽市科尔沁区', '科尔沁区', null, null, '通辽科尔沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9162', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150521', '内蒙古自治区通辽市科尔沁左翼中旗', '科尔沁左翼中旗', null, null, '通辽科尔\r\n\r\n沁左翼中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9163', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150522', '内蒙古自治区通辽市科尔沁左翼后旗', '科尔沁左翼后旗', null, null, '通辽科尔\r\n\r\n沁左翼后', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9164', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150523', '内蒙古自治区通辽市开鲁县', '开鲁县', null, null, '通辽开鲁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9165', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150524', '内蒙古自治区通辽市库伦旗', '库伦旗', null, null, '通辽库伦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9166', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150525', '内蒙古自治区通辽市奈曼旗', '奈曼旗', null, null, '通辽奈曼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9167', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150526', '内蒙古自治区通辽市扎鲁特旗', '扎鲁特旗', null, null, '通辽扎鲁特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9168', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0475', '150581', '内蒙古自治区通辽市霍林郭勒市', '霍林郭勒市', null, null, '通辽霍林郭勒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9169', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150602', '内蒙古自治区鄂尔多斯市东胜区', '东胜区', null, null, '鄂尔多斯东胜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9170', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150621', '内蒙古自治区鄂尔多斯市达拉特旗', '达拉特旗', null, null, '鄂尔多斯达拉特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9171', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150622', '内蒙古自治区鄂尔多斯市准格尔旗', '准格尔旗', null, null, '鄂尔多斯准格尔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9172', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150623', '内蒙古自治区鄂尔多斯市鄂托克前旗', '鄂托克前旗', null, null, '鄂尔多斯鄂托\r\n\r\n克前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9173', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150624', '内蒙古自治区鄂尔多斯市鄂托克旗', '鄂托克旗', null, null, '鄂尔多斯鄂托克', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9174', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150625', '内蒙古自治区鄂尔多斯市杭锦旗', '杭锦旗', null, null, '鄂尔多斯杭锦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9175', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150626', '内蒙古自治区鄂尔多斯市乌审旗', '乌审旗', null, null, '鄂尔多斯乌审', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9176', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0477', '150627', '内蒙古自治区鄂尔多斯市伊金霍洛旗', '伊金霍洛旗', null, null, '鄂尔多斯伊金\r\n\r\n霍洛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9177', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150702', '内蒙古自治区呼伦贝尔市海拉尔区', '海拉尔区', null, null, '呼伦贝尔海拉尔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9178', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150721', '内蒙古自治区呼伦贝尔市阿荣旗', '阿荣旗', null, null, '呼伦贝尔阿荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9179', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150722', '内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族\r\n\r\n自治旗', '莫力达瓦', null, null, '呼伦贝尔莫力达瓦达斡尔族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9180', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150723', '内蒙古自治区呼伦贝尔市鄂伦春自治旗', '鄂伦春', null, null, '呼伦贝尔\r\n\r\n鄂伦春自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9181', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150724', '内蒙古自治区呼伦贝尔市鄂温克族自治旗', '鄂温克族', null, null, '呼伦贝\r\n\r\n尔鄂温克族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9182', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150725', '内蒙古自治区呼伦贝尔市陈巴尔虎旗', '陈巴尔虎旗', null, null, '呼伦贝尔陈巴\r\n\r\n尔虎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9183', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150726', '内蒙古自治区呼伦贝尔市新巴尔虎左旗', '新巴尔虎左旗', null, null, '呼伦贝尔\r\n\r\n新巴尔虎左', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9184', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150727', '内蒙古自治区呼伦贝尔市新巴尔虎右旗', '新巴尔虎右旗', null, null, '呼伦贝尔\r\n\r\n新巴尔虎右', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9185', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150781', '内蒙古自治区呼伦贝尔市满洲里市', '满洲里市', null, null, '呼伦贝尔满洲里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9186', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150782', '内蒙古自治区呼伦贝尔市牙克石市', '牙克石市', null, null, '呼伦贝尔牙克石', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9187', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150783', '内蒙古自治区呼伦贝尔市扎兰屯市', '扎兰屯市', null, null, '呼伦贝尔扎兰屯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9188', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150784', '内蒙古自治区呼伦贝尔市额尔古纳市', '额尔古纳市', null, null, '呼伦贝尔额尔\r\n\r\n古纳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9189', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0470', '150785', '内蒙古自治区呼伦贝尔市根河市', '根河市', null, null, '呼伦贝尔根河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9190', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150802', '内蒙古自治区巴彦淖尔市临河区', '临河区', null, null, '巴彦淖尔临河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9191', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150821', '内蒙古自治区巴彦淖尔市五原县', '五原县', null, null, '巴彦淖尔五原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9192', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150822', '内蒙古自治区巴彦淖尔市磴口县', '磴口县', null, null, '巴彦淖尔磴口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9193', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150823', '内蒙古自治区巴彦淖尔市乌拉特前旗', '乌拉特前旗', null, null, '巴彦淖尔乌拉\r\n\r\n特前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9194', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150824', '内蒙古自治区巴彦淖尔市乌拉特中旗', '乌拉特中旗', null, null, '巴彦淖尔乌拉\r\n\r\n特中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9195', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150825', '内蒙古自治区巴彦淖尔市乌拉特后旗', '乌拉特后旗', null, null, '巴彦淖尔乌拉\r\n\r\n特后', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9196', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0478', '150826', '内蒙古自治区巴彦淖尔市杭锦后旗', '杭锦后旗', null, null, '巴彦淖尔杭锦后', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9197', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150902', '内蒙古自治区乌兰察布市集宁区', '集宁区', null, null, '乌兰察布集宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9198', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150921', '内蒙古自治区乌兰察布市卓资县', '卓资县', null, null, '乌兰察布卓资', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9199', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150922', '内蒙古自治区乌兰察布市化德县', '化德县', null, null, '乌兰察布化德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9200', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150923', '内蒙古自治区乌兰察布市商都县', '商都县', null, null, '乌兰察布商都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9201', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150924', '内蒙古自治区乌兰察布市兴和县', '兴和县', null, null, '乌兰察布兴和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9202', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150925', '内蒙古自治区乌兰察布市凉城县', '凉城县', null, null, '乌兰察布凉城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9203', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150926', '内蒙古自治区乌兰察布市察哈尔右翼前旗', '察哈尔右翼前旗', null, null, '乌兰察\r\n\r\n布察哈尔右翼前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9204', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150927', '内蒙古自治区乌兰察布市察哈尔右翼中旗', '察哈尔右翼中旗', null, null, '乌兰察\r\n\r\n布察哈尔右翼中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9205', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150928', '内蒙古自治区乌兰察布市察哈尔右翼后旗', '察哈尔右翼后旗', null, null, '乌兰察\r\n\r\n布察哈尔右翼后', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9206', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150929', '内蒙古自治区乌兰察布市四子王旗', '四子王旗', null, null, '乌兰察布四子王', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9207', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0474', '150981', '内蒙古自治区乌兰察布市丰镇市', '丰镇市', null, null, '乌兰察布丰镇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9208', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152201', '内蒙古自治区兴安盟乌兰浩特市', '乌兰浩特市', null, null, '兴安盟乌兰浩特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9209', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152202', '内蒙古自治区兴安盟阿尔山市', '阿尔山市', null, null, '兴安盟阿尔山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9210', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152221', '内蒙古自治区兴安盟科尔沁右翼前旗', '科尔沁右翼前旗', null, null, '兴安盟科尔\r\n\r\n沁右翼前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9211', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152222', '内蒙古自治区兴安盟科尔沁右翼中旗', '科尔沁右翼中旗', null, null, '兴安盟科尔\r\n\r\n沁右翼中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9212', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152223', '内蒙古自治区兴安盟扎赉特旗', '扎赉特旗', null, null, '兴安盟扎赉特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9213', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0482', '152224', '内蒙古自治区兴安盟突泉县', '突泉县', null, null, '兴安盟突泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9214', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152501', '内蒙古自治区锡林郭勒盟二连浩特市', '二连浩特市', null, null, '锡林郭勒盟二连\r\n\r\n浩特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9215', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152502', '内蒙古自治区锡林郭勒盟锡林浩特市', '锡林浩特市', null, null, '锡林郭勒盟锡林\r\n\r\n浩特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9216', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152522', '内蒙古自治区锡林郭勒盟阿巴嘎旗', '阿巴嘎旗', null, null, '锡林郭勒盟阿巴嘎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9217', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152523', '内蒙古自治区锡林郭勒盟苏尼特左旗', '苏尼特左旗', null, null, '锡林郭勒盟苏尼\r\n\r\n特左', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9218', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152524', '内蒙古自治区锡林郭勒盟苏尼特右旗', '苏尼特右旗', null, null, '锡林郭勒盟苏尼\r\n\r\n特右', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9219', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152525', '内蒙古自治区锡林郭勒盟东乌珠穆沁旗', '东乌珠穆沁旗', null, null, '锡林郭勒盟\r\n\r\n东乌珠穆沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9220', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152526', '内蒙古自治区锡林郭勒盟西乌珠穆沁旗', '西乌珠穆沁旗', null, null, '锡林郭勒盟\r\n\r\n西乌珠穆沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9221', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152527', '内蒙古自治区锡林郭勒盟太仆寺旗', '太仆寺旗', null, null, '锡林郭勒盟太仆寺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9222', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152528', '内蒙古自治区锡林郭勒盟镶黄旗', '镶黄旗', null, null, '锡林郭勒盟镶黄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9223', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152529', '内蒙古自治区锡林郭勒盟正镶白旗', '正镶白旗', null, null, '锡林郭勒盟正镶白', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9224', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152530', '内蒙古自治区锡林郭勒盟正蓝旗', '正蓝旗', null, null, '锡林郭勒盟正蓝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9225', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0479', '152531', '内蒙古自治区锡林郭勒盟多伦县', '多伦县', null, null, '锡林郭勒盟多伦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9226', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0483', '152921', '内蒙古自治区阿拉善盟阿拉善左旗', '阿拉善左旗', null, null, '阿拉善盟阿拉善\r\n\r\n左', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9227', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0483', '152922', '内蒙古自治区阿拉善盟阿拉善右旗', '阿拉善右旗', null, null, '阿拉善盟阿拉善\r\n\r\n右', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9228', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0483', '152923', '内蒙古自治区阿拉善盟额济纳旗', '额济纳旗', null, null, '阿拉善盟额济纳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9229', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210102', '辽宁省沈阳市和平区', '和平区', null, null, '沈阳和平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9230', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210103', '辽宁省沈阳市沈河区', '沈河区', null, null, '沈阳沈河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9231', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210104', '辽宁省沈阳市大东区', '大东区', null, null, '沈阳大东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9232', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210105', '辽宁省沈阳市皇姑区', '皇姑区', null, null, '沈阳皇姑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9233', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210106', '辽宁省沈阳市铁西区', '铁西区', null, null, '沈阳铁西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9234', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210111', '辽宁省沈阳市苏家屯区', '苏家屯区', null, null, '沈阳苏家屯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9235', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210112', '辽宁省沈阳市东陵区', '东陵区', null, null, '沈阳东陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9236', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210113', '辽宁省沈阳市沈北新区', '沈北新区', null, null, '沈阳沈北新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9237', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210114', '辽宁省沈阳市于洪区', '于洪区', null, null, '沈阳于洪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9238', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210122', '辽宁省沈阳市辽中县', '辽中县', null, null, '沈阳辽中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9239', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210123', '辽宁省沈阳市康平县', '康平县', null, null, '沈阳康平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9240', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210124', '辽宁省沈阳市法库县', '法库县', null, null, '沈阳法库', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9241', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '024', '210181', '辽宁省沈阳市新民市', '新民市', null, null, '沈阳新民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9242', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210202', '辽宁省大连市中山区', '中山区', null, null, '大连中山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9243', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210203', '辽宁省大连市西岗区', '西岗区', null, null, '大连西岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9244', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210204', '辽宁省大连市沙河口区', '沙河口区', null, null, '大连沙河口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9245', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210211', '辽宁省大连市甘井子区', '甘井子区', null, null, '大连甘井子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9246', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210212', '辽宁省大连市旅顺口区', '旅顺口区', null, null, '大连旅顺口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9247', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210213', '辽宁省大连市金州区', '金州区', null, null, '大连金州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9248', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210224', '辽宁省大连市长海县', '长海县', null, null, '大连长海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9249', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210281', '辽宁省大连市瓦房店市', '瓦房店市', null, null, '大连瓦房店', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9250', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210282', '辽宁省大连市普兰店市', '普兰店市', null, null, '大连普兰店', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9251', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0411', '210283', '辽宁省大连市庄河市', '庄河市', null, null, '大连庄河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9252', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210302', '辽宁省鞍山市铁东区', '铁东区', null, null, '鞍山铁东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9253', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210303', '辽宁省鞍山市铁西区', '铁西区', null, null, '鞍山铁西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9254', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210304', '辽宁省鞍山市立山区', '立山区', null, null, '鞍山立山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9255', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210311', '辽宁省鞍山市千山区', '千山区', null, null, '鞍山千山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9256', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210321', '辽宁省鞍山市台安县', '台安县', null, null, '鞍山台安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9257', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210323', '辽宁省鞍山市岫岩满族自治县', '岫岩满族自治县', null, null, '鞍山岫岩满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9258', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0412', '210381', '辽宁省鞍山市海城市', '海城市', null, null, '鞍山海城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9259', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210402', '辽宁省抚顺市新抚区', '新抚区', null, null, '抚顺新抚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9260', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210403', '辽宁省抚顺市东洲区', '东洲区', null, null, '抚顺东洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9261', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210404', '辽宁省抚顺市望花区', '望花区', null, null, '抚顺望花', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9262', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210411', '辽宁省抚顺市顺城区', '顺城区', null, null, '抚顺顺城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9263', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210421', '辽宁省抚顺市抚顺县', '抚顺县', null, null, '抚顺抚顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9264', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210422', '辽宁省抚顺市新宾满族自治县', '新宾满族自治县', null, null, '抚顺新宾满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9265', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0413', '210423', '辽宁省抚顺市清原满族自治县', '清原满族自治县', null, null, '抚顺清原满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9266', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210502', '辽宁省本溪市平山区', '平山区', null, null, '本溪平山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9267', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210503', '辽宁省本溪市溪湖区', '溪湖区', null, null, '本溪溪湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9268', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210504', '辽宁省本溪市明山区', '明山区', null, null, '本溪明山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9269', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210505', '辽宁省本溪市南芬区', '南芬区', null, null, '本溪南芬', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9270', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230230', '黑龙江省齐齐哈尔市克东县', '克东县', null, null, '齐齐哈尔克东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9271', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230231', '黑龙江省齐齐哈尔市拜泉县', '拜泉县', null, null, '齐齐哈尔拜泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9272', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230281', '黑龙江省齐齐哈尔市讷河市', '讷河市', null, null, '齐齐哈尔讷河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9273', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230302', '黑龙江省鸡西市鸡冠区', '鸡冠区', null, null, '鸡西鸡冠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9274', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230303', '黑龙江省鸡西市恒山区', '恒山区', null, null, '鸡西恒山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9275', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230304', '黑龙江省鸡西市滴道区', '滴道区', null, null, '鸡西滴道', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9276', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230305', '黑龙江省鸡西市梨树区', '梨树区', null, null, '鸡西梨树', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9277', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230306', '黑龙江省鸡西市城子河区', '城子河区', null, null, '鸡西城子河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9278', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230307', '黑龙江省鸡西市麻山区', '麻山区', null, null, '鸡西麻山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9279', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230321', '黑龙江省鸡西市鸡东县', '鸡东县', null, null, '鸡西鸡东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9280', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230381', '黑龙江省鸡西市虎林市', '虎林市', null, null, '鸡西虎林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9281', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0467', '230382', '黑龙江省鸡西市密山市', '密山市', null, null, '鸡西密山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9282', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230402', '黑龙江省鹤岗市向阳区', '向阳区', null, null, '鹤岗向阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9283', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230403', '黑龙江省鹤岗市工农区', '工农区', null, null, '鹤岗工农', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9284', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230404', '黑龙江省鹤岗市南山区', '南山区', null, null, '鹤岗南山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9285', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230405', '黑龙江省鹤岗市兴安区', '兴安区', null, null, '鹤岗兴安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9286', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230406', '黑龙江省鹤岗市东山区', '东山区', null, null, '鹤岗东山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9287', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230407', '黑龙江省鹤岗市兴山区', '兴山区', null, null, '鹤岗兴山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9288', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230421', '黑龙江省鹤岗市萝北县', '萝北县', null, null, '鹤岗萝北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9289', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0468', '230422', '黑龙江省鹤岗市绥滨县', '绥滨县', null, null, '鹤岗绥滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9290', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230502', '黑龙江省双鸭山市尖山区', '尖山区', null, null, '双鸭山尖山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9291', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230503', '黑龙江省双鸭山市岭东区', '岭东区', null, null, '双鸭山岭东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9292', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230505', '黑龙江省双鸭山市四方台区', '四方台区', null, null, '双鸭山四方台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9293', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230506', '黑龙江省双鸭山市宝山区', '宝山区', null, null, '双鸭山宝山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9294', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230521', '黑龙江省双鸭山市集贤县', '集贤县', null, null, '双鸭山集贤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9295', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230522', '黑龙江省双鸭山市友谊县', '友谊县', null, null, '双鸭山友谊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9296', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230523', '黑龙江省双鸭山市宝清县', '宝清县', null, null, '双鸭山宝清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9297', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0469', '230524', '黑龙江省双鸭山市饶河县', '饶河县', null, null, '双鸭山饶河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9298', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230602', '黑龙江省大庆市萨尔图区', '萨尔图区', null, null, '大庆萨尔图', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9299', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230603', '黑龙江省大庆市龙凤区', '龙凤区', null, null, '大庆龙凤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9300', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230604', '黑龙江省大庆市让胡路区', '让胡路区', null, null, '大庆让胡路', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9301', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230605', '黑龙江省大庆市红岗区', '红岗区', null, null, '大庆红岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9302', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230606', '黑龙江省大庆市大同区', '大同区', null, null, '大庆大同', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9303', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230621', '黑龙江省大庆市肇州县', '肇州县', null, null, '大庆肇州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9304', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230622', '黑龙江省大庆市肇源县', '肇源县', null, null, '大庆肇源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9305', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230623', '黑龙江省大庆市林甸县', '林甸县', null, null, '大庆林甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9306', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0459', '230624', '黑龙江省大庆市杜尔伯特蒙古族自治县', '杜尔伯特蒙古族', null, null, '大\r\n\r\n庆杜尔伯特蒙古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9307', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230702', '黑龙江省伊春市伊春区', '伊春区', null, null, '伊春伊春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9308', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230703', '黑龙江省伊春市南岔区', '南岔区', null, null, '伊春南岔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9309', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230704', '黑龙江省伊春市友好区', '友好区', null, null, '伊春友好', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9310', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230705', '黑龙江省伊春市西林区', '西林区', null, null, '伊春西林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9311', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230706', '黑龙江省伊春市翠峦区', '翠峦区', null, null, '伊春翠峦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9312', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230707', '黑龙江省伊春市新青区', '新青区', null, null, '伊春新青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9313', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230708', '黑龙江省伊春市美溪区', '美溪区', null, null, '伊春美溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9314', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230709', '黑龙江省伊春市金山屯区', '金山屯区', null, null, '伊春金山屯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9315', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230710', '黑龙江省伊春市五营区', '五营区', null, null, '伊春五营', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9316', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230711', '黑龙江省伊春市乌马河区', '乌马河区', null, null, '伊春乌马河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9317', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230712', '黑龙江省伊春市汤旺河区', '汤旺河区', null, null, '伊春汤旺河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9318', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230713', '黑龙江省伊春市带岭区', '带岭区', null, null, '伊春带岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9319', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230714', '黑龙江省伊春市乌伊岭区', '乌伊岭区', null, null, '伊春乌伊岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9320', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230715', '黑龙江省伊春市红星区', '红星区', null, null, '伊春红星', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9321', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230716', '黑龙江省伊春市上甘岭区', '上甘岭区', null, null, '伊春上甘岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9322', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230722', '黑龙江省伊春市嘉荫县', '嘉荫县', null, null, '伊春嘉荫', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9323', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0458', '230781', '黑龙江省伊春市铁力市', '铁力市', null, null, '伊春铁力', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9324', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230803', '黑龙江省佳木斯市向阳区', '向阳区', null, null, '佳木斯向阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9325', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230804', '黑龙江省佳木斯市前进区', '前进区', null, null, '佳木斯前进', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9326', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230805', '黑龙江省佳木斯市东风区', '东风区', null, null, '佳木斯东风', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9327', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230811', '黑龙江省佳木斯市郊区', '郊区', null, null, '佳木斯郊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9328', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230822', '黑龙江省佳木斯市桦南县', '桦南县', null, null, '佳木斯桦南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9329', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230826', '黑龙江省佳木斯市桦川县', '桦川县', null, null, '佳木斯桦川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9330', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230828', '黑龙江省佳木斯市汤原县', '汤原县', null, null, '佳木斯汤原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9331', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230833', '黑龙江省佳木斯市抚远县', '抚远县', null, null, '佳木斯抚远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9332', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230881', '黑龙江省佳木斯市同江市', '同江市', null, null, '佳木斯同江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9333', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0454', '230882', '黑龙江省佳木斯市富锦市', '富锦市', null, null, '佳木斯富锦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9334', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0464', '230902', '黑龙江省七台河市新兴区', '新兴区', null, null, '七台河新兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9335', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0464', '230903', '黑龙江省七台河市桃山区', '桃山区', null, null, '七台河桃山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9336', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0464', '230904', '黑龙江省七台河市茄子河区', '茄子河区', null, null, '七台河茄子河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9337', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0464', '230921', '黑龙江省七台河市勃利县', '勃利县', null, null, '七台河勃利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9338', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231002', '黑龙江省牡丹江市东安区', '东安区', null, null, '牡丹江东安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9339', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231003', '黑龙江省牡丹江市阳明区', '阳明区', null, null, '牡丹江阳明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9340', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231004', '黑龙江省牡丹江市爱民区', '爱民区', null, null, '牡丹江爱民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9341', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231005', '黑龙江省牡丹江市西安区', '西安区', null, null, '牡丹江西安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9342', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231024', '黑龙江省牡丹江市东宁县', '东宁县', null, null, '牡丹江东宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9343', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231025', '黑龙江省牡丹江市林口县', '林口县', null, null, '牡丹江林口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9344', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231081', '黑龙江省牡丹江市绥芬河市', '绥芬河市', null, null, '牡丹江绥芬河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9345', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231083', '黑龙江省牡丹江市海林市', '海林市', null, null, '牡丹江海林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9346', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231084', '黑龙江省牡丹江市宁安市', '宁安市', null, null, '牡丹江宁安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9347', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0453', '231085', '黑龙江省牡丹江市穆棱市', '穆棱市', null, null, '牡丹江穆棱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9348', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231102', '黑龙江省黑河市爱辉区', '爱辉区', null, null, '黑河爱辉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9349', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231121', '黑龙江省黑河市嫩江县', '嫩江县', null, null, '黑河嫩江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9350', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231123', '黑龙江省黑河市逊克县', '逊克县', null, null, '黑河逊克', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9351', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231124', '黑龙江省黑河市孙吴县', '孙吴县', null, null, '黑河孙吴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9352', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231181', '黑龙江省黑河市北安市', '北安市', null, null, '黑河北安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9353', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0456', '231182', '黑龙江省黑河市五大连池市', '五大连池市', null, null, '黑河五大连池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9354', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231202', '黑龙江省绥化市北林区', '北林区', null, null, '绥化北林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9355', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231221', '黑龙江省绥化市望奎县', '望奎县', null, null, '绥化望奎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9356', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231222', '黑龙江省绥化市兰西县', '兰西县', null, null, '绥化兰西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9357', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231223', '黑龙江省绥化市青冈县', '青冈县', null, null, '绥化青冈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9358', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231224', '黑龙江省绥化市庆安县', '庆安县', null, null, '绥化庆安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9359', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231225', '黑龙江省绥化市明水县', '明水县', null, null, '绥化明水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9360', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231226', '黑龙江省绥化市绥棱县', '绥棱县', null, null, '绥化绥棱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9361', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231281', '黑龙江省绥化市安达市', '安达市', null, null, '绥化安达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9362', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231282', '黑龙江省绥化市肇东市', '肇东市', null, null, '绥化肇东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9363', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0455', '231283', '黑龙江省绥化市海伦市', '海伦市', null, null, '绥化海伦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9364', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232701', '黑龙江省大兴安岭地区加格达奇区', '加格达奇区', null, null, '大兴安岭地区加格\r\n\r\n达奇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9365', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232702', '黑龙江省大兴安岭地区松岭区', '松岭区', null, null, '大兴安岭地区松岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9366', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232703', '黑龙江省大兴安岭地区新林区', '新林区', null, null, '大兴安岭地区新林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9367', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232704', '黑龙江省大兴安岭地区呼中区', '呼中区', null, null, '大兴安岭地区呼中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9368', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232721', '黑龙江省大兴安岭地区呼玛县', '呼玛县', null, null, '大兴安岭地区呼玛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9369', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232722', '黑龙江省大兴安岭地区塔河县', '塔河县', null, null, '大兴安岭地区塔河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9370', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0457', '232723', '黑龙江省大兴安岭地区漠河县', '漠河县', null, null, '大兴安岭地区漠河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9371', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310101', '上海上海市黄浦区', '黄浦区', null, null, '上海黄浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9372', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310104', '上海上海市徐汇区', '徐汇区', null, null, '上海徐汇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9373', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310105', '上海上海市长宁区', '长宁区', null, null, '上海长宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9374', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310106', '上海上海市静安区', '静安区', null, null, '上海静安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9375', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310107', '上海上海市普陀区', '普陀区', null, null, '上海普陀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9376', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310108', '上海上海市闸北区', '闸北区', null, null, '上海闸北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9377', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310109', '上海上海市虹口区', '虹口区', null, null, '上海虹口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9378', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310110', '上海上海市杨浦区', '杨浦区', null, null, '上海杨浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9379', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310112', '上海上海市闵行区', '闵行区', null, null, '上海闵行', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9380', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310113', '上海上海市宝山区', '宝山区', null, null, '上海宝山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9381', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310114', '上海上海市嘉定区', '嘉定区', null, null, '上海嘉定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9382', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310115', '上海上海市浦东新区', '浦东新区', null, null, '上海浦东新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9383', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310116', '上海上海市金山区', '金山区', null, null, '上海金山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9384', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310117', '上海上海市松江区', '松江区', null, null, '上海松江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9385', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310118', '上海上海市青浦区', '青浦区', null, null, '上海青浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9386', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '021', '310120', '上海上海市奉贤区', '奉贤区', null, null, '上海奉贤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9388', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320102', '江苏省南京市玄武区', '玄武区', null, null, '南京玄武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9389', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320103', '江苏省南京市白下区', '白下区', null, null, '南京白下', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9390', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320104', '江苏省南京市秦淮区', '秦淮区', null, null, '南京秦淮', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9391', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320105', '江苏省南京市建邺区', '建邺区', null, null, '南京建邺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9392', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320106', '江苏省南京市鼓楼区', '鼓楼区', null, null, '南京鼓楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9393', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320107', '江苏省南京市下关区', '下关区', null, null, '南京下关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9394', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320111', '江苏省南京市浦口区', '浦口区', null, null, '南京浦口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9395', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320113', '江苏省南京市栖霞区', '栖霞区', null, null, '南京栖霞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9396', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320114', '江苏省南京市雨花台区', '雨花台区', null, null, '南京雨花台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9397', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320115', '江苏省南京市江宁区', '江宁区', null, null, '南京江宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9398', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320116', '江苏省南京市六合区', '六合区', null, null, '南京六合', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9399', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320124', '江苏省南京市溧水县', '溧水县', null, null, '南京溧水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9400', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '025', '320125', '江苏省南京市高淳县', '高淳县', null, null, '南京高淳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9401', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320202', '江苏省无锡市崇安区', '崇安区', null, null, '无锡崇安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9402', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320203', '江苏省无锡市南长区', '南长区', null, null, '无锡南长', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9403', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320204', '江苏省无锡市北塘区', '北塘区', null, null, '无锡北塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9404', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320205', '江苏省无锡市锡山区', '锡山区', null, null, '无锡锡山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9405', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320206', '江苏省无锡市惠山区', '惠山区', null, null, '无锡惠山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9406', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320211', '江苏省无锡市滨湖区', '滨湖区', null, null, '无锡滨湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9407', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320281', '江苏省无锡市江阴市', '江阴市', null, null, '无锡江阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9408', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0510', '320282', '江苏省无锡市宜兴市', '宜兴市', null, null, '无锡宜兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9409', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320302', '江苏省徐州市鼓楼区', '鼓楼区', null, null, '徐州鼓楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9410', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320303', '江苏省徐州市云龙区', '云龙区', null, null, '徐州云龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9411', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320305', '江苏省徐州市贾汪区', '贾汪区', null, null, '徐州贾汪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9412', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320311', '江苏省徐州市泉山区', '泉山区', null, null, '徐州泉山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9413', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320312', '江苏省徐州市铜山区', '铜山区', null, null, '徐州铜山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9414', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320321', '江苏省徐州市丰县', '丰县', null, null, '徐州丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9415', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320322', '江苏省徐州市沛县', '沛县', null, null, '徐州沛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9416', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320324', '江苏省徐州市睢宁县', '睢宁县', null, null, '徐州睢宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9417', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320381', '江苏省徐州市新沂市', '新沂市', null, null, '徐州新沂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9418', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0516', '320382', '江苏省徐州市邳州市', '邳州市', null, null, '徐州邳州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9419', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320402', '江苏省常州市天宁区', '天宁区', null, null, '常州天宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9420', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320404', '江苏省常州市钟楼区', '钟楼区', null, null, '常州钟楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9421', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320405', '江苏省常州市戚墅堰区', '戚墅堰区', null, null, '常州戚墅堰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9422', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320411', '江苏省常州市新北区', '新北区', null, null, '常州新北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9423', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320412', '江苏省常州市武进区', '武进区', null, null, '常州武进', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9424', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320481', '江苏省常州市溧阳市', '溧阳市', null, null, '常州溧阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9425', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0519', '320482', '江苏省常州市金坛市', '金坛市', null, null, '常州金坛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9426', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320503', '江苏省苏州市姑苏区', '姑苏区', null, null, '苏州姑苏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9427', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320505', '江苏省苏州市虎丘区', '虎丘区', null, null, '苏州虎丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9428', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320506', '江苏省苏州市吴中区', '吴中区', null, null, '苏州吴中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9429', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320507', '江苏省苏州市相城区', '相城区', null, null, '苏州相城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9430', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210521', '辽宁省本溪市本溪满族自治县', '本溪满族自治县', null, null, '本溪本溪满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9431', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0414', '210522', '辽宁省本溪市桓仁满族自治县', '桓仁满族自治县', null, null, '本溪桓仁满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9432', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210602', '辽宁省丹东市元宝区', '元宝区', null, null, '丹东元宝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9433', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210603', '辽宁省丹东市振兴区', '振兴区', null, null, '丹东振兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9434', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210604', '辽宁省丹东市振安区', '振安区', null, null, '丹东振安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9435', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210624', '辽宁省丹东市宽甸满族自治县', '宽甸满族自治县', null, null, '丹东宽甸满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9436', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210681', '辽宁省丹东市东港市', '东港市', null, null, '丹东东港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9437', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0415', '210682', '辽宁省丹东市凤城市', '凤城市', null, null, '丹东凤城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9438', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210702', '辽宁省锦州市古塔区', '古塔区', null, null, '锦州古塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9439', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210703', '辽宁省锦州市凌河区', '凌河区', null, null, '锦州凌河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9440', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210711', '辽宁省锦州市太和区', '太和区', null, null, '锦州太和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9441', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210726', '辽宁省锦州市黑山县', '黑山县', null, null, '锦州黑山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9442', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210727', '辽宁省锦州市义县', '义县', null, null, '锦州义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9443', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210781', '辽宁省锦州市凌海市', '凌海市', null, null, '锦州凌海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9444', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0416', '210782', '辽宁省锦州市北镇市', '北镇市', null, null, '锦州北镇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9445', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210802', '辽宁省营口市站前区', '站前区', null, null, '营口站前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9446', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210803', '辽宁省营口市西市区', '西市区', null, null, '营口西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9447', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210804', '辽宁省营口市鲅鱼圈区', '鲅鱼圈区', null, null, '营口鲅鱼圈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9448', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210811', '辽宁省营口市老边区', '老边区', null, null, '营口老边', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9449', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210881', '辽宁省营口市盖州市', '盖州市', null, null, '营口盖州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9450', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0417', '210882', '辽宁省营口市大石桥市', '大石桥市', null, null, '营口大石桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9451', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210902', '辽宁省阜新市海州区', '海州区', null, null, '阜新海州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9452', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210903', '辽宁省阜新市新邱区', '新邱区', null, null, '阜新新邱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9453', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210904', '辽宁省阜新市太平区', '太平区', null, null, '阜新太平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9454', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210905', '辽宁省阜新市清河门区', '清河门区', null, null, '阜新清河门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9455', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210911', '辽宁省阜新市细河区', '细河区', null, null, '阜新细河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9456', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210921', '辽宁省阜新市阜新蒙古族自治县', '阜新蒙古族自治县', null, null, '阜新阜新蒙\r\n\r\n古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9457', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0418', '210922', '辽宁省阜新市彰武县', '彰武县', null, null, '阜新彰武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9458', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211002', '辽宁省辽阳市白塔区', '白塔区', null, null, '辽阳白塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9459', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211003', '辽宁省辽阳市文圣区', '文圣区', null, null, '辽阳文圣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9460', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211004', '辽宁省辽阳市宏伟区', '宏伟区', null, null, '辽阳宏伟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9461', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211005', '辽宁省辽阳市弓长岭区', '弓长岭区', null, null, '辽阳弓长岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9462', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211011', '辽宁省辽阳市太子河区', '太子河区', null, null, '辽阳太子河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9463', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211021', '辽宁省辽阳市辽阳县', '辽阳县', null, null, '辽阳辽阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9464', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0419', '211081', '辽宁省辽阳市灯塔市', '灯塔市', null, null, '辽阳灯塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9465', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0427', '211102', '辽宁省盘锦市双台子区', '双台子区', null, null, '盘锦双台子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9466', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0427', '211103', '辽宁省盘锦市兴隆台区', '兴隆台区', null, null, '盘锦兴隆台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9467', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0427', '211121', '辽宁省盘锦市大洼县', '大洼县', null, null, '盘锦大洼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9468', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0427', '211122', '辽宁省盘锦市盘山县', '盘山县', null, null, '盘锦盘山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9469', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211202', '辽宁省铁岭市银州区', '银州区', null, null, '铁岭银州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9470', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211204', '辽宁省铁岭市清河区', '清河区', null, null, '铁岭清河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9471', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211221', '辽宁省铁岭市铁岭县', '铁岭县', null, null, '铁岭铁岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9472', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211223', '辽宁省铁岭市西丰县', '西丰县', null, null, '铁岭西丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9473', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211224', '辽宁省铁岭市昌图县', '昌图县', null, null, '铁岭昌图', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9474', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211281', '辽宁省铁岭市调兵山市', '调兵山市', null, null, '铁岭调兵山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9475', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0410', '211282', '辽宁省铁岭市开原市', '开原市', null, null, '铁岭开原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9476', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211302', '辽宁省朝阳市双塔区', '双塔区', null, null, '朝阳双塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9477', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211303', '辽宁省朝阳市龙城区', '龙城区', null, null, '朝阳龙城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9478', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211321', '辽宁省朝阳市朝阳县', '朝阳县', null, null, '朝阳朝阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9479', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211322', '辽宁省朝阳市建平县', '建平县', null, null, '朝阳建平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9480', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211324', '辽宁省朝阳市喀喇沁左翼蒙古族自治县', '喀喇沁左翼', null, null, '\r\n\r\n朝阳喀喇沁左翼蒙古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9481', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211381', '辽宁省朝阳市北票市', '北票市', null, null, '朝阳北票', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9482', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0421', '211382', '辽宁省朝阳市凌源市', '凌源市', null, null, '朝阳凌源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9483', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211402', '辽宁省葫芦岛市连山区', '连山区', null, null, '葫芦岛连山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9484', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211403', '辽宁省葫芦岛市龙港区', '龙港区', null, null, '葫芦岛龙港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9485', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211404', '辽宁省葫芦岛市南票区', '南票区', null, null, '葫芦岛南票', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9486', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211421', '辽宁省葫芦岛市绥中县', '绥中县', null, null, '葫芦岛绥中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9487', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211422', '辽宁省葫芦岛市建昌县', '建昌县', null, null, '葫芦岛建昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9488', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0429', '211481', '辽宁省葫芦岛市兴城市', '兴城市', null, null, '葫芦岛兴城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9489', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220102', '吉林省长春市南关区', '南关区', null, null, '长春南关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9490', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220103', '吉林省长春市宽城区', '宽城区', null, null, '长春宽城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9491', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220104', '吉林省长春市朝阳区', '朝阳区', null, null, '长春朝阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9492', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220105', '吉林省长春市二道区', '二道区', null, null, '长春二道', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9493', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220106', '吉林省长春市绿园区', '绿园区', null, null, '长春绿园', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9494', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220112', '吉林省长春市双阳区', '双阳区', null, null, '长春双阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9495', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220122', '吉林省长春市农安县', '农安县', null, null, '长春农安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9496', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220181', '吉林省长春市九台市', '九台市', null, null, '长春九台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9497', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220182', '吉林省长春市榆树市', '榆树市', null, null, '长春榆树', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9498', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0431', '220183', '吉林省长春市德惠市', '德惠市', null, null, '长春德惠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9499', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220202', '吉林省吉林市昌邑区', '昌邑区', null, null, '吉林昌邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9500', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220203', '吉林省吉林市龙潭区', '龙潭区', null, null, '吉林龙潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9501', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220204', '吉林省吉林市船营区', '船营区', null, null, '吉林船营', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9502', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220211', '吉林省吉林市丰满区', '丰满区', null, null, '吉林丰满', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9503', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220221', '吉林省吉林市永吉县', '永吉县', null, null, '吉林永吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9504', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220281', '吉林省吉林市蛟河市', '蛟河市', null, null, '吉林蛟河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9505', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220282', '吉林省吉林市桦甸市', '桦甸市', null, null, '吉林桦甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9506', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220283', '吉林省吉林市舒兰市', '舒兰市', null, null, '吉林舒兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9507', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0432', '220284', '吉林省吉林市磐石市', '磐石市', null, null, '吉林磐石', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9508', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220302', '吉林省四平市铁西区', '铁西区', null, null, '四平铁西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9509', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220303', '吉林省四平市铁东区', '铁东区', null, null, '四平铁东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9510', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220322', '吉林省四平市梨树县', '梨树县', null, null, '四平梨树', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9511', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220323', '吉林省四平市伊通满族自治县', '伊通', null, null, '四平伊通满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9512', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220381', '吉林省四平市公主岭市', '公主岭市', null, null, '四平公主岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9513', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0434', '220382', '吉林省四平市双辽市', '双辽市', null, null, '四平双辽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9514', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0437', '220402', '吉林省辽源市龙山区', '龙山区', null, null, '辽源龙山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9515', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0437', '220403', '吉林省辽源市西安区', '西安区', null, null, '辽源西安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9516', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0437', '220421', '吉林省辽源市东丰县', '东丰县', null, null, '辽源东丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9517', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0437', '220422', '吉林省辽源市东辽县', '东辽县', null, null, '辽源东辽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9518', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220502', '吉林省通化市东昌区', '东昌区', null, null, '通化东昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9519', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220503', '吉林省通化市二道江区', '二道江区', null, null, '通化二道江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9520', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220521', '吉林省通化市通化县', '通化县', null, null, '通化通化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9521', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220523', '吉林省通化市辉南县', '辉南县', null, null, '通化辉南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9522', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220524', '吉林省通化市柳河县', '柳河县', null, null, '通化柳河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9523', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220581', '吉林省通化市梅河口市', '梅河口市', null, null, '通化梅河口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9524', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0435', '220582', '吉林省通化市集安市', '集安市', null, null, '通化集安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9525', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220602', '吉林省白山市浑江区', '浑江区', null, null, '白山浑江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9526', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220605', '吉林省白山市江源区', '江源区', null, null, '白山江源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9527', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220621', '吉林省白山市抚松县', '抚松县', null, null, '白山抚松', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9528', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220622', '吉林省白山市靖宇县', '靖宇县', null, null, '白山靖宇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9529', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220623', '吉林省白山市长白朝鲜族自治县', '长白', null, null, '白山长白朝\r\n\r\n鲜族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9530', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0439', '220681', '吉林省白山市临江市', '临江市', null, null, '白山临江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9531', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220702', '吉林省松原市宁江区', '宁江区', null, null, '松原宁江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9532', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220721', '吉林省松原市前郭尔罗斯蒙古族自治县', '前郭尔罗斯', null, null, '\r\n\r\n松原前郭尔罗斯蒙古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9533', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220722', '吉林省松原市长岭县', '长岭县', null, null, '松原长岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9534', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220723', '吉林省松原市乾安县', '乾安县', null, null, '松原乾安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9535', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0438', '220724', '吉林省松原市扶余县', '扶余县', null, null, '松原扶余', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9536', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0436', '220802', '吉林省白城市洮北区', '洮北区', null, null, '白城洮北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9537', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0436', '220821', '吉林省白城市镇赉县', '镇赉县', null, null, '白城镇赉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9538', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0436', '220822', '吉林省白城市通榆县', '通榆县', null, null, '白城通榆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9539', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0436', '220881', '吉林省白城市洮南市', '洮南市', null, null, '白城洮南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9540', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0436', '220882', '吉林省白城市大安市', '大安市', null, null, '白城大安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9541', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222401', '吉林省延边朝鲜族自治州 延吉市', '延吉市', null, null, '延边朝鲜族自治州 延\r\n\r\n吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9542', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222402', '吉林省延边朝鲜族自治州 图们市', '图们市', null, null, '延边朝鲜族自治州 图\r\n\r\n们', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9543', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222403', '吉林省延边朝鲜族自治州 敦化市', '敦化市', null, null, '延边朝鲜族自治州 敦\r\n\r\n化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9544', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0440', '222404', '吉林省延边朝鲜族自治州 珲春市', '珲春市', null, null, '延边朝鲜族自治州 珲\r\n\r\n春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9545', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222405', '吉林省延边朝鲜族自治州 龙井市', '龙井市', null, null, '延边朝鲜族自治州 龙\r\n\r\n井', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9546', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222406', '吉林省延边朝鲜族自治州 和龙市', '和龙市', null, null, '延边朝鲜族自治州 和\r\n\r\n龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9547', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222424', '吉林省延边朝鲜族自治州 汪清县', '汪清县', null, null, '延边朝鲜族自治州 汪\r\n\r\n清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9548', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0433', '222426', '吉林省延边朝鲜族自治州 安图县', '安图县', null, null, '延边朝鲜族自治州 安\r\n\r\n图', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9549', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230102', '黑龙江省哈尔滨市道里区', '道里区', null, null, '哈尔滨道里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9550', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230103', '黑龙江省哈尔滨市南岗区', '南岗区', null, null, '哈尔滨南岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9551', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230104', '黑龙江省哈尔滨市道外区', '道外区', null, null, '哈尔滨道外', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9552', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230108', '黑龙江省哈尔滨市平房区', '平房区', null, null, '哈尔滨平房', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9553', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230109', '黑龙江省哈尔滨市松北区', '松北区', null, null, '哈尔滨松北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9554', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230110', '黑龙江省哈尔滨市香坊区', '香坊区', null, null, '哈尔滨香坊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9555', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230111', '黑龙江省哈尔滨市呼兰区', '呼兰区', null, null, '哈尔滨呼兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9556', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230112', '黑龙江省哈尔滨市阿城区', '阿城区', null, null, '哈尔滨阿城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9557', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230123', '黑龙江省哈尔滨市依兰县', '依兰县', null, null, '哈尔滨依兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9558', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230124', '黑龙江省哈尔滨市方正县', '方正县', null, null, '哈尔滨方正', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9559', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230125', '黑龙江省哈尔滨市宾县', '宾县', null, null, '哈尔滨宾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9560', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230126', '黑龙江省哈尔滨市巴彦县', '巴彦县', null, null, '哈尔滨巴彦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9561', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230127', '黑龙江省哈尔滨市木兰县', '木兰县', null, null, '哈尔滨木兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9562', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230128', '黑龙江省哈尔滨市通河县', '通河县', null, null, '哈尔滨通河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9563', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230129', '黑龙江省哈尔滨市延寿县', '延寿县', null, null, '哈尔滨延寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9564', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230182', '黑龙江省哈尔滨市双城市', '双城市', null, null, '哈尔滨双城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9565', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230183', '黑龙江省哈尔滨市尚志市', '尚志市', null, null, '哈尔滨尚志', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9566', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0451', '230184', '黑龙江省哈尔滨市五常市', '五常市', null, null, '哈尔滨五常', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9567', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230202', '黑龙江省齐齐哈尔市龙沙区', '龙沙区', null, null, '齐齐哈尔龙沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9568', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230203', '黑龙江省齐齐哈尔市建华区', '建华区', null, null, '齐齐哈尔建华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9569', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230204', '黑龙江省齐齐哈尔市铁锋区', '铁锋区', null, null, '齐齐哈尔铁锋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9570', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230205', '黑龙江省齐齐哈尔市昂昂溪区', '昂昂溪区', null, null, '齐齐哈尔昂昂溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9571', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230206', '黑龙江省齐齐哈尔市富拉尔基区', '富拉尔基区', null, null, '齐齐哈尔富拉尔\r\n\r\n基', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9572', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230207', '黑龙江省齐齐哈尔市碾子山区', '碾子山区', null, null, '齐齐哈尔碾子山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9573', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230208', '黑龙江省齐齐哈尔市梅里斯达斡尔族区', '梅里斯达斡尔族区', null, null, '齐齐哈\r\n\r\n尔梅里斯达斡尔族', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9574', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230221', '黑龙江省齐齐哈尔市龙江县', '龙江县', null, null, '齐齐哈尔龙江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9575', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230223', '黑龙江省齐齐哈尔市依安县', '依安县', null, null, '齐齐哈尔依安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9576', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230224', '黑龙江省齐齐哈尔市泰来县', '泰来县', null, null, '齐齐哈尔泰来', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9577', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230225', '黑龙江省齐齐哈尔市甘南县', '甘南县', null, null, '齐齐哈尔甘南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9578', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230227', '黑龙江省齐齐哈尔市富裕县', '富裕县', null, null, '齐齐哈尔富裕', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9579', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0452', '230229', '黑龙江省齐齐哈尔市克山县', '克山县', null, null, '齐齐哈尔克山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9580', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110101', '北京北京市东城区', '东城区', null, null, '北京东城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9581', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110102', '北京北京市西城区', '西城区', null, null, '北京西城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9582', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110105', '北京北京市朝阳区', '朝阳区', null, null, '北京朝阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9583', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110106', '北京北京市丰台区', '丰台区', null, null, '北京丰台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9584', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110107', '北京北京市石景山区', '石景山区', null, null, '北京石景山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9585', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110108', '北京北京市海淀区', '海淀区', null, null, '北京海淀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9586', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110109', '北京北京市门头沟区', '门头沟区', null, null, '北京门头沟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9587', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110111', '北京北京市房山区', '房山区', null, null, '北京房山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9588', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110112', '北京北京市通州区', '通州区', null, null, '北京通州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9589', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110113', '北京北京市顺义区', '顺义区', null, null, '北京顺义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9590', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110114', '北京北京市昌平区', '昌平区', null, null, '北京昌平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9591', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110115', '北京北京市大兴区', '大兴区', null, null, '北京大兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9592', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110116', '北京北京市怀柔区', '怀柔区', null, null, '北京怀柔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9593', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '010', '110117', '北京北京市平谷区', '平谷区', null, null, '北京平谷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9596', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120101', '天津天津市和平区', '和平区', null, null, '天津和平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9597', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120102', '天津天津市河东区', '河东区', null, null, '天津河东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9598', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120103', '天津天津市河西区', '河西区', null, null, '天津河西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9599', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120104', '天津天津市南开区', '南开区', null, null, '天津南开', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9600', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120105', '天津天津市河北区', '河北区', null, null, '天津河北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9601', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120106', '天津天津市红桥区', '红桥区', null, null, '天津红桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9602', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120110', '天津天津市东丽区', '东丽区', null, null, '天津东丽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9603', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120111', '天津天津市西青区', '西青区', null, null, '天津西青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9604', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120112', '天津天津市津南区', '津南区', null, null, '天津津南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9605', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120113', '天津天津市北辰区', '北辰区', null, null, '天津北辰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9606', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120114', '天津天津市武清区', '武清区', null, null, '天津武清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9607', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120115', '天津天津市宝坻区', '宝坻区', null, null, '天津宝坻', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9608', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '022', '120116', '天津天津市滨海新区', '滨海新区', null, null, '天津滨海新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9612', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130102', '河北省石家庄市长安区', '长安区', null, null, '石家庄长安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9613', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130103', '河北省石家庄市桥东区', '桥东区', null, null, '石家庄桥东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9614', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130104', '河北省石家庄市桥西区', '桥西区', null, null, '石家庄桥西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9615', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130105', '河北省石家庄市新华区', '新华区', null, null, '石家庄新华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9616', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130107', '河北省石家庄市井陉矿区', '井陉矿区', null, null, '石家庄井陉矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9617', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130108', '河北省石家庄市裕华区', '裕华区', null, null, '石家庄裕华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9618', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130121', '河北省石家庄市井陉县', '井陉县', null, null, '石家庄井陉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9619', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130123', '河北省石家庄市正定县', '正定县', null, null, '石家庄正定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9620', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130124', '河北省石家庄市栾城县', '栾城县', null, null, '石家庄栾城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9621', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130125', '河北省石家庄市行唐县', '行唐县', null, null, '石家庄行唐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9622', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130126', '河北省石家庄市灵寿县', '灵寿县', null, null, '石家庄灵寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9623', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130127', '河北省石家庄市高邑县', '高邑县', null, null, '石家庄高邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9624', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130128', '河北省石家庄市深泽县', '深泽县', null, null, '石家庄深泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9625', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130129', '河北省石家庄市赞皇县', '赞皇县', null, null, '石家庄赞皇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9626', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130130', '河北省石家庄市无极县', '无极县', null, null, '石家庄无极', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9627', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130131', '河北省石家庄市平山县', '平山县', null, null, '石家庄平山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9628', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130132', '河北省石家庄市元氏县', '元氏县', null, null, '石家庄元氏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9629', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130133', '河北省石家庄市赵县', '赵县', null, null, '石家庄赵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9630', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130181', '河北省石家庄市辛集市', '辛集市', null, null, '石家庄辛集', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9631', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130182', '河北省石家庄市藁城市', '藁城市', null, null, '石家庄藁城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9632', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130183', '河北省石家庄市晋州市', '晋州市', null, null, '石家庄晋州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9633', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130184', '河北省石家庄市新乐市', '新乐市', null, null, '石家庄新乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9634', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0311', '130185', '河北省石家庄市鹿泉市', '鹿泉市', null, null, '石家庄鹿泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9635', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130202', '河北省唐山市路南区', '路南区', null, null, '唐山路南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9636', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130203', '河北省唐山市路北区', '路北区', null, null, '唐山路北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9637', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130204', '河北省唐山市古冶区', '古冶区', null, null, '唐山古冶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9638', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130205', '河北省唐山市开平区', '开平区', null, null, '唐山开平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9639', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130207', '河北省唐山市丰南区', '丰南区', null, null, '唐山丰南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9640', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130208', '河北省唐山市丰润区', '丰润区', null, null, '唐山丰润', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9641', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130230', '河北省唐山市曹妃甸区', '曹妃甸区', null, null, '唐山曹妃甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9642', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130223', '河北省唐山市滦县', '滦县', null, null, '唐山滦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9643', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130224', '河北省唐山市滦南县', '滦南县', null, null, '唐山滦南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9644', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130225', '河北省唐山市乐亭县', '乐亭县', null, null, '唐山乐亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9645', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130227', '河北省唐山市迁西县', '迁西县', null, null, '唐山迁西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9646', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130229', '河北省唐山市玉田县', '玉田县', null, null, '唐山玉田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9647', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130281', '河北省唐山市遵化市', '遵化市', null, null, '唐山遵化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9648', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0315', '130283', '河北省唐山市迁安市', '迁安市', null, null, '唐山迁安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9649', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130302', '河北省秦皇岛市海港区', '海港区', null, null, '秦皇岛海港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9650', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130303', '河北省秦皇岛市山海关区', '山海关区', null, null, '秦皇岛山海关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9651', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130304', '河北省秦皇岛市北戴河区', '北戴河区', null, null, '秦皇岛北戴河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9652', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130321', '河北省秦皇岛市青龙满族自治县', '青龙满族', null, null, '秦皇岛青龙满\r\n\r\n族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9653', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130322', '河北省秦皇岛市昌黎县', '昌黎县', null, null, '秦皇岛昌黎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9654', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130323', '河北省秦皇岛市抚宁县', '抚宁县', null, null, '秦皇岛抚宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9655', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0335', '130324', '河北省秦皇岛市卢龙县', '卢龙县', null, null, '秦皇岛卢龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9656', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130402', '河北省邯郸市邯山区', '邯山区', null, null, '邯郸邯山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9657', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130403', '河北省邯郸市丛台区', '丛台区', null, null, '邯郸丛台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9658', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130404', '河北省邯郸市复兴区', '复兴区', null, null, '邯郸复兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9659', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130406', '河北省邯郸市峰峰矿区', '峰峰矿区', null, null, '邯郸峰峰矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9660', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130421', '河北省邯郸市邯郸县', '邯郸县', null, null, '邯郸邯郸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9661', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130423', '河北省邯郸市临漳县', '临漳县', null, null, '邯郸临漳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9662', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130424', '河北省邯郸市成安县', '成安县', null, null, '邯郸成安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9663', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130425', '河北省邯郸市大名县', '大名县', null, null, '邯郸大名', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9664', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130426', '河北省邯郸市涉县', '涉县', null, null, '邯郸涉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9665', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130427', '河北省邯郸市磁县', '磁县', null, null, '邯郸磁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9666', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130428', '河北省邯郸市肥乡县', '肥乡县', null, null, '邯郸肥乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9667', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130429', '河北省邯郸市永年县', '永年县', null, null, '邯郸永年', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9668', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130430', '河北省邯郸市邱县', '邱县', null, null, '邯郸邱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9669', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130431', '河北省邯郸市鸡泽县', '鸡泽县', null, null, '邯郸鸡泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9670', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130432', '河北省邯郸市广平县', '广平县', null, null, '邯郸广平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9671', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130433', '河北省邯郸市馆陶县', '馆陶县', null, null, '邯郸馆陶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9672', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130434', '河北省邯郸市魏县', '魏县', null, null, '邯郸魏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9673', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130435', '河北省邯郸市曲周县', '曲周县', null, null, '邯郸曲周', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9674', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0310', '130481', '河北省邯郸市武安市', '武安市', null, null, '邯郸武安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9675', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130502', '河北省邢台市桥东区', '桥东区', null, null, '邢台桥东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9676', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130503', '河北省邢台市桥西区', '桥西区', null, null, '邢台桥西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9677', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130521', '河北省邢台市邢台县', '邢台县', null, null, '邢台邢台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9678', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130522', '河北省邢台市临城县', '临城县', null, null, '邢台临城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9679', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130523', '河北省邢台市内丘县', '内丘县', null, null, '邢台内丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9680', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130524', '河北省邢台市柏乡县', '柏乡县', null, null, '邢台柏乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9681', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130525', '河北省邢台市隆尧县', '隆尧县', null, null, '邢台隆尧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9682', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130526', '河北省邢台市任县', '任县', null, null, '邢台任', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9683', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130527', '河北省邢台市南和县', '南和县', null, null, '邢台南和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9684', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130528', '河北省邢台市宁晋县', '宁晋县', null, null, '邢台宁晋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9685', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130529', '河北省邢台市巨鹿县', '巨鹿县', null, null, '邢台巨鹿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9686', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130530', '河北省邢台市新河县', '新河县', null, null, '邢台新河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9687', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130531', '河北省邢台市广宗县', '广宗县', null, null, '邢台广宗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9688', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130532', '河北省邢台市平乡县', '平乡县', null, null, '邢台平乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9689', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130533', '河北省邢台市威县', '威县', null, null, '邢台威', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9690', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130534', '河北省邢台市清河县', '清河县', null, null, '邢台清河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9691', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130535', '河北省邢台市临西县', '临西县', null, null, '邢台临西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9692', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130581', '河北省邢台市南宫市', '南宫市', null, null, '邢台南宫', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9693', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0319', '130582', '河北省邢台市沙河市', '沙河市', null, null, '邢台沙河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9694', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130602', '河北省保定市新市区', '新市区', null, null, '保定新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9695', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130603', '河北省保定市北市区', '北市区', null, null, '保定北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9696', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130604', '河北省保定市南市区', '南市区', null, null, '保定南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9697', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130621', '河北省保定市满城县', '满城县', null, null, '保定满城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9698', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130622', '河北省保定市清苑县', '清苑县', null, null, '保定清苑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9699', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130623', '河北省保定市涞水县', '涞水县', null, null, '保定涞水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9700', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130624', '河北省保定市阜平县', '阜平县', null, null, '保定阜平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9701', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130625', '河北省保定市徐水县', '徐水县', null, null, '保定徐水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9702', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130626', '河北省保定市定兴县', '定兴县', null, null, '保定定兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9703', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130627', '河北省保定市唐县', '唐县', null, null, '保定唐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9704', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130628', '河北省保定市高阳县', '高阳县', null, null, '保定高阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9705', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130629', '河北省保定市容城县', '容城县', null, null, '保定容城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9706', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130630', '河北省保定市涞源县', '涞源县', null, null, '保定涞源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9707', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130631', '河北省保定市望都县', '望都县', null, null, '保定望都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9708', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130632', '河北省保定市安新县', '安新县', null, null, '保定安新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9709', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130633', '河北省保定市易县', '易县', null, null, '保定易', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9710', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130634', '河北省保定市曲阳县', '曲阳县', null, null, '保定曲阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9711', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130635', '河北省保定市蠡县', '蠡县', null, null, '保定蠡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9712', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130636', '河北省保定市顺平县', '顺平县', null, null, '保定顺平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9713', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130637', '河北省保定市博野县', '博野县', null, null, '保定博野', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9714', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130638', '河北省保定市雄县', '雄县', null, null, '保定雄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9715', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130681', '河北省保定市涿州市', '涿州市', null, null, '保定涿州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9716', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130682', '河北省保定市定州市', '定州市', null, null, '保定定州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9717', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130683', '河北省保定市安国市', '安国市', null, null, '保定安国', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9718', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0312', '130684', '河北省保定市高碑店市', '高碑店市', null, null, '保定高碑店', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9719', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130702', '河北省张家口市桥东区', '桥东区', null, null, '张家口桥东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9720', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130703', '河北省张家口市桥西区', '桥西区', null, null, '张家口桥西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9721', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130705', '河北省张家口市宣化区', '宣化区', null, null, '张家口宣化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9722', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130706', '河北省张家口市下花园区', '下花园区', null, null, '张家口下花园', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9723', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130721', '河北省张家口市宣化县', '宣化县', null, null, '张家口宣化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9724', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130722', '河北省张家口市张北县', '张北县', null, null, '张家口张北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9725', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130723', '河北省张家口市康保县', '康保县', null, null, '张家口康保', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9726', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130724', '河北省张家口市沽源县', '沽源县', null, null, '张家口沽源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9727', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130725', '河北省张家口市尚义县', '尚义县', null, null, '张家口尚义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9728', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130726', '河北省张家口市蔚县', '蔚县', null, null, '张家口蔚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9729', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130727', '河北省张家口市阳原县', '阳原县', null, null, '张家口阳原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9730', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130728', '河北省张家口市怀安县', '怀安县', null, null, '张家口怀安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9731', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130729', '河北省张家口市万全县', '万全县', null, null, '张家口万全', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9732', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130730', '河北省张家口市怀来县', '怀来县', null, null, '张家口怀来', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9733', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130731', '河北省张家口市涿鹿县', '涿鹿县', null, null, '张家口涿鹿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9734', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130732', '河北省张家口市赤城县', '赤城县', null, null, '张家口赤城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9735', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0313', '130733', '河北省张家口市崇礼县', '崇礼县', null, null, '张家口崇礼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9736', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130802', '河北省承德市双桥区', '双桥区', null, null, '承德双桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9737', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130803', '河北省承德市双滦区', '双滦区', null, null, '承德双滦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9738', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130804', '河北省承德市鹰手营子矿区', '鹰手营子', null, null, '承德鹰手营子矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9739', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130821', '河北省承德市承德县', '承德县', null, null, '承德承德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9740', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130822', '河北省承德市兴隆县', '兴隆县', null, null, '承德兴隆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9741', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130823', '河北省承德市平泉县', '平泉县', null, null, '承德平泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9742', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130824', '河北省承德市滦平县', '滦平县', null, null, '承德滦平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9743', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130825', '河北省承德市隆化县', '隆化县', null, null, '承德隆化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9744', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130826', '河北省承德市丰宁满族自治县', '丰宁县', null, null, '承德丰宁满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9745', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130827', '河北省承德市宽城满族自治县', '宽城县', null, null, '承德宽城满族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9746', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0314', '130828', '河北省承德市围场满族蒙古族自治县', '围场县', null, null, '承德\r\n\r\n围场满族蒙古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9747', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130902', '河北省沧州市新华区', '新华区', null, null, '沧州新华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9748', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130903', '河北省沧州市运河区', '运河区', null, null, '沧州运河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9749', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130921', '河北省沧州市沧县', '沧县', null, null, '沧州沧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9750', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130922', '河北省沧州市青县', '青县', null, null, '沧州青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9751', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130923', '河北省沧州市东光县', '东光县', null, null, '沧州东光', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9752', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130924', '河北省沧州市海兴县', '海兴县', null, null, '沧州海兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9753', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130925', '河北省沧州市盐山县', '盐山县', null, null, '沧州盐山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9754', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130926', '河北省沧州市肃宁县', '肃宁县', null, null, '沧州肃宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9755', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130927', '河北省沧州市南皮县', '南皮县', null, null, '沧州南皮', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9756', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130928', '河北省沧州市吴桥县', '吴桥县', null, null, '沧州吴桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9757', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130929', '河北省沧州市献县', '献县', null, null, '沧州献', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9758', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130930', '河北省沧州市孟村回族自治县', '孟村县', null, null, '沧州孟村回族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9759', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130981', '河北省沧州市泊头市', '泊头市', null, null, '沧州泊头', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9760', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130982', '河北省沧州市任丘市', '任丘市', null, null, '沧州任丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9761', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130983', '河北省沧州市黄骅市', '黄骅市', null, null, '沧州黄骅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9762', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0317', '130984', '河北省沧州市河间市', '河间市', null, null, '沧州河间', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9763', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131002', '河北省廊坊市安次区', '安次区', null, null, '廊坊安次', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9764', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131003', '河北省廊坊市广阳区', '广阳区', null, null, '廊坊广阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9765', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131022', '河北省廊坊市固安县', '固安县', null, null, '廊坊固安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9766', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131023', '河北省廊坊市永清县', '永清县', null, null, '廊坊永清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9767', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131024', '河北省廊坊市香河县', '香河县', null, null, '廊坊香河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9768', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131025', '河北省廊坊市大城县', '大城县', null, null, '廊坊大城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9769', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131026', '河北省廊坊市文安县', '文安县', null, null, '廊坊文安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9770', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131028', '河北省廊坊市大厂回族自治县', '大厂县', null, null, '廊坊大厂回族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9771', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131081', '河北省廊坊市霸州市', '霸州市', null, null, '廊坊霸州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9772', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0316', '131082', '河北省廊坊市三河市', '三河市', null, null, '廊坊三河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9773', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131102', '河北省衡水市桃城区', '桃城区', null, null, '衡水桃城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9774', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131121', '河北省衡水市枣强县', '枣强县', null, null, '衡水枣强', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9775', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131122', '河北省衡水市武邑县', '武邑县', null, null, '衡水武邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9776', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131123', '河北省衡水市武强县', '武强县', null, null, '衡水武强', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9777', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131124', '河北省衡水市饶阳县', '饶阳县', null, null, '衡水饶阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9778', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131125', '河北省衡水市安平县', '安平县', null, null, '衡水安平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9779', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131126', '河北省衡水市故城县', '故城县', null, null, '衡水故城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9780', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131127', '河北省衡水市景县', '景县', null, null, '衡水景', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9781', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131128', '河北省衡水市阜城县', '阜城县', null, null, '衡水阜城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9782', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131181', '河北省衡水市冀州市', '冀州市', null, null, '衡水冀州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9783', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0318', '131182', '河北省衡水市深州市', '深州市', null, null, '衡水深州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9784', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140105', '山西省太原市小店区', '小店区', null, null, '太原小店', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9785', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140106', '山西省太原市迎泽区', '迎泽区', null, null, '太原迎泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9786', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140107', '山西省太原市杏花岭区', '杏花岭区', null, null, '太原杏花岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9787', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140108', '山西省太原市尖草坪区', '尖草坪区', null, null, '太原尖草坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9788', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140109', '山西省太原市万柏林区', '万柏林区', null, null, '太原万柏林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9789', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140110', '山西省太原市晋源区', '晋源区', null, null, '太原晋源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9790', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140121', '山西省太原市清徐县', '清徐县', null, null, '太原清徐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9791', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140122', '山西省太原市阳曲县', '阳曲县', null, null, '太原阳曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9792', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140123', '山西省太原市娄烦县', '娄烦县', null, null, '太原娄烦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9793', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0351', '140181', '山西省太原市古交市', '古交市', null, null, '太原古交', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9794', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140202', '山西省大同市城区', '城区', null, null, '大同城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9795', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140203', '山西省大同市矿区', '矿区', null, null, '大同矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9796', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140211', '山西省大同市南郊区', '南郊区', null, null, '大同南郊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9797', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140212', '山西省大同市新荣区', '新荣区', null, null, '大同新荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9798', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140221', '山西省大同市阳高县', '阳高县', null, null, '大同阳高', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9799', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140222', '山西省大同市天镇县', '天镇县', null, null, '大同天镇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9800', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140223', '山西省大同市广灵县', '广灵县', null, null, '大同广灵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9801', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140224', '山西省大同市灵丘县', '灵丘县', null, null, '大同灵丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9802', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140225', '山西省大同市浑源县', '浑源县', null, null, '大同浑源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9803', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140226', '山西省大同市左云县', '左云县', null, null, '大同左云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9804', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0352', '140227', '山西省大同市大同县', '大同县', null, null, '大同大同', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9805', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140302', '山西省阳泉市城区', '城区', null, null, '阳泉城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9806', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140303', '山西省阳泉市矿区', '矿区', null, null, '阳泉矿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9807', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140311', '山西省阳泉市郊区', '郊区', null, null, '阳泉郊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9808', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140321', '山西省阳泉市平定县', '平定县', null, null, '阳泉平定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9809', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0353', '140322', '山西省阳泉市盂县', '盂县', null, null, '阳泉盂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9810', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140402', '山西省长治市城区', '城区', null, null, '长治城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9811', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140411', '山西省长治市郊区', '郊区', null, null, '长治郊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9812', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140421', '山西省长治市长治县', '长治县', null, null, '长治长治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9813', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140423', '山西省长治市襄垣县', '襄垣县', null, null, '长治襄垣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9814', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140424', '山西省长治市屯留县', '屯留县', null, null, '长治屯留', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9815', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140425', '山西省长治市平顺县', '平顺县', null, null, '长治平顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9816', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140426', '山西省长治市黎城县', '黎城县', null, null, '长治黎城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9817', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140427', '山西省长治市壶关县', '壶关县', null, null, '长治壶关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9818', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140428', '山西省长治市长子县', '长子县', null, null, '长治长子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9819', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140429', '山西省长治市武乡县', '武乡县', null, null, '长治武乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9820', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140430', '山西省长治市沁县', '沁县', null, null, '长治沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9821', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140431', '山西省长治市沁源县', '沁源县', null, null, '长治沁源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9822', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0355', '140481', '山西省长治市潞城市', '潞城市', null, null, '长治潞城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9823', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140502', '山西省晋城市城区', '城区', null, null, '晋城城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9824', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140521', '山西省晋城市沁水县', '沁水县', null, null, '晋城沁水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9825', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140522', '山西省晋城市阳城县', '阳城县', null, null, '晋城阳城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9826', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140524', '山西省晋城市陵川县', '陵川县', null, null, '晋城陵川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9827', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140525', '山西省晋城市泽州县', '泽州县', null, null, '晋城泽州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9828', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0356', '140581', '山西省晋城市高平市', '高平市', null, null, '晋城高平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9829', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140602', '山西省朔州市朔城区', '朔城区', null, null, '朔州朔城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9830', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140603', '山西省朔州市平鲁区', '平鲁区', null, null, '朔州平鲁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9831', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140621', '山西省朔州市山阴县', '山阴县', null, null, '朔州山阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9832', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140622', '山西省朔州市应县', '应县', null, null, '朔州应', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9833', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140623', '山西省朔州市右玉县', '右玉县', null, null, '朔州右玉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9834', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0349', '140624', '山西省朔州市怀仁县', '怀仁县', null, null, '朔州怀仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9835', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140702', '山西省晋中市榆次区', '榆次区', null, null, '晋中榆次', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9836', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140721', '山西省晋中市榆社县', '榆社县', null, null, '晋中榆社', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9837', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140722', '山西省晋中市左权县', '左权县', null, null, '晋中左权', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9838', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140723', '山西省晋中市和顺县', '和顺县', null, null, '晋中和顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9839', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140724', '山西省晋中市昔阳县', '昔阳县', null, null, '晋中昔阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9840', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140725', '山西省晋中市寿阳县', '寿阳县', null, null, '晋中寿阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9841', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140726', '山西省晋中市太谷县', '太谷县', null, null, '晋中太谷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9842', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140727', '山西省晋中市祁县', '祁县', null, null, '晋中祁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9843', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140728', '山西省晋中市平遥县', '平遥县', null, null, '晋中平遥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9844', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140729', '山西省晋中市灵石县', '灵石县', null, null, '晋中灵石', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9845', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0354', '140781', '山西省晋中市介休市', '介休市', null, null, '晋中介休', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9846', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140802', '山西省运城市盐湖区', '盐湖区', null, null, '运城盐湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9847', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140821', '山西省运城市临猗县', '临猗县', null, null, '运城临猗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9848', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140822', '山西省运城市万荣县', '万荣县', null, null, '运城万荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9849', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140823', '山西省运城市闻喜县', '闻喜县', null, null, '运城闻喜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9850', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140824', '山西省运城市稷山县', '稷山县', null, null, '运城稷山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9851', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140825', '山西省运城市新绛县', '新绛县', null, null, '运城新绛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9852', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140826', '山西省运城市绛县', '绛县', null, null, '运城绛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9853', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140827', '山西省运城市垣曲县', '垣曲县', null, null, '运城垣曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9854', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140828', '山西省运城市夏县', '夏县', null, null, '运城夏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9855', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140829', '山西省运城市平陆县', '平陆县', null, null, '运城平陆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9856', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140830', '山西省运城市芮城县', '芮城县', null, null, '运城芮城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9857', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140881', '山西省运城市永济市', '永济市', null, null, '运城永济', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9858', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0359', '140882', '山西省运城市河津市', '河津市', null, null, '运城河津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9859', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140902', '山西省忻州市忻府区', '忻府区', null, null, '忻州忻府', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9860', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140921', '山西省忻州市定襄县', '定襄县', null, null, '忻州定襄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9861', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140922', '山西省忻州市五台县', '五台县', null, null, '忻州五台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9862', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140923', '山西省忻州市代县', '代县', null, null, '忻州代', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9863', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140924', '山西省忻州市繁峙县', '繁峙县', null, null, '忻州繁峙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9864', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140925', '山西省忻州市宁武县', '宁武县', null, null, '忻州宁武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9865', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140926', '山西省忻州市静乐县', '静乐县', null, null, '忻州静乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9866', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140927', '山西省忻州市神池县', '神池县', null, null, '忻州神池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9867', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140928', '山西省忻州市五寨县', '五寨县', null, null, '忻州五寨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9868', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140929', '山西省忻州市岢岚县', '岢岚县', null, null, '忻州岢岚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9869', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140930', '山西省忻州市河曲县', '河曲县', null, null, '忻州河曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9870', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140931', '山西省忻州市保德县', '保德县', null, null, '忻州保德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9871', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140932', '山西省忻州市偏关县', '偏关县', null, null, '忻州偏关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9872', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0350', '140981', '山西省忻州市原平市', '原平市', null, null, '忻州原平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9873', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141002', '山西省临汾市尧都区', '尧都区', null, null, '临汾尧都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9874', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141021', '山西省临汾市曲沃县', '曲沃县', null, null, '临汾曲沃', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9875', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141022', '山西省临汾市翼城县', '翼城县', null, null, '临汾翼城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9876', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141023', '山西省临汾市襄汾县', '襄汾县', null, null, '临汾襄汾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9877', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141024', '山西省临汾市洪洞县', '洪洞县', null, null, '临汾洪洞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9878', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141025', '山西省临汾市古县', '古县', null, null, '临汾古', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9879', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141026', '山西省临汾市安泽县', '安泽县', null, null, '临汾安泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9880', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141027', '山西省临汾市浮山县', '浮山县', null, null, '临汾浮山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9881', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141028', '山西省临汾市吉县', '吉县', null, null, '临汾吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9882', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141029', '山西省临汾市乡宁县', '乡宁县', null, null, '临汾乡宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9883', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141030', '山西省临汾市大宁县', '大宁县', null, null, '临汾大宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9884', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141031', '山西省临汾市隰县', '隰县', null, null, '临汾隰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9885', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141032', '山西省临汾市永和县', '永和县', null, null, '临汾永和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9886', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141033', '山西省临汾市蒲县', '蒲县', null, null, '临汾蒲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9887', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141034', '山西省临汾市汾西县', '汾西县', null, null, '临汾汾西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9888', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141081', '山西省临汾市侯马市', '侯马市', null, null, '临汾侯马', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9889', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0357', '141082', '山西省临汾市霍州市', '霍州市', null, null, '临汾霍州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9890', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141102', '山西省吕梁市离石区', '离石区', null, null, '吕梁离石', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9891', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141121', '山西省吕梁市文水县', '文水县', null, null, '吕梁文水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9892', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141122', '山西省吕梁市交城县', '交城县', null, null, '吕梁交城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9893', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141123', '山西省吕梁市兴县', '兴县', null, null, '吕梁兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9894', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141124', '山西省吕梁市临县', '临县', null, null, '吕梁临', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9895', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141125', '山西省吕梁市柳林县', '柳林县', null, null, '吕梁柳林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9896', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141126', '山西省吕梁市石楼县', '石楼县', null, null, '吕梁石楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9897', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141127', '山西省吕梁市岚县', '岚县', null, null, '吕梁岚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9898', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141128', '山西省吕梁市方山县', '方山县', null, null, '吕梁方山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9899', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141129', '山西省吕梁市中阳县', '中阳县', null, null, '吕梁中阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9900', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141130', '山西省吕梁市交口县', '交口县', null, null, '吕梁交口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9901', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141181', '山西省吕梁市孝义市', '孝义市', null, null, '吕梁孝义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9902', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0358', '141182', '山西省吕梁市汾阳市', '汾阳市', null, null, '吕梁汾阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9903', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0471', '150102', '内蒙古自治区呼和浩特市新城区', '新城区', null, null, '呼和浩特新城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9904', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370612', '山东省烟台市牟平区', '牟平区', null, null, '烟台牟平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9905', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370613', '山东省烟台市莱山区', '莱山区', null, null, '烟台莱山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9906', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370634', '山东省烟台市长岛县', '长岛县', null, null, '烟台长岛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9907', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370681', '山东省烟台市龙口市', '龙口市', null, null, '烟台龙口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9908', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370682', '山东省烟台市莱阳市', '莱阳市', null, null, '烟台莱阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9909', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370683', '山东省烟台市莱州市', '莱州市', null, null, '烟台莱州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9910', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370684', '山东省烟台市蓬莱市', '蓬莱市', null, null, '烟台蓬莱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9911', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370685', '山东省烟台市招远市', '招远市', null, null, '烟台招远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9912', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370686', '山东省烟台市栖霞市', '栖霞市', null, null, '烟台栖霞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9913', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370687', '山东省烟台市海阳市', '海阳市', null, null, '烟台海阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9914', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370702', '山东省潍坊市潍城区', '潍城区', null, null, '潍坊潍城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9915', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370703', '山东省潍坊市寒亭区', '寒亭区', null, null, '潍坊寒亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9916', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370704', '山东省潍坊市坊子区', '坊子区', null, null, '潍坊坊子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9917', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370705', '山东省潍坊市奎文区', '奎文区', null, null, '潍坊奎文', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9918', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370724', '山东省潍坊市临朐县', '临朐县', null, null, '潍坊临朐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9919', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370725', '山东省潍坊市昌乐县', '昌乐县', null, null, '潍坊昌乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9920', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370781', '山东省潍坊市青州市', '青州市', null, null, '潍坊青州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9921', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370782', '山东省潍坊市诸城市', '诸城市', null, null, '潍坊诸城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9922', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370783', '山东省潍坊市寿光市', '寿光市', null, null, '潍坊寿光', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9923', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370784', '山东省潍坊市安丘市', '安丘市', null, null, '潍坊安丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9924', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370785', '山东省潍坊市高密市', '高密市', null, null, '潍坊高密', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9925', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0536', '370786', '山东省潍坊市昌邑市', '昌邑市', null, null, '潍坊昌邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9926', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370802', '山东省济宁市市中区', '市中区', null, null, '济宁中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9927', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370811', '山东省济宁市任城区', '任城区', null, null, '济宁任城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9928', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370826', '山东省济宁市微山县', '微山县', null, null, '济宁微山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9929', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370827', '山东省济宁市鱼台县', '鱼台县', null, null, '济宁鱼台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9930', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370828', '山东省济宁市金乡县', '金乡县', null, null, '济宁金乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9931', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370829', '山东省济宁市嘉祥县', '嘉祥县', null, null, '济宁嘉祥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9932', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370830', '山东省济宁市汶上县', '汶上县', null, null, '济宁汶上', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9933', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370831', '山东省济宁市泗水县', '泗水县', null, null, '济宁泗水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9934', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370832', '山东省济宁市梁山县', '梁山县', null, null, '济宁梁山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9935', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370881', '山东省济宁市曲阜市', '曲阜市', null, null, '济宁曲阜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9936', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370882', '山东省济宁市兖州市', '兖州市', null, null, '济宁兖州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9937', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0537', '370883', '山东省济宁市邹城市', '邹城市', null, null, '济宁邹城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9938', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370902', '山东省泰安市泰山区', '泰山区', null, null, '泰安泰山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9939', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370911', '山东省泰安市岱岳区', '岱岳区', null, null, '泰安岱岳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9940', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370921', '山东省泰安市宁阳县', '宁阳县', null, null, '泰安宁阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9941', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370923', '山东省泰安市东平县', '东平县', null, null, '泰安东平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9942', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370982', '山东省泰安市新泰市', '新泰市', null, null, '泰安新泰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9943', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0538', '370983', '山东省泰安市肥城市', '肥城市', null, null, '泰安肥城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9944', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0631', '371002', '山东省威海市环翠区', '环翠区', null, null, '威海环翠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9945', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0631', '371081', '山东省威海市文登市', '文登市', null, null, '威海文登', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9946', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0631', '371082', '山东省威海市荣成市', '荣成市', null, null, '威海荣成', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9947', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0631', '371083', '山东省威海市乳山市', '乳山市', null, null, '威海乳山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9948', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0633', '371102', '山东省日照市东港区', '东港区', null, null, '日照东港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9949', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0633', '371103', '山东省日照市岚山区', '岚山区', null, null, '日照岚山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9950', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0633', '371121', '山东省日照市五莲县', '五莲县', null, null, '日照五莲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9951', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0633', '371122', '山东省日照市莒县', '莒县', null, null, '日照莒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9952', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0634', '371202', '山东省莱芜市莱城区', '莱城区', null, null, '莱芜莱城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9953', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0634', '371203', '山东省莱芜市钢城区', '钢城区', null, null, '莱芜钢城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9954', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371302', '山东省临沂市兰山区', '兰山区', null, null, '临沂兰山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9955', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371311', '山东省临沂市罗庄区', '罗庄区', null, null, '临沂罗庄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9956', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371312', '山东省临沂市河东区', '河东区', null, null, '临沂河东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9957', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371321', '山东省临沂市沂南县', '沂南县', null, null, '临沂沂南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9958', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371322', '山东省临沂市郯城县', '郯城县', null, null, '临沂郯城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9959', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371323', '山东省临沂市沂水县', '沂水县', null, null, '临沂沂水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9960', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371324', '山东省临沂市苍山县', '苍山县', null, null, '临沂苍山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9961', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371325', '山东省临沂市费县', '费县', null, null, '临沂费', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9962', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371326', '山东省临沂市平邑县', '平邑县', null, null, '临沂平邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9963', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371327', '山东省临沂市莒南县', '莒南县', null, null, '临沂莒南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9964', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371328', '山东省临沂市蒙阴县', '蒙阴县', null, null, '临沂蒙阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9965', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0539', '371329', '山东省临沂市临沭县', '临沭县', null, null, '临沂临沭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9966', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371402', '山东省德州市德城区', '德城区', null, null, '德州德城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9967', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371421', '山东省德州市陵县', '陵县', null, null, '德州陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9968', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371422', '山东省德州市宁津县', '宁津县', null, null, '德州宁津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9969', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371423', '山东省德州市庆云县', '庆云县', null, null, '德州庆云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9970', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371424', '山东省德州市临邑县', '临邑县', null, null, '德州临邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9971', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371425', '山东省德州市齐河县', '齐河县', null, null, '德州齐河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9972', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371426', '山东省德州市平原县', '平原县', null, null, '德州平原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9973', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371427', '山东省德州市夏津县', '夏津县', null, null, '德州夏津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9974', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371428', '山东省德州市武城县', '武城县', null, null, '德州武城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9975', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371481', '山东省德州市乐陵市', '乐陵市', null, null, '德州乐陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9976', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0534', '371482', '山东省德州市禹城市', '禹城市', null, null, '德州禹城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9977', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371502', '山东省聊城市东昌府区', '东昌府区', null, null, '聊城东昌府', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9978', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371521', '山东省聊城市阳谷县', '阳谷县', null, null, '聊城阳谷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9979', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371522', '山东省聊城市莘县', '莘县', null, null, '聊城莘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9980', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371523', '山东省聊城市茌平县', '茌平县', null, null, '聊城茌平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9981', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371524', '山东省聊城市东阿县', '东阿县', null, null, '聊城东阿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9982', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371525', '山东省聊城市冠县', '冠县', null, null, '聊城冠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9983', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371526', '山东省聊城市高唐县', '高唐县', null, null, '聊城高唐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9984', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0635', '371581', '山东省聊城市临清市', '临清市', null, null, '聊城临清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9985', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371602', '山东省滨州市滨城区', '滨城区', null, null, '滨州滨城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9986', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371621', '山东省滨州市惠民县', '惠民县', null, null, '滨州惠民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9987', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371622', '山东省滨州市阳信县', '阳信县', null, null, '滨州阳信', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9988', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371623', '山东省滨州市无棣县', '无棣县', null, null, '滨州无棣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9989', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371624', '山东省滨州市沾化县', '沾化县', null, null, '滨州沾化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9990', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371625', '山东省滨州市博兴县', '博兴县', null, null, '滨州博兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9991', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0543', '371626', '山东省滨州市邹平县', '邹平县', null, null, '滨州邹平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9992', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371702', '山东省菏泽市牡丹区', '牡丹区', null, null, '菏泽牡丹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9993', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371721', '山东省菏泽市曹县', '曹县', null, null, '菏泽曹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9994', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371722', '山东省菏泽市单县', '单县', null, null, '菏泽单', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9995', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371723', '山东省菏泽市成武县', '成武县', null, null, '菏泽成武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9996', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371724', '山东省菏泽市巨野县', '巨野县', null, null, '菏泽巨野', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9997', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371725', '山东省菏泽市郓城县', '郓城县', null, null, '菏泽郓城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9998', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371726', '山东省菏泽市鄄城县', '鄄城县', null, null, '菏泽鄄城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('9999', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371727', '山东省菏泽市定陶县', '定陶县', null, null, '菏泽定陶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10000', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0530', '371728', '山东省菏泽市东明县', '东明县', null, null, '菏泽东明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10001', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410102', '河南省郑州市中原区', '中原区', null, null, '郑州中原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10002', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410103', '河南省郑州市二七区', '二七区', null, null, '郑州二七', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10003', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410104', '河南省郑州市管城回族区', '管城回族区', null, null, '郑州管城回族', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10004', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410105', '河南省郑州市金水区', '金水区', null, null, '郑州金水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10005', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410106', '河南省郑州市上街区', '上街区', null, null, '郑州上街', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10006', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410108', '河南省郑州市惠济区', '惠济区', null, null, '郑州惠济', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10007', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410122', '河南省郑州市中牟县', '中牟县', null, null, '郑州中牟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10008', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410181', '河南省郑州市巩义市', '巩义市', null, null, '郑州巩义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10009', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410182', '河南省郑州市荥阳市', '荥阳市', null, null, '郑州荥阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10010', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410183', '河南省郑州市新密市', '新密市', null, null, '郑州新密', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10011', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410184', '河南省郑州市新郑市', '新郑市', null, null, '郑州新郑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10012', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0371', '410185', '河南省郑州市登封市', '登封市', null, null, '郑州登封', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10013', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410202', '河南省开封市龙亭区', '龙亭区', null, null, '开封龙亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10014', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410203', '河南省开封市顺河回族区', '顺河回族区', null, null, '开封顺河回族', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10015', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410204', '河南省开封市鼓楼区', '鼓楼区', null, null, '开封鼓楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10016', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410205', '河南省开封市禹王台区', '禹王台区', null, null, '开封禹王台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10017', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410211', '河南省开封市金明区', '金明区', null, null, '开封金明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10018', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410221', '河南省开封市杞县', '杞县', null, null, '开封杞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10019', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410222', '河南省开封市通许县', '通许县', null, null, '开封通许', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10020', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410223', '河南省开封市尉氏县', '尉氏县', null, null, '开封尉氏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10021', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410224', '河南省开封市开封县', '开封县', null, null, '开封开封', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10022', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0378', '410225', '河南省开封市兰考县', '兰考县', null, null, '开封兰考', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10023', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410302', '河南省洛阳市老城区', '老城区', null, null, '洛阳老城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10024', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410303', '河南省洛阳市西工区', '西工区', null, null, '洛阳西工', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10025', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410304', '河南省洛阳市瀍河回族区', '瀍河回族区', null, null, '洛阳瀍河回族', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10026', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410305', '河南省洛阳市涧西区', '涧西区', null, null, '洛阳涧西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10027', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410306', '河南省洛阳市吉利区', '吉利区', null, null, '洛阳吉利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10028', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410311', '河南省洛阳市洛龙区', '洛龙区', null, null, '洛阳洛龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10029', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410322', '河南省洛阳市孟津县', '孟津县', null, null, '洛阳孟津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10030', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410323', '河南省洛阳市新安县', '新安县', null, null, '洛阳新安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10031', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410324', '河南省洛阳市栾川县', '栾川县', null, null, '洛阳栾川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10032', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410325', '河南省洛阳市嵩县', '嵩县', null, null, '洛阳嵩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10033', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410326', '河南省洛阳市汝阳县', '汝阳县', null, null, '洛阳汝阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10034', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410327', '河南省洛阳市宜阳县', '宜阳县', null, null, '洛阳宜阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10035', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410328', '河南省洛阳市洛宁县', '洛宁县', null, null, '洛阳洛宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10036', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410329', '河南省洛阳市伊川县', '伊川县', null, null, '洛阳伊川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10037', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0379', '410381', '河南省洛阳市偃师市', '偃师市', null, null, '洛阳偃师', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10038', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410402', '河南省平顶山市新华区', '新华区', null, null, '平顶山新华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10039', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410403', '河南省平顶山市卫东区', '卫东区', null, null, '平顶山卫东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10040', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410404', '河南省平顶山市石龙区', '石龙区', null, null, '平顶山石龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10041', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410411', '河南省平顶山市湛河区', '湛河区', null, null, '平顶山湛河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10042', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410421', '河南省平顶山市宝丰县', '宝丰县', null, null, '平顶山宝丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10043', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410422', '河南省平顶山市叶县', '叶县', null, null, '平顶山叶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10044', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410423', '河南省平顶山市鲁山县', '鲁山县', null, null, '平顶山鲁山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10045', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410425', '河南省平顶山市郏县', '郏县', null, null, '平顶山郏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10046', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410481', '河南省平顶山市舞钢市', '舞钢市', null, null, '平顶山舞钢', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10047', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0375', '410482', '河南省平顶山市汝州市', '汝州市', null, null, '平顶山汝州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10048', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410502', '河南省安阳市文峰区', '文峰区', null, null, '安阳文峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10049', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410503', '河南省安阳市北关区', '北关区', null, null, '安阳北关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10050', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410505', '河南省安阳市殷都区', '殷都区', null, null, '安阳殷都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10051', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410506', '河南省安阳市龙安区', '龙安区', null, null, '安阳龙安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10052', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410522', '河南省安阳市安阳县', '安阳县', null, null, '安阳安阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10053', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410523', '河南省安阳市汤阴县', '汤阴县', null, null, '安阳汤阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10054', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410526', '河南省安阳市滑县', '滑县', null, null, '安阳滑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10055', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410527', '河南省安阳市内黄县', '内黄县', null, null, '安阳内黄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10056', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0372', '410581', '河南省安阳市林州市', '林州市', null, null, '安阳林州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10057', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410602', '河南省鹤壁市鹤山区', '鹤山区', null, null, '鹤壁鹤山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10058', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410603', '河南省鹤壁市山城区', '山城区', null, null, '鹤壁山城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10059', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410611', '河南省鹤壁市淇滨区', '淇滨区', null, null, '鹤壁淇滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10060', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410621', '河南省鹤壁市浚县', '浚县', null, null, '鹤壁浚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10061', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0392', '410622', '河南省鹤壁市淇县', '淇县', null, null, '鹤壁淇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10062', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410702', '河南省新乡市红旗区', '红旗区', null, null, '新乡红旗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10063', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410703', '河南省新乡市卫滨区', '卫滨区', null, null, '新乡卫滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10064', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410704', '河南省新乡市凤泉区', '凤泉区', null, null, '新乡凤泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10065', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410711', '河南省新乡市牧野区', '牧野区', null, null, '新乡牧野', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10066', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410721', '河南省新乡市新乡县', '新乡县', null, null, '新乡新乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10067', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410724', '河南省新乡市获嘉县', '获嘉县', null, null, '新乡获嘉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10068', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410725', '河南省新乡市原阳县', '原阳县', null, null, '新乡原阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10069', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410726', '河南省新乡市延津县', '延津县', null, null, '新乡延津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10070', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410727', '河南省新乡市封丘县', '封丘县', null, null, '新乡封丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10071', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410728', '河南省新乡市长垣县', '长垣县', null, null, '新乡长垣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10072', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410781', '河南省新乡市卫辉市', '卫辉市', null, null, '新乡卫辉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10073', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0373', '410782', '河南省新乡市辉县市', '辉县市', null, null, '新乡辉县', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10074', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410802', '河南省焦作市解放区', '解放区', null, null, '焦作解放', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10075', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410803', '河南省焦作市中站区', '中站区', null, null, '焦作中站', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10076', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410804', '河南省焦作市马村区', '马村区', null, null, '焦作马村', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10077', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410811', '河南省焦作市山阳区', '山阳区', null, null, '焦作山阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10078', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410821', '河南省焦作市修武县', '修武县', null, null, '焦作修武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10079', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410822', '河南省焦作市博爱县', '博爱县', null, null, '焦作博爱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10080', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410823', '河南省焦作市武陟县', '武陟县', null, null, '焦作武陟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10081', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410825', '河南省焦作市温县', '温县', null, null, '焦作温', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10082', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410882', '河南省焦作市沁阳市', '沁阳市', null, null, '焦作沁阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10083', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '410883', '河南省焦作市孟州市', '孟州市', null, null, '焦作孟州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10084', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410902', '河南省濮阳市华龙区', '华龙区', null, null, '濮阳华龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10085', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410922', '河南省濮阳市清丰县', '清丰县', null, null, '濮阳清丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10086', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410923', '河南省濮阳市南乐县', '南乐县', null, null, '濮阳南乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10087', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410926', '河南省濮阳市范县', '范县', null, null, '濮阳范', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10088', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410927', '河南省濮阳市台前县', '台前县', null, null, '濮阳台前', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10089', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0393', '410928', '河南省濮阳市濮阳县', '濮阳县', null, null, '濮阳濮阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10090', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411002', '河南省许昌市魏都区', '魏都区', null, null, '许昌魏都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10091', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411023', '河南省许昌市许昌县', '许昌县', null, null, '许昌许昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10092', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411024', '河南省许昌市鄢陵县', '鄢陵县', null, null, '许昌鄢陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10093', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411025', '河南省许昌市襄城县', '襄城县', null, null, '许昌襄城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10094', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411081', '河南省许昌市禹州市', '禹州市', null, null, '许昌禹州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10095', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0374', '411082', '河南省许昌市长葛市', '长葛市', null, null, '许昌长葛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10096', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411102', '河南省漯河市源汇区', '源汇区', null, null, '漯河源汇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10097', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411103', '河南省漯河市郾城区', '郾城区', null, null, '漯河郾城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10098', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411104', '河南省漯河市召陵区', '召陵区', null, null, '漯河召陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10099', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411121', '河南省漯河市舞阳县', '舞阳县', null, null, '漯河舞阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10100', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0395', '411122', '河南省漯河市临颍县', '临颍县', null, null, '漯河临颍', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10101', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411202', '河南省三门峡市湖滨区', '湖滨区', null, null, '三门峡湖滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10102', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411221', '河南省三门峡市渑池县', '渑池县', null, null, '三门峡渑池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10103', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411222', '河南省三门峡市陕县', '陕县', null, null, '三门峡陕', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10104', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411224', '河南省三门峡市卢氏县', '卢氏县', null, null, '三门峡卢氏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10105', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411281', '河南省三门峡市义马市', '义马市', null, null, '三门峡义马', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10106', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0398', '411282', '河南省三门峡市灵宝市', '灵宝市', null, null, '三门峡灵宝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10107', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411302', '河南省南阳市宛城区', '宛城区', null, null, '南阳宛城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10108', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411303', '河南省南阳市卧龙区', '卧龙区', null, null, '南阳卧龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10109', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411321', '河南省南阳市南召县', '南召县', null, null, '南阳南召', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10110', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411322', '河南省南阳市方城县', '方城县', null, null, '南阳方城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10111', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411323', '河南省南阳市西峡县', '西峡县', null, null, '南阳西峡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10112', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411324', '河南省南阳市镇平县', '镇平县', null, null, '南阳镇平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10113', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411325', '河南省南阳市内乡县', '内乡县', null, null, '南阳内乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10114', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411326', '河南省南阳市淅川县', '淅川县', null, null, '南阳淅川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10115', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411327', '河南省南阳市社旗县', '社旗县', null, null, '南阳社旗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10116', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411328', '河南省南阳市唐河县', '唐河县', null, null, '南阳唐河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10117', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411329', '河南省南阳市新野县', '新野县', null, null, '南阳新野', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10118', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411330', '河南省南阳市桐柏县', '桐柏县', null, null, '南阳桐柏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10119', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0377', '411381', '河南省南阳市邓州市', '邓州市', null, null, '南阳邓州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10120', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411402', '河南省商丘市梁园区', '梁园区', null, null, '商丘梁园', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10121', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411403', '河南省商丘市睢阳区', '睢阳区', null, null, '商丘睢阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10122', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411421', '河南省商丘市民权县', '民权县', null, null, '商丘民权', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10123', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411422', '河南省商丘市睢县', '睢县', null, null, '商丘睢', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10124', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411423', '河南省商丘市宁陵县', '宁陵县', null, null, '商丘宁陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10125', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411424', '河南省商丘市柘城县', '柘城县', null, null, '商丘柘城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10126', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411425', '河南省商丘市虞城县', '虞城县', null, null, '商丘虞城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10127', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411426', '河南省商丘市夏邑县', '夏邑县', null, null, '商丘夏邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10128', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0370', '411481', '河南省商丘市永城市', '永城市', null, null, '商丘永城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10129', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411502', '河南省信阳市浉河区', '浉河区', null, null, '信阳浉河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10130', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411503', '河南省信阳市平桥区', '平桥区', null, null, '信阳平桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10131', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411521', '河南省信阳市罗山县', '罗山县', null, null, '信阳罗山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10132', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411522', '河南省信阳市光山县', '光山县', null, null, '信阳光山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10133', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411523', '河南省信阳市新县', '新县', null, null, '信阳新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411524', '河南省信阳市商城县', '商城县', null, null, '信阳商城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411525', '河南省信阳市固始县', '固始县', null, null, '信阳固始', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10136', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411526', '河南省信阳市潢川县', '潢川县', null, null, '信阳潢川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411527', '河南省信阳市淮滨县', '淮滨县', null, null, '信阳淮滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0376', '411528', '河南省信阳市息县', '息县', null, null, '信阳息', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10139', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411602', '河南省周口市川汇区', '川汇区', null, null, '周口川汇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10140', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411621', '河南省周口市扶沟县', '扶沟县', null, null, '周口扶沟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10141', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411622', '河南省周口市西华县', '西华县', null, null, '周口西华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10142', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411623', '河南省周口市商水县', '商水县', null, null, '周口商水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10143', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411624', '河南省周口市沈丘县', '沈丘县', null, null, '周口沈丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10144', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411625', '河南省周口市郸城县', '郸城县', null, null, '周口郸城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10145', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411626', '河南省周口市淮阳县', '淮阳县', null, null, '周口淮阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10146', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411627', '河南省周口市太康县', '太康县', null, null, '周口太康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10147', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411628', '河南省周口市鹿邑县', '鹿邑县', null, null, '周口鹿邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10148', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0394', '411681', '河南省周口市项城市', '项城市', null, null, '周口项城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10149', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411702', '河南省驻马店市驿城区', '驿城区', null, null, '驻马店驿城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10150', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411721', '河南省驻马店市西平县', '西平县', null, null, '驻马店西平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10151', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411722', '河南省驻马店市上蔡县', '上蔡县', null, null, '驻马店上蔡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10152', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411723', '河南省驻马店市平舆县', '平舆县', null, null, '驻马店平舆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10153', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411724', '河南省驻马店市正阳县', '正阳县', null, null, '驻马店正阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10154', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411725', '河南省驻马店市确山县', '确山县', null, null, '驻马店确山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10155', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411726', '河南省驻马店市泌阳县', '泌阳县', null, null, '驻马店泌阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10156', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411727', '河南省驻马店市汝南县', '汝南县', null, null, '驻马店汝南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10157', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411728', '河南省驻马店市遂平县', '遂平县', null, null, '驻马店遂平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10158', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0396', '411729', '河南省驻马店市新蔡县', '新蔡县', null, null, '驻马店新蔡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10159', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '419001', '河南省省直辖济源市', '济源市', null, null, '济源', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10160', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420102', '湖北省武汉市江岸区', '江岸区', null, null, '武汉江岸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10161', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '420103', '湖北省武汉市江汉区', '江汉区', null, null, '武汉江汉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10162', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420104', '湖北省武汉市硚口区', '硚口区', null, null, '武汉硚口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10163', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420105', '湖北省武汉市汉阳区', '汉阳区', null, null, '武汉汉阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10164', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420106', '湖北省武汉市武昌区', '武昌区', null, null, '武汉武昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10165', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420107', '湖北省武汉市青山区', '青山区', null, null, '武汉青山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10166', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420111', '湖北省武汉市洪山区', '洪山区', null, null, '武汉洪山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10167', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420112', '湖北省武汉市东西湖区', '东西湖区', null, null, '武汉东西湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10168', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420113', '湖北省武汉市汉南区', '汉南区', null, null, '武汉汉南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10169', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420114', '湖北省武汉市蔡甸区', '蔡甸区', null, null, '武汉蔡甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10170', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420115', '湖北省武汉市江夏区', '江夏区', null, null, '武汉江夏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10171', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420116', '湖北省武汉市黄陂区', '黄陂区', null, null, '武汉黄陂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10172', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '027', '420117', '湖北省武汉市新洲区', '新洲区', null, null, '武汉新洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10173', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420202', '湖北省黄石市黄石港区', '黄石港区', null, null, '黄石黄石港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10174', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420203', '湖北省黄石市西塞山区', '西塞山区', null, null, '黄石西塞山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10175', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420204', '湖北省黄石市下陆区', '下陆区', null, null, '黄石下陆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10176', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420205', '湖北省黄石市铁山区', '铁山区', null, null, '黄石铁山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10177', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420222', '湖北省黄石市阳新县', '阳新县', null, null, '黄石阳新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10178', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0714', '420281', '湖北省黄石市大冶市', '大冶市', null, null, '黄石大冶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10179', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420302', '湖北省十堰市茅箭区', '茅箭区', null, null, '十堰茅箭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10180', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420303', '湖北省十堰市张湾区', '张湾区', null, null, '十堰张湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10181', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420321', '湖北省十堰市郧县', '郧县', null, null, '十堰郧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10182', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420322', '湖北省十堰市郧西县', '郧西县', null, null, '十堰郧西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10183', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420323', '湖北省十堰市竹山县', '竹山县', null, null, '十堰竹山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10184', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420324', '湖北省十堰市竹溪县', '竹溪县', null, null, '十堰竹溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10185', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420325', '湖北省十堰市房县', '房县', null, null, '十堰房', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10186', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '420381', '湖北省十堰市丹江口市', '丹江口市', null, null, '十堰丹江口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10187', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420502', '湖北省宜昌市西陵区', '西陵区', null, null, '宜昌西陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10188', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420503', '湖北省宜昌市伍家岗区', '伍家岗区', null, null, '宜昌伍家岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10189', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420504', '湖北省宜昌市点军区', '点军区', null, null, '宜昌点军', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10190', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420505', '湖北省宜昌市猇亭区', '猇亭区', null, null, '宜昌猇亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10191', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420506', '湖北省宜昌市夷陵区', '夷陵区', null, null, '宜昌夷陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10192', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420525', '湖北省宜昌市远安县', '远安县', null, null, '宜昌远安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10193', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420526', '湖北省宜昌市兴山县', '兴山县', null, null, '宜昌兴山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10194', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420527', '湖北省宜昌市秭归县', '秭归县', null, null, '宜昌秭归', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10195', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420528', '湖北省宜昌市长阳土家族自治县', '长阳', null, null, '宜昌长阳土\r\n\r\n家族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10196', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420529', '湖北省宜昌市五峰土家族自治县', '五峰', null, null, '宜昌五峰土\r\n\r\n家族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10197', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420581', '湖北省宜昌市宜都市', '宜都市', null, null, '宜昌宜都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10198', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420582', '湖北省宜昌市当阳市', '当阳市', null, null, '宜昌当阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10199', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0717', '420583', '湖北省宜昌市枝江市', '枝江市', null, null, '宜昌枝江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10200', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420602', '湖北省襄阳市襄城区', '襄城区', null, null, '襄阳襄城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10201', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420606', '湖北省襄阳市樊城区', '樊城区', null, null, '襄阳樊城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10202', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420607', '湖北省襄阳市襄州区', '襄州区', null, null, '襄阳襄州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10203', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420624', '湖北省襄阳市南漳县', '南漳县', null, null, '襄阳南漳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10204', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420625', '湖北省襄阳市谷城县', '谷城县', null, null, '襄阳谷城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10205', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420626', '湖北省襄阳市保康县', '保康县', null, null, '襄阳保康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10206', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420682', '湖北省襄阳市老河口市', '老河口市', null, null, '襄阳老河口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10207', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420683', '湖北省襄阳市枣阳市', '枣阳市', null, null, '襄阳枣阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10208', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0710', '420684', '湖北省襄阳市宜城市', '宜城市', null, null, '襄阳宜城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10209', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0711', '420702', '湖北省鄂州市梁子湖区', '梁子湖区', null, null, '鄂州梁子湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10210', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0711', '420703', '湖北省鄂州市华容区', '华容区', null, null, '鄂州华容', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10211', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0711', '420704', '湖北省鄂州市鄂城区', '鄂城区', null, null, '鄂州鄂城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10212', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420802', '湖北省荆门市东宝区', '东宝区', null, null, '荆门东宝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10213', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420804', '湖北省荆门市掇刀区', '掇刀区', null, null, '荆门掇刀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10214', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420821', '湖北省荆门市京山县', '京山县', null, null, '荆门京山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10215', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420822', '湖北省荆门市沙洋县', '沙洋县', null, null, '荆门沙洋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10216', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0724', '420881', '湖北省荆门市钟祥市', '钟祥市', null, null, '荆门钟祥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10217', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420902', '湖北省孝感市孝南区', '孝南区', null, null, '孝感孝南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10218', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420921', '湖北省孝感市孝昌县', '孝昌县', null, null, '孝感孝昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10219', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420922', '湖北省孝感市大悟县', '大悟县', null, null, '孝感大悟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10220', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420923', '湖北省孝感市云梦县', '云梦县', null, null, '孝感云梦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10221', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420981', '湖北省孝感市应城市', '应城市', null, null, '孝感应城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10222', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420982', '湖北省孝感市安陆市', '安陆市', null, null, '孝感安陆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10223', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0712', '420984', '湖北省孝感市汉川市', '汉川市', null, null, '孝感汉川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10224', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421002', '湖北省荆州市沙市区', '沙市区', null, null, '荆州沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10225', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421003', '湖北省荆州市荆州区', '荆州区', null, null, '荆州荆州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10226', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421022', '湖北省荆州市公安县', '公安县', null, null, '荆州公安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10227', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421023', '湖北省荆州市监利县', '监利县', null, null, '荆州监利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10228', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421024', '湖北省荆州市江陵县', '江陵县', null, null, '荆州江陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10229', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421081', '湖北省荆州市石首市', '石首市', null, null, '荆州石首', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10230', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421083', '湖北省荆州市洪湖市', '洪湖市', null, null, '荆州洪湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10231', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0716', '421087', '湖北省荆州市松滋市', '松滋市', null, null, '荆州松滋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10232', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421102', '湖北省黄冈市黄州区', '黄州区', null, null, '黄冈黄州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10233', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421121', '湖北省黄冈市团风县', '团风县', null, null, '黄冈团风', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10234', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421122', '湖北省黄冈市红安县', '红安县', null, null, '黄冈红安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10235', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421123', '湖北省黄冈市罗田县', '罗田县', null, null, '黄冈罗田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10236', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421124', '湖北省黄冈市英山县', '英山县', null, null, '黄冈英山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10237', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421125', '湖北省黄冈市浠水县', '浠水县', null, null, '黄冈浠水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10238', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421126', '湖北省黄冈市蕲春县', '蕲春县', null, null, '黄冈蕲春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10239', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421127', '湖北省黄冈市黄梅县', '黄梅县', null, null, '黄冈黄梅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10240', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421181', '湖北省黄冈市麻城市', '麻城市', null, null, '黄冈麻城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10241', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0713', '421182', '湖北省黄冈市武穴市', '武穴市', null, null, '黄冈武穴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10242', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421202', '湖北省咸宁市咸安区', '咸安区', null, null, '咸宁咸安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10243', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421221', '湖北省咸宁市嘉鱼县', '嘉鱼县', null, null, '咸宁嘉鱼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10244', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421222', '湖北省咸宁市通城县', '通城县', null, null, '咸宁通城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10245', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421223', '湖北省咸宁市崇阳县', '崇阳县', null, null, '咸宁崇阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10246', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421224', '湖北省咸宁市通山县', '通山县', null, null, '咸宁通山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10247', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0715', '421281', '湖北省咸宁市赤壁市', '赤壁市', null, null, '咸宁赤壁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10248', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0722', '421303', '湖北省随州市曾都区', '曾都区', null, null, '随州曾都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10249', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0722', '421321', '湖北省随州市随县', '随县', null, null, '随州随', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10250', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0722', '421381', '湖北省随州市广水市', '广水市', null, null, '随州广水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10251', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422801', '湖北省恩施土家族苗族自治州 恩施市', '恩施市', null, null, '恩施土家族苗族自\r\n\r\n治州 恩施', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10252', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422802', '湖北省恩施土家族苗族自治州 利川市', '利川市', null, null, '恩施土家族苗族自\r\n\r\n治州 利川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10253', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422822', '湖北省恩施土家族苗族自治州 建始县', '建始县', null, null, '恩施土家族苗族自\r\n\r\n治州 建始', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10254', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422823', '湖北省恩施土家族苗族自治州 巴东县', '巴东县', null, null, '恩施土家族苗族自\r\n\r\n治州 巴东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10255', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422825', '湖北省恩施土家族苗族自治州 宣恩县', '宣恩县', null, null, '恩施土家族苗族自\r\n\r\n治州 宣恩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10256', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422826', '湖北省恩施土家族苗族自治州 咸丰县', '咸丰县', null, null, '恩施土家族苗族自\r\n\r\n治州 咸丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10257', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422827', '湖北省恩施土家族苗族自治州 来凤县', '来凤县', null, null, '恩施土家族苗族自\r\n\r\n治州 来凤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10258', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0718', '422828', '湖北省恩施土家族苗族自治州 鹤峰县', '鹤峰县', null, null, '恩施土家族苗族自\r\n\r\n治州 鹤峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10259', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '429004', '湖北省省直辖仙桃市', '仙桃市', null, null, '仙桃', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10260', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '429005', '湖北省省直辖潜江市', '潜江市', null, null, '潜江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10261', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '429006', '湖北省省直辖天门市', '天门市', null, null, '天门', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10262', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '429021', '湖北省省直辖神农架林区', '神农架林区', null, null, '神农架', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10263', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430102', '湖南省长沙市芙蓉区', '芙蓉区', null, null, '长沙芙蓉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10264', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430103', '湖南省长沙市天心区', '天心区', null, null, '长沙天心', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10265', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430104', '湖南省长沙市岳麓区', '岳麓区', null, null, '长沙岳麓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10266', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430105', '湖南省长沙市开福区', '开福区', null, null, '长沙开福', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10267', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430111', '湖南省长沙市雨花区', '雨花区', null, null, '长沙雨花', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10268', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430112', '湖南省长沙市望城区', '望城区', null, null, '长沙望城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10269', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430121', '湖南省长沙市长沙县', '长沙县', null, null, '长沙长沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10270', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430124', '湖南省长沙市宁乡县', '宁乡县', null, null, '长沙宁乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10271', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0731', '430181', '湖南省长沙市浏阳市', '浏阳市', null, null, '长沙浏阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10272', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430202', '湖南省株洲市荷塘区', '荷塘区', null, null, '株洲荷塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10273', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430203', '湖南省株洲市芦淞区', '芦淞区', null, null, '株洲芦淞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10274', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430204', '湖南省株洲市石峰区', '石峰区', null, null, '株洲石峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10275', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430211', '湖南省株洲市天元区', '天元区', null, null, '株洲天元', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10276', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430221', '湖南省株洲市株洲县', '株洲县', null, null, '株洲株洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10277', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430223', '湖南省株洲市攸县', '攸县', null, null, '株洲攸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10278', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430224', '湖南省株洲市茶陵县', '茶陵县', null, null, '株洲茶陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10279', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430225', '湖南省株洲市炎陵县', '炎陵县', null, null, '株洲炎陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10280', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0733', '430281', '湖南省株洲市醴陵市', '醴陵市', null, null, '株洲醴陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10281', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430302', '湖南省湘潭市雨湖区', '雨湖区', null, null, '湘潭雨湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10282', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430304', '湖南省湘潭市岳塘区', '岳塘区', null, null, '湘潭岳塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10283', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430321', '湖南省湘潭市湘潭县', '湘潭县', null, null, '湘潭湘潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10284', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430381', '湖南省湘潭市湘乡市', '湘乡市', null, null, '湘潭湘乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10285', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0732', '430382', '湖南省湘潭市韶山市', '韶山市', null, null, '湘潭韶山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10286', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430405', '湖南省衡阳市珠晖区', '珠晖区', null, null, '衡阳珠晖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10287', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430406', '湖南省衡阳市雁峰区', '雁峰区', null, null, '衡阳雁峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10288', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430407', '湖南省衡阳市石鼓区', '石鼓区', null, null, '衡阳石鼓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10289', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430408', '湖南省衡阳市蒸湘区', '蒸湘区', null, null, '衡阳蒸湘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10290', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430412', '湖南省衡阳市南岳区', '南岳区', null, null, '衡阳南岳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10291', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430421', '湖南省衡阳市衡阳县', '衡阳县', null, null, '衡阳衡阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10292', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430422', '湖南省衡阳市衡南县', '衡南县', null, null, '衡阳衡南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10293', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430423', '湖南省衡阳市衡山县', '衡山县', null, null, '衡阳衡山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10294', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430424', '湖南省衡阳市衡东县', '衡东县', null, null, '衡阳衡东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10295', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430426', '湖南省衡阳市祁东县', '祁东县', null, null, '衡阳祁东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10296', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430481', '湖南省衡阳市耒阳市', '耒阳市', null, null, '衡阳耒阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10297', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0734', '430482', '湖南省衡阳市常宁市', '常宁市', null, null, '衡阳常宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10298', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430502', '湖南省邵阳市双清区', '双清区', null, null, '邵阳双清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10299', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430503', '湖南省邵阳市大祥区', '大祥区', null, null, '邵阳大祥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10300', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430511', '湖南省邵阳市北塔区', '北塔区', null, null, '邵阳北塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10301', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430521', '湖南省邵阳市邵东县', '邵东县', null, null, '邵阳邵东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10302', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430522', '湖南省邵阳市新邵县', '新邵县', null, null, '邵阳新邵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10303', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430523', '湖南省邵阳市邵阳县', '邵阳县', null, null, '邵阳邵阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10304', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430524', '湖南省邵阳市隆回县', '隆回县', null, null, '邵阳隆回', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10305', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430525', '湖南省邵阳市洞口县', '洞口县', null, null, '邵阳洞口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10306', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430527', '湖南省邵阳市绥宁县', '绥宁县', null, null, '邵阳绥宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10307', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430528', '湖南省邵阳市新宁县', '新宁县', null, null, '邵阳新宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10308', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430529', '湖南省邵阳市城步苗族自治县', '城步', null, null, '邵阳城步苗族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10309', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0739', '430581', '湖南省邵阳市武冈市', '武冈市', null, null, '邵阳武冈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10310', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430602', '湖南省岳阳市岳阳楼区', '岳阳楼区', null, null, '岳阳岳阳楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10311', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430603', '湖南省岳阳市云溪区', '云溪区', null, null, '岳阳云溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10312', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430611', '湖南省岳阳市君山区', '君山区', null, null, '岳阳君山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10313', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430621', '湖南省岳阳市岳阳县', '岳阳县', null, null, '岳阳岳阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10314', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430623', '湖南省岳阳市华容县', '华容县', null, null, '岳阳华容', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10315', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430624', '湖南省岳阳市湘阴县', '湘阴县', null, null, '岳阳湘阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10316', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430626', '湖南省岳阳市平江县', '平江县', null, null, '岳阳平江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10317', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430681', '湖南省岳阳市汨罗市', '汨罗市', null, null, '岳阳汨罗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10318', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0730', '430682', '湖南省岳阳市临湘市', '临湘市', null, null, '岳阳临湘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10319', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430702', '湖南省常德市武陵区', '武陵区', null, null, '常德武陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10320', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430703', '湖南省常德市鼎城区', '鼎城区', null, null, '常德鼎城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10321', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430721', '湖南省常德市安乡县', '安乡县', null, null, '常德安乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10322', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430722', '湖南省常德市汉寿县', '汉寿县', null, null, '常德汉寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10323', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430723', '湖南省常德市澧县', '澧县', null, null, '常德澧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10324', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430724', '湖南省常德市临澧县', '临澧县', null, null, '常德临澧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10325', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430725', '湖南省常德市桃源县', '桃源县', null, null, '常德桃源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10326', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430726', '湖南省常德市石门县', '石门县', null, null, '常德石门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10327', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0736', '430781', '湖南省常德市津市市', '津市市', null, null, '常德津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10328', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0744', '430802', '湖南省张家界市永定区', '永定区', null, null, '张家界永定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10329', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0744', '430811', '湖南省张家界市武陵源区', '武陵源区', null, null, '张家界武陵源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10330', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0744', '430821', '湖南省张家界市慈利县', '慈利县', null, null, '张家界慈利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10331', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0744', '430822', '湖南省张家界市桑植县', '桑植县', null, null, '张家界桑植', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10332', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430902', '湖南省益阳市资阳区', '资阳区', null, null, '益阳资阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10333', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430903', '湖南省益阳市赫山区', '赫山区', null, null, '益阳赫山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10334', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430921', '湖南省益阳市南县', '南县', null, null, '益阳南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10335', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430922', '湖南省益阳市桃江县', '桃江县', null, null, '益阳桃江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10336', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430923', '湖南省益阳市安化县', '安化县', null, null, '益阳安化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10337', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0737', '430981', '湖南省益阳市沅江市', '沅江市', null, null, '益阳沅江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10338', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431002', '湖南省郴州市北湖区', '北湖区', null, null, '郴州北湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10339', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431003', '湖南省郴州市苏仙区', '苏仙区', null, null, '郴州苏仙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10340', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431021', '湖南省郴州市桂阳县', '桂阳县', null, null, '郴州桂阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10341', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431022', '湖南省郴州市宜章县', '宜章县', null, null, '郴州宜章', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10342', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431023', '湖南省郴州市永兴县', '永兴县', null, null, '郴州永兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10343', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431024', '湖南省郴州市嘉禾县', '嘉禾县', null, null, '郴州嘉禾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10344', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431025', '湖南省郴州市临武县', '临武县', null, null, '郴州临武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10345', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431026', '湖南省郴州市汝城县', '汝城县', null, null, '郴州汝城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10346', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431027', '湖南省郴州市桂东县', '桂东县', null, null, '郴州桂东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10347', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431028', '湖南省郴州市安仁县', '安仁县', null, null, '郴州安仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10348', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0735', '431081', '湖南省郴州市资兴市', '资兴市', null, null, '郴州资兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10349', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431102', '湖南省永州市零陵区', '零陵区', null, null, '永州零陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10350', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431103', '湖南省永州市冷水滩区', '冷水滩区', null, null, '永州冷水滩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10351', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431121', '湖南省永州市祁阳县', '祁阳县', null, null, '永州祁阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10352', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431122', '湖南省永州市东安县', '东安县', null, null, '永州东安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10353', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431123', '湖南省永州市双牌县', '双牌县', null, null, '永州双牌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10354', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431124', '湖南省永州市道县', '道县', null, null, '永州道', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10355', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431125', '湖南省永州市江永县', '江永县', null, null, '永州江永', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10356', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431126', '湖南省永州市宁远县', '宁远县', null, null, '永州宁远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10357', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431127', '湖南省永州市蓝山县', '蓝山县', null, null, '永州蓝山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10358', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431128', '湖南省永州市新田县', '新田县', null, null, '永州新田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10359', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0746', '431129', '湖南省永州市江华瑶族自治县', '江华', null, null, '永州江华瑶族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10360', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431202', '湖南省怀化市鹤城区', '鹤城区', null, null, '怀化鹤城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10361', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431221', '湖南省怀化市中方县', '中方县', null, null, '怀化中方', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10362', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431222', '湖南省怀化市沅陵县', '沅陵县', null, null, '怀化沅陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10363', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431223', '湖南省怀化市辰溪县', '辰溪县', null, null, '怀化辰溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10364', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431224', '湖南省怀化市溆浦县', '溆浦县', null, null, '怀化溆浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10365', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431225', '湖南省怀化市会同县', '会同县', null, null, '怀化会同', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10366', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431226', '湖南省怀化市麻阳苗族自治县', '麻阳', null, null, '怀化麻阳苗族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10367', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431227', '湖南省怀化市新晃侗族自治县', '新晃', null, null, '怀化新晃侗族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10368', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431228', '湖南省怀化市芷江侗族自治县', '芷江', null, null, '怀化芷江侗族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10369', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431229', '湖南省怀化市靖州苗族侗族自治县', '靖州', null, null, '怀化靖\r\n\r\n州苗族侗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10370', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431230', '湖南省怀化市通道侗族自治县', '通道', null, null, '怀化通道侗族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10371', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0745', '431281', '湖南省怀化市洪江市', '洪江市', null, null, '怀化洪江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10372', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431302', '湖南省娄底市娄星区', '娄星区', null, null, '娄底娄星', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10373', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431321', '湖南省娄底市双峰县', '双峰县', null, null, '娄底双峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10374', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431322', '湖南省娄底市新化县', '新化县', null, null, '娄底新化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10375', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431381', '湖南省娄底市冷水江市', '冷水江市', null, null, '娄底冷水江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10376', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0738', '431382', '湖南省娄底市涟源市', '涟源市', null, null, '娄底涟源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10377', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433101', '湖南省湘西土家族苗族自治州 吉首市', '吉首市', null, null, '湘西土家族苗族自\r\n\r\n治州 吉首', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10378', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433122', '湖南省湘西土家族苗族自治州 泸溪县', '泸溪县', null, null, '湘西土家族苗族自\r\n\r\n治州 泸溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10379', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433123', '湖南省湘西土家族苗族自治州 凤凰县', '凤凰县', null, null, '湘西土家族苗族自\r\n\r\n治州 凤凰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10380', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433124', '湖南省湘西土家族苗族自治州 花垣县', '花垣县', null, null, '湘西土家族苗族自\r\n\r\n治州 花垣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10381', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433125', '湖南省湘西土家族苗族自治州 保靖县', '保靖县', null, null, '湘西土家族苗族自\r\n\r\n治州 保靖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10382', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433126', '湖南省湘西土家族苗族自治州 古丈县', '古丈县', null, null, '湘西土家族苗族自\r\n\r\n治州 古丈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10383', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433127', '湖南省湘西土家族苗族自治州 永顺县', '永顺县', null, null, '湘西土家族苗族自\r\n\r\n治州 永顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10384', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0743', '433130', '湖南省湘西土家族苗族自治州 龙山县', '龙山县', null, null, '湘西土家族苗族自\r\n\r\n治州 龙山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10385', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440103', '广东省广州市荔湾区', '荔湾区', null, null, '广州荔湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10386', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440104', '广东省广州市越秀区', '越秀区', null, null, '广州越秀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10387', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440105', '广东省广州市海珠区', '海珠区', null, null, '广州海珠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10388', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440106', '广东省广州市天河区', '天河区', null, null, '广州天河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10389', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440111', '广东省广州市白云区', '白云区', null, null, '广州白云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10390', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440112', '广东省广州市黄埔区', '黄埔区', null, null, '广州黄埔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10391', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440113', '广东省广州市番禺区', '番禺区', null, null, '广州番禺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10392', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440114', '广东省广州市花都区', '花都区', null, null, '广州花都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10393', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440115', '广东省广州市南沙区', '南沙区', null, null, '广州南沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10394', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440116', '广东省广州市萝岗区', '萝岗区', null, null, '广州萝岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10395', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440183', '广东省广州市增城市', '增城市', null, null, '广州增城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10396', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '020', '440184', '广东省广州市从化市', '从化市', null, null, '广州从化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10397', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440203', '广东省韶关市武江区', '武江区', null, null, '韶关武江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10398', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440204', '广东省韶关市浈江区', '浈江区', null, null, '韶关浈江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10399', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440205', '广东省韶关市曲江区', '曲江区', null, null, '韶关曲江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10400', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440222', '广东省韶关市始兴县', '始兴县', null, null, '韶关始兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10401', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440224', '广东省韶关市仁化县', '仁化县', null, null, '韶关仁化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10402', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440229', '广东省韶关市翁源县', '翁源县', null, null, '韶关翁源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10403', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440232', '广东省韶关市乳源瑶族自治县', '乳源', null, null, '韶关乳源瑶族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10404', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440233', '广东省韶关市新丰县', '新丰县', null, null, '韶关新丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10405', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440281', '广东省韶关市乐昌市', '乐昌市', null, null, '韶关乐昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10406', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0751', '440282', '广东省韶关市南雄市', '南雄市', null, null, '韶关南雄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10407', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440303', '广东省深圳市罗湖区', '罗湖区', null, null, '深圳罗湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10408', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440304', '广东省深圳市福田区', '福田区', null, null, '深圳福田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10409', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440305', '广东省深圳市南山区', '南山区', null, null, '深圳南山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10410', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440306', '广东省深圳市宝安区', '宝安区', null, null, '深圳宝安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10411', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440307', '广东省深圳市龙岗区', '龙岗区', null, null, '深圳龙岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10412', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0755', '440308', '广东省深圳市盐田区', '盐田区', null, null, '深圳盐田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10413', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0756', '440402', '广东省珠海市香洲区', '香洲区', null, null, '珠海香洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10414', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0756', '440403', '广东省珠海市斗门区', '斗门区', null, null, '珠海斗门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10415', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0756', '440404', '广东省珠海市金湾区', '金湾区', null, null, '珠海金湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10416', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440507', '广东省汕头市龙湖区', '龙湖区', null, null, '汕头龙湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10417', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440511', '广东省汕头市金平区', '金平区', null, null, '汕头金平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10418', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440512', '广东省汕头市濠江区', '濠江区', null, null, '汕头濠江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10419', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0661', '440513', '广东省汕头市潮阳区', '潮阳区', null, null, '汕头潮阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10420', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440514', '广东省汕头市潮南区', '潮南区', null, null, '汕头潮南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10421', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440515', '广东省汕头市澄海区', '澄海区', null, null, '汕头澄海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10422', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0754', '440523', '广东省汕头市南澳县', '南澳县', null, null, '汕头南澳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10423', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0757', '440604', '广东省佛山市禅城区', '禅城区', null, null, '佛山禅城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10424', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0757', '440605', '广东省佛山市南海区', '南海区', null, null, '佛山南海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10425', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0765', '440606', '广东省佛山市顺德区', '顺德区', null, null, '佛山顺德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10426', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0757', '440607', '广东省佛山市三水区', '三水区', null, null, '佛山三水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10427', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0757', '440608', '广东省佛山市高明区', '高明区', null, null, '佛山高明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10428', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440703', '广东省江门市蓬江区', '蓬江区', null, null, '江门蓬江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10429', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440704', '广东省江门市江海区', '江海区', null, null, '江门江海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10430', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440705', '广东省江门市新会区', '新会区', null, null, '江门新会', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10431', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440781', '广东省江门市台山市', '台山市', null, null, '江门台山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10432', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440783', '广东省江门市开平市', '开平市', null, null, '江门开平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10433', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440784', '广东省江门市鹤山市', '鹤山市', null, null, '江门鹤山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10434', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0750', '440785', '广东省江门市恩平市', '恩平市', null, null, '江门恩平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10435', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440802', '广东省湛江市赤坎区', '赤坎区', null, null, '湛江赤坎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10436', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440803', '广东省湛江市霞山区', '霞山区', null, null, '湛江霞山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10437', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440804', '广东省湛江市坡头区', '坡头区', null, null, '湛江坡头', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10438', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440811', '广东省湛江市麻章区', '麻章区', null, null, '湛江麻章', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10439', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440823', '广东省湛江市遂溪县', '遂溪县', null, null, '湛江遂溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10440', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440825', '广东省湛江市徐闻县', '徐闻县', null, null, '湛江徐闻', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10441', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440881', '广东省湛江市廉江市', '廉江市', null, null, '湛江廉江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10442', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440882', '广东省湛江市雷州市', '雷州市', null, null, '湛江雷州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10443', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0759', '440883', '广东省湛江市吴川市', '吴川市', null, null, '湛江吴川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10444', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440902', '广东省茂名市茂南区', '茂南区', null, null, '茂名茂南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10445', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440903', '广东省茂名市茂港区', '茂港区', null, null, '茂名茂港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10446', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440923', '广东省茂名市电白县', '电白县', null, null, '茂名电白', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10447', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440981', '广东省茂名市高州市', '高州市', null, null, '茂名高州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10448', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440982', '广东省茂名市化州市', '化州市', null, null, '茂名化州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10449', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0668', '440983', '广东省茂名市信宜市', '信宜市', null, null, '茂名信宜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10450', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441202', '广东省肇庆市端州区', '端州区', null, null, '肇庆端州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10451', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441203', '广东省肇庆市鼎湖区', '鼎湖区', null, null, '肇庆鼎湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10452', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441223', '广东省肇庆市广宁县', '广宁县', null, null, '肇庆广宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10453', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441224', '广东省肇庆市怀集县', '怀集县', null, null, '肇庆怀集', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10454', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441225', '广东省肇庆市封开县', '封开县', null, null, '肇庆封开', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10455', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441226', '广东省肇庆市德庆县', '德庆县', null, null, '肇庆德庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10456', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441283', '广东省肇庆市高要市', '高要市', null, null, '肇庆高要', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10457', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0758', '441284', '广东省肇庆市四会市', '四会市', null, null, '肇庆四会', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10458', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441302', '广东省惠州市惠城区', '惠城区', null, null, '惠州惠城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10459', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441303', '广东省惠州市惠阳区', '惠阳区', null, null, '惠州惠阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10460', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441322', '广东省惠州市博罗县', '博罗县', null, null, '惠州博罗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10461', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441323', '广东省惠州市惠东县', '惠东县', null, null, '惠州惠东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10462', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0752', '441324', '广东省惠州市龙门县', '龙门县', null, null, '惠州龙门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10463', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441402', '广东省梅州市梅江区', '梅江区', null, null, '梅州梅江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10464', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441421', '广东省梅州市梅县', '梅县', null, null, '梅州梅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10465', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441422', '广东省梅州市大埔县', '大埔县', null, null, '梅州大埔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10466', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441423', '广东省梅州市丰顺县', '丰顺县', null, null, '梅州丰顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10467', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441424', '广东省梅州市五华县', '五华县', null, null, '梅州五华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10468', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441426', '广东省梅州市平远县', '平远县', null, null, '梅州平远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10469', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441427', '广东省梅州市蕉岭县', '蕉岭县', null, null, '梅州蕉岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10470', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0753', '441481', '广东省梅州市兴宁市', '兴宁市', null, null, '梅州兴宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10471', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0660', '441502', '广东省汕尾市城区', '城区', null, null, '汕尾城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10472', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0660', '441521', '广东省汕尾市海丰县', '海丰县', null, null, '汕尾海丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10473', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0660', '441523', '广东省汕尾市陆河县', '陆河县', null, null, '汕尾陆河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10474', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0660', '441581', '广东省汕尾市陆丰市', '陆丰市', null, null, '汕尾陆丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10475', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441602', '广东省河源市源城区', '源城区', null, null, '河源源城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10476', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441621', '广东省河源市紫金县', '紫金县', null, null, '河源紫金', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10477', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441622', '广东省河源市龙川县', '龙川县', null, null, '河源龙川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10478', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441623', '广东省河源市连平县', '连平县', null, null, '河源连平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10479', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441624', '广东省河源市和平县', '和平县', null, null, '河源和平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10480', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0762', '441625', '广东省河源市东源县', '东源县', null, null, '河源东源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10481', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0662', '441702', '广东省阳江市江城区', '江城区', null, null, '阳江江城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10482', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0662', '441721', '广东省阳江市阳西县', '阳西县', null, null, '阳江阳西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10483', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0662', '441723', '广东省阳江市阳东县', '阳东县', null, null, '阳江阳东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10484', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0662', '441781', '广东省阳江市阳春市', '阳春市', null, null, '阳江阳春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10485', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441802', '广东省清远市清城区', '清城区', null, null, '清远清城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10486', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441821', '广东省清远市佛冈县', '佛冈县', null, null, '清远佛冈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10487', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441823', '广东省清远市阳山县', '阳山县', null, null, '清远阳山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10488', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441825', '广东省清远市连山壮族瑶族自治县', '连山', null, null, '清远连\r\n\r\n山壮族瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10489', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441826', '广东省清远市连南瑶族自治县', '连南', null, null, '清远连南瑶族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10490', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441827', '广东省清远市清新县', '清新县', null, null, '清远清新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10491', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441881', '广东省清远市英德市', '英德市', null, null, '清远英德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10492', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0763', '441882', '广东省清远市连州市', '连州市', null, null, '清远连州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10493', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0769', '441901', '广东省东莞市东莞市', '东莞市', null, null, '东莞东莞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10494', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0760', '442001', '广东省中山市中山市', '中山市', null, null, '中山中山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10495', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0768', '445102', '广东省潮州市湘桥区', '湘桥区', null, null, '潮州湘桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10496', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0768', '445121', '广东省潮州市潮安县', '潮安县', null, null, '潮州潮安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10497', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0768', '445122', '广东省潮州市饶平县', '饶平县', null, null, '潮州饶平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10498', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445202', '广东省揭阳市榕城区', '榕城区', null, null, '揭阳榕城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10499', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445221', '广东省揭阳市揭东县', '揭东县', null, null, '揭阳揭东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10500', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445222', '广东省揭阳市揭西县', '揭西县', null, null, '揭阳揭西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10501', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445224', '广东省揭阳市惠来县', '惠来县', null, null, '揭阳惠来', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10502', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0663', '445281', '广东省揭阳市普宁市', '普宁市', null, null, '揭阳普宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10503', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445302', '广东省云浮市云城区', '云城区', null, null, '云浮云城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10504', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445321', '广东省云浮市新兴县', '新兴县', null, null, '云浮新兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10505', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445322', '广东省云浮市郁南县', '郁南县', null, null, '云浮郁南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10506', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445323', '广东省云浮市云安县', '云安县', null, null, '云浮云安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10507', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0766', '445381', '广东省云浮市罗定市', '罗定市', null, null, '云浮罗定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10508', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450102', '广西壮族自治区南宁市兴宁区', '兴宁区', null, null, '南宁兴宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10509', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450103', '广西壮族自治区南宁市青秀区', '青秀区', null, null, '南宁青秀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10510', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450105', '广西壮族自治区南宁市江南区', '江南区', null, null, '南宁江南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10511', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450107', '广西壮族自治区南宁市西乡塘区', '西乡塘区', null, null, '南宁西乡塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10512', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450108', '广西壮族自治区南宁市良庆区', '良庆区', null, null, '南宁良庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10513', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450109', '广西壮族自治区南宁市邕宁区', '邕宁区', null, null, '南宁邕宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10514', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450122', '广西壮族自治区南宁市武鸣县', '武鸣县', null, null, '南宁武鸣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10515', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450123', '广西壮族自治区南宁市隆安县', '隆安县', null, null, '南宁隆安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10516', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450124', '广西壮族自治区南宁市马山县', '马山县', null, null, '南宁马山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10517', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450125', '广西壮族自治区南宁市上林县', '上林县', null, null, '南宁上林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10518', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450126', '广西壮族自治区南宁市宾阳县', '宾阳县', null, null, '南宁宾阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10519', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '450127', '广西壮族自治区南宁市横县', '横县', null, null, '南宁横', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10520', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450202', '广西壮族自治区柳州市城中区', '城中区', null, null, '柳州城中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10521', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450203', '广西壮族自治区柳州市鱼峰区', '鱼峰区', null, null, '柳州鱼峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10522', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450204', '广西壮族自治区柳州市柳南区', '柳南区', null, null, '柳州柳南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10523', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450205', '广西壮族自治区柳州市柳北区', '柳北区', null, null, '柳州柳北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10524', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450221', '广西壮族自治区柳州市柳江县', '柳江县', null, null, '柳州柳江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10525', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450222', '广西壮族自治区柳州市柳城县', '柳城县', null, null, '柳州柳城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10526', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450223', '广西壮族自治区柳州市鹿寨县', '鹿寨县', null, null, '柳州鹿寨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10527', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450224', '广西壮族自治区柳州市融安县', '融安县', null, null, '柳州融安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10528', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450225', '广西壮族自治区柳州市融水苗族自治县', '融水', null, null, '柳州融\r\n\r\n水苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10529', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '450226', '广西壮族自治区柳州市三江侗族自治县', '三江', null, null, '柳州三\r\n\r\n江侗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10530', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450302', '广西壮族自治区桂林市秀峰区', '秀峰区', null, null, '桂林秀峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10531', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450303', '广西壮族自治区桂林市叠彩区', '叠彩区', null, null, '桂林叠彩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10532', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450304', '广西壮族自治区桂林市象山区', '象山区', null, null, '桂林象山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10533', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450305', '广西壮族自治区桂林市七星区', '七星区', null, null, '桂林七星', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10534', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450311', '广西壮族自治区桂林市雁山区', '雁山区', null, null, '桂林雁山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10535', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450321', '广西壮族自治区桂林市阳朔县', '阳朔县', null, null, '桂林阳朔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10536', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450322', '广西壮族自治区桂林市临桂县', '临桂县', null, null, '桂林临桂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10537', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450323', '广西壮族自治区桂林市灵川县', '灵川县', null, null, '桂林灵川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10538', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450324', '广西壮族自治区桂林市全州县', '全州县', null, null, '桂林全州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10539', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450325', '广西壮族自治区桂林市兴安县', '兴安县', null, null, '桂林兴安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10540', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450326', '广西壮族自治区桂林市永福县', '永福县', null, null, '桂林永福', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10541', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450327', '广西壮族自治区桂林市灌阳县', '灌阳县', null, null, '桂林灌阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10542', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450328', '广西壮族自治区桂林市龙胜各族自治县', '龙胜', null, null, '桂林龙\r\n\r\n胜各族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10543', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450329', '广西壮族自治区桂林市资源县', '资源县', null, null, '桂林资源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10544', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450330', '广西壮族自治区桂林市平乐县', '平乐县', null, null, '桂林平乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10545', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '773', '450331', '广西壮族自治区桂林市荔浦县', '荔浦县', null, null, '桂林荔浦县', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10546', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0773', '450332', '广西壮族自治区桂林市恭城瑶族自治县', '恭城', null, null, '桂林恭\r\n\r\n城瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10547', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450403', '广西壮族自治区梧州市万秀区', '万秀区', null, null, '梧州万秀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10548', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450404', '广西壮族自治区梧州市蝶山区', '蝶山区', null, null, '梧州蝶山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10549', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450405', '广西壮族自治区梧州市长洲区', '长洲区', null, null, '梧州长洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10550', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450421', '广西壮族自治区梧州市苍梧县', '苍梧县', null, null, '梧州苍梧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10551', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450422', '广西壮族自治区梧州市藤县', '藤县', null, null, '梧州藤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10552', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450423', '广西壮族自治区梧州市蒙山县', '蒙山县', null, null, '梧州蒙山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10553', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '450481', '广西壮族自治区梧州市岑溪市', '岑溪市', null, null, '梧州岑溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10554', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0779', '450502', '广西壮族自治区北海市海城区', '海城区', null, null, '北海海城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10555', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0779', '450503', '广西壮族自治区北海市银海区', '银海区', null, null, '北海银海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10556', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0779', '450512', '广西壮族自治区北海市铁山港区', '铁山港区', null, null, '北海铁山港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10557', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0779', '450521', '广西壮族自治区北海市合浦县', '合浦县', null, null, '北海合浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10558', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0770', '450602', '广西壮族自治区防城港市港口区', '港口区', null, null, '防城港港口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10559', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0770', '450603', '广西壮族自治区防城港市防城区', '防城区', null, null, '防城港防城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10560', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0770', '450621', '广西壮族自治区防城港市上思县', '上思县', null, null, '防城港上思', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10561', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0770', '450681', '广西壮族自治区防城港市东兴市', '东兴市', null, null, '防城港东兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10562', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0777', '450702', '广西壮族自治区钦州市钦南区', '钦南区', null, null, '钦州钦南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10563', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0777', '450703', '广西壮族自治区钦州市钦北区', '钦北区', null, null, '钦州钦北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10564', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0777', '450721', '广西壮族自治区钦州市灵山县', '灵山县', null, null, '钦州灵山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10565', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0777', '450722', '广西壮族自治区钦州市浦北县', '浦北县', null, null, '钦州浦北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10566', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450802', '广西壮族自治区贵港市港北区', '港北区', null, null, '贵港港北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10567', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450803', '广西壮族自治区贵港市港南区', '港南区', null, null, '贵港港南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10568', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450804', '广西壮族自治区贵港市覃塘区', '覃塘区', null, null, '贵港覃塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10569', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450821', '广西壮族自治区贵港市平南县', '平南县', null, null, '贵港平南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10570', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450881', '广西壮族自治区贵港市桂平市', '桂平市', null, null, '贵港桂平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10571', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450902', '广西壮族自治区玉林市玉州区', '玉州区', null, null, '玉林玉州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10572', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450921', '广西壮族自治区玉林市容县', '容县', null, null, '玉林容', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10573', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450922', '广西壮族自治区玉林市陆川县', '陆川县', null, null, '玉林陆川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10574', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450923', '广西壮族自治区玉林市博白县', '博白县', null, null, '玉林博白', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10575', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450924', '广西壮族自治区玉林市兴业县', '兴业县', null, null, '玉林兴业', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10576', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0775', '450981', '广西壮族自治区玉林市北流市', '北流市', null, null, '玉林北流', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10577', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451002', '广西壮族自治区百色市右江区', '右江区', null, null, '百色右江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10578', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451021', '广西壮族自治区百色市田阳县', '田阳县', null, null, '百色田阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10579', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451022', '广西壮族自治区百色市田东县', '田东县', null, null, '百色田东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10580', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451023', '广西壮族自治区百色市平果县', '平果县', null, null, '百色平果', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10581', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451024', '广西壮族自治区百色市德保县', '德保县', null, null, '百色德保', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10582', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451025', '广西壮族自治区百色市靖西县', '靖西县', null, null, '百色靖西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10583', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451026', '广西壮族自治区百色市那坡县', '那坡县', null, null, '百色那坡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10584', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451027', '广西壮族自治区百色市凌云县', '凌云县', null, null, '百色凌云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10585', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451028', '广西壮族自治区百色市乐业县', '乐业县', null, null, '百色乐业', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10586', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451029', '广西壮族自治区百色市田林县', '田林县', null, null, '百色田林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10587', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451030', '广西壮族自治区百色市西林县', '西林县', null, null, '百色西林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10588', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0776', '451031', '广西壮族自治区百色市隆林各族自治县', '隆林', null, null, '百色隆\r\n\r\n林各族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10589', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451102', '广西壮族自治区贺州市八步区', '八步区', null, null, '贺州八步', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10590', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451119', '广西壮族自治区贺州市平桂管理区', '平桂管理区', null, null, '贺州平桂管理', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10591', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451121', '广西壮族自治区贺州市昭平县', '昭平县', null, null, '贺州昭平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10592', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451122', '广西壮族自治区贺州市钟山县', '钟山县', null, null, '贺州钟山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10593', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0774', '451123', '广西壮族自治区贺州市富川瑶族自治县', '富川', null, null, '贺州富\r\n\r\n川瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10594', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451202', '广西壮族自治区河池市金城江区', '金城江区', null, null, '河池金城江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10595', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451221', '广西壮族自治区河池市南丹县', '南丹县', null, null, '河池南丹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10596', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451222', '广西壮族自治区河池市天峨县', '天峨县', null, null, '河池天峨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10597', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451223', '广西壮族自治区河池市凤山县', '凤山县', null, null, '河池凤山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10598', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451224', '广西壮族自治区河池市东兰县', '东兰县', null, null, '河池东兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10599', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451225', '广西壮族自治区河池市罗城仫佬族自治县', '罗城', null, null, '河池\r\n\r\n罗城仫佬族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10600', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451226', '广西壮族自治区河池市环江毛南族自治县', '环江', null, null, '河池\r\n\r\n环江毛南族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10601', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451227', '广西壮族自治区河池市巴马瑶族自治县', '巴马', null, null, '河池巴\r\n\r\n马瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10602', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451228', '广西壮族自治区河池市都安瑶族自治县', '都安', null, null, '河池都\r\n\r\n安瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10603', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451229', '广西壮族自治区河池市大化瑶族自治县', '大化', null, null, '河池大\r\n\r\n化瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10604', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0778', '451281', '广西壮族自治区河池市宜州市', '宜州市', null, null, '河池宜州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10605', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451302', '广西壮族自治区来宾市兴宾区', '兴宾区', null, null, '来宾兴宾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10606', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451321', '广西壮族自治区来宾市忻城县', '忻城县', null, null, '来宾忻城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10607', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451322', '广西壮族自治区来宾市象州县', '象州县', null, null, '来宾象州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10608', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451323', '广西壮族自治区来宾市武宣县', '武宣县', null, null, '来宾武宣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10609', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451324', '广西壮族自治区来宾市金秀瑶族自治县', '金秀', null, null, '来宾金\r\n\r\n秀瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10610', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0772', '451381', '广西壮族自治区来宾市合山市', '合山市', null, null, '来宾合山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10611', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451402', '广西壮族自治区崇左市江洲区', '江洲区', null, null, '崇左江洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10612', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451421', '广西壮族自治区崇左市扶绥县', '扶绥县', null, null, '崇左扶绥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10613', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451422', '广西壮族自治区崇左市宁明县', '宁明县', null, null, '崇左宁明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10614', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451423', '广西壮族自治区崇左市龙州县', '龙州县', null, null, '崇左龙州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10615', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451424', '广西壮族自治区崇左市大新县', '大新县', null, null, '崇左大新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10616', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451425', '广西壮族自治区崇左市天等县', '天等县', null, null, '崇左天等', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10617', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0771', '451481', '广西壮族自治区崇左市凭祥市', '凭祥市', null, null, '崇左凭祥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10618', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460105', '海南省海口市秀英区', '秀英区', null, null, '海口秀英', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10619', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460106', '海南省海口市龙华区', '龙华区', null, null, '海口龙华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10620', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460107', '海南省海口市琼山区', '琼山区', null, null, '海口琼山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10621', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '460108', '海南省海口市美兰区', '美兰区', null, null, '海口美兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10622', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0899', '460201', '海南省三亚市三亚市', '三亚市', null, null, '三亚三亚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10626', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469001', '海南省省直辖五指山市', '五指山市', null, null, '五指山', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10627', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469002', '海南省省直辖琼海市', '琼海市', null, null, '琼海', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10628', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0890', '469003', '海南省省直辖儋州市', '儋州市', null, null, '儋州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10629', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469005', '海南省省直辖文昌市', '文昌市', null, null, '文昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10630', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469006', '海南省省直辖万宁市', '万宁市', null, null, '万宁', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10631', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469007', '海南省省直辖东方市', '东方市', null, null, '东方', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10632', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469021', '海南省省直辖定安县', '定安县', null, null, '定安', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10633', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469022', '海南省省直辖屯昌县', '屯昌县', null, null, '屯昌', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10634', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469023', '海南省省直辖澄迈县', '澄迈县', null, null, '澄迈', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10635', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469024', '海南省省直辖临高县', '临高县', null, null, '临高', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10636', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469025', '海南省省直辖白沙黎族自治县', '白沙黎族自治县', null, null, '白沙', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10637', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469026', '海南省省直辖昌江黎族自治县', '昌江黎族自治县', null, null, '昌江', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10638', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469027', '海南省省直辖乐东黎族自治县', '乐东黎族自治县', null, null, '乐东', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10639', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469028', '海南省省直辖陵水黎族自治县', '陵水黎族自治县', null, null, '陵水', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10640', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469029', '海南省省直辖保亭黎族苗族自治县', '保亭黎族苗族自治县', null, null, '保亭', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10641', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '469030', '海南省省直辖琼中黎族苗族自治县', '琼中黎族苗族自治县', null, null, '琼中', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('10680', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320584', '江苏省苏州市吴江区', '吴江区', null, null, '苏州吴江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10681', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320581', '江苏省苏州市常熟市', '常熟市', null, null, '苏州常熟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10682', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320582', '江苏省苏州市张家港市', '张家港市', null, null, '苏州张家港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10683', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320583', '江苏省苏州市昆山市', '昆山市', null, null, '苏州昆山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10684', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0512', '320585', '江苏省苏州市太仓市', '太仓市', null, null, '苏州太仓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10685', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320602', '江苏省南通市崇川区', '崇川区', null, null, '南通崇川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10686', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320611', '江苏省南通市港闸区', '港闸区', null, null, '南通港闸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10687', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320612', '江苏省南通市通州区', '通州区', null, null, '南通通州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10688', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320621', '江苏省南通市海安县', '海安县', null, null, '南通海安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10689', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320623', '江苏省南通市如东县', '如东县', null, null, '南通如东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10690', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320681', '江苏省南通市启东市', '启东市', null, null, '南通启东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10691', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320682', '江苏省南通市如皋市', '如皋市', null, null, '南通如皋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10692', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0513', '320684', '江苏省南通市海门市', '海门市', null, null, '南通海门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10693', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320703', '江苏省连云港市连云区', '连云区', null, null, '连云港连云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10694', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320705', '江苏省连云港市新浦区', '新浦区', null, null, '连云港新浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10695', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320706', '江苏省连云港市海州区', '海州区', null, null, '连云港海州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10696', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320721', '江苏省连云港市赣榆县', '赣榆县', null, null, '连云港赣榆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10697', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320722', '江苏省连云港市东海县', '东海县', null, null, '连云港东海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10698', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320723', '江苏省连云港市灌云县', '灌云县', null, null, '连云港灌云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10699', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0518', '320724', '江苏省连云港市灌南县', '灌南县', null, null, '连云港灌南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10700', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320802', '江苏省淮安市清河区', '清河区', null, null, '淮安清河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10701', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320803', '江苏省淮安市淮安区', '淮安区', null, null, '淮安淮安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10702', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320804', '江苏省淮安市淮阴区', '淮阴区', null, null, '淮安淮阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10703', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320811', '江苏省淮安市青浦区', '青浦区', null, null, '淮安青浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10704', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320826', '江苏省淮安市涟水县', '涟水县', null, null, '淮安涟水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10705', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320829', '江苏省淮安市洪泽县', '洪泽县', null, null, '淮安洪泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10706', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320830', '江苏省淮安市盱眙县', '盱眙县', null, null, '淮安盱眙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10707', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0517', '320831', '江苏省淮安市金湖县', '金湖县', null, null, '淮安金湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10708', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320902', '江苏省盐城市亭湖区', '亭湖区', null, null, '盐城亭湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10709', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320903', '江苏省盐城市盐都区', '盐都区', null, null, '盐城盐都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10710', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320921', '江苏省盐城市响水县', '响水县', null, null, '盐城响水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10711', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320922', '江苏省盐城市滨海县', '滨海县', null, null, '盐城滨海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10712', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320923', '江苏省盐城市阜宁县', '阜宁县', null, null, '盐城阜宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10713', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320924', '江苏省盐城市射阳县', '射阳县', null, null, '盐城射阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10714', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320925', '江苏省盐城市建湖县', '建湖县', null, null, '盐城建湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10715', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320981', '江苏省盐城市东台市', '东台市', null, null, '盐城东台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10716', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0515', '320982', '江苏省盐城市大丰市', '大丰市', null, null, '盐城大丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10717', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321002', '江苏省扬州市广陵区', '广陵区', null, null, '扬州广陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10718', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321003', '江苏省扬州市邗江区', '邗江区', null, null, '扬州邗江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10719', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321088', '江苏省扬州市江都市', '江都市', null, null, '扬州江都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10720', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321023', '江苏省扬州市宝应县', '宝应县', null, null, '扬州宝应', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10721', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321081', '江苏省扬州市仪征市', '仪征市', null, null, '扬州仪征', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10722', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0514', '321084', '江苏省扬州市高邮市', '高邮市', null, null, '扬州高邮', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10723', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321102', '江苏省镇江市京口区', '京口区', null, null, '镇江京口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10724', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321111', '江苏省镇江市润州区', '润州区', null, null, '镇江润州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10725', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321112', '江苏省镇江市丹徒区', '丹徒区', null, null, '镇江丹徒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10726', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321181', '江苏省镇江市丹阳市', '丹阳市', null, null, '镇江丹阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10727', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321182', '江苏省镇江市扬中市', '扬中市', null, null, '镇江扬中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10728', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0511', '321183', '江苏省镇江市句容市', '句容市', null, null, '镇江句容', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10729', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321202', '江苏省泰州市海陵区', '海陵区', null, null, '泰州海陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10730', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321203', '江苏省泰州市高港区', '高港区', null, null, '泰州高港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10731', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321281', '江苏省泰州市兴化市', '兴化市', null, null, '泰州兴化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10732', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321282', '江苏省泰州市靖江市', '靖江市', null, null, '泰州靖江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10733', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321283', '江苏省泰州市泰兴市', '泰兴市', null, null, '泰州泰兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10734', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0523', '321284', '江苏省泰州市姜堰市', '姜堰市', null, null, '泰州姜堰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10735', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321302', '江苏省宿迁市宿城区', '宿城区', null, null, '宿迁宿城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10736', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321311', '江苏省宿迁市宿豫区', '宿豫区', null, null, '宿迁宿豫', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10737', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321322', '江苏省宿迁市沭阳县', '沭阳县', null, null, '宿迁沭阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10738', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321323', '江苏省宿迁市泗阳县', '泗阳县', null, null, '宿迁泗阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10739', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0527', '321324', '江苏省宿迁市泗洪县', '泗洪县', null, null, '宿迁泗洪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10740', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330102', '浙江省杭州市上城区', '上城区', null, null, '杭州上城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10741', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330103', '浙江省杭州市下城区', '下城区', null, null, '杭州下城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10742', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330104', '浙江省杭州市江干区', '江干区', null, null, '杭州江干', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10743', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330105', '浙江省杭州市拱墅区', '拱墅区', null, null, '杭州拱墅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10744', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330106', '浙江省杭州市西湖区', '西湖区', null, null, '杭州西湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10745', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330108', '浙江省杭州市滨江区', '滨江区', null, null, '杭州滨江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10746', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330109', '浙江省杭州市萧山区', '萧山区', null, null, '杭州萧山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10747', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330110', '浙江省杭州市余杭区', '余杭区', null, null, '杭州余杭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10748', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330122', '浙江省杭州市桐庐县', '桐庐县', null, null, '杭州桐庐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10749', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330127', '浙江省杭州市淳安县', '淳安县', null, null, '杭州淳安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10750', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330182', '浙江省杭州市建德市', '建德市', null, null, '杭州建德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10751', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330183', '浙江省杭州市富阳市', '富阳市', null, null, '杭州富阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10752', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0571', '330185', '浙江省杭州市临安市', '临安市', null, null, '杭州临安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10753', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330203', '浙江省宁波市海曙区', '海曙区', null, null, '宁波海曙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10754', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330204', '浙江省宁波市江东区', '江东区', null, null, '宁波江东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10755', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330205', '浙江省宁波市江北区', '江北区', null, null, '宁波江北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10756', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330206', '浙江省宁波市北仑区', '北仑区', null, null, '宁波北仑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10757', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330211', '浙江省宁波市镇海区', '镇海区', null, null, '宁波镇海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10758', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330212', '浙江省宁波市鄞州区', '鄞州区', null, null, '宁波鄞州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10759', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330225', '浙江省宁波市象山县', '象山县', null, null, '宁波象山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10760', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330226', '浙江省宁波市宁海县', '宁海县', null, null, '宁波宁海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10761', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330281', '浙江省宁波市余姚市', '余姚市', null, null, '宁波余姚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10762', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330282', '浙江省宁波市慈溪市', '慈溪市', null, null, '宁波慈溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10763', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0574', '330283', '浙江省宁波市奉化市', '奉化市', null, null, '宁波奉化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10764', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330302', '浙江省温州市鹿城区', '鹿城区', null, null, '温州鹿城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10765', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330303', '浙江省温州市龙湾区', '龙湾区', null, null, '温州龙湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10766', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330304', '浙江省温州市瓯海区', '瓯海区', null, null, '温州瓯海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10767', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330322', '浙江省温州市洞头县', '洞头县', null, null, '温州洞头', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10768', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330324', '浙江省温州市永嘉县', '永嘉县', null, null, '温州永嘉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10769', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330326', '浙江省温州市平阳县', '平阳县', null, null, '温州平阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10770', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330327', '浙江省温州市苍南县', '苍南县', null, null, '温州苍南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10771', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330328', '浙江省温州市文成县', '文成县', null, null, '温州文成', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10772', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330329', '浙江省温州市泰顺县', '泰顺县', null, null, '温州泰顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10773', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330381', '浙江省温州市瑞安市', '瑞安市', null, null, '温州瑞安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10774', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0577', '330382', '浙江省温州市乐清市', '乐清市', null, null, '温州乐清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10775', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330402', '浙江省嘉兴市南湖区', '南湖区', null, null, '嘉兴南湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10776', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330411', '浙江省嘉兴市秀洲区', '秀洲区', null, null, '嘉兴秀洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10777', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330421', '浙江省嘉兴市嘉善县', '嘉善县', null, null, '嘉兴嘉善', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10778', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330424', '浙江省嘉兴市海盐县', '海盐县', null, null, '嘉兴海盐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10779', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330481', '浙江省嘉兴市海宁市', '海宁市', null, null, '嘉兴海宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10780', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330482', '浙江省嘉兴市平湖市', '平湖市', null, null, '嘉兴平湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10781', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0573', '330483', '浙江省嘉兴市桐乡市', '桐乡市', null, null, '嘉兴桐乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10782', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330502', '浙江省湖州市吴兴区', '吴兴区', null, null, '湖州吴兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10783', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330503', '浙江省湖州市南浔区', '南浔区', null, null, '湖州南浔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10784', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330521', '浙江省湖州市德清县', '德清县', null, null, '湖州德清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10785', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330522', '浙江省湖州市长兴县', '长兴县', null, null, '湖州长兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10786', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0572', '330523', '浙江省湖州市安吉县', '安吉县', null, null, '湖州安吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10787', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330602', '浙江省绍兴市越城区', '越城区', null, null, '绍兴越城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10788', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330621', '浙江省绍兴市绍兴县', '绍兴县', null, null, '绍兴绍兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10789', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330624', '浙江省绍兴市新昌县', '新昌县', null, null, '绍兴新昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10790', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330681', '浙江省绍兴市诸暨市', '诸暨市', null, null, '绍兴诸暨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10791', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330682', '浙江省绍兴市上虞市', '上虞市', null, null, '绍兴上虞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10792', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0575', '330683', '浙江省绍兴市嵊州市', '嵊州市', null, null, '绍兴嵊州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10793', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330702', '浙江省金华市婺城区', '婺城区', null, null, '金华婺城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10794', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330703', '浙江省金华市金东区', '金东区', null, null, '金华金东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10795', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330723', '浙江省金华市武义县', '武义县', null, null, '金华武义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10796', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330726', '浙江省金华市浦江县', '浦江县', null, null, '金华浦江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10797', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330727', '浙江省金华市磐安县', '磐安县', null, null, '金华磐安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10798', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330781', '浙江省金华市兰溪市', '兰溪市', null, null, '金华兰溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10799', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330782', '浙江省金华市义乌市', '义乌市', null, null, '金华义乌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10800', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330783', '浙江省金华市东阳市', '东阳市', null, null, '金华东阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10801', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0579', '330784', '浙江省金华市永康市', '永康市', null, null, '金华永康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10802', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330802', '浙江省衢州市柯城区', '柯城区', null, null, '衢州柯城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10803', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330803', '浙江省衢州市衢江区', '衢江区', null, null, '衢州衢江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10804', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330822', '浙江省衢州市常山县', '常山县', null, null, '衢州常山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10805', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330824', '浙江省衢州市开化县', '开化县', null, null, '衢州开化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10806', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330825', '浙江省衢州市龙游县', '龙游县', null, null, '衢州龙游', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10807', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0570', '330881', '浙江省衢州市江山市', '江山市', null, null, '衢州江山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10808', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0580', '330902', '浙江省舟山市定海区', '定海区', null, null, '舟山定海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10809', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0580', '330903', '浙江省舟山市普陀区', '普陀区', null, null, '舟山普陀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10810', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0580', '330921', '浙江省舟山市岱山县', '岱山县', null, null, '舟山岱山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10811', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0580', '330922', '浙江省舟山市嵊泗县', '嵊泗县', null, null, '舟山嵊泗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10812', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331002', '浙江省台州市椒江区', '椒江区', null, null, '台州椒江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10813', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331003', '浙江省台州市黄岩区', '黄岩区', null, null, '台州黄岩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10814', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331004', '浙江省台州市路桥区', '路桥区', null, null, '台州路桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10815', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331021', '浙江省台州市玉环县', '玉环县', null, null, '台州玉环', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10816', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331022', '浙江省台州市三门县', '三门县', null, null, '台州三门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10817', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331023', '浙江省台州市天台县', '天台县', null, null, '台州天台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10818', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331024', '浙江省台州市仙居县', '仙居县', null, null, '台州仙居', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10819', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331081', '浙江省台州市温岭市', '温岭市', null, null, '台州温岭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10820', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0576', '331082', '浙江省台州市临海市', '临海市', null, null, '台州临海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10821', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331102', '浙江省丽水市莲都区', '莲都区', null, null, '丽水莲都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10822', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331121', '浙江省丽水市青田县', '青田县', null, null, '丽水青田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10823', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331122', '浙江省丽水市缙云县', '缙云县', null, null, '丽水缙云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10824', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331123', '浙江省丽水市遂昌县', '遂昌县', null, null, '丽水遂昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10825', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331124', '浙江省丽水市松阳县', '松阳县', null, null, '丽水松阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10826', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331125', '浙江省丽水市云和县', '云和县', null, null, '丽水云和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10827', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331126', '浙江省丽水市庆元县', '庆元县', null, null, '丽水庆元', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10828', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331127', '浙江省丽水市景宁畲族自治县', '景宁', null, null, '丽水景宁畲族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10829', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0578', '331181', '浙江省丽水市龙泉市', '龙泉市', null, null, '丽水龙泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10830', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340102', '安徽省合肥市瑶海区', '瑶海区', null, null, '合肥瑶海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10831', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340103', '安徽省合肥市庐阳区', '庐阳区', null, null, '合肥庐阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10832', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340104', '安徽省合肥市蜀山区', '蜀山区', null, null, '合肥蜀山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10833', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340111', '安徽省合肥市包河区', '包河区', null, null, '合肥包河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10834', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340121', '安徽省合肥市长丰县', '长丰县', null, null, '合肥长丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10835', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340122', '安徽省合肥市肥东县', '肥东县', null, null, '合肥肥东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10836', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340123', '安徽省合肥市肥西县', '肥西县', null, null, '合肥肥西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10837', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0551', '340124', '安徽省合肥市庐江县', '庐江县', null, null, '合肥庐江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10838', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0565', '340181', '安徽省合肥市巢湖市', '巢湖市', null, null, '合肥巢湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10839', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340202', '安徽省芜湖市镜湖区', '镜湖区', null, null, '芜湖镜湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10840', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340203', '安徽省芜湖市弋江区', '弋江区', null, null, '芜湖弋江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10841', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340207', '安徽省芜湖市鸠江区', '鸠江区', null, null, '芜湖鸠江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10842', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340208', '安徽省芜湖市三山区', '三山区', null, null, '芜湖三山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10843', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340221', '安徽省芜湖市芜湖县', '芜湖县', null, null, '芜湖芜湖', '1', null, null, '1997', '37');
INSERT INTO `basic_region` VALUES ('10844', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340222', '安徽省芜湖市繁昌县', '繁昌县', null, null, '芜湖繁昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10845', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340223', '安徽省芜湖市南陵县', '南陵县', null, null, '芜湖南陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10846', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0553', '340225', '安徽省芜湖市无为县', '无为县', null, null, '芜湖无为', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10847', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340302', '安徽省蚌埠市龙子湖区', '龙子湖区', null, null, '蚌埠龙子湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10848', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340303', '安徽省蚌埠市蚌山区', '蚌山区', null, null, '蚌埠蚌山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10849', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340304', '安徽省蚌埠市禹会区', '禹会区', null, null, '蚌埠禹会', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10850', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340311', '安徽省蚌埠市淮上区', '淮上区', null, null, '蚌埠淮上', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10851', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340321', '安徽省蚌埠市怀远县', '怀远县', null, null, '蚌埠怀远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10852', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340322', '安徽省蚌埠市五河县', '五河县', null, null, '蚌埠五河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10853', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0552', '340323', '安徽省蚌埠市固镇县', '固镇县', null, null, '蚌埠固镇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10854', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340402', '安徽省淮南市大通区', '大通区', null, null, '淮南大通', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10855', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340403', '安徽省淮南市田家庵区', '田家庵区', null, null, '淮南田家庵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10856', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340404', '安徽省淮南市谢家集区', '谢家集区', null, null, '淮南谢家集', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10857', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340405', '安徽省淮南市八公山区', '八公山区', null, null, '淮南八公山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10858', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340406', '安徽省淮南市潘集区', '潘集区', null, null, '淮南潘集', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10859', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0554', '340421', '安徽省淮南市凤台县', '凤台县', null, null, '淮南凤台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10860', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340503', '安徽省马鞍山市花山区', '花山区', null, null, '马鞍山花山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10861', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340504', '安徽省马鞍山市雨山区', '雨山区', null, null, '马鞍山雨山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10862', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340596', '安徽省马鞍山市博望区', '博望区', null, null, '马鞍山博望', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10863', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340521', '安徽省马鞍山市当涂县', '当涂县', null, null, '马鞍山当涂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10864', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340522', '安徽省马鞍山市含山县', '含山县', null, null, '马鞍山含山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10865', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0555', '340523', '安徽省马鞍山市和县', '和县', null, null, '马鞍山和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10866', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0561', '340602', '安徽省淮北市杜集区', '杜集区', null, null, '淮北杜集', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10867', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0561', '340603', '安徽省淮北市相山区', '相山区', null, null, '淮北相山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10868', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0561', '340604', '安徽省淮北市烈山区', '烈山区', null, null, '淮北烈山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10869', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0561', '340621', '安徽省淮北市濉溪县', '濉溪县', null, null, '淮北濉溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10870', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0562', '340702', '安徽省铜陵市铜官山区', '铜官山区', null, null, '铜陵铜官山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10871', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0562', '340703', '安徽省铜陵市狮子山区', '狮子山区', null, null, '铜陵狮子山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10872', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0562', '340711', '安徽省铜陵市郊区', '郊区', null, null, '铜陵郊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10873', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0562', '340721', '安徽省铜陵市铜陵县', '铜陵县', null, null, '铜陵铜陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10874', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340802', '安徽省安庆市迎江区', '迎江区', null, null, '安庆迎江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10875', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340803', '安徽省安庆市大观区', '大观区', null, null, '安庆大观', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10876', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340811', '安徽省安庆市宜秀区', '宜秀区', null, null, '安庆宜秀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10877', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340822', '安徽省安庆市怀宁县', '怀宁县', null, null, '安庆怀宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10878', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340823', '安徽省安庆市枞阳县', '枞阳县', null, null, '安庆枞阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10879', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340824', '安徽省安庆市潜山县', '潜山县', null, null, '安庆潜山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10880', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340825', '安徽省安庆市太湖县', '太湖县', null, null, '安庆太湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10881', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340826', '安徽省安庆市宿松县', '宿松县', null, null, '安庆宿松', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10882', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340827', '安徽省安庆市望江县', '望江县', null, null, '安庆望江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10883', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340828', '安徽省安庆市岳西县', '岳西县', null, null, '安庆岳西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10884', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0556', '340881', '安徽省安庆市桐城市', '桐城市', null, null, '安庆桐城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10885', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341002', '安徽省黄山市屯溪区', '屯溪区', null, null, '黄山屯溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10886', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341003', '安徽省黄山市黄山区', '黄山区', null, null, '黄山黄山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10887', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341004', '安徽省黄山市徽州区', '徽州区', null, null, '黄山徽州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10888', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341021', '安徽省黄山市歙县', '歙县', null, null, '黄山歙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10889', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341022', '安徽省黄山市休宁县', '休宁县', null, null, '黄山休宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10890', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341023', '安徽省黄山市黟县', '黟县', null, null, '黄山黟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10891', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0559', '341024', '安徽省黄山市祁门县', '祁门县', null, null, '黄山祁门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10892', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341102', '安徽省滁州市琅琊区', '琅琊区', null, null, '滁州琅琊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10893', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341103', '安徽省滁州市南谯区', '南谯区', null, null, '滁州南谯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10894', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341122', '安徽省滁州市来安县', '来安县', null, null, '滁州来安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10895', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341124', '安徽省滁州市全椒县', '全椒县', null, null, '滁州全椒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10896', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341125', '安徽省滁州市定远县', '定远县', null, null, '滁州定远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10897', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341126', '安徽省滁州市凤阳县', '凤阳县', null, null, '滁州凤阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10898', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341181', '安徽省滁州市天长市', '天长市', null, null, '滁州天长', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10899', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0550', '341182', '安徽省滁州市明光市', '明光市', null, null, '滁州明光', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10900', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341202', '安徽省阜阳市颍州区', '颍州区', null, null, '阜阳颍州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10901', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341203', '安徽省阜阳市颍东区', '颍东区', null, null, '阜阳颍东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10902', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341204', '安徽省阜阳市颍泉区', '颍泉区', null, null, '阜阳颍泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10903', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341221', '安徽省阜阳市临泉县', '临泉县', null, null, '阜阳临泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10904', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341222', '安徽省阜阳市太和县', '太和县', null, null, '阜阳太和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10905', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341225', '安徽省阜阳市阜南县', '阜南县', null, null, '阜阳阜南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10906', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341226', '安徽省阜阳市颍上县', '颍上县', null, null, '阜阳颍上', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10907', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341282', '安徽省阜阳市界首市', '界首市', null, null, '阜阳界首', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10908', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341302', '安徽省宿州市埇桥区', '埇桥区', null, null, '宿州埇桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10909', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341321', '安徽省宿州市砀山县', '砀山县', null, null, '宿州砀山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10910', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341322', '安徽省宿州市萧县', '萧县', null, null, '宿州萧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10911', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341323', '安徽省宿州市灵璧县', '灵璧县', null, null, '宿州灵璧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10912', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0557', '341324', '安徽省宿州市泗县', '泗县', null, null, '宿州泗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10913', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341502', '安徽省六安市金安区', '金安区', null, null, '六安金安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10914', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341503', '安徽省六安市裕安区', '裕安区', null, null, '六安裕安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10915', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341521', '安徽省六安市寿县', '寿县', null, null, '六安寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10916', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341522', '安徽省六安市霍邱县', '霍邱县', null, null, '六安霍邱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10917', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341523', '安徽省六安市舒城县', '舒城县', null, null, '六安舒城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10918', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341524', '安徽省六安市金寨县', '金寨县', null, null, '六安金寨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10919', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0564', '341525', '安徽省六安市霍山县', '霍山县', null, null, '六安霍山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10920', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341602', '安徽省亳州市谯城区', '谯城区', null, null, '亳州谯城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10921', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341621', '安徽省亳州市涡阳县', '涡阳县', null, null, '亳州涡阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10922', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341622', '安徽省亳州市蒙城县', '蒙城县', null, null, '亳州蒙城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10923', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0558', '341623', '安徽省亳州市利辛县', '利辛县', null, null, '亳州利辛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10924', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0566', '341702', '安徽省池州市贵池区', '贵池区', null, null, '池州贵池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10925', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0566', '341721', '安徽省池州市东至县', '东至县', null, null, '池州东至', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10926', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0566', '341722', '安徽省池州市石台县', '石台县', null, null, '池州石台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10927', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0566', '341723', '安徽省池州市青阳县', '青阳县', null, null, '池州青阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10928', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341802', '安徽省宣城市宣州区', '宣州区', null, null, '宣城宣州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10929', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341821', '安徽省宣城市郎溪县', '郎溪县', null, null, '宣城郎溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10930', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341822', '安徽省宣城市广德县', '广德县', null, null, '宣城广德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10931', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341823', '安徽省宣城市泾县', '泾县', null, null, '宣城泾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10932', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341824', '安徽省宣城市绩溪县', '绩溪县', null, null, '宣城绩溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10933', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341825', '安徽省宣城市旌德县', '旌德县', null, null, '宣城旌德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10934', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0563', '341881', '安徽省宣城市宁国市', '宁国市', null, null, '宣城宁国', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10935', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350102', '福建省福州市鼓楼区', '鼓楼区', null, null, '福州鼓楼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10936', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350103', '福建省福州市台江区', '台江区', null, null, '福州台江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10937', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350104', '福建省福州市仓山区', '仓山区', null, null, '福州仓山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10938', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350105', '福建省福州市马尾区', '马尾区', null, null, '福州马尾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10939', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350111', '福建省福州市晋安区', '晋安区', null, null, '福州晋安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10940', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350121', '福建省福州市闽侯县', '闽侯县', null, null, '福州闽侯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10941', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350122', '福建省福州市连江县', '连江县', null, null, '福州连江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10942', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350123', '福建省福州市罗源县', '罗源县', null, null, '福州罗源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10943', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350124', '福建省福州市闽清县', '闽清县', null, null, '福州闽清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10944', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350125', '福建省福州市永泰县', '永泰县', null, null, '福州永泰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10945', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350128', '福建省福州市平潭县', '平潭县', null, null, '福州平潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10946', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350181', '福建省福州市福清市', '福清市', null, null, '福州福清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10947', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0591', '350182', '福建省福州市长乐市', '长乐市', null, null, '福州长乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10948', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350203', '福建省厦门市思明区', '思明区', null, null, '厦门思明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10949', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350205', '福建省厦门市海沧区', '海沧区', null, null, '厦门海沧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10950', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350206', '福建省厦门市湖里区', '湖里区', null, null, '厦门湖里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10951', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350211', '福建省厦门市集美区', '集美区', null, null, '厦门集美', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10952', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350212', '福建省厦门市同安区', '同安区', null, null, '厦门同安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10953', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0592', '350213', '福建省厦门市翔安区', '翔安区', null, null, '厦门翔安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10954', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350302', '福建省莆田市城厢区', '城厢区', null, null, '莆田城厢', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10955', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350303', '福建省莆田市涵江区', '涵江区', null, null, '莆田涵江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10956', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350304', '福建省莆田市荔城区', '荔城区', null, null, '莆田荔城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10957', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350305', '福建省莆田市秀屿区', '秀屿区', null, null, '莆田秀屿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10958', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0594', '350322', '福建省莆田市仙游县', '仙游县', null, null, '莆田仙游', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10959', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350402', '福建省三明市梅列区', '梅列区', null, null, '三明梅列', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10960', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350403', '福建省三明市三元区', '三元区', null, null, '三明三元', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10961', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350421', '福建省三明市明溪县', '明溪县', null, null, '三明明溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10962', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350423', '福建省三明市清流县', '清流县', null, null, '三明清流', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10963', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350424', '福建省三明市宁化县', '宁化县', null, null, '三明宁化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10964', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350425', '福建省三明市大田县', '大田县', null, null, '三明大田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10965', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350426', '福建省三明市尤溪县', '尤溪县', null, null, '三明尤溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10966', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350427', '福建省三明市沙县', '沙县', null, null, '三明沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10967', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350428', '福建省三明市将乐县', '将乐县', null, null, '三明将乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10968', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350429', '福建省三明市泰宁县', '泰宁县', null, null, '三明泰宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10969', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350430', '福建省三明市建宁县', '建宁县', null, null, '三明建宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10970', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0598', '350481', '福建省三明市永安市', '永安市', null, null, '三明永安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10971', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350502', '福建省泉州市鲤城区', '鲤城区', null, null, '泉州鲤城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10972', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350503', '福建省泉州市丰泽区', '丰泽区', null, null, '泉州丰泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10973', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350504', '福建省泉州市洛江区', '洛江区', null, null, '泉州洛江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10974', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350505', '福建省泉州市泉港区', '泉港区', null, null, '泉州泉港', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10975', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350521', '福建省泉州市惠安县', '惠安县', null, null, '泉州惠安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10976', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350524', '福建省泉州市安溪县', '安溪县', null, null, '泉州安溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10977', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350525', '福建省泉州市永春县', '永春县', null, null, '泉州永春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10978', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350526', '福建省泉州市德化县', '德化县', null, null, '泉州德化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10979', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350527', '福建省泉州市金门县', '金门县', null, null, '泉州金门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10980', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350581', '福建省泉州市石狮市', '石狮市', null, null, '泉州石狮', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10981', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350582', '福建省泉州市晋江市', '晋江市', null, null, '泉州晋江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10982', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0595', '350583', '福建省泉州市南安市', '南安市', null, null, '泉州南安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10983', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350602', '福建省漳州市芗城区', '芗城区', null, null, '漳州芗城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10984', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350603', '福建省漳州市龙文区', '龙文区', null, null, '漳州龙文', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10985', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350622', '福建省漳州市云霄县', '云霄县', null, null, '漳州云霄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10986', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350623', '福建省漳州市漳浦县', '漳浦县', null, null, '漳州漳浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10987', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350624', '福建省漳州市诏安县', '诏安县', null, null, '漳州诏安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10988', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350625', '福建省漳州市长泰县', '长泰县', null, null, '漳州长泰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10989', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350626', '福建省漳州市东山县', '东山县', null, null, '漳州东山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10990', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350627', '福建省漳州市南靖县', '南靖县', null, null, '漳州南靖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10991', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350628', '福建省漳州市平和县', '平和县', null, null, '漳州平和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10992', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350629', '福建省漳州市华安县', '华安县', null, null, '漳州华安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10993', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0596', '350681', '福建省漳州市龙海市', '龙海市', null, null, '漳州龙海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10994', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350702', '福建省南平市延平区', '延平区', null, null, '南平延平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10995', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350721', '福建省南平市顺昌县', '顺昌县', null, null, '南平顺昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10996', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350722', '福建省南平市浦城县', '浦城县', null, null, '南平浦城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10997', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350723', '福建省南平市光泽县', '光泽县', null, null, '南平光泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10998', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350724', '福建省南平市松溪县', '松溪县', null, null, '南平松溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('10999', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350725', '福建省南平市政和县', '政和县', null, null, '南平政和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11000', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350781', '福建省南平市邵武市', '邵武市', null, null, '南平邵武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11001', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350782', '福建省南平市武夷山市', '武夷山市', null, null, '南平武夷山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11002', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350783', '福建省南平市建瓯市', '建瓯市', null, null, '南平建瓯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11003', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0599', '350784', '福建省南平市建阳市', '建阳市', null, null, '南平建阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11004', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350802', '福建省龙岩市新罗区', '新罗区', null, null, '龙岩新罗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11005', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350821', '福建省龙岩市长汀县', '长汀县', null, null, '龙岩长汀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11006', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350822', '福建省龙岩市永定县', '永定县', null, null, '龙岩永定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11007', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350823', '福建省龙岩市上杭县', '上杭县', null, null, '龙岩上杭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11008', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350824', '福建省龙岩市武平县', '武平县', null, null, '龙岩武平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11009', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350825', '福建省龙岩市连城县', '连城县', null, null, '龙岩连城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11010', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0597', '350881', '福建省龙岩市漳平市', '漳平市', null, null, '龙岩漳平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11011', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350902', '福建省宁德市蕉城区', '蕉城区', null, null, '宁德蕉城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11012', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350921', '福建省宁德市霞浦县', '霞浦县', null, null, '宁德霞浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11013', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350922', '福建省宁德市古田县', '古田县', null, null, '宁德古田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11014', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350923', '福建省宁德市屏南县', '屏南县', null, null, '宁德屏南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11015', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350924', '福建省宁德市寿宁县', '寿宁县', null, null, '宁德寿宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11016', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350925', '福建省宁德市周宁县', '周宁县', null, null, '宁德周宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11017', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350926', '福建省宁德市柘荣县', '柘荣县', null, null, '宁德柘荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11018', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350981', '福建省宁德市福安市', '福安市', null, null, '宁德福安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11019', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0593', '350982', '福建省宁德市福鼎市', '福鼎市', null, null, '宁德福鼎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11020', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360102', '江西省南昌市东湖区', '东湖区', null, null, '南昌东湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11021', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360103', '江西省南昌市西湖区', '西湖区', null, null, '南昌西湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11022', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360104', '江西省南昌市青云谱区', '青云谱区', null, null, '南昌青云谱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11023', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360105', '江西省南昌市湾里区', '湾里区', null, null, '南昌湾里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11024', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360111', '江西省南昌市青山湖区', '青山湖区', null, null, '南昌青山湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11025', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360121', '江西省南昌市南昌县', '南昌县', null, null, '南昌南昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11026', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360122', '江西省南昌市新建县', '新建县', null, null, '南昌新建', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11027', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360123', '江西省南昌市安义县', '安义县', null, null, '南昌安义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11028', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0791', '360124', '江西省南昌市进贤县', '进贤县', null, null, '南昌进贤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11029', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0798', '360202', '江西省景德镇市昌江区', '昌江区', null, null, '景德镇昌江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11030', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0798', '360203', '江西省景德镇市珠山区', '珠山区', null, null, '景德镇珠山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11031', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0798', '360222', '江西省景德镇市浮梁县', '浮梁县', null, null, '景德镇浮梁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11032', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0798', '360281', '江西省景德镇市乐平市', '乐平市', null, null, '景德镇乐平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11033', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360302', '江西省萍乡市安源区', '安源区', null, null, '萍乡安源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11034', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360313', '江西省萍乡市湘东区', '湘东区', null, null, '萍乡湘东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11035', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360321', '江西省萍乡市莲花县', '莲花县', null, null, '萍乡莲花', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11036', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360322', '江西省萍乡市上栗县', '上栗县', null, null, '萍乡上栗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11037', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0799', '360323', '江西省萍乡市芦溪县', '芦溪县', null, null, '萍乡芦溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11038', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360402', '江西省九江市庐山区', '庐山区', null, null, '九江庐山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11039', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360403', '江西省九江市浔阳区', '浔阳区', null, null, '九江浔阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11040', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360421', '江西省九江市九江县', '九江县', null, null, '九江九江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11041', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360423', '江西省九江市武宁县', '武宁县', null, null, '九江武宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11042', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360424', '江西省九江市修水县', '修水县', null, null, '九江修水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11043', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360425', '江西省九江市永修县', '永修县', null, null, '九江永修', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11044', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360426', '江西省九江市德安县', '德安县', null, null, '九江德安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11045', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360427', '江西省九江市星子县', '星子县', null, null, '九江星子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11046', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360428', '江西省九江市都昌县', '都昌县', null, null, '九江都昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11047', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360429', '江西省九江市湖口县', '湖口县', null, null, '九江湖口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11048', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360430', '江西省九江市彭泽县', '彭泽县', null, null, '九江彭泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11049', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360481', '江西省九江市瑞昌市', '瑞昌市', null, null, '九江瑞昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11050', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0792', '360482', '江西省九江市共青城市', '共青城市', null, null, '九江共青城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11051', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0790', '360502', '江西省新余市渝水区', '渝水区', null, null, '新余渝水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11052', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0790', '360521', '江西省新余市分宜县', '分宜县', null, null, '新余分宜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11053', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0701', '360602', '江西省鹰潭市月湖区', '月湖区', null, null, '鹰潭月湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11054', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0701', '360622', '江西省鹰潭市余江县', '余江县', null, null, '鹰潭余江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11055', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0701', '360681', '江西省鹰潭市贵溪市', '贵溪市', null, null, '鹰潭贵溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11056', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360702', '江西省赣州市章贡区', '章贡区', null, null, '赣州章贡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11057', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360721', '江西省赣州市赣县', '赣县', null, null, '赣州赣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11058', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360722', '江西省赣州市信丰县', '信丰县', null, null, '赣州信丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11059', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360723', '江西省赣州市大余县', '大余县', null, null, '赣州大余', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11060', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360724', '江西省赣州市上犹县', '上犹县', null, null, '赣州上犹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11061', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360725', '江西省赣州市崇义县', '崇义县', null, null, '赣州崇义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11062', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360726', '江西省赣州市安远县', '安远县', null, null, '赣州安远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11063', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360727', '江西省赣州市龙南县', '龙南县', null, null, '赣州龙南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11064', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360728', '江西省赣州市定南县', '定南县', null, null, '赣州定南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11065', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360729', '江西省赣州市全南县', '全南县', null, null, '赣州全南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11066', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360730', '江西省赣州市宁都县', '宁都县', null, null, '赣州宁都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11067', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360731', '江西省赣州市于都县', '于都县', null, null, '赣州于都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11068', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360732', '江西省赣州市兴国县', '兴国县', null, null, '赣州兴国', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11069', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360733', '江西省赣州市会昌县', '会昌县', null, null, '赣州会昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11070', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360734', '江西省赣州市寻乌县', '寻乌县', null, null, '赣州寻乌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11071', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360735', '江西省赣州市石城县', '石城县', null, null, '赣州石城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11072', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360781', '江西省赣州市瑞金市', '瑞金市', null, null, '赣州瑞金', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11073', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0797', '360782', '江西省赣州市南康市', '南康市', null, null, '赣州南康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11074', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360802', '江西省吉安市吉州区', '吉州区', null, null, '吉安吉州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11075', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360803', '江西省吉安市青原区', '青原区', null, null, '吉安青原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11076', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360821', '江西省吉安市吉安县', '吉安县', null, null, '吉安吉安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11077', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360822', '江西省吉安市吉水县', '吉水县', null, null, '吉安吉水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11078', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360823', '江西省吉安市峡江县', '峡江县', null, null, '吉安峡江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11079', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360824', '江西省吉安市新干县', '新干县', null, null, '吉安新干', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11080', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360825', '江西省吉安市永丰县', '永丰县', null, null, '吉安永丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11081', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360826', '江西省吉安市泰和县', '泰和县', null, null, '吉安泰和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11082', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360827', '江西省吉安市遂川县', '遂川县', null, null, '吉安遂川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11083', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360828', '江西省吉安市万安县', '万安县', null, null, '吉安万安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11084', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360829', '江西省吉安市安福县', '安福县', null, null, '吉安安福', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11085', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360830', '江西省吉安市永新县', '永新县', null, null, '吉安永新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11086', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0796', '360881', '江西省吉安市井冈山市', '井冈山市', null, null, '吉安井冈山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11087', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360902', '江西省宜春市袁州区', '袁州区', null, null, '宜春袁州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11088', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360921', '江西省宜春市奉新县', '奉新县', null, null, '宜春奉新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11089', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360922', '江西省宜春市万载县', '万载县', null, null, '宜春万载', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11090', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360923', '江西省宜春市上高县', '上高县', null, null, '宜春上高', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11091', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360924', '江西省宜春市宜丰县', '宜丰县', null, null, '宜春宜丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11092', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360925', '江西省宜春市靖安县', '靖安县', null, null, '宜春靖安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11093', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360926', '江西省宜春市铜鼓县', '铜鼓县', null, null, '宜春铜鼓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11094', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360981', '江西省宜春市丰城市', '丰城市', null, null, '宜春丰城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11095', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360982', '江西省宜春市樟树市', '樟树市', null, null, '宜春樟树', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11096', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0795', '360983', '江西省宜春市高安市', '高安市', null, null, '宜春高安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11097', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361002', '江西省抚州市临川区', '临川区', null, null, '抚州临川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11098', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361021', '江西省抚州市南城县', '南城县', null, null, '抚州南城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11099', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361022', '江西省抚州市黎川县', '黎川县', null, null, '抚州黎川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11100', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361023', '江西省抚州市南丰县', '南丰县', null, null, '抚州南丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11101', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361024', '江西省抚州市崇仁县', '崇仁县', null, null, '抚州崇仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11102', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361025', '江西省抚州市乐安县', '乐安县', null, null, '抚州乐安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11103', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361026', '江西省抚州市宜黄县', '宜黄县', null, null, '抚州宜黄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11104', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361027', '江西省抚州市金溪县', '金溪县', null, null, '抚州金溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11105', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361028', '江西省抚州市资溪县', '资溪县', null, null, '抚州资溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11106', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361029', '江西省抚州市东乡县', '东乡县', null, null, '抚州东乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11107', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0794', '361030', '江西省抚州市广昌县', '广昌县', null, null, '抚州广昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11108', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361102', '江西省上饶市信州区', '信州区', null, null, '上饶信州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11109', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361121', '江西省上饶市上饶县', '上饶县', null, null, '上饶上饶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11110', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361122', '江西省上饶市广丰县', '广丰县', null, null, '上饶广丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11111', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361123', '江西省上饶市玉山县', '玉山县', null, null, '上饶玉山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11112', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361124', '江西省上饶市铅山县', '铅山县', null, null, '上饶铅山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11113', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361125', '江西省上饶市横峰县', '横峰县', null, null, '上饶横峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11114', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361126', '江西省上饶市弋阳县', '弋阳县', null, null, '上饶弋阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11115', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361127', '江西省上饶市余干县', '余干县', null, null, '上饶余干', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11116', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361128', '江西省上饶市鄱阳县', '鄱阳县', null, null, '上饶鄱阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11117', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361129', '江西省上饶市万年县', '万年县', null, null, '上饶万年', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11118', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361130', '江西省上饶市婺源县', '婺源县', null, null, '上饶婺源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11119', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0793', '361181', '江西省上饶市德兴市', '德兴市', null, null, '上饶德兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11120', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370102', '山东省济南市历下区', '历下区', null, null, '济南历下', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11121', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370103', '山东省济南市市中区', '市中区', null, null, '济南中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11122', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370104', '山东省济南市槐荫区', '槐荫区', null, null, '济南槐荫', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11123', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370105', '山东省济南市天桥区', '天桥区', null, null, '济南天桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11124', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370112', '山东省济南市历城区', '历城区', null, null, '济南历城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11125', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370113', '山东省济南市长清区', '长清区', null, null, '济南长清', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11126', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370124', '山东省济南市平阴县', '平阴县', null, null, '济南平阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11127', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370125', '山东省济南市济阳县', '济阳县', null, null, '济南济阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11128', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370126', '山东省济南市商河县', '商河县', null, null, '济南商河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11129', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0531', '370181', '山东省济南市章丘市', '章丘市', null, null, '济南章丘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11130', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370202', '山东省青岛市市南区', '市南区', null, null, '青岛南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11131', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370203', '山东省青岛市市北区', '市北区', null, null, '青岛北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11132', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370205', '山东省青岛市四方区', '四方区', null, null, '青岛四方', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11133', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370211', '山东省青岛市黄岛区', '黄岛区', null, null, '青岛黄岛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370212', '山东省青岛市崂山区', '崂山区', null, null, '青岛崂山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370213', '山东省青岛市李沧区', '李沧区', null, null, '青岛李沧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11136', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370214', '山东省青岛市城阳区', '城阳区', null, null, '青岛城阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370281', '山东省青岛市胶州市', '胶州市', null, null, '青岛胶州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370282', '山东省青岛市即墨市', '即墨市', null, null, '青岛即墨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11139', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370283', '山东省青岛市平度市', '平度市', null, null, '青岛平度', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11140', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370284', '山东省青岛市胶南市', '胶南市', null, null, '青岛胶南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11141', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0532', '370285', '山东省青岛市莱西市', '莱西市', null, null, '青岛莱西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11142', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370302', '山东省淄博市淄川区', '淄川区', null, null, '淄博淄川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11143', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370303', '山东省淄博市张店区', '张店区', null, null, '淄博张店', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11144', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370304', '山东省淄博市博山区', '博山区', null, null, '淄博博山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11145', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370305', '山东省淄博市临淄区', '临淄区', null, null, '淄博临淄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11146', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370306', '山东省淄博市周村区', '周村区', null, null, '淄博周村', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11147', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370321', '山东省淄博市桓台县', '桓台县', null, null, '淄博桓台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11148', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370322', '山东省淄博市高青县', '高青县', null, null, '淄博高青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11149', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0533', '370323', '山东省淄博市沂源县', '沂源县', null, null, '淄博沂源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11150', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370402', '山东省枣庄市市中区', '市中区', null, null, '枣庄中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11151', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370403', '山东省枣庄市薛城区', '薛城区', null, null, '枣庄薛城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11152', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370404', '山东省枣庄市峄城区', '峄城区', null, null, '枣庄峄城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11153', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370405', '山东省枣庄市台儿庄区', '台儿庄区', null, null, '枣庄台儿庄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11154', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370406', '山东省枣庄市山亭区', '山亭区', null, null, '枣庄山亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11155', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0632', '370481', '山东省枣庄市滕州市', '滕州市', null, null, '枣庄滕州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11156', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370502', '山东省东营市东营区', '东营区', null, null, '东营东营', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11157', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370503', '山东省东营市河口区', '河口区', null, null, '东营河口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11158', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370521', '山东省东营市垦利县', '垦利县', null, null, '东营垦利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11159', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370522', '山东省东营市利津县', '利津县', null, null, '东营利津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11160', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0546', '370523', '山东省东营市广饶县', '广饶县', null, null, '东营广饶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11161', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370602', '山东省烟台市芝罘区', '芝罘区', null, null, '烟台芝罘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11162', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0535', '370611', '山东省烟台市福山区', '福山区', null, null, '烟台福山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11163', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542331', '西藏自治区日喀则地区康马县', '康马县', null, null, '日喀则地区康马', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11164', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542332', '西藏自治区日喀则地区定结县', '定结县', null, null, '日喀则地区定结', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11165', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542333', '西藏自治区日喀则地区仲巴县', '仲巴县', null, null, '日喀则地区仲巴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11166', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542334', '西藏自治区日喀则地区亚东县', '亚东县', null, null, '日喀则地区亚东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11167', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542335', '西藏自治区日喀则地区吉隆县', '吉隆县', null, null, '日喀则地区吉隆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11168', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542336', '西藏自治区日喀则地区聂拉木县', '聂拉木县', null, null, '日喀则地区聂拉木', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11169', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542337', '西藏自治区日喀则地区萨嘎县', '萨嘎县', null, null, '日喀则地区萨嘎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11170', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542338', '西藏自治区日喀则地区岗巴县', '岗巴县', null, null, '日喀则地区岗巴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11171', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542421', '西藏自治区那曲地区那曲县', '那曲县', null, null, '那曲地区那曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11172', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542422', '西藏自治区那曲地区嘉黎县', '嘉黎县', null, null, '那曲地区嘉黎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11173', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542423', '西藏自治区那曲地区比如县', '比如县', null, null, '那曲地区比如', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11174', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542424', '西藏自治区那曲地区聂荣县', '聂荣县', null, null, '那曲地区聂荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11175', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542425', '西藏自治区那曲地区安多县', '安多县', null, null, '那曲地区安多', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11176', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542426', '西藏自治区那曲地区申扎县', '申扎县', null, null, '那曲地区申扎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11177', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542427', '西藏自治区那曲地区索县', '索县', null, null, '那曲地区索', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11178', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542428', '西藏自治区那曲地区班戈县', '班戈县', null, null, '那曲地区班戈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11179', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542429', '西藏自治区那曲地区巴青县', '巴青县', null, null, '那曲地区巴青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11180', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0896', '542430', '西藏自治区那曲地区尼玛县', '尼玛县', null, null, '那曲地区尼玛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11181', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542521', '西藏自治区阿里地区普兰县', '普兰县', null, null, '阿里地区普兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11182', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542522', '西藏自治区阿里地区札达县', '札达县', null, null, '阿里地区札达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11183', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542523', '西藏自治区阿里地区噶尔县', '噶尔县', null, null, '阿里地区噶尔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11184', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542524', '西藏自治区阿里地区日土县', '日土县', null, null, '阿里地区日土', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11185', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542525', '西藏自治区阿里地区革吉县', '革吉县', null, null, '阿里地区革吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11186', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542526', '西藏自治区阿里地区改则县', '改则县', null, null, '阿里地区改则', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11187', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0897', '542527', '西藏自治区阿里地区措勤县', '措勤县', null, null, '阿里地区措勤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11188', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542621', '西藏自治区林芝地区林芝县', '林芝县', null, null, '林芝地区林芝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11189', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542622', '西藏自治区林芝地区工布江达县', '工布江达县', null, null, '林芝地区工布江达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11190', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542623', '西藏自治区林芝地区米林县', '米林县', null, null, '林芝地区米林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11191', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542624', '西藏自治区林芝地区墨脱县', '墨脱县', null, null, '林芝地区墨脱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11192', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542625', '西藏自治区林芝地区波密县', '波密县', null, null, '林芝地区波密', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11193', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542626', '西藏自治区林芝地区察隅县', '察隅县', null, null, '林芝地区察隅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11194', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0894', '542627', '西藏自治区林芝地区朗县', '朗县', null, null, '林芝地区朗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11195', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610102', '陕西省西安市新城区', '新城区', null, null, '西安新城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11196', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610103', '陕西省西安市碑林区', '碑林区', null, null, '西安碑林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11197', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610104', '陕西省西安市莲湖区', '莲湖区', null, null, '西安莲湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11198', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610111', '陕西省西安市灞桥区', '灞桥区', null, null, '西安灞桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11199', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610112', '陕西省西安市未央区', '未央区', null, null, '西安未央', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11200', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610113', '陕西省西安市雁塔区', '雁塔区', null, null, '西安雁塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11201', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610114', '陕西省西安市阎良区', '阎良区', null, null, '西安阎良', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11202', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610115', '陕西省西安市临潼区', '临潼区', null, null, '西安临潼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11203', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610116', '陕西省西安市长安区', '长安区', null, null, '西安长安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11204', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610122', '陕西省西安市蓝田县', '蓝田县', null, null, '西安蓝田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11205', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610124', '陕西省西安市周至县', '周至县', null, null, '西安周至', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11206', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610125', '陕西省西安市户县', '户县', null, null, '西安户', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11207', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '029', '610126', '陕西省西安市高陵县', '高陵县', null, null, '西安高陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11208', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0919', '610202', '陕西省铜川市王益区', '王益区', null, null, '铜川王益', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11209', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0919', '610203', '陕西省铜川市印台区', '印台区', null, null, '铜川印台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11210', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0919', '610204', '陕西省铜川市耀州区', '耀州区', null, null, '铜川耀州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11211', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0919', '610222', '陕西省铜川市宜君县', '宜君县', null, null, '铜川宜君', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11212', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610302', '陕西省宝鸡市渭滨区', '渭滨区', null, null, '宝鸡渭滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11213', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610303', '陕西省宝鸡市金台区', '金台区', null, null, '宝鸡金台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11214', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610304', '陕西省宝鸡市陈仓区', '陈仓区', null, null, '宝鸡陈仓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11215', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610322', '陕西省宝鸡市凤翔县', '凤翔县', null, null, '宝鸡凤翔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11216', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610323', '陕西省宝鸡市岐山县', '岐山县', null, null, '宝鸡岐山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11217', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610324', '陕西省宝鸡市扶风县', '扶风县', null, null, '宝鸡扶风', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11218', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610326', '陕西省宝鸡市眉县', '眉县', null, null, '宝鸡眉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11219', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610327', '陕西省宝鸡市陇县', '陇县', null, null, '宝鸡陇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11220', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610328', '陕西省宝鸡市千阳县', '千阳县', null, null, '宝鸡千阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11221', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610329', '陕西省宝鸡市麟游县', '麟游县', null, null, '宝鸡麟游', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11222', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610330', '陕西省宝鸡市凤县', '凤县', null, null, '宝鸡凤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11223', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0917', '610331', '陕西省宝鸡市太白县', '太白县', null, null, '宝鸡太白', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11224', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610402', '陕西省咸阳市秦都区', '秦都区', null, null, '咸阳秦都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11225', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610403', '陕西省咸阳市杨陵区', '杨陵区', null, null, '咸阳杨陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11226', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610404', '陕西省咸阳市渭城区', '渭城区', null, null, '咸阳渭城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11227', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610422', '陕西省咸阳市三原县', '三原县', null, null, '咸阳三原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11228', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610423', '陕西省咸阳市泾阳县', '泾阳县', null, null, '咸阳泾阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11229', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610424', '陕西省咸阳市乾县', '乾县', null, null, '咸阳乾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11230', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610425', '陕西省咸阳市礼泉县', '礼泉县', null, null, '咸阳礼泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11231', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610426', '陕西省咸阳市永寿县', '永寿县', null, null, '咸阳永寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11232', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610427', '陕西省咸阳市彬县', '彬县', null, null, '咸阳彬', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11233', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610428', '陕西省咸阳市长武县', '长武县', null, null, '咸阳长武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11234', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610429', '陕西省咸阳市旬邑县', '旬邑县', null, null, '咸阳旬邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11235', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610430', '陕西省咸阳市淳化县', '淳化县', null, null, '咸阳淳化', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11236', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610431', '陕西省咸阳市武功县', '武功县', null, null, '咸阳武功', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11237', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0910', '610481', '陕西省咸阳市兴平市', '兴平市', null, null, '咸阳兴平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11238', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610502', '陕西省渭南市临渭区', '临渭区', null, null, '渭南临渭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11239', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610521', '陕西省渭南市华县', '华县', null, null, '渭南华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11240', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610522', '陕西省渭南市潼关县', '潼关县', null, null, '渭南潼关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11241', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610523', '陕西省渭南市大荔县', '大荔县', null, null, '渭南大荔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11242', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610524', '陕西省渭南市合阳县', '合阳县', null, null, '渭南合阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11243', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610525', '陕西省渭南市澄城县', '澄城县', null, null, '渭南澄城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11244', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610526', '陕西省渭南市蒲城县', '蒲城县', null, null, '渭南蒲城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11245', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610527', '陕西省渭南市白水县', '白水县', null, null, '渭南白水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11246', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610528', '陕西省渭南市富平县', '富平县', null, null, '渭南富平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11247', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610581', '陕西省渭南市韩城市', '韩城市', null, null, '渭南韩城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11248', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0913', '610582', '陕西省渭南市华阴市', '华阴市', null, null, '渭南华阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11249', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610602', '陕西省延安市宝塔区', '宝塔区', null, null, '延安宝塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11250', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610621', '陕西省延安市延长县', '延长县', null, null, '延安延长', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11251', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610622', '陕西省延安市延川县', '延川县', null, null, '延安延川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11252', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610623', '陕西省延安市子长县', '子长县', null, null, '延安子长', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11253', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610624', '陕西省延安市安塞县', '安塞县', null, null, '延安安塞', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11254', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610625', '陕西省延安市志丹县', '志丹县', null, null, '延安志丹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11255', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610626', '陕西省延安市吴起县', '吴起县', null, null, '延安吴起', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11256', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610627', '陕西省延安市甘泉县', '甘泉县', null, null, '延安甘泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11257', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610628', '陕西省延安市富县', '富县', null, null, '延安富', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11258', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610629', '陕西省延安市洛川县', '洛川县', null, null, '延安洛川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11259', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610630', '陕西省延安市宜川县', '宜川县', null, null, '延安宜川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11260', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610631', '陕西省延安市黄龙县', '黄龙县', null, null, '延安黄龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11261', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0911', '610632', '陕西省延安市黄陵县', '黄陵县', null, null, '延安黄陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11262', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610702', '陕西省汉中市汉台区', '汉台区', null, null, '汉中汉台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11263', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610721', '陕西省汉中市南郑县', '南郑县', null, null, '汉中南郑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11264', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610722', '陕西省汉中市城固县', '城固县', null, null, '汉中城固', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11265', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610723', '陕西省汉中市洋县', '洋县', null, null, '汉中洋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11266', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610724', '陕西省汉中市西乡县', '西乡县', null, null, '汉中西乡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11267', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610725', '陕西省汉中市勉县', '勉县', null, null, '汉中勉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11268', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610726', '陕西省汉中市宁强县', '宁强县', null, null, '汉中宁强', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11269', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610727', '陕西省汉中市略阳县', '略阳县', null, null, '汉中略阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11270', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610728', '陕西省汉中市镇巴县', '镇巴县', null, null, '汉中镇巴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11271', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610729', '陕西省汉中市留坝县', '留坝县', null, null, '汉中留坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11272', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0916', '610730', '陕西省汉中市佛坪县', '佛坪县', null, null, '汉中佛坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11273', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610802', '陕西省榆林市榆阳区', '榆阳区', null, null, '榆林榆阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11274', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610821', '陕西省榆林市神木县', '神木县', null, null, '榆林神木', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11275', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610822', '陕西省榆林市府谷县', '府谷县', null, null, '榆林府谷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11276', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610823', '陕西省榆林市横山县', '横山县', null, null, '榆林横山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11277', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610824', '陕西省榆林市靖边县', '靖边县', null, null, '榆林靖边', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11278', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610825', '陕西省榆林市定边县', '定边县', null, null, '榆林定边', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11279', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610826', '陕西省榆林市绥德县', '绥德县', null, null, '榆林绥德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11280', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610827', '陕西省榆林市米脂县', '米脂县', null, null, '榆林米脂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11281', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610828', '陕西省榆林市佳县', '佳县', null, null, '榆林佳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11282', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610829', '陕西省榆林市吴堡县', '吴堡县', null, null, '榆林吴堡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11283', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610830', '陕西省榆林市清涧县', '清涧县', null, null, '榆林清涧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11284', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0912', '610831', '陕西省榆林市子洲县', '子洲县', null, null, '榆林子洲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11285', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610902', '陕西省安康市汉滨区', '汉滨区', null, null, '安康汉滨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11286', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610921', '陕西省安康市汉阴县', '汉阴县', null, null, '安康汉阴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11287', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610922', '陕西省安康市石泉县', '石泉县', null, null, '安康石泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11288', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610923', '陕西省安康市宁陕县', '宁陕县', null, null, '安康宁陕', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11289', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610924', '陕西省安康市紫阳县', '紫阳县', null, null, '安康紫阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11290', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610925', '陕西省安康市岚皋县', '岚皋县', null, null, '安康岚皋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11291', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610926', '陕西省安康市平利县', '平利县', null, null, '安康平利', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11292', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610927', '陕西省安康市镇坪县', '镇坪县', null, null, '安康镇坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11293', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610928', '陕西省安康市旬阳县', '旬阳县', null, null, '安康旬阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11294', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0915', '610929', '陕西省安康市白河县', '白河县', null, null, '安康白河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11295', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611002', '陕西省商洛市商州区', '商州区', null, null, '商洛商州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11296', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611021', '陕西省商洛市洛南县', '洛南县', null, null, '商洛洛南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11297', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611022', '陕西省商洛市丹凤县', '丹凤县', null, null, '商洛丹凤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11298', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611023', '陕西省商洛市商南县', '商南县', null, null, '商洛商南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11299', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611024', '陕西省商洛市山阳县', '山阳县', null, null, '商洛山阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11300', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611025', '陕西省商洛市镇安县', '镇安县', null, null, '商洛镇安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11301', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0914', '611026', '陕西省商洛市柞水县', '柞水县', null, null, '商洛柞水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11302', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620102', '甘肃省兰州市城关区', '城关区', null, null, '兰州城关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11303', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620103', '甘肃省兰州市七里河区', '七里河区', null, null, '兰州七里河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11304', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620104', '甘肃省兰州市西固区', '西固区', null, null, '兰州西固', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11305', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620105', '甘肃省兰州市安宁区', '安宁区', null, null, '兰州安宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11306', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620111', '甘肃省兰州市红古区', '红古区', null, null, '兰州红古', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11307', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620121', '甘肃省兰州市永登县', '永登县', null, null, '兰州永登', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11308', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620122', '甘肃省兰州市皋兰县', '皋兰县', null, null, '兰州皋兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11309', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0931', '620123', '甘肃省兰州市榆中县', '榆中县', null, null, '兰州榆中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11310', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620201', '甘肃省嘉峪关市嘉峪关市', '嘉峪关市', null, null, '嘉峪关嘉峪关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11311', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620302', '甘肃省金昌市金川区', '金川区', null, null, '金昌金川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11312', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620321', '甘肃省金昌市永昌县', '永昌县', null, null, '金昌永昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11313', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620402', '甘肃省白银市白银区', '白银区', null, null, '白银白银', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11314', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620403', '甘肃省白银市平川区', '平川区', null, null, '白银平川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11315', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620421', '甘肃省白银市靖远县', '靖远县', null, null, '白银靖远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11316', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620422', '甘肃省白银市会宁县', '会宁县', null, null, '白银会宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11317', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0943', '620423', '甘肃省白银市景泰县', '景泰县', null, null, '白银景泰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11318', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620502', '甘肃省天水市秦州区', '秦州区', null, null, '天水秦州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11319', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620503', '甘肃省天水市麦积区', '麦积区', null, null, '天水麦积', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11320', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620521', '甘肃省天水市清水县', '清水县', null, null, '天水清水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11321', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620522', '甘肃省天水市秦安县', '秦安县', null, null, '天水秦安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11322', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620523', '甘肃省天水市甘谷县', '甘谷县', null, null, '天水甘谷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11323', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620524', '甘肃省天水市武山县', '武山县', null, null, '天水武山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11324', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0938', '620525', '甘肃省天水市张家川回族自治县', '张家川', null, null, '天水张家川\r\n\r\n回族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11325', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620602', '甘肃省武威市凉州区', '凉州区', null, null, '武威凉州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11326', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620621', '甘肃省武威市民勤县', '民勤县', null, null, '武威民勤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11327', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620622', '甘肃省武威市古浪县', '古浪县', null, null, '武威古浪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11328', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0935', '620623', '甘肃省武威市天祝藏族自治县', '天祝', null, null, '武威天祝藏族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11329', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620702', '甘肃省张掖市甘州区', '甘州区', null, null, '张掖甘州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11330', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620721', '甘肃省张掖市肃南裕固族自治县', '肃南', null, null, '张掖肃南裕\r\n\r\n固族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11331', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620722', '甘肃省张掖市民乐县', '民乐县', null, null, '张掖民乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11332', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620723', '甘肃省张掖市临泽县', '临泽县', null, null, '张掖临泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11333', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620724', '甘肃省张掖市高台县', '高台县', null, null, '张掖高台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11334', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0936', '620725', '甘肃省张掖市山丹县', '山丹县', null, null, '张掖山丹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11335', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620802', '甘肃省平凉市崆峒区', '崆峒区', null, null, '平凉崆峒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11336', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620821', '甘肃省平凉市泾川县', '泾川县', null, null, '平凉泾川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11337', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620822', '甘肃省平凉市灵台县', '灵台县', null, null, '平凉灵台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11338', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620823', '甘肃省平凉市崇信县', '崇信县', null, null, '平凉崇信', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11339', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620824', '甘肃省平凉市华亭县', '华亭县', null, null, '平凉华亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11340', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620825', '甘肃省平凉市庄浪县', '庄浪县', null, null, '平凉庄浪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11341', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0933', '620826', '甘肃省平凉市静宁县', '静宁县', null, null, '平凉静宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11342', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620902', '甘肃省酒泉市肃州区', '肃州区', null, null, '酒泉肃州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11343', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620921', '甘肃省酒泉市金塔县', '金塔县', null, null, '酒泉金塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11344', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620922', '甘肃省酒泉市瓜州县', '瓜州县', null, null, '酒泉瓜州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11345', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620923', '甘肃省酒泉市肃北蒙古族自治县', '肃北', null, null, '酒泉肃北蒙\r\n\r\n古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11346', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620924', '甘肃省酒泉市阿克塞哈萨克族自治县', '阿克塞', null, null, '酒泉\r\n\r\n阿克塞哈萨克族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11347', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620981', '甘肃省酒泉市玉门市', '玉门市', null, null, '酒泉玉门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11348', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0937', '620982', '甘肃省酒泉市敦煌市', '敦煌市', null, null, '酒泉敦煌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11349', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621002', '甘肃省庆阳市西峰区', '西峰区', null, null, '庆阳西峰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11350', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621021', '甘肃省庆阳市庆城县', '庆城县', null, null, '庆阳庆城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11351', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621022', '甘肃省庆阳市环县', '环县', null, null, '庆阳环', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11352', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621023', '甘肃省庆阳市华池县', '华池县', null, null, '庆阳华池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11353', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621024', '甘肃省庆阳市合水县', '合水县', null, null, '庆阳合水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11354', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621025', '甘肃省庆阳市正宁县', '正宁县', null, null, '庆阳正宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11355', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621026', '甘肃省庆阳市宁县', '宁县', null, null, '庆阳宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11356', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0934', '621027', '甘肃省庆阳市镇原县', '镇原县', null, null, '庆阳镇原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11357', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621102', '甘肃省定西市安定区', '安定区', null, null, '定西安定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11358', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621121', '甘肃省定西市通渭县', '通渭县', null, null, '定西通渭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11359', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621122', '甘肃省定西市陇西县', '陇西县', null, null, '定西陇西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11360', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621123', '甘肃省定西市渭源县', '渭源县', null, null, '定西渭源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11361', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621124', '甘肃省定西市临洮县', '临洮县', null, null, '定西临洮', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11362', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621125', '甘肃省定西市漳县', '漳县', null, null, '定西漳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11363', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0932', '621126', '甘肃省定西市岷县', '岷县', null, null, '定西岷', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11364', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621202', '甘肃省陇南市武都区', '武都区', null, null, '陇南武都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11365', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621221', '甘肃省陇南市成县', '成县', null, null, '陇南成', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11366', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621222', '甘肃省陇南市文县', '文县', null, null, '陇南文', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11367', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621223', '甘肃省陇南市宕昌县', '宕昌县', null, null, '陇南宕昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11368', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621224', '甘肃省陇南市康县', '康县', null, null, '陇南康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11369', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621225', '甘肃省陇南市西和县', '西和县', null, null, '陇南西和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11370', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621226', '甘肃省陇南市礼县', '礼县', null, null, '陇南礼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11371', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621227', '甘肃省陇南市徽县', '徽县', null, null, '陇南徽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11372', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0939', '621228', '甘肃省陇南市两当县', '两当县', null, null, '陇南两当', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11373', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622901', '甘肃省临夏回族自治州 临夏市', '临夏市', null, null, '临夏回族自治州 临夏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11374', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622921', '甘肃省临夏回族自治州 临夏县', '临夏县', null, null, '临夏回族自治州 临夏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11375', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622922', '甘肃省临夏回族自治州 康乐县', '康乐县', null, null, '临夏回族自治州 康乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11376', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622923', '甘肃省临夏回族自治州 永靖县', '永靖县', null, null, '临夏回族自治州 永靖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11377', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622924', '甘肃省临夏回族自治州 广河县', '广河县', null, null, '临夏回族自治州 广河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11378', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622925', '甘肃省临夏回族自治州 和政县', '和政县', null, null, '临夏回族自治州 和政', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11379', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622926', '甘肃省临夏回族自治州 东乡族自治县', '东乡族自治县', null, null, '临夏回族自\r\n\r\n治州 东乡族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11380', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0930', '622927', '甘肃省临夏回族自治州 积石山保\r\n\r\n安族东乡族撒拉族自治县', '积石山', null, null, '临夏回族自治州 积石山保安族东乡族撒拉族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11381', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623001', '甘肃省甘南藏族自治州 合作市', '合作市', null, null, '甘南藏族自治州 合作', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11382', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623021', '甘肃省甘南藏族自治州 临潭县', '临潭县', null, null, '甘南藏族自治州 临潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11383', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623022', '甘肃省甘南藏族自治州 卓尼县', '卓尼县', null, null, '甘南藏族自治州 卓尼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11384', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623023', '甘肃省甘南藏族自治州 舟曲县', '舟曲县', null, null, '甘南藏族自治州 舟曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11385', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623024', '甘肃省甘南藏族自治州 迭部县', '迭部县', null, null, '甘南藏族自治州 迭部', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11386', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623025', '甘肃省甘南藏族自治州 玛曲县', '玛曲县', null, null, '甘南藏族自治州 玛曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11387', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623026', '甘肃省甘南藏族自治州 碌曲县', '碌曲县', null, null, '甘南藏族自治州 碌曲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11388', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0941', '623027', '甘肃省甘南藏族自治州 夏河县', '夏河县', null, null, '甘南藏族自治州 夏河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11389', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630102', '青海省西宁市城东区', '城东区', null, null, '西宁城东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11390', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630103', '青海省西宁市城中区', '城中区', null, null, '西宁城中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11391', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630104', '青海省西宁市城西区', '城西区', null, null, '西宁城西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11392', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630105', '青海省西宁市城北区', '城北区', null, null, '西宁城北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11393', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630121', '青海省西宁市大通回族土族自治县', '大通', null, null, '西宁大\r\n\r\n通回族土族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11394', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630122', '青海省西宁市湟中县', '湟中县', null, null, '西宁湟中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11395', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0971', '630123', '青海省西宁市湟源县', '湟源县', null, null, '西宁湟源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11396', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632121', '青海省海东地区平安县', '平安县', null, null, '海东地区平安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11397', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632122', '青海省海东地区民和回族土族自治县', '民和', null, null, '海东地\r\n\r\n区民和回族土族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11398', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632123', '青海省海东地区乐都县', '乐都县', null, null, '海东地区乐都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11399', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632126', '青海省海东地区互助土族自治县', '互助', null, null, '海东地区互助土\r\n\r\n族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11400', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632127', '青海省海东地区化隆回族自治县', '化隆', null, null, '海东地区化隆回\r\n\r\n族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11401', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0972', '632128', '青海省海东地区循化撒拉族自治县', '循化', null, null, '海东地区循\r\n\r\n化撒拉族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11402', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0970', '632221', '青海省海北藏族自治州 门源回族自治县', '门源', null, null, '海北藏\r\n\r\n族自治州 门源回族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11403', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0970', '632222', '青海省海北藏族自治州 祁连县', '祁连县', null, null, '海北藏族自治州 祁连', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11404', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0970', '632223', '青海省海北藏族自治州 海晏县', '海晏县', null, null, '海北藏族自治州 海晏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11405', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0970', '632224', '青海省海北藏族自治州 刚察县', '刚察县', null, null, '海北藏族自治州 刚察', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11406', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0973', '632321', '青海省黄南藏族自治州 同仁县', '同仁县', null, null, '黄南藏族自治州 同仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11407', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0973', '632322', '青海省黄南藏族自治州 尖扎县', '尖扎县', null, null, '黄南藏族自治州 尖扎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11408', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0973', '632323', '青海省黄南藏族自治州 泽库县', '泽库县', null, null, '黄南藏族自治州 泽库', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11409', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0973', '632324', '青海省黄南藏族自治州 河南蒙古族自治县', '河南', null, null, '黄\r\n\r\n南藏族自治州 河南蒙古族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11410', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632521', '青海省海南藏族自治州 共和县', '共和县', null, null, '海南藏族自治州 共和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11411', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632522', '青海省海南藏族自治州 同德县', '同德县', null, null, '海南藏族自治州 同德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11412', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632523', '青海省海南藏族自治州 贵德县', '贵德县', null, null, '海南藏族自治州 贵德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11413', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632524', '青海省海南藏族自治州 兴海县', '兴海县', null, null, '海南藏族自治州 兴海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11414', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0974', '632525', '青海省海南藏族自治州 贵南县', '贵南县', null, null, '海南藏族自治州 贵南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11415', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632621', '青海省果洛藏族自治州 玛沁县', '玛沁县', null, null, '果洛藏族自治州 玛沁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11416', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632622', '青海省果洛藏族自治州 班玛县', '班玛县', null, null, '果洛藏族自治州 班玛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11417', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632623', '青海省果洛藏族自治州 甘德县', '甘德县', null, null, '果洛藏族自治州 甘德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11418', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632624', '青海省果洛藏族自治州 达日县', '达日县', null, null, '果洛藏族自治州 达日', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11419', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632625', '青海省果洛藏族自治州 久治县', '久治县', null, null, '果洛藏族自治州 久治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11420', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0975', '632626', '青海省果洛藏族自治州 玛多县', '玛多县', null, null, '果洛藏族自治州 玛多', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11421', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632721', '青海省玉树藏族自治州 玉树县', '玉树县', null, null, '玉树藏族自治州 玉树', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11422', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632722', '青海省玉树藏族自治州 杂多县', '杂多县', null, null, '玉树藏族自治州 杂多', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11423', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632723', '青海省玉树藏族自治州 称多县', '称多县', null, null, '玉树藏族自治州 称多', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11424', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632724', '青海省玉树藏族自治州 治多县', '治多县', null, null, '玉树藏族自治州 治多', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11425', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632725', '青海省玉树藏族自治州 囊谦县', '囊谦县', null, null, '玉树藏族自治州 囊谦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11426', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0976', '632726', '青海省玉树藏族自治州 曲麻莱县', '曲麻莱县', null, null, '玉树藏族自治州 曲麻\r\n\r\n莱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11427', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632801', '青海省海西蒙古族藏族自治州 格尔木市', '格尔木市', null, null, '海西蒙古族藏\r\n\r\n族自治州 格尔木', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11428', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632802', '青海省海西蒙古族藏族自治州 德令哈市', '德令哈市', null, null, '海西蒙古族藏\r\n\r\n族自治州 德令哈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11429', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632821', '青海省海西蒙古族藏族自治州 乌兰县', '乌兰县', null, null, '海西蒙古族藏族自\r\n\r\n治州 乌兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11430', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632822', '青海省海西蒙古族藏族自治州 都兰县', '都兰县', null, null, '海西蒙古族藏族自\r\n\r\n治州 都兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11431', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '632823', '青海省海西蒙古族藏族自治州 天峻县', '天峻县', null, null, '海西蒙古族藏族自\r\n\r\n治州 天峻', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11432', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640104', '宁夏回族自治区银川市兴庆区', '兴庆区', null, null, '银川兴庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11433', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640105', '宁夏回族自治区银川市西夏区', '西夏区', null, null, '银川西夏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11434', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640106', '宁夏回族自治区银川市金凤区', '金凤区', null, null, '银川金凤', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11435', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640121', '宁夏回族自治区银川市永宁县', '永宁县', null, null, '银川永宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11436', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640122', '宁夏回族自治区银川市贺兰县', '贺兰县', null, null, '银川贺兰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11437', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0951', '640181', '宁夏回族自治区银川市灵武市', '灵武市', null, null, '银川灵武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11438', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0952', '640202', '宁夏回族自治区石嘴山市大武口区', '大武口区', null, null, '石嘴山大武口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11439', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0952', '640205', '宁夏回族自治区石嘴山市惠农区', '惠农区', null, null, '石嘴山惠农', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11440', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0952', '640221', '宁夏回族自治区石嘴山市平罗县', '平罗县', null, null, '石嘴山平罗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11441', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640302', '宁夏回族自治区吴忠市利通区', '利通区', null, null, '吴忠利通', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11442', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640303', '宁夏回族自治区吴忠市红寺堡区', '红寺堡区', null, null, '吴忠红寺堡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11443', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640323', '宁夏回族自治区吴忠市盐池县', '盐池县', null, null, '吴忠盐池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11444', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640324', '宁夏回族自治区吴忠市同心县', '同心县', null, null, '吴忠同心', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11445', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0953', '640381', '宁夏回族自治区吴忠市青铜峡市', '青铜峡市', null, null, '吴忠青铜峡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11446', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640402', '宁夏回族自治区固原市原州区', '原州区', null, null, '固原原州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11447', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640422', '宁夏回族自治区固原市西吉县', '西吉县', null, null, '固原西吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11448', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640423', '宁夏回族自治区固原市隆德县', '隆德县', null, null, '固原隆德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11449', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640424', '宁夏回族自治区固原市泾源县', '泾源县', null, null, '固原泾源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11450', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0954', '640425', '宁夏回族自治区固原市彭阳县', '彭阳县', null, null, '固原彭阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11451', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '640502', '宁夏回族自治区中卫市沙坡头区', '沙坡头区', null, null, '中卫沙坡头', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11452', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '640521', '宁夏回族自治区中卫市中宁县', '中宁县', null, null, '中卫中宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11453', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0977', '640522', '宁夏回族自治区中卫市海原县', '海原县', null, null, '中卫海原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11454', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650102', '新疆维吾尔自治区乌鲁木齐市天山区', '天山区', null, null, '乌鲁木齐天山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11455', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650103', '新疆维吾尔自治区乌鲁木齐市沙依巴克区', '沙依巴克区', null, null, '乌鲁木齐\r\n\r\n沙依巴克', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11456', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650104', '新疆维吾尔自治区乌鲁木齐市新市区', '新市区', null, null, '乌鲁木齐新', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11457', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650105', '新疆维吾尔自治区乌鲁木齐市水磨沟区', '水磨沟区', null, null, '乌鲁木齐水磨\r\n\r\n沟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11458', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650106', '新疆维吾尔自治区乌鲁木齐市头屯河区', '头屯河区', null, null, '乌鲁木齐头屯\r\n\r\n河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11459', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650107', '新疆维吾尔自治区乌鲁木齐市达坂城区', '达坂城区', null, null, '乌鲁木齐达坂\r\n\r\n城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11460', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650109', '新疆维吾尔自治区乌鲁木齐市米东区', '米东区', null, null, '乌鲁木齐米东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11461', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0991', '650121', '新疆维吾尔自治区乌鲁木齐市乌鲁木齐县', '乌鲁木齐县', null, null, '乌鲁木齐\r\n\r\n乌鲁木齐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11462', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0992', '650202', '新疆维吾尔自治区克拉玛依市独山子区', '独山子区', null, null, '克拉玛依独山\r\n\r\n子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11463', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0990', '650203', '新疆维吾尔自治区克拉玛依市克拉玛依区', '克拉玛依区', null, null, '克拉玛依\r\n\r\n克拉玛依', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11464', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0990', '650204', '新疆维吾尔自治区克拉玛依市白碱滩区', '白碱滩区', null, null, '克拉玛依白碱\r\n\r\n滩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11465', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0990', '650205', '新疆维吾尔自治区克拉玛依市乌尔禾区', '乌尔禾区', null, null, '克拉玛依乌尔\r\n\r\n禾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11466', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0995', '652101', '新疆维吾尔自治区吐鲁番地区吐鲁番市', '吐鲁番市', null, null, '吐鲁番地区吐鲁\r\n\r\n番', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11467', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0995', '652122', '新疆维吾尔自治区吐鲁番地区鄯善县', '鄯善县', null, null, '吐鲁番地区鄯善', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11468', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0995', '652123', '新疆维吾尔自治区吐鲁番地区托克逊县', '托克逊县', null, null, '吐鲁番地区托克\r\n\r\n逊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11469', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0902', '652201', '新疆维吾尔自治区哈密地区哈密市', '哈密市', null, null, '哈密地区哈密', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11470', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0902', '652222', '新疆维吾尔自治区哈密地区巴里坤哈萨克自治县\r\n\r\n', '巴里坤', null, null, '哈密地区巴里坤哈萨克自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11471', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0902', '652223', '新疆维吾尔自治区哈密地区伊吾县', '伊吾县', null, null, '哈密地区伊吾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11472', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652301', '新疆维吾尔自治区昌吉回族自治州 昌吉市', '昌吉市', null, null, '昌吉回族自治\r\n\r\n州 昌吉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11473', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652302', '新疆维吾尔自治区昌吉回族自治州 阜康市', '阜康市', null, null, '昌吉回族自治\r\n\r\n州 阜康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11474', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652323', '新疆维吾尔自治区昌吉回族自治州 呼图壁县', '呼图壁县', null, null, '昌吉回族\r\n\r\n自治州 呼图壁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11475', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652324', '新疆维吾尔自治区昌吉回族自治州 玛纳斯县', '玛纳斯县', null, null, '昌吉回族\r\n\r\n自治州 玛纳斯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11476', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652325', '新疆维吾尔自治区昌吉回族自治州 奇台县', '奇台县', null, null, '昌吉回族自治\r\n\r\n州 奇台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11477', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652327', '新疆维吾尔自治区昌吉回族自治州 吉木萨尔县', '吉木萨尔县', null, null, '昌吉\r\n\r\n回族自治州 吉木萨尔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11478', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0994', '652328', '新疆维吾尔自治区昌吉回族自治州 木垒哈萨克自\r\n\r\n治县', '木垒', null, null, '昌吉回族自治州 木垒哈萨克自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11479', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0909', '652701', '新疆维吾尔自治区博尔塔拉蒙古自治州 博乐市', '博乐市', null, null, '博尔塔拉\r\n\r\n蒙古自治州 博乐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11480', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0909', '652722', '新疆维吾尔自治区博尔塔拉蒙古自治州 精河县', '精河县', null, null, '博尔塔拉\r\n\r\n蒙古自治州 精河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11481', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0909', '652723', '新疆维吾尔自治区博尔塔拉蒙古自治州 温泉县', '温泉县', null, null, '博尔塔拉\r\n\r\n蒙古自治州 温泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11482', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652801', '新疆维吾尔自治区巴音郭楞蒙古自治州 库尔勒市', '库尔勒市', null, null, '巴音\r\n\r\n郭楞蒙古自治州 库尔勒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11483', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652822', '新疆维吾尔自治区巴音郭楞蒙古自治州 轮台县', '轮台县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 轮台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11484', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652823', '新疆维吾尔自治区巴音郭楞蒙古自治州 尉犁县', '尉犁县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 尉犁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11485', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652824', '新疆维吾尔自治区巴音郭楞蒙古自治州 若羌县', '若羌县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 若羌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11486', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652825', '新疆维吾尔自治区巴音郭楞蒙古自治州 且末县', '且末县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 且末', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11487', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652826', '新疆维吾尔自治区巴音郭楞蒙古自治州 焉耆回族自\r\n\r\n治县', '焉耆', null, null, '巴音郭楞蒙古自治州 焉耆回族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11488', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652827', '新疆维吾尔自治区巴音郭楞蒙古自治州 和静县', '和静县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 和静', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11489', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652828', '新疆维吾尔自治区巴音郭楞蒙古自治州 和硕县', '和硕县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 和硕', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11490', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0996', '652829', '新疆维吾尔自治区巴音郭楞蒙古自治州 博湖县', '博湖县', null, null, '巴音郭楞\r\n\r\n蒙古自治州 博湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11491', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652901', '新疆维吾尔自治区阿克苏地区阿克苏市', '阿克苏市', null, null, '阿克苏地区阿克\r\n\r\n苏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11492', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652922', '新疆维吾尔自治区阿克苏地区温宿县', '温宿县', null, null, '阿克苏地区温宿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11493', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652923', '新疆维吾尔自治区阿克苏地区库车县', '库车县', null, null, '阿克苏地区库车', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11494', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652924', '新疆维吾尔自治区阿克苏地区沙雅县', '沙雅县', null, null, '阿克苏地区沙雅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11495', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652925', '新疆维吾尔自治区阿克苏地区新和县', '新和县', null, null, '阿克苏地区新和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11496', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652926', '新疆维吾尔自治区阿克苏地区拜城县', '拜城县', null, null, '阿克苏地区拜城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11497', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652927', '新疆维吾尔自治区阿克苏地区乌什县', '乌什县', null, null, '阿克苏地区乌什', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11498', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652928', '新疆维吾尔自治区阿克苏地区阿瓦提县', '阿瓦提县', null, null, '阿克苏地区阿瓦\r\n\r\n提', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11499', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '652929', '新疆维吾尔自治区阿克苏地区柯坪县', '柯坪县', null, null, '阿克苏地区柯坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11500', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0908', '653001', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州 阿图什市', '阿图什市', null, null, '\r\n\r\n克孜勒苏柯尔克孜自治州 阿图什', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11501', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0908', '653022', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州 阿克陶县', '阿克陶县', null, null, '\r\n\r\n克孜勒苏柯尔克孜自治州 阿克陶', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11502', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0997', '653023', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州 阿合奇县', '阿合奇县', null, null, '\r\n\r\n克孜勒苏柯尔克孜自治州 阿合奇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11503', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0908', '653024', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州 乌恰县', '乌恰县', null, null, '克孜\r\n\r\n勒苏柯尔克孜自治州 乌恰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11504', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653101', '新疆维吾尔自治区喀什地区喀什市', '喀什市', null, null, '喀什地区喀什', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11505', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653121', '新疆维吾尔自治区喀什地区疏附县', '疏附县', null, null, '喀什地区疏附', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11506', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653122', '新疆维吾尔自治区喀什地区疏勒县', '疏勒县', null, null, '喀什地区疏勒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11507', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653123', '新疆维吾尔自治区喀什地区英吉沙县', '英吉沙县', null, null, '喀什地区英吉沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11508', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653124', '新疆维吾尔自治区喀什地区泽普县', '泽普县', null, null, '喀什地区泽普', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11509', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653125', '新疆维吾尔自治区喀什地区莎车县', '莎车县', null, null, '喀什地区莎车', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11510', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653126', '新疆维吾尔自治区喀什地区叶城县', '叶城县', null, null, '喀什地区叶城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11512', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653128', '新疆维吾尔自治区喀什地区岳普湖县', '岳普湖县', null, null, '喀什地区岳普湖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11513', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653127', '新疆维吾尔自治区喀什地区麦盖提县', '麦盖提县', null, null, '喀什地区麦盖提', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11514', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653129', '新疆维吾尔自治区喀什地区伽师县', '伽师县', null, null, '喀什地区伽师', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11515', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653130', '新疆维吾尔自治区喀什地区巴楚县', '巴楚县', null, null, '喀什地区巴楚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11516', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0998', '653131', '新疆维吾尔自治区喀什地区塔什库尔干塔吉\r\n\r\n克自治县', '塔什库尔干塔吉克', null, null, '喀什地区塔什库尔干塔吉克自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11517', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653201', '新疆维吾尔自治区和田地区和田市', '和田市', null, null, '和田地区和田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11518', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653221', '新疆维吾尔自治区和田地区和田县', '和田县', null, null, '和田地区和田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11519', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653222', '新疆维吾尔自治区和田地区墨玉县', '墨玉县', null, null, '和田地区墨玉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11520', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653223', '新疆维吾尔自治区和田地区皮山县', '皮山县', null, null, '和田地区皮山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11521', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653224', '新疆维吾尔自治区和田地区洛浦县', '洛浦县', null, null, '和田地区洛浦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11522', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653225', '新疆维吾尔自治区和田地区策勒县', '策勒县', null, null, '和田地区策勒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11523', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653226', '新疆维吾尔自治区和田地区于田县', '于田县', null, null, '和田地区于田', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11524', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0903', '653227', '新疆维吾尔自治区和田地区民丰县', '民丰县', null, null, '和田地区民丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11525', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654002', '新疆维吾尔自治区伊犁哈萨克自治州 伊宁市', '伊宁市', null, null, '伊犁哈萨克\r\n\r\n自治州 伊宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11526', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0992', '654003', '新疆维吾尔自治区伊犁哈萨克自治州 奎屯市', '奎屯市', null, null, '伊犁哈萨克\r\n\r\n自治州 奎屯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11527', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654021', '新疆维吾尔自治区伊犁哈萨克自治州 伊宁县', '伊宁县', null, null, '伊犁哈萨克\r\n\r\n自治州 伊宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11528', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654022', '新疆维吾尔自治区伊犁哈萨克自治州 察布查尔\r\n\r\n锡伯自治县', '察布查尔锡伯', null, null, '伊犁哈萨克自治州 察布查尔锡伯自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11529', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654023', '新疆维吾尔自治区伊犁哈萨克自治州 霍城县', '霍城县', null, null, '伊犁哈萨克\r\n\r\n自治州 霍城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11530', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654024', '新疆维吾尔自治区伊犁哈萨克自治州 巩留县', '巩留县', null, null, '伊犁哈萨克\r\n\r\n自治州 巩留', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11531', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654025', '新疆维吾尔自治区伊犁哈萨克自治州 新源县', '新源县', null, null, '伊犁哈萨克\r\n\r\n自治州 新源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11532', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654026', '新疆维吾尔自治区伊犁哈萨克自治州 昭苏县', '昭苏县', null, null, '伊犁哈萨克\r\n\r\n自治州 昭苏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11533', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654027', '新疆维吾尔自治区伊犁哈萨克自治州 特克斯县', '特克斯县', null, null, '伊犁哈\r\n\r\n萨克自治州 特克斯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11534', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0999', '654028', '新疆维吾尔自治区伊犁哈萨克自治州 尼勒克县', '尼勒克县', null, null, '伊犁哈\r\n\r\n萨克自治州 尼勒克', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11535', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0901', '654201', '新疆维吾尔自治区塔城地区塔城市', '塔城市', null, null, '塔城地区塔城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11536', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0992', '654202', '新疆维吾尔自治区塔城地区乌苏市', '乌苏市', null, null, '塔城地区乌苏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11537', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0901', '654221', '新疆维吾尔自治区塔城地区额敏县', '额敏县', null, null, '塔城地区额敏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11538', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0993', '654223', '新疆维吾尔自治区塔城地区沙湾县', '沙湾县', null, null, '塔城地区沙湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11539', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0901', '654224', '新疆维吾尔自治区塔城地区托里县', '托里县', null, null, '塔城地区托里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11540', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0901', '654225', '新疆维吾尔自治区塔城地区裕民县', '裕民县', null, null, '塔城地区裕民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11541', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0990', '654226', '新疆维吾尔自治区塔城地区和布克赛尔蒙古自\r\n\r\n治县', '和布克赛尔', null, null, '塔城地区和布克赛尔蒙古自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11542', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654301', '新疆维吾尔自治区阿勒泰地区阿勒泰市', '阿勒泰市', null, null, '阿勒泰地区阿勒\r\n\r\n泰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11543', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654321', '新疆维吾尔自治区阿勒泰地区布尔津县', '布尔津县', null, null, '阿勒泰地区布尔\r\n\r\n津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11544', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654322', '新疆维吾尔自治区阿勒泰地区富蕴县', '富蕴县', null, null, '阿勒泰地区富蕴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11545', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654323', '新疆维吾尔自治区阿勒泰地区福海县', '福海县', null, null, '阿勒泰地区福海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11546', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654324', '新疆维吾尔自治区阿勒泰地区哈巴河县', '哈巴河县', null, null, '阿勒泰地区哈巴\r\n\r\n河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11547', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654325', '新疆维吾尔自治区阿勒泰地区青河县', '青河县', null, null, '阿勒泰地区青河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11548', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0906', '654326', '新疆维吾尔自治区阿勒泰地区吉木乃县', '吉木乃县', null, null, '阿勒泰地区吉木\r\n\r\n乃', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11549', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710101', '台湾省台北市中正区', '中正区', null, null, '台北中正', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11550', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710102', '台湾省台北市大同区', '大同区', null, null, '台北大同', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11551', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710103', '台湾省台北市中山区', '中山区', null, null, '台北中山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11552', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710104', '台湾省台北市松山区', '松山区', null, null, '台北松山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11553', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710105', '台湾省台北市大安区', '大安区', null, null, '台北大安', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11554', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710106', '台湾省台北市万华区', '万华区', null, null, '台北万华', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11555', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710107', '台湾省台北市信义区', '信义区', null, null, '台北信义', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11556', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710108', '台湾省台北市士林区', '士林区', null, null, '台北士林', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11557', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710109', '台湾省台北市北投区', '北投区', null, null, '台北北投', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11558', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710110', '台湾省台北市内湖区', '内湖区', null, null, '台北内湖', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11559', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710111', '台湾省台北市南港区', '南港区', null, null, '台北南港', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11560', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710112', '台湾省台北市文山区', '文山区', null, null, '台北文山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11561', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710201', '台湾省高雄市新兴区', '新兴区', null, null, '高雄新兴', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11562', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710202', '台湾省高雄市前金区', '前金区', null, null, '高雄前金', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11563', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710203', '台湾省高雄市芩雅区', '芩雅区', null, null, '高雄芩雅', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11564', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710204', '台湾省高雄市盐埕区', '盐埕区', null, null, '高雄盐埕', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11565', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710205', '台湾省高雄市鼓山区', '鼓山区', null, null, '高雄鼓山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11566', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710206', '台湾省高雄市旗津区', '旗津区', null, null, '高雄旗津', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11567', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710207', '台湾省高雄市前镇区', '前镇区', null, null, '高雄前镇', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11568', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710208', '台湾省高雄市三民区', '三民区', null, null, '高雄三民', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11569', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710209', '台湾省高雄市左营区', '左营区', null, null, '高雄左营', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11570', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710210', '台湾省高雄市楠梓区', '楠梓区', null, null, '高雄楠梓', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11571', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710211', '台湾省高雄市小港区', '小港区', null, null, '高雄小港', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11572', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710301', '台湾省基隆市仁爱区', '仁爱区', null, null, '基隆仁爱', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11573', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710302', '台湾省基隆市信义区', '信义区', null, null, '基隆信义', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11574', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710303', '台湾省基隆市中正区', '中正区', null, null, '基隆中正', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11575', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710304', '台湾省基隆市中山区', '中山区', null, null, '基隆中山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11576', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710305', '台湾省基隆市安乐区', '安乐区', null, null, '基隆安乐', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11577', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710306', '台湾省基隆市暖暖区', '暖暖区', null, null, '基隆暖暖', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11578', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710307', '台湾省基隆市七堵区', '七堵区', null, null, '基隆七堵', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11579', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710401', '台湾省台中市中区', '中区', null, null, '台中中', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11580', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710402', '台湾省台中市东区', '东区', null, null, '台中东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11581', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710403', '台湾省台中市南区', '南区', null, null, '台中南', '-1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11582', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710404', '台湾省台中市西区', '西区', null, null, '台中西', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11583', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710405', '台湾省台中市北区', '北区', null, null, '台中北', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11584', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710406', '台湾省台中市北屯区', '北屯区', null, null, '台中北屯', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11585', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710407', '台湾省台中市西屯区', '西屯区', null, null, '台中西屯', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11586', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710408', '台湾省台中市南屯区', '南屯区', null, null, '台中南屯', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11587', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710501', '台湾省台南市中西区', '中西区', null, null, '台南中西', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11588', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710502', '台湾省台南市东区', '东区', null, null, '台南东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11589', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710503', '台湾省台南市南区', '南区', null, null, '台南南', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11590', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710504', '台湾省台南市北区', '北区', null, null, '台南北', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11591', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710505', '台湾省台南市安平区', '安平区', null, null, '台南安平', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11592', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710506', '台湾省台南市安南区', '安南区', null, null, '台南安南', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11593', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710601', '台湾省新竹市东区', '东区', null, null, '新竹东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11594', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710602', '台湾省新竹市北区', '北区', null, null, '新竹北', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11595', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710603', '台湾省新竹市香山区', '香山区', null, null, '新竹香山', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11596', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710701', '台湾省嘉义市东区', '东区', null, null, '嘉义东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11597', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '710702', '台湾省嘉义市西区', '西区', null, null, '嘉义西', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11598', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719001', '台湾省省直辖台北县', '台北县', null, null, '台北', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11599', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719002', '台湾省省直辖宜兰县', '宜兰县', null, null, '宜兰', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11600', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719003', '台湾省省直辖新竹县', '新竹县', null, null, '新竹', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11601', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719004', '台湾省省直辖桃园县', '桃园县', null, null, '桃园', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11602', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719005', '台湾省省直辖苗栗县', '苗栗县', null, null, '苗栗', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11603', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719006', '台湾省省直辖台中县', '台中县', null, null, '台中', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11604', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719007', '台湾省省直辖彰化县', '彰化县', null, null, '彰化', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11605', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719008', '台湾省省直辖南投县', '南投县', null, null, '南投', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11606', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719009', '台湾省省直辖嘉义县', '嘉义县', null, null, '嘉义', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11607', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719010', '台湾省省直辖云林县', '云林县', null, null, '云林', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11608', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719011', '台湾省省直辖台南县', '台南县', null, null, '台南', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11609', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719012', '台湾省省直辖高雄县', '高雄县', null, null, '高雄', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11610', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719013', '台湾省省直辖屏东县', '屏东县', null, null, '屏东', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11611', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719014', '台湾省省直辖台东县', '台东县', null, null, '台东', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11612', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719015', '台湾省省直辖花莲县', '花莲县', null, null, '花莲', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11613', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '719016', '台湾省省直辖澎湖县', '澎湖县', null, null, '澎湖', '0', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('11614', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810101', '香港特别行政区香港岛中西区', '中西区', null, null, '香港岛中西', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11615', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810102', '香港特别行政区香港岛湾仔区 ', '湾仔区 ', null, null, '香港岛湾仔区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11616', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810103', '香港特别行政区香港岛东区 ', '东区 ', null, null, '香港岛东区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11617', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810104', '香港特别行政区香港岛南区', '南区', null, null, '香港岛南', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11618', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810201', '香港特别行政区九龙油尖旺区 ', '油尖旺区 ', null, null, '九龙油尖旺区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11619', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810202', '香港特别行政区九龙深水埗区', '深水埗区', null, null, '九龙深水埗', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11620', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810203', '香港特别行政区九龙九龙城区', '九龙城区', null, null, '九龙九龙城', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11621', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810204', '香港特别行政区九龙黄大仙区', '黄大仙区', null, null, '九龙黄大仙', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11622', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810205', '香港特别行政区九龙观塘区', '观塘区', null, null, '九龙观塘', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11623', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810301', '香港特别行政区新界北区 ', '北区 ', null, null, '新界北区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11624', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810302', '香港特别行政区新界大埔区', '大埔区', null, null, '新界大埔', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11625', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810303', '香港特别行政区新界沙田区 ', '沙田区 ', null, null, '新界沙田区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11626', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810304', '香港特别行政区新界西贡区', '西贡区', null, null, '新界西贡', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11627', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810305', '香港特别行政区新界荃湾区', '荃湾区', null, null, '新界荃湾', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11628', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810306', '香港特别行政区新界屯门区 ', '屯门区 ', null, null, '新界屯门区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11629', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810307', '香港特别行政区新界元朗区 ', '元朗区 ', null, null, '新界元朗区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11630', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810308', '香港特别行政区新界葵青区', '葵青区', null, null, '新界葵青', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11631', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00852', '810309', '香港特别行政区新界离岛区 ', '离岛区 ', null, null, '新界离岛区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11632', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820101', '澳门特别行政区澳门半岛花地玛堂区 ', '花地玛堂区 ', null, null, '澳门半岛花地\r\n\r\n玛堂区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11633', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820102', '澳门特别行政区澳门半岛圣安多尼堂区 ', '圣安多尼堂区 ', null, null, '澳门半岛\r\n\r\n圣安多尼堂区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11634', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820103', '澳门特别行政区澳门半岛大堂区 ', '大堂区 ', null, null, '澳门半岛大堂区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11635', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820104', '澳门特别行政区澳门半岛望德堂区 ', '望德堂区 ', null, null, '澳门半岛望德堂区\r\n\r\n', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11636', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820105', '澳门特别行政区澳门半岛风顺堂区 ', '风顺堂区 ', null, null, '澳门半岛风顺堂区\r\n\r\n', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11637', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820201', '澳门特别行政区澳门离岛嘉模堂区 ', '嘉模堂区 ', null, null, '澳门离岛嘉模堂区\r\n\r\n', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11638', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820202', '澳门特别行政区澳门离岛圣方济各堂区 ', '圣方济各堂区 ', null, null, '澳门离岛\r\n\r\n圣方济各堂区', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11639', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00853', '820301', '澳门特别行政区无堂区划分区域路氹城 ', '路氹城 ', null, null, '无堂区划分区域\r\n\r\n路氹城', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11640', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510104', '四川省成都市锦江区', '锦江区', null, null, '成都锦江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11641', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510105', '四川省成都市青羊区', '青羊区', null, null, '成都青羊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11642', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510106', '四川省成都市金牛区', '金牛区', null, null, '成都金牛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11643', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510107', '四川省成都市武侯区', '武侯区', null, null, '成都武侯', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11644', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510108', '四川省成都市成华区', '成华区', null, null, '成都成华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11645', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510112', '四川省成都市龙泉驿区', '龙泉驿区', null, null, '成都龙泉驿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11646', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510113', '四川省成都市青白江区', '青白江区', null, null, '成都青白江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11647', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510114', '四川省成都市新都区', '新都区', null, null, '成都新都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11648', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510115', '四川省成都市温江区', '温江区', null, null, '成都温江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11649', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510121', '四川省成都市金堂县', '金堂县', null, null, '成都金堂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11650', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510122', '四川省成都市双流县', '双流县', null, null, '成都双流', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11651', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510124', '四川省成都市郫县', '郫县', null, null, '成都郫', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11652', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510129', '四川省成都市大邑县', '大邑县', null, null, '成都大邑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11653', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510131', '四川省成都市蒲江县', '蒲江县', null, null, '成都蒲江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11654', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510132', '四川省成都市新津县', '新津县', null, null, '成都新津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11655', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510181', '四川省成都市都江堰市', '都江堰市', null, null, '成都都江堰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11656', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510182', '四川省成都市彭州市', '彭州市', null, null, '成都彭州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11657', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510183', '四川省成都市邛崃市', '邛崃市', null, null, '成都邛崃', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11658', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '510184', '四川省成都市崇州市', '崇州市', null, null, '成都崇州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11659', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510302', '四川省自贡市自流井区', '自流井区', null, null, '自贡自流井', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11660', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510303', '四川省自贡市贡井区', '贡井区', null, null, '自贡贡井', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11661', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510304', '四川省自贡市大安区', '大安区', null, null, '自贡大安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11662', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510311', '四川省自贡市沿滩区', '沿滩区', null, null, '自贡沿滩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11663', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510321', '四川省自贡市荣县', '荣县', null, null, '自贡荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11664', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0813', '510322', '四川省自贡市富顺县', '富顺县', null, null, '自贡富顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11665', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510402', '四川省攀枝花市东区', '东区', null, null, '攀枝花东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11666', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510403', '四川省攀枝花市西区', '西区', null, null, '攀枝花西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11667', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510411', '四川省攀枝花市仁和区', '仁和区', null, null, '攀枝花仁和', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11668', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510421', '四川省攀枝花市米易县', '米易县', null, null, '攀枝花米易', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11669', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0812', '510422', '四川省攀枝花市盐边县', '盐边县', null, null, '攀枝花盐边', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11670', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510502', '四川省泸州市江阳区', '江阳区', null, null, '泸州江阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11671', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510503', '四川省泸州市纳溪区', '纳溪区', null, null, '泸州纳溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11672', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510504', '四川省泸州市龙马潭区', '龙马潭区', null, null, '泸州龙马潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11673', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510521', '四川省泸州市泸县', '泸县', null, null, '泸州泸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11674', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510522', '四川省泸州市合江县', '合江县', null, null, '泸州合江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11675', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510524', '四川省泸州市叙永县', '叙永县', null, null, '泸州叙永', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11676', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0840', '510525', '四川省泸州市古蔺县', '古蔺县', null, null, '泸州古蔺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11677', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510603', '四川省德阳市旌阳区', '旌阳区', null, null, '德阳旌阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11678', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510623', '四川省德阳市中江县', '中江县', null, null, '德阳中江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11679', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510626', '四川省德阳市罗江县', '罗江县', null, null, '德阳罗江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11680', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510681', '四川省德阳市广汉市', '广汉市', null, null, '德阳广汉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11681', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510682', '四川省德阳市什邡市', '什邡市', null, null, '德阳什邡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11682', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0838', '510683', '四川省德阳市绵竹市', '绵竹市', null, null, '德阳绵竹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11683', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510703', '四川省绵阳市涪城区', '涪城区', null, null, '绵阳涪城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11684', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510704', '四川省绵阳市游仙区', '游仙区', null, null, '绵阳游仙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11685', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510722', '四川省绵阳市三台县', '三台县', null, null, '绵阳三台', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11686', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510723', '四川省绵阳市盐亭县', '盐亭县', null, null, '绵阳盐亭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11687', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510724', '四川省绵阳市安县', '安县', null, null, '绵阳安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11688', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510725', '四川省绵阳市梓潼县', '梓潼县', null, null, '绵阳梓潼', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11689', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510726', '四川省绵阳市北川羌族自治县', '北川', null, null, '绵阳北川羌族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11690', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510727', '四川省绵阳市平武县', '平武县', null, null, '绵阳平武', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11691', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0816', '510781', '四川省绵阳市江油市', '江油市', null, null, '绵阳江油', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11692', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510802', '四川省广元市利州区', '利州区', null, null, '广元利州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11693', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510811', '四川省广元市元坝区', '元坝区', null, null, '广元元坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11694', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510812', '四川省广元市朝天区', '朝天区', null, null, '广元朝天', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11695', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510821', '四川省广元市旺苍县', '旺苍县', null, null, '广元旺苍', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11696', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510822', '四川省广元市青川县', '青川县', null, null, '广元青川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11697', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510823', '四川省广元市剑阁县', '剑阁县', null, null, '广元剑阁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11698', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0839', '510824', '四川省广元市苍溪县', '苍溪县', null, null, '广元苍溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11699', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510903', '四川省遂宁市船山区', '船山区', null, null, '遂宁船山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11700', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510904', '四川省遂宁市安居区', '安居区', null, null, '遂宁安居', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11701', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510921', '四川省遂宁市蓬溪县', '蓬溪县', null, null, '遂宁蓬溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11702', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510922', '四川省遂宁市射洪县', '射洪县', null, null, '遂宁射洪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11703', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0825', '510923', '四川省遂宁市大英县', '大英县', null, null, '遂宁大英', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11704', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511002', '四川省内江市市中区', '市中区', null, null, '内江中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11705', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511011', '四川省内江市东兴区', '东兴区', null, null, '内江东兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11706', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511024', '四川省内江市威远县', '威远县', null, null, '内江威远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11707', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511025', '四川省内江市资中县', '资中县', null, null, '内江资中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11708', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0832', '511028', '四川省内江市隆昌县', '隆昌县', null, null, '内江隆昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11709', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511102', '四川省乐山市市中区', '市中区', null, null, '乐山中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11710', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511111', '四川省乐山市沙湾区', '沙湾区', null, null, '乐山沙湾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11711', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511112', '四川省乐山市五通桥区', '五通桥区', null, null, '乐山五通桥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11712', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511113', '四川省乐山市金口河区', '金口河区', null, null, '乐山金口河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11713', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511123', '四川省乐山市犍为县', '犍为县', null, null, '乐山犍为', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11714', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511124', '四川省乐山市井研县', '井研县', null, null, '乐山井研', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11715', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511126', '四川省乐山市夹江县', '夹江县', null, null, '乐山夹江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11716', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511129', '四川省乐山市沐川县', '沐川县', null, null, '乐山沐川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11717', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511132', '四川省乐山市峨边彝族自治县', '峨边', null, null, '乐山峨边彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11718', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511133', '四川省乐山市马边彝族自治县', '马边', null, null, '乐山马边彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11719', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0833', '511181', '四川省乐山市峨眉山市', '峨眉山市', null, null, '乐山峨眉山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11720', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511302', '四川省南充市顺庆区', '顺庆区', null, null, '南充顺庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11721', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511303', '四川省南充市高坪区', '高坪区', null, null, '南充高坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11722', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511304', '四川省南充市嘉陵区', '嘉陵区', null, null, '南充嘉陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11723', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511321', '四川省南充市南部县', '南部县', null, null, '南充南部', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11724', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511322', '四川省南充市营山县', '营山县', null, null, '南充营山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11725', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511323', '四川省南充市蓬安县', '蓬安县', null, null, '南充蓬安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11726', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511324', '四川省南充市仪陇县', '仪陇县', null, null, '南充仪陇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11727', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511325', '四川省南充市西充县', '西充县', null, null, '南充西充', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11728', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0817', '511381', '四川省南充市阆中市', '阆中市', null, null, '南充阆中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11729', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511402', '四川省眉山市东坡区', '东坡区', null, null, '眉山东坡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11730', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511421', '四川省眉山市仁寿县', '仁寿县', null, null, '眉山仁寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11731', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511422', '四川省眉山市彭山县', '彭山县', null, null, '眉山彭山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11732', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511423', '四川省眉山市洪雅县', '洪雅县', null, null, '眉山洪雅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11733', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511424', '四川省眉山市丹棱县', '丹棱县', null, null, '眉山丹棱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11734', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '511425', '四川省眉山市青神县', '青神县', null, null, '眉山青神', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11735', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511502', '四川省宜宾市翠屏区', '翠屏区', null, null, '宜宾翠屏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11736', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511522', '四川省宜宾市南溪区', '南溪区', null, null, '宜宾南溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11737', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511521', '四川省宜宾市宜宾县', '宜宾县', null, null, '宜宾宜宾', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11738', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511523', '四川省宜宾市江安县', '江安县', null, null, '宜宾江安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11739', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511524', '四川省宜宾市长宁县', '长宁县', null, null, '宜宾长宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11740', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511525', '四川省宜宾市高县', '高县', null, null, '宜宾高', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11741', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511526', '四川省宜宾市珙县', '珙县', null, null, '宜宾珙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11742', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511527', '四川省宜宾市筠连县', '筠连县', null, null, '宜宾筠连', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11743', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511528', '四川省宜宾市兴文县', '兴文县', null, null, '宜宾兴文', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11744', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0831', '511529', '四川省宜宾市屏山县', '屏山县', null, null, '宜宾屏山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11745', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511602', '四川省广安市广安区', '广安区', null, null, '广安广安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11746', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511621', '四川省广安市岳池县', '岳池县', null, null, '广安岳池', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11747', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511622', '四川省广安市武胜县', '武胜县', null, null, '广安武胜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11748', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511623', '四川省广安市邻水县', '邻水县', null, null, '广安邻水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11749', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0826', '511681', '四川省广安市华蓥市', '华蓥市', null, null, '广安华蓥', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11750', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511702', '四川省达州市通川区', '通川区', null, null, '达州通川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11751', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511721', '四川省达州市达县', '达县', null, null, '达州达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11752', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511722', '四川省达州市宣汉县', '宣汉县', null, null, '达州宣汉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11753', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511723', '四川省达州市开江县', '开江县', null, null, '达州开江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11754', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511724', '四川省达州市大竹县', '大竹县', null, null, '达州大竹', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11755', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511725', '四川省达州市渠县', '渠县', null, null, '达州渠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11756', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0818', '511781', '四川省达州市万源市', '万源市', null, null, '达州万源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11757', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511802', '四川省雅安市雨城区', '雨城区', null, null, '雅安雨城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11758', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511821', '四川省雅安市名山县', '名山县', null, null, '雅安名山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11759', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511822', '四川省雅安市荥经县', '荥经县', null, null, '雅安荥经', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11760', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511823', '四川省雅安市汉源县', '汉源县', null, null, '雅安汉源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11761', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511824', '四川省雅安市石棉县', '石棉县', null, null, '雅安石棉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11762', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511825', '四川省雅安市天全县', '天全县', null, null, '雅安天全', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11763', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511826', '四川省雅安市芦山县', '芦山县', null, null, '雅安芦山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11764', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0835', '511827', '四川省雅安市宝兴县', '宝兴县', null, null, '雅安宝兴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11765', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0827', '511902', '四川省巴中市巴州区', '巴州区', null, null, '巴中巴州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11766', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0827', '511921', '四川省巴中市通江县', '通江县', null, null, '巴中通江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11767', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0827', '511922', '四川省巴中市南江县', '南江县', null, null, '巴中南江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11768', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0827', '511923', '四川省巴中市平昌县', '平昌县', null, null, '巴中平昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11769', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '512002', '四川省资阳市雁江区', '雁江区', null, null, '资阳雁江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11770', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '512021', '四川省资阳市安岳县', '安岳县', null, null, '资阳安岳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11771', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '512022', '四川省资阳市乐至县', '乐至县', null, null, '资阳乐至', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11772', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '028', '512081', '四川省资阳市简阳市', '简阳市', null, null, '资阳简阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11773', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513221', '四川省阿坝藏族羌族自治州 汶川县', '汶川县', null, null, '阿坝藏族羌族自治州 \r\n\r\n汶川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11774', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513222', '四川省阿坝藏族羌族自治州 理县', '理县', null, null, '阿坝藏族羌族自治州 理', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11775', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513223', '四川省阿坝藏族羌族自治州 茂县', '茂县', null, null, '阿坝藏族羌族自治州 茂', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11776', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513224', '四川省阿坝藏族羌族自治州 松潘县', '松潘县', null, null, '阿坝藏族羌族自治州 \r\n\r\n松潘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11777', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513225', '四川省阿坝藏族羌族自治州 九寨沟县', '九寨沟县', null, null, '阿坝藏族羌族自\r\n\r\n治州 九寨沟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11778', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513226', '四川省阿坝藏族羌族自治州 金川县', '金川县', null, null, '阿坝藏族羌族自治州 \r\n\r\n金川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11779', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513227', '四川省阿坝藏族羌族自治州 小金县', '小金县', null, null, '阿坝藏族羌族自治州 \r\n\r\n小金', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11780', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513228', '四川省阿坝藏族羌族自治州 黑水县', '黑水县', null, null, '阿坝藏族羌族自治州 \r\n\r\n黑水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11781', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513229', '四川省阿坝藏族羌族自治州 马尔康县', '马尔康县', null, null, '阿坝藏族羌族自\r\n\r\n治州 马尔康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11782', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513230', '四川省阿坝藏族羌族自治州 壤塘县', '壤塘县', null, null, '阿坝藏族羌族自治州 \r\n\r\n壤塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11783', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513231', '四川省阿坝藏族羌族自治州 阿坝县', '阿坝县', null, null, '阿坝藏族羌族自治州 \r\n\r\n阿坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11784', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513232', '四川省阿坝藏族羌族自治州 若尔盖县', '若尔盖县', null, null, '阿坝藏族羌族自\r\n\r\n治州 若尔盖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11785', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0837', '513233', '四川省阿坝藏族羌族自治州 红原县', '红原县', null, null, '阿坝藏族羌族自治州 \r\n\r\n红原', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11786', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513321', '四川省甘孜藏族自治州 康定县', '康定县', null, null, '甘孜藏族自治州 康定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11787', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513322', '四川省甘孜藏族自治州 泸定县', '泸定县', null, null, '甘孜藏族自治州 泸定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11788', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513323', '四川省甘孜藏族自治州 丹巴县', '丹巴县', null, null, '甘孜藏族自治州 丹巴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11789', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513324', '四川省甘孜藏族自治州 九龙县', '九龙县', null, null, '甘孜藏族自治州 九龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11790', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513325', '四川省甘孜藏族自治州 雅江县', '雅江县', null, null, '甘孜藏族自治州 雅江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11791', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513326', '四川省甘孜藏族自治州 道孚县', '道孚县', null, null, '甘孜藏族自治州 道孚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11792', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513327', '四川省甘孜藏族自治州 炉霍县', '炉霍县', null, null, '甘孜藏族自治州 炉霍', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11793', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513328', '四川省甘孜藏族自治州 甘孜县', '甘孜县', null, null, '甘孜藏族自治州 甘孜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11794', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513329', '四川省甘孜藏族自治州 新龙县', '新龙县', null, null, '甘孜藏族自治州 新龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11795', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513330', '四川省甘孜藏族自治州 德格县', '德格县', null, null, '甘孜藏族自治州 德格', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11796', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513331', '四川省甘孜藏族自治州 白玉县', '白玉县', null, null, '甘孜藏族自治州 白玉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11797', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513332', '四川省甘孜藏族自治州 石渠县', '石渠县', null, null, '甘孜藏族自治州 石渠', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11798', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513333', '四川省甘孜藏族自治州 色达县', '色达县', null, null, '甘孜藏族自治州 色达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11799', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513334', '四川省甘孜藏族自治州 理塘县', '理塘县', null, null, '甘孜藏族自治州 理塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11800', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513335', '四川省甘孜藏族自治州 巴塘县', '巴塘县', null, null, '甘孜藏族自治州 巴塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11801', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513336', '四川省甘孜藏族自治州 乡城县', '乡城县', null, null, '甘孜藏族自治州 乡城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11802', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513337', '四川省甘孜藏族自治州 稻城县', '稻城县', null, null, '甘孜藏族自治州 稻城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11803', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0836', '513338', '四川省甘孜藏族自治州 得荣县', '得荣县', null, null, '甘孜藏族自治州 得荣', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11804', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513401', '四川省凉山彝族自治州 西昌市', '西昌市', null, null, '凉山彝族自治州 西昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11805', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513422', '四川省凉山彝族自治州 木里藏族自治县', '木里', null, null, '凉山彝\r\n\r\n族自治州 木里藏族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11806', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513423', '四川省凉山彝族自治州 盐源县', '盐源县', null, null, '凉山彝族自治州 盐源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11807', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513424', '四川省凉山彝族自治州 德昌县', '德昌县', null, null, '凉山彝族自治州 德昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11808', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513425', '四川省凉山彝族自治州 会理县', '会理县', null, null, '凉山彝族自治州 会理', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11809', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513426', '四川省凉山彝族自治州 会东县', '会东县', null, null, '凉山彝族自治州 会东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11810', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513427', '四川省凉山彝族自治州 宁南县', '宁南县', null, null, '凉山彝族自治州 宁南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11811', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513428', '四川省凉山彝族自治州 普格县', '普格县', null, null, '凉山彝族自治州 普格', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11812', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513429', '四川省凉山彝族自治州 布拖县', '布拖县', null, null, '凉山彝族自治州 布拖', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11813', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513430', '四川省凉山彝族自治州 金阳县', '金阳县', null, null, '凉山彝族自治州 金阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11814', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513431', '四川省凉山彝族自治州 昭觉县', '昭觉县', null, null, '凉山彝族自治州 昭觉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11815', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513432', '四川省凉山彝族自治州 喜德县', '喜德县', null, null, '凉山彝族自治州 喜德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11816', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513433', '四川省凉山彝族自治州 冕宁县', '冕宁县', null, null, '凉山彝族自治州 冕宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11817', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513434', '四川省凉山彝族自治州 越西县', '越西县', null, null, '凉山彝族自治州 越西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11818', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513435', '四川省凉山彝族自治州 甘洛县', '甘洛县', null, null, '凉山彝族自治州 甘洛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11819', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513436', '四川省凉山彝族自治州 美姑县', '美姑县', null, null, '凉山彝族自治州 美姑', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11820', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0834', '513437', '四川省凉山彝族自治州 雷波县', '雷波县', null, null, '凉山彝族自治州 雷波', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11821', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520102', '贵州省贵阳市南明区', '南明区', null, null, '贵阳南明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11822', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520103', '贵州省贵阳市云岩区', '云岩区', null, null, '贵阳云岩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11823', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520111', '贵州省贵阳市花溪区', '花溪区', null, null, '贵阳花溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11824', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520112', '贵州省贵阳市乌当区', '乌当区', null, null, '贵阳乌当', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11825', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520113', '贵州省贵阳市白云区', '白云区', null, null, '贵阳白云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11826', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520114', '贵州省贵阳市小河区', '小河区', null, null, '贵阳小河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11827', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520121', '贵州省贵阳市开阳县', '开阳县', null, null, '贵阳开阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11828', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520122', '贵州省贵阳市息烽县', '息烽县', null, null, '贵阳息烽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11829', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520123', '贵州省贵阳市修文县', '修文县', null, null, '贵阳修文', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11830', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0851', '520181', '贵州省贵阳市清镇市', '清镇市', null, null, '贵阳清镇', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11831', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0858', '520201', '贵州省六盘水市钟山区', '钟山区', null, null, '六盘水钟山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11832', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0858', '520203', '贵州省六盘水市六枝特区', '六枝特区', null, null, '六盘水六枝特', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11833', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0858', '520221', '贵州省六盘水市水城县', '水城县', null, null, '六盘水水城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11834', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0858', '520222', '贵州省六盘水市盘县', '盘县', null, null, '六盘水盘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11835', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520302', '贵州省遵义市红花岗区', '红花岗区', null, null, '遵义红花岗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11836', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520303', '贵州省遵义市汇川区', '汇川区', null, null, '遵义汇川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11837', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520321', '贵州省遵义市遵义县', '遵义县', null, null, '遵义遵义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11838', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520322', '贵州省遵义市桐梓县', '桐梓县', null, null, '遵义桐梓', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11839', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520323', '贵州省遵义市绥阳县', '绥阳县', null, null, '遵义绥阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11840', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520324', '贵州省遵义市正安县', '正安县', null, null, '遵义正安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11841', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520325', '贵州省遵义市道真仡佬族苗族自治县', '道真', null, null, '遵义\r\n\r\n道真仡佬族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11842', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520326', '贵州省遵义市务川仡佬族苗族自治县', '务川', null, null, '遵义\r\n\r\n务川仡佬族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11843', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520327', '贵州省遵义市凤冈县', '凤冈县', null, null, '遵义凤冈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11844', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520328', '贵州省遵义市湄潭县', '湄潭县', null, null, '遵义湄潭', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11845', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520329', '贵州省遵义市余庆县', '余庆县', null, null, '遵义余庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11846', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520330', '贵州省遵义市习水县', '习水县', null, null, '遵义习水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11847', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520381', '贵州省遵义市赤水市', '赤水市', null, null, '遵义赤水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11848', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0852', '520382', '贵州省遵义市仁怀市', '仁怀市', null, null, '遵义仁怀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11849', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520402', '贵州省安顺市西秀区', '西秀区', null, null, '安顺西秀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11850', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520421', '贵州省安顺市平坝县', '平坝县', null, null, '安顺平坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11851', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520422', '贵州省安顺市普定县', '普定县', null, null, '安顺普定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11852', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520423', '贵州省安顺市镇宁布依族苗族自治县', '镇宁', null, null, '安顺\r\n\r\n镇宁布依族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11853', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520424', '贵州省安顺市关岭布依族苗族自治县', '关岭', null, null, '安顺\r\n\r\n关岭布依族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11854', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0853', '520425', '贵州省安顺市紫云苗族布依族自治县', '紫云', null, null, '安顺\r\n\r\n紫云苗族布依族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11873', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522301', '贵州省黔西南布依族苗族自治州 兴义市', '兴义市', null, null, '黔西南布依族苗\r\n\r\n族自治州 兴义', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11874', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522322', '贵州省黔西南布依族苗族自治州 兴仁县', '兴仁县', null, null, '黔西南布依族苗\r\n\r\n族自治州 兴仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11875', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522323', '贵州省黔西南布依族苗族自治州 普安县', '普安县', null, null, '黔西南布依族苗\r\n\r\n族自治州 普安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11876', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522324', '贵州省黔西南布依族苗族自治州 晴隆县', '晴隆县', null, null, '黔西南布依族苗\r\n\r\n族自治州 晴隆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11877', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522325', '贵州省黔西南布依族苗族自治州 贞丰县', '贞丰县', null, null, '黔西南布依族苗\r\n\r\n族自治州 贞丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11878', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522326', '贵州省黔西南布依族苗族自治州 望谟县', '望谟县', null, null, '黔西南布依族苗\r\n\r\n族自治州 望谟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11879', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522327', '贵州省黔西南布依族苗族自治州 册亨县', '册亨县', null, null, '黔西南布依族苗\r\n\r\n族自治州 册亨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11880', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0859', '522328', '贵州省黔西南布依族苗族自治州 安龙县', '安龙县', null, null, '黔西南布依族苗\r\n\r\n族自治州 安龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11881', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522601', '贵州省黔东南苗族侗族自治州 凯里市', '凯里市', null, null, '黔东南苗族侗族自\r\n\r\n治州 凯里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11882', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522622', '贵州省黔东南苗族侗族自治州 黄平县', '黄平县', null, null, '黔东南苗族侗族自\r\n\r\n治州 黄平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11883', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522623', '贵州省黔东南苗族侗族自治州 施秉县', '施秉县', null, null, '黔东南苗族侗族自\r\n\r\n治州 施秉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11884', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522624', '贵州省黔东南苗族侗族自治州 三穗县', '三穗县', null, null, '黔东南苗族侗族自\r\n\r\n治州 三穗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11885', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522625', '贵州省黔东南苗族侗族自治州 镇远县', '镇远县', null, null, '黔东南苗族侗族自\r\n\r\n治州 镇远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11886', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522626', '贵州省黔东南苗族侗族自治州 岑巩县', '岑巩县', null, null, '黔东南苗族侗族自\r\n\r\n治州 岑巩', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11887', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522627', '贵州省黔东南苗族侗族自治州 天柱县', '天柱县', null, null, '黔东南苗族侗族自\r\n\r\n治州 天柱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11888', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522628', '贵州省黔东南苗族侗族自治州 锦屏县', '锦屏县', null, null, '黔东南苗族侗族自\r\n\r\n治州 锦屏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11889', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522629', '贵州省黔东南苗族侗族自治州 剑河县', '剑河县', null, null, '黔东南苗族侗族自\r\n\r\n治州 剑河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11890', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522630', '贵州省黔东南苗族侗族自治州 台江县', '台江县', null, null, '黔东南苗族侗族自\r\n\r\n治州 台江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11891', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522631', '贵州省黔东南苗族侗族自治州 黎平县', '黎平县', null, null, '黔东南苗族侗族自\r\n\r\n治州 黎平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11892', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522632', '贵州省黔东南苗族侗族自治州 榕江县', '榕江县', null, null, '黔东南苗族侗族自\r\n\r\n治州 榕江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11893', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522633', '贵州省黔东南苗族侗族自治州 从江县', '从江县', null, null, '黔东南苗族侗族自\r\n\r\n治州 从江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11894', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522634', '贵州省黔东南苗族侗族自治州 雷山县', '雷山县', null, null, '黔东南苗族侗族自\r\n\r\n治州 雷山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11895', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522635', '贵州省黔东南苗族侗族自治州 麻江县', '麻江县', null, null, '黔东南苗族侗族自\r\n\r\n治州 麻江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11896', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0855', '522636', '贵州省黔东南苗族侗族自治州 丹寨县', '丹寨县', null, null, '黔东南苗族侗族自\r\n\r\n治州 丹寨', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11897', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522701', '贵州省黔南布依族苗族自治州 都匀市', '都匀市', null, null, '黔南布依族苗族自\r\n\r\n治州 都匀', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11898', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522702', '贵州省黔南布依族苗族自治州 福泉市', '福泉市', null, null, '黔南布依族苗族自\r\n\r\n治州 福泉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11899', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522722', '贵州省黔南布依族苗族自治州 荔波县', '荔波县', null, null, '黔南布依族苗族自\r\n\r\n治州 荔波', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11900', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522723', '贵州省黔南布依族苗族自治州 贵定县', '贵定县', null, null, '黔南布依族苗族自\r\n\r\n治州 贵定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11901', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522725', '贵州省黔南布依族苗族自治州 瓮安县', '瓮安县', null, null, '黔南布依族苗族自\r\n\r\n治州 瓮安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11902', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522726', '贵州省黔南布依族苗族自治州 独山县', '独山县', null, null, '黔南布依族苗族自\r\n\r\n治州 独山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11903', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522727', '贵州省黔南布依族苗族自治州 平塘县', '平塘县', null, null, '黔南布依族苗族自\r\n\r\n治州 平塘', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11904', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522728', '贵州省黔南布依族苗族自治州 罗甸县', '罗甸县', null, null, '黔南布依族苗族自\r\n\r\n治州 罗甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11905', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522729', '贵州省黔南布依族苗族自治州 长顺县', '长顺县', null, null, '黔南布依族苗族自\r\n\r\n治州 长顺', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11906', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522730', '贵州省黔南布依族苗族自治州 龙里县', '龙里县', null, null, '黔南布依族苗族自\r\n\r\n治州 龙里', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11907', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522731', '贵州省黔南布依族苗族自治州 惠水县', '惠水县', null, null, '黔南布依族苗族自\r\n\r\n治州 惠水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11908', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0854', '522732', '贵州省黔南布依族苗族自治州 三都水族自治县', '三都', null, null, '\r\n\r\n黔南布依族苗族自治州 三都水族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11909', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530102', '云南省昆明市五华区', '五华区', null, null, '昆明五华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11910', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530103', '云南省昆明市盘龙区', '盘龙区', null, null, '昆明盘龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11911', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530111', '云南省昆明市官渡区', '官渡区', null, null, '昆明官渡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11912', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530112', '云南省昆明市西山区', '西山区', null, null, '昆明西山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11913', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0881', '530113', '云南省昆明市东川区', '东川区', null, null, '昆明东川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11914', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530121', '云南省昆明市呈贡区', '呈贡区', null, null, '昆明呈贡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11915', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530122', '云南省昆明市晋宁县', '晋宁县', null, null, '昆明晋宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11916', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530124', '云南省昆明市富民县', '富民县', null, null, '昆明富民', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11917', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530125', '云南省昆明市宜良县', '宜良县', null, null, '昆明宜良', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11918', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530126', '云南省昆明市石林彝族自治县', '石林', null, null, '昆明石林彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11919', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530127', '云南省昆明市嵩明县', '嵩明县', null, null, '昆明嵩明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11920', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530128', '云南省昆明市禄劝彝族苗族自治县', '禄劝', null, null, '昆明禄\r\n\r\n劝彝族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11921', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530129', '云南省昆明市寻甸回族彝族自治县', '寻甸', null, null, '昆明寻\r\n\r\n甸回族彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11922', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0871', '530181', '云南省昆明市安宁市', '安宁市', null, null, '昆明安宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11923', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530302', '云南省曲靖市麒麟区', '麒麟区', null, null, '曲靖麒麟', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11924', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530321', '云南省曲靖市马龙县', '马龙县', null, null, '曲靖马龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11925', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530322', '云南省曲靖市陆良县', '陆良县', null, null, '曲靖陆良', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11926', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530323', '云南省曲靖市师宗县', '师宗县', null, null, '曲靖师宗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11927', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530324', '云南省曲靖市罗平县', '罗平县', null, null, '曲靖罗平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11928', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530325', '云南省曲靖市富源县', '富源县', null, null, '曲靖富源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11929', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530326', '云南省曲靖市会泽县', '会泽县', null, null, '曲靖会泽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11930', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530328', '云南省曲靖市沾益县', '沾益县', null, null, '曲靖沾益', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11931', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0874', '530381', '云南省曲靖市宣威市', '宣威市', null, null, '曲靖宣威', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11932', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530402', '云南省玉溪市红塔区', '红塔区', null, null, '玉溪红塔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11933', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530421', '云南省玉溪市江川县', '江川县', null, null, '玉溪江川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11934', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530422', '云南省玉溪市澄江县', '澄江县', null, null, '玉溪澄江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11935', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530423', '云南省玉溪市通海县', '通海县', null, null, '玉溪通海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11936', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530424', '云南省玉溪市华宁县', '华宁县', null, null, '玉溪华宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11937', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530425', '云南省玉溪市易门县', '易门县', null, null, '玉溪易门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11938', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530426', '云南省玉溪市峨山彝族自治县', '峨山', null, null, '玉溪峨山彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11939', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530427', '云南省玉溪市新平彝族傣族自治县', '新平', null, null, '玉溪新\r\n\r\n平彝族傣族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11940', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0877', '530428', '云南省玉溪市元江哈尼族彝族傣族自治县\r\n\r\n', '元江', null, null, '玉溪元江哈尼族彝族傣族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11941', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530502', '云南省保山市隆阳区', '隆阳区', null, null, '保山隆阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11942', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530521', '云南省保山市施甸县', '施甸县', null, null, '保山施甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11943', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530522', '云南省保山市腾冲县', '腾冲县', null, null, '保山腾冲', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11944', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530523', '云南省保山市龙陵县', '龙陵县', null, null, '保山龙陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11945', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0875', '530524', '云南省保山市昌宁县', '昌宁县', null, null, '保山昌宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11946', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530602', '云南省昭通市昭阳区', '昭阳区', null, null, '昭通昭阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11947', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530621', '云南省昭通市鲁甸县', '鲁甸县', null, null, '昭通鲁甸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11948', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530622', '云南省昭通市巧家县', '巧家县', null, null, '昭通巧家', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11949', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530623', '云南省昭通市盐津县', '盐津县', null, null, '昭通盐津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11950', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530624', '云南省昭通市大关县', '大关县', null, null, '昭通大关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11951', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530625', '云南省昭通市永善县', '永善县', null, null, '昭通永善', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11952', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530626', '云南省昭通市绥江县', '绥江县', null, null, '昭通绥江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11953', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530627', '云南省昭通市镇雄县', '镇雄县', null, null, '昭通镇雄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11954', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530628', '云南省昭通市彝良县', '彝良县', null, null, '昭通彝良', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11955', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530629', '云南省昭通市威信县', '威信县', null, null, '昭通威信', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11956', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0870', '530630', '云南省昭通市水富县', '水富县', null, null, '昭通水富', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11957', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530702', '云南省丽江市古城区', '古城区', null, null, '丽江古城', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11958', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530721', '云南省丽江市玉龙纳西族自治县', '玉龙', null, null, '丽江玉龙纳\r\n\r\n西族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11959', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530722', '云南省丽江市永胜县', '永胜县', null, null, '丽江永胜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11960', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530723', '云南省丽江市华坪县', '华坪县', null, null, '丽江华坪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11961', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0888', '530724', '云南省丽江市宁蒗彝族自治县', '宁蒗', null, null, '丽江宁蒗彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11962', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530802', '云南省普洱市思茅区', '思茅区', null, null, '普洱思茅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11963', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530821', '云南省普洱市宁洱哈尼族彝族自治县', '宁洱', null, null, '普洱\r\n\r\n宁洱哈尼族彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11964', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530822', '云南省普洱市墨江哈尼族自治县', '墨江', null, null, '普洱墨江哈\r\n\r\n尼族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11965', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530823', '云南省普洱市景东彝族自治县', '景东', null, null, '普洱景东彝族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11966', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530824', '云南省普洱市景谷傣族彝族自治县', '景谷', null, null, '普洱景\r\n\r\n谷傣族彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11967', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530825', '云南省普洱市镇沅彝族哈尼族拉祜族自\r\n\r\n治县', '镇沅', null, null, '普洱镇沅彝族哈尼族拉祜族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11968', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530826', '云南省普洱市江城哈尼族彝族自治县', '江城', null, null, '普洱\r\n\r\n江城哈尼族彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11969', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530827', '云南省普洱市孟连傣族拉祜族佤族自治县\r\n\r\n', '孟连', null, null, '普洱孟连傣族拉祜族佤族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11970', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530828', '云南省普洱市澜沧拉祜族自治县', '澜沧', null, null, '普洱澜沧拉\r\n\r\n祜族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11971', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0879', '530829', '云南省普洱市西盟佤族自治县', '西盟', null, null, '普洱西盟佤族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11972', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530902', '云南省临沧市临翔区', '临翔区', null, null, '临沧临翔', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11973', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530921', '云南省临沧市凤庆县', '凤庆县', null, null, '临沧凤庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11974', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530922', '云南省临沧市云县', '云县', null, null, '临沧云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11975', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530923', '云南省临沧市永德县', '永德县', null, null, '临沧永德', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11976', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530924', '云南省临沧市镇康县', '镇康县', null, null, '临沧镇康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11977', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530925', '云南省临沧市双江拉祜族佤族布朗\r\n\r\n族傣族自治县', '双江', null, null, '临沧双江拉祜族佤族布朗族傣族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11978', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530926', '云南省临沧市耿马傣族佤族自治县', '耿马', null, null, '临沧耿\r\n\r\n马傣族佤族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11979', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0883', '530927', '云南省临沧市沧源佤族自治县', '沧源', null, null, '临沧沧源佤族自\r\n\r\n治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11980', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532301', '云南省楚雄彝族自治州 楚雄市', '楚雄市', null, null, '楚雄彝族自治州 楚雄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11981', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532322', '云南省楚雄彝族自治州 双柏县', '双柏县', null, null, '楚雄彝族自治州 双柏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11982', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532323', '云南省楚雄彝族自治州 牟定县', '牟定县', null, null, '楚雄彝族自治州 牟定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11983', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532324', '云南省楚雄彝族自治州 南华县', '南华县', null, null, '楚雄彝族自治州 南华', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11984', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532325', '云南省楚雄彝族自治州 姚安县', '姚安县', null, null, '楚雄彝族自治州 姚安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11985', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532326', '云南省楚雄彝族自治州 大姚县', '大姚县', null, null, '楚雄彝族自治州 大姚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11986', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532327', '云南省楚雄彝族自治州 永仁县', '永仁县', null, null, '楚雄彝族自治州 永仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11987', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532328', '云南省楚雄彝族自治州 元谋县', '元谋县', null, null, '楚雄彝族自治州 元谋', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11988', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532329', '云南省楚雄彝族自治州 武定县', '武定县', null, null, '楚雄彝族自治州 武定', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11989', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0878', '532331', '云南省楚雄彝族自治州 禄丰县', '禄丰县', null, null, '楚雄彝族自治州 禄丰', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11990', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532501', '云南省红河哈尼族彝族自治州 个旧市', '个旧市', null, null, '红河哈尼族彝族自\r\n\r\n治州 个旧', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11991', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532502', '云南省红河哈尼族彝族自治州 开远市', '开远市', null, null, '红河哈尼族彝族自\r\n\r\n治州 开远', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11992', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532503', '云南省红河哈尼族彝族自治州 蒙自市', '蒙自市', null, null, '红河哈尼族彝族自\r\n\r\n治州 蒙自', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11993', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532523', '云南省红河哈尼族彝族自治州 屏边苗族自治县', '屏边', null, null, '\r\n\r\n红河哈尼族彝族自治州 屏边苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11994', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532524', '云南省红河哈尼族彝族自治州 建水县', '建水县', null, null, '红河哈尼族彝族自\r\n\r\n治州 建水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11995', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532525', '云南省红河哈尼族彝族自治州 石屏县', '石屏县', null, null, '红河哈尼族彝族自\r\n\r\n治州 石屏', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11996', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532526', '云南省红河哈尼族彝族自治州 弥勒县', '弥勒县', null, null, '红河哈尼族彝族自\r\n\r\n治州 弥勒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11997', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532527', '云南省红河哈尼族彝族自治州 泸西县', '泸西县', null, null, '红河哈尼族彝族自\r\n\r\n治州 泸西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11998', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532528', '云南省红河哈尼族彝族自治州 元阳县', '元阳县', null, null, '红河哈尼族彝族自\r\n\r\n治州 元阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('11999', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532529', '云南省红河哈尼族彝族自治州 红河县', '红河县', null, null, '红河哈尼族彝族自治州', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('12000', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532530', '云南省红河哈尼族彝族自治州 金平苗族瑶\r\n\r\n族傣族自治县', '金平', null, null, '红河哈尼族彝族自治州 金平苗族瑶族傣族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12001', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532531', '云南省红河哈尼族彝族自治州 绿春县', '绿春县', null, null, '红河哈尼族彝族自\r\n\r\n治州 绿春', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12002', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0873', '532532', '云南省红河哈尼族彝族自治州 河口瑶族自治县', '河口', null, null, '\r\n\r\n红河哈尼族彝族自治州 河口瑶族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12003', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532621', '云南省文山壮族苗族自治州 文山市', '文山市', null, null, '文山壮族苗族自治州 \r\n\r\n文山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12004', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532622', '云南省文山壮族苗族自治州 砚山县', '砚山县', null, null, '文山壮族苗族自治州 \r\n\r\n砚山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12005', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532623', '云南省文山壮族苗族自治州 西畴县', '西畴县', null, null, '文山壮族苗族自治州 \r\n\r\n西畴', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12006', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532624', '云南省文山壮族苗族自治州 麻栗坡县', '麻栗坡县', null, null, '文山壮族苗族自\r\n\r\n治州 麻栗坡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12007', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532625', '云南省文山壮族苗族自治州 马关县', '马关县', null, null, '文山壮族苗族自治州 \r\n\r\n马关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12008', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532626', '云南省文山壮族苗族自治州 丘北县', '丘北县', null, null, '文山壮族苗族自治州 \r\n\r\n丘北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12009', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532627', '云南省文山壮族苗族自治州 广南县', '广南县', null, null, '文山壮族苗族自治州 \r\n\r\n广南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12010', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0876', '532628', '云南省文山壮族苗族自治州 富宁县', '富宁县', null, null, '文山壮族苗族自治州 \r\n\r\n富宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12011', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0691', '532801', '云南省西双版纳傣族自治州 景洪市', '景洪市', null, null, '西双版纳傣族自治州 \r\n\r\n景洪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12012', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0691', '532822', '云南省西双版纳傣族自治州 勐海县', '勐海县', null, null, '西双版纳傣族自治州 \r\n\r\n勐海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12013', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0691', '532823', '云南省西双版纳傣族自治州 勐腊县', '勐腊县', null, null, '西双版纳傣族自治州 \r\n\r\n勐腊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12014', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532901', '云南省大理白族自治州 大理市', '大理市', null, null, '大理白族自治州 大理', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12015', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532922', '云南省大理白族自治州 漾濞彝族自治县', '漾濞', null, null, '大理白\r\n\r\n族自治州 漾濞彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12016', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532923', '云南省大理白族自治州 祥云县', '祥云县', null, null, '大理白族自治州 祥云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12017', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532924', '云南省大理白族自治州 宾川县', '宾川县', null, null, '大理白族自治州 宾川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12018', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532925', '云南省大理白族自治州 弥渡县', '弥渡县', null, null, '大理白族自治州 弥渡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12019', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532926', '云南省大理白族自治州 南涧彝族自治县', '南涧', null, null, '大理白\r\n\r\n族自治州 南涧彝族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12020', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532927', '云南省大理白族自治州 巍山彝族回族自治县', '巍山', null, null, '大理白族自治州 巍山彝族回族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12021', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532928', '云南省大理白族自治州 永平县', '永平县', null, null, '大理白族自治州 永平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12022', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532929', '云南省大理白族自治州 云龙县', '云龙县', null, null, '大理白族自治州 云龙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12023', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532930', '云南省大理白族自治州 洱源县', '洱源县', null, null, '大理白族自治州 洱源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12024', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532931', '云南省大理白族自治州 剑川县', '剑川县', null, null, '大理白族自治州 剑川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12025', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0872', '532932', '云南省大理白族自治州 鹤庆县', '鹤庆县', null, null, '大理白族自治州 鹤庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12026', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533102', '云南省德宏傣族景颇族自治州 瑞丽市', '瑞丽市', null, null, '德宏傣族景颇族自\r\n\r\n治州 瑞丽', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12027', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533103', '云南省德宏傣族景颇族自治州 芒市', '芒市', null, null, '德宏傣族景颇族自治州 \r\n\r\n芒', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12028', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533122', '云南省德宏傣族景颇族自治州 梁河县', '梁河县', null, null, '德宏傣族景颇族自\r\n\r\n治州 梁河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12029', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533123', '云南省德宏傣族景颇族自治州 盈江县', '盈江县', null, null, '德宏傣族景颇族自\r\n\r\n治州 盈江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12030', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0692', '533124', '云南省德宏傣族景颇族自治州 陇川县', '陇川县', null, null, '德宏傣族景颇族自\r\n\r\n治州 陇川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12031', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0886', '533321', '云南省怒江傈僳族自治州 泸水县', '泸水县', null, null, '怒江傈僳族自治州 泸水\r\n\r\n', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12032', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0886', '533323', '云南省怒江傈僳族自治州 福贡县', '福贡县', null, null, '怒江傈僳族自治州 福贡\r\n\r\n', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12033', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0886', '533324', '云南省怒江傈僳族自治州 贡山独龙族怒族自\r\n\r\n治县', '贡山', null, null, '怒江傈僳族自治州 贡山独龙族怒族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12034', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0886', '533325', '云南省怒江傈僳族自治州 兰坪白族普米族自\r\n\r\n治县', '兰坪', null, null, '怒江傈僳族自治州 兰坪白族普米族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12035', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0887', '533421', '云南省迪庆藏族自治州 香格里拉县', '香格里拉县', null, null, '迪庆藏族自治州 \r\n\r\n香格里拉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12036', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0887', '533422', '云南省迪庆藏族自治州 德钦县', '德钦县', null, null, '迪庆藏族自治州 德钦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12037', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0887', '533423', '云南省迪庆藏族自治州 维西傈僳族自治县', '维西', null, null, '迪\r\n\r\n庆藏族自治州 维西傈僳族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12038', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540102', '西藏自治区拉萨市城关区', '城关区', null, null, '拉萨城关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12039', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540121', '西藏自治区拉萨市林周县', '林周县', null, null, '拉萨林周', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12040', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540122', '西藏自治区拉萨市当雄县', '当雄县', null, null, '拉萨当雄', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12041', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540123', '西藏自治区拉萨市尼木县', '尼木县', null, null, '拉萨尼木', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12042', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540124', '西藏自治区拉萨市曲水县', '曲水县', null, null, '拉萨曲水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12043', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540125', '西藏自治区拉萨市堆龙德庆县', '堆龙德庆县', null, null, '拉萨堆龙德庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12044', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540126', '西藏自治区拉萨市达孜县', '达孜县', null, null, '拉萨达孜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12045', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0891', '540127', '西藏自治区拉萨市墨竹工卡县', '墨竹工卡县', null, null, '拉萨墨竹工卡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12046', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542121', '西藏自治区昌都地区昌都县', '昌都县', null, null, '昌都地区昌都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12047', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542122', '西藏自治区昌都地区江达县', '江达县', null, null, '昌都地区江达', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12048', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542123', '西藏自治区昌都地区贡觉县', '贡觉县', null, null, '昌都地区贡觉', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12049', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542124', '西藏自治区昌都地区类乌齐县', '类乌齐县', null, null, '昌都地区类乌齐', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12050', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542125', '西藏自治区昌都地区丁青县', '丁青县', null, null, '昌都地区丁青', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12051', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542126', '西藏自治区昌都地区察雅县', '察雅县', null, null, '昌都地区察雅', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12052', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542127', '西藏自治区昌都地区八宿县', '八宿县', null, null, '昌都地区八宿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12053', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542128', '西藏自治区昌都地区左贡县', '左贡县', null, null, '昌都地区左贡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12054', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542129', '西藏自治区昌都地区芒康县', '芒康县', null, null, '昌都地区芒康', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12055', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542132', '西藏自治区昌都地区洛隆县', '洛隆县', null, null, '昌都地区洛隆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12056', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0895', '542133', '西藏自治区昌都地区边坝县', '边坝县', null, null, '昌都地区边坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12057', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542221', '西藏自治区山南地区乃东县', '乃东县', null, null, '山南地区乃东', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12058', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542222', '西藏自治区山南地区扎囊县', '扎囊县', null, null, '山南地区扎囊', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12059', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542223', '西藏自治区山南地区贡嘎县', '贡嘎县', null, null, '山南地区贡嘎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12060', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542224', '西藏自治区山南地区桑日县', '桑日县', null, null, '山南地区桑日', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12061', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542225', '西藏自治区山南地区琼结县', '琼结县', null, null, '山南地区琼结', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12062', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542226', '西藏自治区山南地区曲松县', '曲松县', null, null, '山南地区曲松', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12063', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542227', '西藏自治区山南地区措美县', '措美县', null, null, '山南地区措美', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12064', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542228', '西藏自治区山南地区洛扎县', '洛扎县', null, null, '山南地区洛扎', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12065', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542229', '西藏自治区山南地区加查县', '加查县', null, null, '山南地区加查', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12066', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542231', '西藏自治区山南地区隆子县', '隆子县', null, null, '山南地区隆子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12067', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542232', '西藏自治区山南地区错那县', '错那县', null, null, '山南地区错那', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12068', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0893', '542233', '西藏自治区山南地区浪卡子县', '浪卡子县', null, null, '山南地区浪卡子', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12069', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542301', '西藏自治区日喀则地区日喀则市', '日喀则市', null, null, '日喀则地区日喀则', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12070', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542322', '西藏自治区日喀则地区南木林县', '南木林县', null, null, '日喀则地区南木林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12071', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542323', '西藏自治区日喀则地区江孜县', '江孜县', null, null, '日喀则地区江孜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12072', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542324', '西藏自治区日喀则地区定日县', '定日县', null, null, '日喀则地区定日', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12073', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542325', '西藏自治区日喀则地区萨迦县', '萨迦县', null, null, '日喀则地区萨迦', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12074', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542326', '西藏自治区日喀则地区拉孜县', '拉孜县', null, null, '日喀则地区拉孜', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12075', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542327', '西藏自治区日喀则地区昂仁县', '昂仁县', null, null, '日喀则地区昂仁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12076', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542328', '西藏自治区日喀则地区谢通门县', '谢通门县', null, null, '日喀则地区谢通门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12077', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542329', '西藏自治区日喀则地区白朗县', '白朗县', null, null, '日喀则地区白朗', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12078', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0892', '542330', '西藏自治区日喀则地区仁布县', '仁布县', null, null, '日喀则地区仁布', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12082', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '320000', '江苏省', '江苏省', null, null, '江苏', '1', null, null, null, '35');
INSERT INTO `basic_region` VALUES ('12102', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902801', '海南省省直辖陵水黎族自治县陵水黎族自治县', '陵水', null, '省直辖县级市', '\r\n\r\n省直辖陵水黎族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12103', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902901', '海南省省直辖保亭黎族苗族自治县保亭黎族苗\r\n\r\n族自治县', '保亭', null, '省直辖县级市', '省直辖保亭黎族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12104', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46903001', '海南省省直辖琼中黎族苗族自治县琼中黎族苗\r\n\r\n族自治县', '琼中', null, '省直辖县级市', '省直辖琼中黎族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12105', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46900101', '海南省省直辖五指山市五指山市', '五指山市', null, '省直辖县级市', '省直辖五指山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12106', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46900201', '海南省省直辖琼海市琼海市', '琼海市', null, '省直辖县级市', '省直辖琼海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12107', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0890', '46900301', '海南省省直辖儋州市儋州市', '儋州市', null, '省直辖县级市', '省直辖儋州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12108', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46900501', '海南省省直辖文昌市文昌市', '文昌市', null, '省直辖县级市', '省直辖文昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12109', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46900601', '海南省省直辖万宁市万宁市', '万宁市', null, '省直辖县级市', '省直辖万宁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12110', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46900701', '海南省省直辖东方市东方市', '东方市', null, '省直辖县级市', '省直辖东方', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12111', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902101', '海南省省直辖定安县定安县', '定安县', null, '省直辖县级市', '省直辖定安', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12112', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902201', '海南省省直辖屯昌县屯昌县', '屯昌县', null, '省直辖县级市', '省直辖屯昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12113', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902301', '海南省省直辖澄迈县澄迈县', '澄迈县', null, '省直辖县级市', '省直辖澄迈', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12114', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902401', '海南省省直辖临高县临高县', '临高县', null, '省直辖县级市', '省直辖临高', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12115', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902501', '海南省省直辖白沙黎族自治县白沙黎族自治县', '白沙', null, '省直辖县级市', '\r\n\r\n省直辖白沙黎族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12116', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902601', '海南省省直辖昌江黎族自治县昌江黎族自治县', '昌江', null, '省直辖县级市', '\r\n\r\n省直辖昌江黎族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12117', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0898', '46902701', '海南省省直辖乐东黎族自治县乐东黎族自治县', '乐东', null, '省直辖县级市', '\r\n\r\n省直辖乐东黎族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12118', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '42900401', '湖北省省直辖仙桃市仙桃市', '仙桃市', null, '省直辖县级市', '省直辖仙桃', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12119', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '42900501', '湖北省省直辖潜江市潜江市', '潜江市', null, '省直辖县级市', '省直辖潜江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12120', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0728', '42900601', '湖北省省直辖天门市天门市', '天门市', null, '省直辖县级市', '省直辖天门', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12121', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0719', '42902101', '湖北省省直辖神农架林区神农架林区', '神农架林区', null, '省直辖县级市', '省直辖神农架\r\n\r\n林', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12122', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0391', '41900101', '河南省省直辖济源市济源市', '济源市', null, '省直辖县级市', '省直辖济源', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12123', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900101', '台湾省省直辖台北县台北县', '台北县', null, '省直辖县级市', '省直辖台北', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12124', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900201', '台湾省省直辖宜兰县宜兰县', '宜兰县', null, '省直辖县级市', '省直辖宜兰', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12125', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900301', '台湾省省直辖新竹县新竹县', '新竹县', null, '省直辖县级市', '省直辖新竹', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12126', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900401', '台湾省省直辖桃园县桃园县', '桃园县', null, '省直辖县级市', '省直辖桃园', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12127', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900501', '台湾省省直辖苗栗县苗栗县', '苗栗县', null, '省直辖县级市', '省直辖苗栗', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12128', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900601', '台湾省省直辖台中县台中县', '台中县', null, '省直辖县级市', '省直辖台中', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12129', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900701', '台湾省省直辖彰化县彰化县', '彰化县', null, '省直辖县级市', '省直辖彰化', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12130', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900801', '台湾省省直辖南投县南投县', '南投县', null, '省直辖县级市', '省直辖南投', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12131', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71900901', '台湾省省直辖嘉义县嘉义县', '嘉义县', null, '省直辖县级市', '省直辖嘉义', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12132', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901001', '台湾省省直辖云林县云林县', '云林县', null, '省直辖县级市', '省直辖云林', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12133', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901101', '台湾省省直辖台南县台南县', '台南县', null, '省直辖县级市', '省直辖台南', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12134', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901201', '台湾省省直辖高雄县高雄县', '高雄县', null, '省直辖县级市', '省直辖高雄', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12135', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901301', '台湾省省直辖屏东县屏东县', '屏东县', null, '省直辖县级市', '省直辖屏东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12136', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901401', '台湾省省直辖台东县台东县', '台东县', null, '省直辖县级市', '省直辖台东', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12137', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901501', '台湾省省直辖花莲县花莲县', '花莲县', null, '省直辖县级市', '省直辖花莲', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12138', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '00886', '71901601', '台湾省省直辖澎湖县澎湖县', '澎湖县', null, '省直辖县级市', '省直辖澎湖', '0', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12636', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '10', '110128', '北京北京市密云县', '密云县', null, null, '北京密云', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12637', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '10', '110129', '北京北京市延庆县', '延庆县', null, null, '北京延庆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12638', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '22', '120121', '天津天津市宁河县', '宁河县', null, null, '天津宁河', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12639', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '22', '120123', '天津天津市静海县', '静海县', null, null, '天津静海', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12640', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '22', '120125', '天津天津市蓟县', '蓟县', null, null, '天津蓟县', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12641', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '21', '310130', '上海上海市崇明县', '崇明县', null, null, '上海崇明', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12642', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '898', '460301', '海南省三沙市西沙群岛', '西沙群岛', null, null, '三沙西沙群岛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12643', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '898', '460302', '海南省三沙市南沙群岛', '南沙群岛', null, null, '三沙南沙群岛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12644', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '898', '460303', '海南省三沙市中沙群岛', '中沙群岛', null, null, '三沙中沙群岛', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12645', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500101', '重庆重庆市万州区', '万州区', null, null, '重庆万州', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12646', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500102', '重庆重庆市涪陵区', '涪陵区', null, null, '重庆涪陵', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12647', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500103', '重庆重庆市渝中区', '渝中区', null, null, '重庆渝中', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12648', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500104', '重庆重庆市大渡口区', '大渡口区', null, null, '重庆大渡口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12649', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500105', '重庆重庆市江北区', '江北区', null, null, '重庆江北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12650', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500106', '重庆重庆市沙坪坝区', '沙坪坝区', null, null, '重庆沙坪坝', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12651', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500107', '重庆重庆市九龙坡区', '九龙坡区', null, null, '重庆九龙坡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12652', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500108', '重庆重庆市南岸区', '南岸区', null, null, '重庆南岸', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12653', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500109', '重庆重庆市北碚区', '北碚区', null, null, '重庆北碚', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12654', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500110', '重庆重庆市綦江区', '綦江区', null, null, '重庆綦江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12655', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500111', '重庆重庆市大足区', '大足区', null, null, '重庆大足', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12656', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500112', '重庆重庆市渝北区', '渝北区', null, null, '重庆渝北', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12657', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500113', '重庆重庆市巴南区', '巴南区', null, null, '重庆巴南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12658', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500114', '重庆重庆市黔江区', '黔江区', null, null, '重庆黔江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12659', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500115', '重庆重庆市长寿区', '长寿区', null, null, '重庆长寿', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12660', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500116', '重庆重庆市江津区', '江津区', null, null, '重庆江津', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12661', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500117', '重庆重庆市合川区', '合川区', null, null, '重庆合川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12662', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0814', '500118', '重庆重庆市永川区', '永川区', null, null, '重庆永川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12663', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0811', '500119', '重庆重庆市南川区', '南川区', null, null, '重庆南川', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12664', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500123', '重庆重庆市潼南县', '潼南县', null, null, '重庆潼南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12665', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500124', '重庆重庆市铜梁县', '铜梁县', null, null, '重庆铜梁', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12666', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500126', '重庆重庆市荣昌县', '荣昌县', null, null, '重庆荣昌', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12667', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500127', '重庆重庆市璧山县', '璧山县', null, null, '重庆璧山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12668', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500128', '重庆重庆市梁平县', '梁平县', null, null, '重庆梁平', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12669', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500129', '重庆重庆市城口县', '城口县', null, null, '重庆城口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12670', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500130', '重庆重庆市丰都县', '丰都县', null, null, '重庆丰都', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12671', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500131', '重庆重庆市垫江县', '垫江县', null, null, '重庆垫江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12672', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500132', '重庆重庆市武隆县', '武隆县', null, null, '重庆武隆', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12673', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500133', '重庆重庆市忠县', '忠县', null, null, '重庆忠县', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12674', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500134', '重庆重庆市开县', '开县', null, null, '重庆开县', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12675', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500135', '重庆重庆市云阳县', '云阳县', null, null, '重庆云阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12676', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500136', '重庆重庆市奉节县', '奉节县', null, null, '重庆奉节', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12677', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500137', '重庆重庆市巫山县', '巫山县', null, null, '重庆巫山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12678', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500138', '重庆重庆市巫溪县', '巫溪县', null, null, '重庆巫溪', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12679', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500140', '重庆重庆市石柱土家族自治县', '石柱', null, null, '重庆石柱', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12680', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500141', '重庆重庆市秀山土家族苗族自治县', '秀山', null, null, '重庆秀山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12681', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500142', '重庆重庆市酉阳土家族苗族自治县', '酉阳', null, null, '重庆酉阳', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12682', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '811', '500143', '重庆重庆市彭水苗族土家族自治县', '彭水', null, null, '重庆彭水', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12683', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520501', '贵州省毕节市七星关区', '七星关区', null, null, '毕节七星关', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12684', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520522', '贵州省毕节市大方县', '大方县', null, null, '毕节大方', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12685', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520523', '贵州省毕节市黔西县', '黔西县', null, null, '毕节黔西', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12686', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520524', '贵州省毕节市金沙县', '金沙县', null, null, '毕节金沙', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12687', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520525', '贵州省毕节市织金县', '织金县', null, null, '毕节织金', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12688', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520526', '贵州省毕节市纳雍县', '纳雍县', null, null, '毕节纳雍', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12689', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520527', '贵州省毕节市威宁彝族回族苗族自治县', '威宁', null, null, '\r\n\r\n毕节威宁彝族回族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12690', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0857', '520528', '贵州省毕节市赫章县', '赫章县', null, null, '毕节赫章', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12691', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520601', '贵州省铜仁市碧江区', '碧江区', null, null, '铜仁碧江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12692', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520602', '贵州省铜仁市万山区', '万山区', null, null, '铜仁万山', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12693', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520622', '贵州省铜仁市江口县', '江口县', null, null, '铜仁江口', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12694', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520623', '贵州省铜仁市玉屏侗族自治县', '玉屏', null, null, '铜仁玉屏侗族自治\r\n\r\n', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12695', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520624', '贵州省铜仁市石阡县', '石阡县', null, null, '铜仁石阡', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12696', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520625', '贵州省铜仁市思南县', '思南县', null, null, '铜仁思南', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12697', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520626', '贵州省铜仁市印江土家族苗族自治县', '印江', null, null, '铜仁\r\n\r\n印江土家族苗族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12698', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520627', '贵州省铜仁市德江县', '德江县', null, null, '铜仁德江', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12699', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520628', '贵州省铜仁市沿河土家族自治县', '沿河', null, null, '铜仁沿河土家\r\n\r\n族自治', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12700', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', '0856', '520629', '贵州省铜仁市松桃苗族自治县', '松桃', null, null, '铜仁松桃苗族自治\r\n\r\n', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12702', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '659001', '新疆维吾尔自治区自治区直辖石河子市', '石河子市', null, '新疆维吾尔自治区自治区直辖石河子市', '石河子市', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('12703', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '65900101', '新疆维吾尔自治区自治区直辖石河子市', '石河子市', null, null, '石河子市', '1', null, null, null, '37');
INSERT INTO `basic_region` VALUES ('12704', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '659004', '新疆维吾尔自治区自治区直辖五家渠市', '五家渠市', null, null, '五家渠市', '1', null, null, null, '36');
INSERT INTO `basic_region` VALUES ('12705', 'system', '2019-03-07 09:35:00', 'system', '2019-03-07 09:36:08', '1', '1', '1', null, '65900401', '新疆维吾尔自治区自治区直辖五家渠市', '五家渠市', null, null, '五家渠市', '1', null, null, null, '37');

-- ----------------------------
-- Table structure for bs_category
-- ----------------------------
DROP TABLE IF EXISTS `bs_category`;
CREATE TABLE `bs_category` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `name` varchar(32) DEFAULT '',
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_category
-- ----------------------------
INSERT INTO `bs_category` VALUES ('1193039930192441346', '2019-11-09 13:37:39', 'system', null, null, '1', '部分先辈族人生平事迹简介', null, '部分先辈族人生平事迹简介');

-- ----------------------------
-- Table structure for bs_category_content
-- ----------------------------
DROP TABLE IF EXISTS `bs_category_content`;
CREATE TABLE `bs_category_content` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `content` text,
  `sub_title` varchar(64) DEFAULT '',
  `title` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_category_content
-- ----------------------------
INSERT INTO `bs_category_content` VALUES ('1193040647607169026', '2019-11-09 21:11:25', 'system', null, null, '1', '1193039930192441346', '<p><strong>联播+</strong>6年前，党的十八届三中全会提出&ldquo;全面深化改革的总目标是完善和发展中国特色社会主义制度，推进国家治理体系和治理能力现代化&rdquo;，开启了全面深化改革新征程。</p>\n\n<p>今年，党的十九届四中全会审议通过了重磅文件《中共中央关于坚持和完善中国特色社会主义制度、推进国家治理体系和治理能力现代化若干重大问题的决定》。《决定》对党的十八届三中全会提出的总目标进行深化和展开，为我们推动各方面制度更加成熟更加定型明确了时间表、路线图。</p>\n\n<p>从&ldquo;点题&rdquo;到&ldquo;破题&rdquo;，中国共产党人如何把改革蓝图转化成全方位治理中的改革实践？让我们从习近平关于全面深化改革的重要论述中寻找答案。</p>\n\n<p><strong>经济体制改革取得重大突破</strong></p>\n\n<p>我们是在中国共产党领导和社会主义制度的大前提下发展市场经济，什么时候都不能忘了&ldquo;社会主义&rdquo;这个定语。之所以说是社会主义市场经济，就是要坚持我们的制度优越性，有效防范资本主义市场经济的弊端。</p>\n\n<p>&mdash;&mdash;2015年11月23日，在十八届中央政治局第二十八次集体学习时的讲话</p>\n\n<p>公有制经济、非公有制经济应该相辅相成、相得益彰，而不是相互排斥、相互抵消。</p>\n\n<p>&mdash;&mdash;2016年3月4日，在参加全国政协十二届四次会议民建、工商联界委员联组会时的讲话</p>\n\n<p>经济体制改革必须以完善产权制度和要素市场化配置为重点，实现产权有效激励、要素自由流动、价格反应灵活、竞争公平有序、企业优胜劣汰。</p>\n\n<p>&mdash;&mdash;2017年10月18日，在中国共产党第十九次全国代表大会上的报告</p>\n', '录四七年族谱', '十五世允甫公（录四七年族谱）');
INSERT INTO `bs_category_content` VALUES ('1206066294071955458', '2019-12-15 12:50:35', 'system', null, null, '1', null, '<p>训 喝 淫 赌 计 开 农 交 乡 教 夫 兄 父 人 依<br />\n示 酒 荡 搏 生 放 家 朋 邻 儿 妻 弟 母 之 据<br />\n列 要 害 和 是 政 要 和 须 需 要 需 养 本 情<br />\n如 适 死 吸 国 策 致 接 和 善 和 和 儿 于 理<br />\n此 量 人 毒 策 好 富 友 睦 诱 顺 睦 女 祖 法<br />\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />\n众 不 家 祸 公 抓 勤 人 亲 切 逢 妯 恩 物 荟<br />\n人 能 产 害 粮 住 劳 人 情 莫 事 娌 情 之 萃<br />\n要 太 会 实 乃 好 是 都 如 用 多 要 重 本 先<br />\n遵 过 挥 惊 本 机 根 需 手 粗 商 相 如 于 祖<br />\n循 份 尽 人 份 遇 本 有 足 暴 量 亲 山 天 言 族<br />\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />\n修 酒 伤 财 遵 从 新 相 凡 过 互 凡 养 为 作 训<br />\n身 醉 天 空 纪 事 法 交 事 于 敬 事 儿 人 为<br />\n兼 能 又 又 又 工 搞 讲 相 娇 又 多 为 来 我<br />\n自 乱 害 害 守 商 种 信 关 和 互 忍 待 处 族<br />\n省 性 理 命 法 业 养 诚 照 宠 爱 让 老 世 训<br />\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />\n做 把 家 切 爱 生 科 肝 彼 多 相 天 奉 首 以<br />\n个 盏 国 勿 国 意 学 胆 此 是 敬 地 侍 要 正<br />\n好 要 不 被 又 好 来 定 多 不 应 才 理 敬 我<br />\n族 留 容 沾 爱 赚 耕 相 尊 成 如 能 当 祖 族<br />\n人 神 忍 染 家 钱 田 照 重 材 宾 宽 然 先 风<br />\n&nbsp;</p>\n', null, '族 训');
INSERT INTO `bs_category_content` VALUES ('1206088338981457922', '2019-12-15 13:47:23', 'system', null, null, '1', null, '<p>行第又叫排行、字辈、行辈，即按某种预定的字词联缀方式，既有内涵意义,又有稳定而整齐的格式。字辈命名,是我国旧时代各姓氏、宗族中一种极为重要的取名方式，形式独特，历史悠久。</p>\n\n<p>字辈一般在修谱时,由本族尊长及学问渊深之人议定,因派定名因名取字,无使雷同，无俾鄙俚，寄望人尚隽雅，代有英贤，百世不衰。</p>\n\n<p>字辈用字，一般选择吉祥或有褒扬，激励、劝勉意义的语词。采取字义相连而有诗意的字，联缀而成，因而又称排辈诗。可使词句朗朗上口，便于记诵，传授，形成前后联贯的世序，井然有序。它被载入族谱，具有宗法的权威性。各代后裔严格按世次取名，一代一字，秩序分明，使人一望而知其上下辈份。而所取之名或将辈份字安于名字之中，或置于名字之后。名行一般用于未成年（未婚人）的取名，字行供结婚男子命名。</p>\n\n<p>我族行第仍按一九四七年以前旧族谱所定的执行。但考虑到现代人不喜欢安大号名（结婚名）的习惯，本次修谱时，故而把名行与字行合一，统一称名。希望我族今后各辈按此规定行第取名，宗系是：</p>\n\n<p>始履萃中和，</p>\n\n<p>继芳应位育。</p>\n\n<p>圣贤万世存，</p>\n\n<p>斯道为之鹄。</p>\n\n<p>文章乃国华,</p>\n\n<p>诗礼是家福。</p>\n\n<p>守义与怀仁，</p>\n\n<p>子孙受百禄。</p>\n\n<p>&nbsp;</p>\n', null, '行第');

-- ----------------------------
-- Table structure for bs_cemetery
-- ----------------------------
DROP TABLE IF EXISTS `bs_cemetery`;
CREATE TABLE `bs_cemetery` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `name` varchar(64) DEFAULT '',
  `address` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  `shape` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_cemetery
-- ----------------------------
INSERT INTO `bs_cemetery` VALUES ('1181204108153626625', '2019-11-09 13:33:16', 'system', null, null, '1', '迺炯公', '藤县新白马上腾山', '石灰山', null);
INSERT INTO `bs_cemetery` VALUES ('1181204054596558850', '2019-12-16 14:55:41', 'system', null, null, '1', '李氏婆', '封门英才岭', '与媳妇合葬', '渔翁撒网地');
INSERT INTO `bs_cemetery` VALUES ('1206463559042781185', '2019-12-16 15:01:22', 'system', null, null, '1', '谭氏婆', '白马辰岭金鱼窝龙烛山', '龙石面村和仓家上边', '');
INSERT INTO `bs_cemetery` VALUES ('1206478329477242881', '2019-12-16 15:37:03', 'system', null, null, '1', '育梅公', '大安红粉塘', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559239913473', '2019-12-16 14:59:08', 'system', null, null, '1', '芳茂公', '园岭村前面天鹅塘', null, '坐甲向庚兼卯酉');
INSERT INTO `bs_cemetery` VALUES ('1206478329527574530', '2019-12-16 15:37:04', 'system', null, null, '1', '位相公', '旺村旱塘西边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559260884993', '2019-12-16 14:38:22', 'system', null, null, '1', '谭氏婆', '龙石角', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329544351745', '2019-12-16 15:39:02', 'system', null, null, '1', '位纲公', '大安狮子岭', '公婆合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206463559281856514', '2019-12-16 14:38:22', 'system', null, null, '1', '芳卓公', '西棹石桥头', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329569517570', '2019-12-16 15:40:31', 'system', null, null, '1', '吴氏婆', '城金塘冲中虎地', null, '虎地');
INSERT INTO `bs_cemetery` VALUES ('1206463559298633729', '2019-12-16 14:38:22', 'system', null, null, '1', '芳文公', '旱塘边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559315410946', '2019-12-16 14:38:22', 'system', null, null, '1', '芳英公', '旱塘边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559336382465', '2019-12-16 14:38:22', 'system', null, null, '1', '芳猷公', '旱塘边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559353159682', '2019-12-16 14:38:22', 'system', null, null, '1', '潘氏婆', '莲塘南边岭', '与家婆合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206463559369936898', '2019-12-16 14:38:22', 'system', null, null, '1', '继宗公', '莲塘边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559390908417', '2019-12-16 14:56:33', 'system', null, null, '1', '继信公', '南河牛寮佛子茶亭后背', null, '虎地');
INSERT INTO `bs_cemetery` VALUES ('1206463559416074242', '2019-12-16 14:38:22', 'system', null, null, '1', '继义公', '旺村背近莲塘边双孖坟', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559432851458', '2019-12-16 14:38:22', 'system', null, null, '1', '继仁公', '旺村旱塘西边', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206463559453822978', '2019-12-16 15:02:45', 'system', null, null, '1', '潘氏婆', '莲塘南边岭', '与媳妇合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206463559470600193', '2019-12-16 15:05:08', 'system', null, null, '1', '奕华公', '旺村旱塘边', '墓门石栏，碑石作界', null);
INSERT INTO `bs_cemetery` VALUES ('1206463559487377410', '2019-12-16 15:03:50', 'system', null, null, '1', '赵氏婆', '白架村背下边大成基角口', '结砖砌石', '飞凤岭');
INSERT INTO `bs_cemetery` VALUES ('1206463559512543234', '2019-12-16 14:38:22', 'system', null, null, '1', '麦氏婆', '封门英才岭', '与家婆合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206463559546097665', '2019-12-16 14:38:22', 'system', null, null, '1', '奕生公', '柳州', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329586294786', '2019-12-16 15:39:34', 'system', null, null, '1', '位泰公', '白马辰岭文笔塔脚', '座巽向乾兼己亥', null);
INSERT INTO `bs_cemetery` VALUES ('1206478329607266306', '2019-12-16 15:37:04', 'system', null, null, '1', '位安公', '藤县白石岭', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329632432130', '2019-12-16 15:40:54', 'system', null, null, '1', '朱氏婆', '白架村回龙塘下边', null, '金鱼地');
INSERT INTO `bs_cemetery` VALUES ('1206478329645015042', '2019-12-16 15:41:19', 'system', null, null, '1', '位汉公', '下勒塘淡塘南边', '座南朝北', '狮子地');
INSERT INTO `bs_cemetery` VALUES ('1206478329678569473', '2019-12-16 15:38:45', 'system', null, null, '1', '应辉公', '大湴垌', '公婆合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206478329686958082', '2019-12-16 15:37:04', 'system', null, null, '1', '何氏婆', '南河木星地', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329712123905', '2019-12-16 15:37:04', 'system', null, null, '1', '应宣公', '虾鹤村虾学岭', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329728901122', '2019-12-16 15:37:04', 'system', null, null, '1', '冯氏婆', '蒙江人参军', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329745678338', '2019-12-16 15:41:40', 'system', null, null, '1', '应仟公', '蘑新水口村入鱼子桥第二条岭', null, '鱼笱地又名灵龟拜');
INSERT INTO `bs_cemetery` VALUES ('1206478329758261250', '2019-12-16 15:37:04', 'system', null, null, '1', '应辅公', '村前石路口', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329775038466', '2019-12-16 15:37:04', 'system', null, null, '1', '应俊公', '贤山子', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329791815681', '2019-12-16 15:38:28', 'system', null, null, '1', '芳灿公', '白架村回龙岭', '公婆合葬', null);
INSERT INTO `bs_cemetery` VALUES ('1206478329812787201', '2019-12-16 15:37:04', 'system', null, null, '1', '继信刘氏婆', '白架村回龙塘山脚', null, null);
INSERT INTO `bs_cemetery` VALUES ('1206478329829564418', '2019-12-16 15:37:04', 'system', null, null, '1', '继信伍氏婆', '白架村旺冲尾', null, '金鱼尾');
INSERT INTO `bs_cemetery` VALUES ('1206478329837953025', '2019-12-16 15:37:04', 'system', null, null, '1', '芳茂刘氏婆', '藤县马塘村昌塘岭', null, '仙人仰睡地');
INSERT INTO `bs_cemetery` VALUES ('1206494067739013121', '2019-12-16 16:39:36', 'system', null, null, '1', '圣裔婆周氏', '桂平罗秀良福村左边大钵岭', '贤铃点穴郑贞记主葬', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494075284566017', '2019-12-16 16:39:38', 'system', null, null, '1', '李氏婆', '长历塘尾地中社北边', ' ', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494080246427650', '2019-12-16 16:39:39', 'system', null, null, '1', '位昇公', '岐岭塘前沙子岭石头根', ' ', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494083429904385', '2019-12-16 16:39:40', 'system', null, null, '1', '位政公', '旺村旱塘边', ' ', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494086458191874', '2019-12-16 16:39:40', 'system', null, null, '1', '育彦公', '大安常留塘', '黄氏葬大安翰塘头', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494089352261633', '2019-12-16 16:39:41', 'system', null, null, '1', '育璣公', '山岭垌', '唐氏葬成金塘', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494100626550785', '2019-12-16 16:39:44', 'system', null, null, '1', '育芝公', '东平白竹水塘新大坝龙潭头', '坐寅向申', '五马归槽');
INSERT INTO `bs_cemetery` VALUES ('1206494100672688129', '2019-12-16 16:39:44', 'system', null, null, '1', '育瑜公', '柑子崖蟠龙洲', ' ', ' ');
INSERT INTO `bs_cemetery` VALUES ('1206494100727214082', '2019-12-16 16:39:44', 'system', null, null, '1', '贤铃婆周氏', '六陈独牛岭人六陈圩口路尚有三里', '坐乙向辛后土石上刻有卢字', '结砖打灰');

-- ----------------------------
-- Table structure for bs_children
-- ----------------------------
DROP TABLE IF EXISTS `bs_children`;
CREATE TABLE `bs_children` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `children_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_children
-- ----------------------------
INSERT INTO `bs_children` VALUES ('1167415967467302913', '2019-08-30 20:37:11', 'system', null, null, '1', '1167415967458914306', '1167415966955597826', null);
INSERT INTO `bs_children` VALUES ('1167415967542800386', '2019-08-30 20:37:11', 'system', null, null, '1', '1167415967526023170', '1167415967458914306', null);
INSERT INTO `bs_children` VALUES ('1172649663040040962', '2019-09-14 07:14:01', 'system', null, null, '1', '1171397885233344514', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172649663048429569', '2019-09-14 07:14:01', 'system', null, null, '1', '1171398178184507393', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172649786725871618', '2019-09-14 07:14:31', 'system', null, null, '1', '1171397885233344514', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172649786738454530', '2019-09-14 07:14:31', 'system', null, null, '1', '1171398178184507393', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172649939801190402', '2019-09-14 07:15:07', 'system', null, null, '1', '1171397885233344514', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172655462021836802', '2019-09-14 07:37:04', 'system', null, null, '1', '1172655212397834241', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172655462034419714', '2019-09-14 07:37:04', 'system', null, null, '1', '1172655303003189249', '1171395252133167105', null);
INSERT INTO `bs_children` VALUES ('1172656096791998466', '2019-09-14 07:39:35', 'system', null, null, '1', '1172655753215586306', '1171398178184507393', null);
INSERT INTO `bs_children` VALUES ('1172656096812969985', '2019-09-14 07:39:35', 'system', null, null, '1', '1172655845884538882', '1171398178184507393', null);
INSERT INTO `bs_children` VALUES ('1172656096812969986', '2019-09-14 07:39:35', 'system', null, null, '1', '1172655933511938049', '1171398178184507393', null);
INSERT INTO `bs_children` VALUES ('1172656096821358594', '2019-09-14 07:39:35', 'system', null, null, '1', '1172656026348662786', '1171398178184507393', null);
INSERT INTO `bs_children` VALUES ('1172662845036982273', '2019-09-14 08:06:24', 'system', null, null, '1', '1172662670029647873', '1172655212397834241', null);
INSERT INTO `bs_children` VALUES ('1172662845057953794', '2019-09-14 08:06:24', 'system', null, null, '1', '1172662754440015873', '1172655212397834241', null);
INSERT INTO `bs_children` VALUES ('1172663168724004866', '2019-09-14 08:07:41', 'system', null, null, '1', '1172663033944240129', '1172655753215586306', null);
INSERT INTO `bs_children` VALUES ('1172663725371060226', '2019-09-14 08:09:54', 'system', null, null, '1', '1172663527236333570', '1172663033944240129', null);
INSERT INTO `bs_children` VALUES ('1172663725375254530', '2019-09-14 08:09:54', 'system', null, null, '1', '1172663668693430274', '1172663033944240129', null);
INSERT INTO `bs_children` VALUES ('1172663970586849282', '2019-09-14 08:10:52', 'system', null, null, '1', '1172663874554064897', '1172663668693430274', null);
INSERT INTO `bs_children` VALUES ('1172668645419675650', '2019-09-14 08:29:27', 'system', null, null, '1', '1172668491434192897', '1172655845884538882', null);
INSERT INTO `bs_children` VALUES ('1172668645428064257', '2019-09-14 08:29:27', 'system', null, null, '1', '1172668587617972225', '1172655845884538882', null);
INSERT INTO `bs_children` VALUES ('1172668874168627202', '2019-09-14 08:30:21', 'system', null, null, '1', '1172668816438226946', '1172655933511938049', null);
INSERT INTO `bs_children` VALUES ('1172669307012411394', '2019-09-14 08:32:05', 'system', null, null, '1', '1172669194126913538', '1172655303003189249', null);
INSERT INTO `bs_children` VALUES ('1172669307020800001', '2019-09-14 08:32:05', 'system', null, null, '1', '1172669091173527553', '1172655303003189249', null);
INSERT INTO `bs_children` VALUES ('1172670194866876417', '2019-09-14 08:35:36', 'system', null, null, '1', '1172669826527293441', '1172669194126913538', null);
INSERT INTO `bs_children` VALUES ('1172670256212766721', '2019-09-14 08:35:51', 'system', null, null, '1', '1172669932441858049', '1172669826527293441', null);
INSERT INTO `bs_children` VALUES ('1172670256221155329', '2019-09-14 08:35:51', 'system', null, null, '1', '1172670122536103937', '1172669826527293441', null);
INSERT INTO `bs_children` VALUES ('1172726603373506562', '2019-09-14 12:19:45', 'system', null, null, '1', '1172726352843534337', '1172669932441858049', null);
INSERT INTO `bs_children` VALUES ('1172726603386089474', '2019-09-14 12:19:45', 'system', null, null, '1', '1172726420086616065', '1172669932441858049', null);
INSERT INTO `bs_children` VALUES ('1172726603402866690', '2019-09-14 12:19:45', 'system', null, null, '1', '1172726511711186945', '1172669932441858049', null);
INSERT INTO `bs_children` VALUES ('1172726800199610370', '2019-09-14 12:20:32', 'system', null, null, '1', '1172726683442769922', '1172726420086616065', null);
INSERT INTO `bs_children` VALUES ('1172726853651820546', '2019-09-14 12:20:45', 'system', null, null, '1', '1172726730393808897', '1172726511711186945', null);
INSERT INTO `bs_children` VALUES ('1172727224847724545', '2019-09-14 12:22:13', 'system', null, null, '1', '1172726947918802946', '1172670122536103937', null);
INSERT INTO `bs_children` VALUES ('1172727224856113153', '2019-09-14 12:22:13', 'system', null, null, '1', '1172727012037128194', '1172670122536103937', null);
INSERT INTO `bs_children` VALUES ('1172727612854398978', '2019-09-14 12:23:46', 'system', null, null, '1', '1172727437515714561', '1172726947918802946', null);
INSERT INTO `bs_children` VALUES ('1172727665874595841', '2019-09-14 12:23:58', 'system', null, null, '1', '1172727527286403074', '1172727012037128194', null);
INSERT INTO `bs_children` VALUES ('1173265799674732545', '2019-09-16 00:02:20', 'system', null, null, '1', '1173255475408019458', '1173255387671568385', null);

-- ----------------------------
-- Table structure for bs_image_file
-- ----------------------------
DROP TABLE IF EXISTS `bs_image_file`;
CREATE TABLE `bs_image_file` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL COMMENT '图片路径',
  `name` varchar(128) DEFAULT NULL COMMENT '图片名称',
  `brief` varchar(255) DEFAULT '' COMMENT '简述',
  `data` blob COMMENT 'base64数据',
  `width` int(5) unsigned DEFAULT NULL COMMENT '宽度',
  `heigth` int(5) unsigned DEFAULT NULL COMMENT '长度',
  `other_id` bigint(20) DEFAULT NULL COMMENT '其他主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bs_image_file
-- ----------------------------
INSERT INTO `bs_image_file` VALUES ('1208240915584008194', '2019-12-21 12:20:57', 'system', null, null, '1', '/village/微信图片_20191221114603.jpg', '微信图片_20191221114603.jpg', null, 0x443A5C4D7973656C665C696D616765735C76696C6C6167655CE5BEAEE4BFA1E59BBEE789875F32303139313232313131343630332E6A7067, '577', '433', '1194200525238849537');
INSERT INTO `bs_image_file` VALUES ('1208240915596591106', '2019-12-21 12:20:57', 'system', null, null, '1', '/village/微信图片_20191221114615.jpg', '微信图片_20191221114615.jpg', null, 0x443A5C4D7973656C665C696D616765735C76696C6C6167655CE5BEAEE4BFA1E59BBEE789875F32303139313232313131343631352E6A7067, '577', '433', '1194200525238849537');

-- ----------------------------
-- Table structure for bs_partner
-- ----------------------------
DROP TABLE IF EXISTS `bs_partner`;
CREATE TABLE `bs_partner` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `husband_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  `wife_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_partner
-- ----------------------------
INSERT INTO `bs_partner` VALUES ('1167416409148481538', '2019-08-30 20:38:56', 'system', null, null, '1', '1167415967458914306', null, '1167416409123315713');
INSERT INTO `bs_partner` VALUES ('1167423478270382081', '2019-08-30 21:07:02', 'system', null, null, '1', '1167415966955597826', null, '1167423478257799169');
INSERT INTO `bs_partner` VALUES ('1167430970501095426', '2019-08-30 21:36:48', 'system', null, null, '1', '1167415966955597826', null, '1167430970480123905');
INSERT INTO `bs_partner` VALUES ('1172649183190691841', '2019-09-14 07:12:07', 'system', null, null, '1', '1171395252133167105', null, '1171395452868362241');

-- ----------------------------
-- Table structure for bs_people
-- ----------------------------
DROP TABLE IF EXISTS `bs_people`;
CREATE TABLE `bs_people` (
  `id` bigint(20) NOT NULL,
  `nickname` varchar(32) DEFAULT '',
  `full_name` varchar(16) DEFAULT '',
  `pinyin` varchar(16) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `is_married` int(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `education` varchar(32) DEFAULT '',
  `has_child` int(1) DEFAULT NULL,
  `phone_number` varchar(32) DEFAULT '',
  `job` varchar(32) DEFAULT '',
  `avatar` varchar(64) DEFAULT '',
  `company` varchar(32) DEFAULT '',
  `death` date DEFAULT NULL,
  `generations` int(2) DEFAULT NULL,
  `height` varchar(16) DEFAULT '',
  `weight` varchar(16) DEFAULT '',
  `brief` varchar(64) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `people_branch` bigint(20) unsigned DEFAULT NULL COMMENT '几房',
  `heir` varchar(16) DEFAULT NULL COMMENT '入嗣',
  `prod_team` bigint(20) unsigned DEFAULT NULL COMMENT '生产队',
  `village_code` varchar(16) NOT NULL COMMENT '乡村编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_people
-- ----------------------------
INSERT INTO `bs_people` VALUES ('1171395252133167105', null, '位汉', 'weihan', '1', '1', null, '1959-11-09', 'none', '1', null, null, null, null, '2019-11-09', '6', null, null, null, '', '1', 'system', '2019-11-09 12:04:14', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1171395452868362241', null, '育端', 'yuduan', '2', '1', null, '2019-09-10', 'none', '1', null, null, null, null, null, '7', null, null, null, '', '1', 'system', '2019-10-26 18:01:33', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1171397885233344514', null, '大任', 'daren', '1', '0', null, '2019-09-10', null, '0', null, null, null, null, null, '8', null, null, null, null, '1', 'system', '2019-09-10 20:19:53', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1171398178184507393', null, '圣泽', 'shengze', '1', '1', null, null, null, '1', null, null, null, null, null, '8', null, null, null, null, '1', 'system', '2019-09-10 20:21:04', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172655212397834241', null, '圣甫', 'shengfu', '1', '1', null, null, null, '1', null, null, null, null, null, '8', null, null, null, null, '1', 'system', '2019-09-14 07:36:04', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172655303003189249', null, '圣辉', 'shenghui', '1', '1', null, null, null, '1', null, null, null, null, null, '8', null, null, null, '殇', '1', 'system', '2019-11-09 11:48:42', null, null, null, '1171374472506826753', '入嗣', null, '');
INSERT INTO `bs_people` VALUES ('1172655753215586306', null, '贤珍', 'xianzhen', '2', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 07:38:13', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172655845884538882', null, '贤锦', 'xianjin', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 07:38:35', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172655933511938049', null, '贤济', 'xianji', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 07:38:56', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172656026348662786', null, '贤荫', 'xianyin', '2', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 07:39:18', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172662670029647873', null, '圣佺', 'shengquan', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 08:05:41', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172662754440015873', null, '圣昭', 'shengzhao', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 08:06:02', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172663033944240129', null, '文泽', 'wenze', '1', '1', null, null, null, '1', null, null, null, null, null, '10', null, null, null, null, '1', 'system', '2019-09-14 08:08:35', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172663527236333570', null, '运勇', 'yunyong', '1', '1', null, null, null, '1', null, null, null, null, null, '11', null, null, null, null, '1', 'system', '2019-09-14 08:09:07', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172663668693430274', null, '运锐', 'yunrui', '1', '1', null, null, null, '1', null, null, null, null, null, '11', null, null, null, null, '1', 'system', '2019-09-14 08:09:40', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172663874554064897', null, '达斯', 'dasi', '1', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 08:10:29', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172668491434192897', null, '文理', 'wenli', '1', '1', null, null, null, '1', null, null, null, null, null, '10', null, null, null, null, '1', 'system', '2019-09-14 08:28:50', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172668587617972225', null, '文建', 'wenjian', '1', '1', null, null, null, '1', null, null, null, null, null, '10', null, null, null, null, '1', 'system', '2019-09-14 08:29:13', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172668816438226946', null, '官北', 'guanbei', '1', '1', null, null, null, '1', null, null, null, null, null, '10', null, null, null, null, '1', 'system', '2019-09-14 08:30:08', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172669091173527553', null, '贤庚', 'xiangeng', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 08:31:13', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172669194126913538', null, '兆禧', 'zhaoxi', '1', '1', null, null, null, '1', null, null, null, null, null, '9', null, null, null, null, '1', 'system', '2019-09-14 08:31:38', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172669826527293441', null, '万启', 'wanqi', '1', '1', null, null, null, '1', null, null, null, null, null, '10', null, null, null, null, '1', 'system', '2019-09-14 08:34:08', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172669932441858049', null, '运清', 'yunqing', '1', '1', null, null, null, '1', null, null, null, null, null, '11', null, null, null, null, '1', 'system', '2019-09-14 08:34:34', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172670122536103937', null, '运波', 'yunbo', '1', '1', null, null, null, '1', null, null, null, null, null, '11', null, null, null, null, '1', 'system', '2019-09-14 08:35:19', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726352843534337', null, '达艺', 'dayi', '2', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 12:18:45', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726420086616065', null, '达深', 'dashen', '1', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 12:19:01', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726511711186945', null, '达广', 'daguang', '1', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 12:19:23', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726683442769922', null, '斯锋', 'sifeng', '1', '1', null, null, null, '1', null, null, null, null, null, '13', null, null, null, null, '1', 'system', '2019-09-14 12:20:04', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726730393808897', null, '斯华', 'sihua', '1', '1', null, null, null, '1', null, null, null, null, null, '13', null, null, null, null, '1', 'system', '2019-09-14 12:20:15', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172726947918802946', null, '达聪', 'dacong', '1', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 12:21:07', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172727012037128194', null, '达华', 'dahua', '1', '1', null, null, null, '1', null, null, null, null, null, '12', null, null, null, null, '1', 'system', '2019-09-14 12:21:23', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172727437515714561', null, '卢诚', 'lucheng', '1', '1', null, null, null, '1', null, null, null, null, null, '13', null, null, null, null, '1', 'system', '2019-09-14 12:23:04', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1172727527286403074', null, '晓璐', 'xiaolu', '2', '1', null, null, null, '1', null, null, null, null, null, '13', null, null, '', '止', '1', 'system', '2019-10-26 18:00:39', null, null, null, '1171374472506826753', null, null, '');
INSERT INTO `bs_people` VALUES ('1173255387671568385', null, '奕生', 'yisheng', '1', '1', null, null, null, '1', null, null, null, null, null, '2', null, null, null, null, '1', 'system', '2019-09-15 23:20:57', null, null, null, '1173254983692984322', null, null, '');
INSERT INTO `bs_people` VALUES ('1173255475408019458', null, '继智', 'jizhi', '1', '1', null, null, null, '1', null, null, null, null, null, '2', null, null, null, null, '1', 'system', '2019-09-15 23:21:18', null, null, null, '1173254983692984322', null, null, '');

-- ----------------------------
-- Table structure for bs_village
-- ----------------------------
DROP TABLE IF EXISTS `bs_village`;
CREATE TABLE `bs_village` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` int(1) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL COMMENT '村编号',
  `name` varchar(128) DEFAULT NULL COMMENT '村名',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `longitude` double unsigned DEFAULT NULL COMMENT '经度',
  `latitude` double unsigned DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bs_village
-- ----------------------------
INSERT INTO `bs_village` VALUES ('1194200525238849537', '2019-12-21 12:20:57', 'system', null, null, '1', 'changqitang', '长岐塘', '长岐塘', '11', null, null);

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(256) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

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
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('54bd8a1e64666317c7369d273514b1cd', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016B353567677870737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000027400047265616474000577726974657874000662656172657274002464353135643363342D343534322D346633652D613836662D326634616638343761396461, '1b407ddbb35d0b7e032067b2b68db31e', 'test', 'family_tree', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001F40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000561646D696E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000B66616D696C795F74726565737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F7479706574000870617373776F7264740008757365726E616D657400047465737474000573636F706574000A7265616420777269746578737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E0025770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0025770C000000103F4000000000000174001466616D696C795F747265652D7265736F75726365787371007E0025770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001F40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0031737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000371007E001C71007E001D71007E001E71007E001F71007E002071007E00217800707372002E636F6D2E73746172666972652E66616D696C79747265652E7573657263656E7465722E656E746974792E5573657200000000000000010200114C00076164647265737371007E000E4C00036167657400134C6A6176612F6C616E672F496E74656765723B4C000B617574686F72697469657371007E00084C00046369747971007E00354C0008646973747269637471007E00354C0005656D61696C71007E000E4C000A66697273744C6F67696E7400134C6A6176612F6C616E672F426F6F6C65616E3B4C000667656E64657271007E00354C000D6C6173744C6F67696E54696D657400194C6A6176612F74696D652F4C6F63616C4461746554696D653B4C00066D6F62696C6571007E000E4C000870617373776F726471007E000E4C000870726F76696E636571007E00354C00087265616C4E616D6571007E000E4C000C726567697374657254696D6571007E00375B0005726F6C65737400135B4C6A6176612F6C616E672F537472696E673B4C00047479706571007E00354C0008757365726E616D6571007E000E78720036636F6D2E73746172666972652E66616D696C79747265652E73656375726974792E656E746974792E4162737472616374456E7469747900000000000000010200064C000A63726561746554696D6571007E00374C00076372656174657271007E000E4C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000A75706461746554696D6571007E00374C00077570646174657271007E000E4C000576616C696471007E003678707372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770A05000007E3050C1229EA7874000673797374656D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700F5488D59F00A0017070737200116A6176612E6C616E672E426F6F6C65616ECD207280D59CFAEE0200015A000576616C756578700174001DE7A68FE5BBBAE79C8120E88E86E794B0E5B88220E59F8EE58EA2E58CBA737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0040000000127371007E000B0000000177040000000171007E000F787371007E00450005585C7371007E00450005585E74000F6169796F343037403136332E636F6D7371007E0042007371007E0045000000017074000B313337303030303030303074003C243261243130242E786841647442595649374F53324370554E34693465776D4B69576A666A386E4145727A5A6263726978326A6B5637397967586E537371007E004500055730740004746573747371007E003C770A05000007E3050C1229EA78707371007E00450000000074000474657374, null);

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
-- Records of oauth_approvals
-- ----------------------------

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
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('family_tree', 'family_tree-resource', '$2a$10$p/QWC1.1ZdwbK.Ft/f6wquJDxiV7jTRTULWdgOknpCmd8yNAHOEt.', 'read,write', 'password,authorization_code,client_credentials', '', '', '100000', null, '{}', '');

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
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(64) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

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
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for security_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_menu`;
CREATE TABLE `security_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `id_path` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_menu
-- ----------------------------
INSERT INTO `security_menu` VALUES ('1165444029081468929', '2019-09-28 16:42:00', 'system', null, null, '1', 'systemMgr', null, null, '系统管理', null, null, '0', '/');
INSERT INTO `security_menu` VALUES ('1165444176662249473', '2019-11-10 22:53:42', 'system', null, null, '1', 'menu', null, null, '菜单管理', '1165444029081468929', null, '1', '/security/menu');
INSERT INTO `security_menu` VALUES ('1165444269649969154', '2019-10-20 10:46:40', 'system', null, null, '1', 'role', null, null, '角色管理', '1165444029081468929', null, '1', '/security/role');
INSERT INTO `security_menu` VALUES ('1165444378815119361', '2019-10-20 11:09:10', 'system', null, null, '1', 'user', null, null, '用户管理', '1165444029081468929', null, '1', '/user');
INSERT INTO `security_menu` VALUES ('1165444551914045441', '2019-10-09 21:28:26', 'system', null, null, '1', 'category', null, null, '类别管理', '1165444830919147522', null, '1', '/folk/category');
INSERT INTO `security_menu` VALUES ('1165444695204052994', '2020-06-25 09:26:17', 'system', null, null, '1', 'category_content', null, null, '类别内容管理', '1165444830919147522', null, '1', '/folk/categorycontent');
INSERT INTO `security_menu` VALUES ('1165444830919147522', '2019-08-25 10:45:40', 'system', null, null, '1', 'folk', null, null, '族谱管理', null, null, '0', '/');
INSERT INTO `security_menu` VALUES ('1165996609763397633', '2019-10-09 21:30:12', 'system', null, null, '1', 'people', null, null, '族谱录入', '1165444830919147522', null, '1', '/folk/people');
INSERT INTO `security_menu` VALUES ('1167082544697479169', '2019-08-29 22:32:24', 'system', null, null, '1', 'tree', null, null, '族谱查看', '1165444830919147522', null, '1', '/folk/tree');
INSERT INTO `security_menu` VALUES ('1167573544163450881', '2019-10-09 21:28:52', 'system', null, null, '1', 'dict', null, null, '数据字典', '1165444029081468929', null, '1', '/dict');
INSERT INTO `security_menu` VALUES ('1167725076565549057', '2019-10-09 21:29:02', 'system', null, null, '1', 'region', null, null, '省市区管理', '1165444029081468929', null, '1', '/region');
INSERT INTO `security_menu` VALUES ('1175388039874781185', '2019-10-09 21:29:18', 'system', null, null, '0', '水电费', null, null, '水电费', null, null, '1', '啊');
INSERT INTO `security_menu` VALUES ('1193146315227971586', '2020-06-25 09:25:01', 'system', null, null, '1', 'categorycontent_view', null, null, '类别内容查看', '1165444695204052994', null, '2', '/folk/categorycontent/:id');
INSERT INTO `security_menu` VALUES ('1181184931879624705', '2019-11-10 21:41:53', 'system', null, null, '1', 'cemetery', null, null, '公墓', '1165444830919147522', null, '1', '/folk/cemetery');
INSERT INTO `security_menu` VALUES ('1182660358611595265', '2019-10-13 07:36:24', 'system', null, null, '1', 'cemetery_detail', null, null, '公墓详情', '1181184931879624705', null, '2', '/folk/cemetery/:id');
INSERT INTO `security_menu` VALUES ('1194187158843494401', '2019-11-12 17:57:27', 'system', null, null, '1', 'village', null, null, '乡村管理', '1165444029081468929', null, '1', '/village');
INSERT INTO `security_menu` VALUES ('1194425780905594882', '2019-12-21 11:38:05', 'system', null, null, '1', 'dashboard', null, null, '村统计数据', '1194426369139953666', null, '1', '/dashboard');
INSERT INTO `security_menu` VALUES ('1194426369139953666', '2019-12-21 11:36:48', 'system', null, null, '1', 'interview', null, null, '长岐塘概况', null, null, '0', '/');
INSERT INTO `security_menu` VALUES ('1194814587119247361', '2019-11-14 11:09:30', 'system', null, null, '1', 'signup', null, null, '账号注册', '1194426369139953666', null, '2', '/signup');
INSERT INTO `security_menu` VALUES ('1207584588418977793', '2019-12-21 11:34:29', 'system', null, null, '1', 'images', null, null, '长岐塘风貌', '1194426369139953666', null, '1', '/village/images');

-- ----------------------------
-- Table structure for security_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_menu_right`;
CREATE TABLE `security_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_menu_right
-- ----------------------------
INSERT INTO `security_menu_right` VALUES ('1193542251968069634', '2019-11-10 22:53:42', 'system', null, null, '1', 'add', '1165444176662249473', '新建');
INSERT INTO `security_menu_right` VALUES ('1193542251980652546', '2019-11-10 22:53:42', 'system', null, null, '1', 'update', '1165444176662249473', '更新');
INSERT INTO `security_menu_right` VALUES ('1193542251980652547', '2019-11-10 22:53:42', 'system', null, null, '1', 'delete', '1165444176662249473', '删除');
INSERT INTO `security_menu_right` VALUES ('1193542251980652548', '2019-11-10 22:53:42', 'system', null, null, '1', 'view', '1165444176662249473', '查看');
INSERT INTO `security_menu_right` VALUES ('1275963171428511745', '2020-06-25 09:25:01', 'system', null, null, '1', 'view', '1193146315227971586', '查看');
INSERT INTO `security_menu_right` VALUES ('1275963490329833473', '2020-06-25 09:26:17', 'system', null, null, '1', 'view', '1165444695204052994', '查看');
INSERT INTO `security_menu_right` VALUES ('1275963490329833474', '2020-06-25 09:26:17', 'system', null, null, '1', 'search', '1165444695204052994', '查询');
INSERT INTO `security_menu_right` VALUES ('1275963490329833475', '2020-06-25 09:26:17', 'system', null, null, '1', 'update', '1165444695204052994', '更新');
INSERT INTO `security_menu_right` VALUES ('1275963490329833476', '2020-06-25 09:26:17', 'system', null, null, '1', 'delete', '1165444695204052994', '删除');

-- ----------------------------
-- Table structure for security_role
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `admin` int(1) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role
-- ----------------------------
INSERT INTO `security_role` VALUES ('1167208436950208513', '2019-08-30 06:52:32', 'system', null, null, '1', '0', '客户', '客户', null);
INSERT INTO `security_role` VALUES ('1165459649994960898', '2019-08-25 11:07:33', 'system', null, null, '1', '1', 'admin', '超级管理员', null);

-- ----------------------------
-- Table structure for security_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu`;
CREATE TABLE `security_role_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `own` int(1) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_menu
-- ----------------------------
INSERT INTO `security_role_menu` VALUES ('1275963607489327106', '2020-06-25 09:26:45', 'system', null, null, '1', '1165444695204052994', '0', '1167208436950208513');
INSERT INTO `security_role_menu` VALUES ('1275963607480938498', '2020-06-25 09:26:45', 'system', null, null, '1', '1167082544697479169', '0', '1167208436950208513');
INSERT INTO `security_role_menu` VALUES ('1186655455988563970', '2019-10-22 22:47:55', 'system', null, null, '1', '1167082544697479169', '0', '1165459649994960898');

-- ----------------------------
-- Table structure for security_role_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu_right`;
CREATE TABLE `security_role_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `role_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_menu_right
-- ----------------------------
INSERT INTO `security_role_menu_right` VALUES ('1275963607497715713', '2020-06-25 09:26:45', 'system', null, null, '1', '1165444695204052994', '1275963490329833475', '1275963607489327106');
INSERT INTO `security_role_menu_right` VALUES ('1275963607497715714', '2020-06-25 09:26:45', 'system', null, null, '1', '1165444695204052994', '1275963490329833473', '1275963607489327106');

-- ----------------------------
-- Table structure for security_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu`;
CREATE TABLE `security_user_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `own` int(1) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_menu
-- ----------------------------
INSERT INTO `security_user_menu` VALUES ('1175199015281270785', '2019-09-21 08:04:14', 'system', null, null, '1', '1165444029081468929', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1175199015356768257', '2019-09-21 08:04:14', 'system', null, null, '1', '1165444176662249473', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1175199015365156865', '2019-09-21 08:04:14', 'system', null, null, '1', '1165444269649969154', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1175199015411294209', '2019-09-21 08:04:14', 'system', null, null, '1', '1165444378815119361', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1175199015428071426', '2019-09-21 08:04:14', 'system', null, null, '1', '1167573544163450881', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1175199015436460034', '2019-09-21 08:04:14', 'system', null, null, '1', '1167725076565549057', null, '1165458963903295490');
INSERT INTO `security_user_menu` VALUES ('1192436191786115074', '2019-11-07 21:38:37', 'system', null, null, '1', '1181924278950064131', null, '1185514721474437122');

-- ----------------------------
-- Table structure for security_user_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu_right`;
CREATE TABLE `security_user_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `user_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_menu_right
-- ----------------------------

-- ----------------------------
-- Table structure for security_user_role
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role`;
CREATE TABLE `security_user_role` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT NULL,
  `valid` int(1) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_role
-- ----------------------------
INSERT INTO `security_user_role` VALUES ('1275947197824380930', '2020-06-25 08:21:33', 'system', null, null, '1', '1165459649994960898', '1165458963903295490');
INSERT INTO `security_user_role` VALUES ('1167208566482898945', '2019-08-30 06:53:03', 'system', null, null, '1', '1167208436950208513', '1167208265520615425');
INSERT INTO `security_user_role` VALUES ('1275945455485333506', '2020-06-25 08:14:37', 'system', null, null, '1', '1167208436950208513', '1185514721474437122');

-- ----------------------------
-- Table structure for spring_session
-- ----------------------------
DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`) USING BTREE,
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`) USING BTREE,
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spring_session
-- ----------------------------
INSERT INTO `spring_session` VALUES ('0633c868-840e-45a6-bdee-a6e6dcf79105', 'a62c67eb-5b1c-43d2-a857-47d2cd2ad19c', '1593048463246', '1593048478677', '3600', '1593052078677', 'admin');

-- ----------------------------
-- Table structure for spring_session_attributes
-- ----------------------------
DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `spring_session_attributes_ibfk_1` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spring_session_attributes
-- ----------------------------
INSERT INTO `spring_session_attributes` VALUES ('0633c868-840e-45a6-bdee-a6e6dcf79105', 'SPRING_SECURITY_CONTEXT', 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C00000000000001F40200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001F40200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001F40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F61646D696E7871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001F40200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F78707400093132372E302E302E3174002461363263363765622D356231632D343364322D613835372D343764326364326164313963707372002E636F6D2E73746172666972652E66616D696C79747265652E7573657263656E7465722E656E746974792E5573657200000000000000010200114C00076164647265737371007E000F4C00036167657400134C6A6176612F6C616E672F496E74656765723B4C000B617574686F72697469657371007E00094C00046369747971007E00174C0008646973747269637471007E00174C0005656D61696C71007E000F4C000A66697273744C6F67696E74002B4C636F6D2F73746172666972652F66616D696C79747265652F656E756D732F426F6F6C65616E456E756D3B4C000667656E64657274002A4C636F6D2F73746172666972652F66616D696C79747265652F656E756D732F47656E646572456E756D3B4C000D6C6173744C6F67696E54696D657400194C6A6176612F74696D652F4C6F63616C4461746554696D653B4C00066D6F62696C6571007E000F4C000870617373776F726471007E000F4C000870726F76696E636571007E00174C00087265616C4E616D6571007E000F4C000C726567697374657254696D6571007E001A5B0005726F6C65737400135B4C6A6176612F6C616E672F537472696E673B4C00047479706574002C4C636F6D2F73746172666972652F66616D696C79747265652F656E756D732F5573657254797065456E756D3B4C0008757365726E616D6571007E000F78720033636F6D2E73746172666972652E66616D696C79747265652E62617369632E656E746974792E4162737472616374456E7469747900000000000000010200064C000A63726561746554696D6571007E001A4C000763726561746F7271007E000F4C00086564697454696D6571007E001A4C0006656469746F7271007E000F4C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000576616C69647400294C636F6D2F73746172666972652F66616D696C79747265652F656E756D732F56616C6964456E756D3B78707372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770A05000007E406190815DE7874000673797374656D70707372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870102C8AC0B7C030027E720027636F6D2E73746172666972652E66616D696C79747265652E656E756D732E56616C6964456E756D00000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740003E698AF74001AE5A4A9E6B4A520E5A4A9E6B4A5E5B88220E5928CE5B9B3E58CBA737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0025000000017371007E000C0000000177040000000171007E0010787371007E002C0001D5247371007E002C0001D52574000F61646D696E40676D61696C2E636F6D7E720029636F6D2E73746172666972652E66616D696C79747265652E656E756D732E426F6F6C65616E456E756D00000000000000001200007871007E0028740003E590A67E720028636F6D2E73746172666972652E66616D696C79747265652E656E756D732E47656E646572456E756D00000000000000001200007871007E0028740003E794B77074000B313337303030303030303074003C24326124313024716579486B3741546938346E4977384A504647446D654D656E4C564E2E74684468487631357768714C69356B76595649594F5143577371007E002C0001D4C0740009E7AEA1E79086E591987371007E0021770A05000007E406190815DE78707E72002A636F6D2E73746172666972652E66616D696C79747265652E656E756D732E5573657254797065456E756D00000000000000001200007871007E0028740009E7AEA1E79086E5919874000561646D696E);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(16) DEFAULT '',
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(16) DEFAULT '',
  `valid` tinyint(1) DEFAULT NULL,
  `address` varchar(32) DEFAULT '',
  `age` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `email` varchar(32) DEFAULT '',
  `enabled` int(1) DEFAULT NULL,
  `first_login` int(1) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile` varchar(16) DEFAULT '',
  `password` varchar(64) DEFAULT '',
  `province` int(11) DEFAULT NULL,
  `real_name` varchar(32) DEFAULT '',
  `register_time` datetime NOT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1185514721474437122', '2020-06-25 08:14:37', 'system', null, null, '1', '北京 北京市 东城区', '30', '110100', '110101', 'admin@126.com', null, '0', '1', null, '13800000000', '$2a$10$9/E4icNOgojOr5BfDY6Nqu.sPlHS7Q2rMVXTgk6kQZUDCkE9YxlRC', '110000', '游客', '2020-06-25 08:14:37', '2', 'guest');
INSERT INTO `sys_user` VALUES ('1165458963903295490', '2020-06-25 08:21:33', 'system', null, null, '1', '天津 天津市 和平区', '1', '120100', '120101', 'admin@gmail.com', null, '0', '1', null, '13700000000', '$2a$10$qeyHk7ATi84nIw8JPFGDmeMenLVN.thDhHv15whqLi5kvYVIYOQCW', '120000', '管理员', '2020-06-25 08:21:33', '1', 'admin');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

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

-- ----------------------------
-- Records of verification_token
-- ----------------------------
