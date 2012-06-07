/*
 Navicat Premium Data Transfer

 Source Server         : San Antonio
 Source Server Type    : MySQL
 Source Server Version : 50161
 Source Host           : localhost
 Source Database       : wonder_proxy

 Target Server Type    : MySQL
 Target Server Version : 50161
 File Encoding         : utf-8

 Date: 06/02/2012 22:34:53 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `servers`
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `incl_bw` bigint(20) NOT NULL,
  `location` varchar(32) CHARACTER SET latin1 NOT NULL,
  `country` varchar(25) CHARACTER SET latin1 NOT NULL,
  `cc` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `services` tinyint(4) DEFAULT '1',
  `continent` tinyint(4) NOT NULL DEFAULT '1',
  `dns_version` int(11) NOT NULL DEFAULT '0',
  `users_actual` int(11) NOT NULL DEFAULT '0',
  `users_desired` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `k_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `servers`
-- ----------------------------
BEGIN;
INSERT INTO `servers` VALUES ('0', 'JoaoPessoa', '35', 'João Pessoa', 'Brazil', 'br', '3140334973', '5', '2', '3904', '333', '333'), ('1', 'Melbourne', '50', 'Melbourne', 'Australia', 'au', '1866667666', '7', '4', '8276', '351', '351'), ('2', 'Toronto', '400', 'Toronto', 'Canada', 'ca', '1279980012', '5', '1', '18494', '272', '272'), ('3', 'Prague', '100', 'Prague', 'Czech Republic', 'cz', '1505463854', '3', '3', '3', '250', '250'), ('4', 'Paris', '100', 'Paris', 'France', 'fr', '2954857440', '5', '3', '18488', '456', '456'), ('5', 'Berlin', '10', 'Hanover', 'Germany', 'de', '1408649346', '7', '3', '18347', '326', '326'), ('6', 'Tokyo', '100', 'Tokyo', 'Japan', 'jp', '1790649008', '3', '3', '3', '258', '258'), ('7', 'Amsterdam', '250', 'Haarlemmermeer', 'Netherlands', 'nl', '1540857620', '7', '3', '16843', '287', '287'), ('8', 'Wellington', '10', 'Albany', 'New Zealand', 'nz', '1999600161', '0', '4', '1', '87', '88'), ('9', 'Moscow', '40', 'Moscow', 'Russia', 'ru', '1506838758', '1', '3', '1', '258', '258'), ('10', 'Stockholm', '100', 'Hammarby Sjöstad', 'Sweden', 'se', '1570665120', '3', '3', '1', '237', '237'), ('11', 'London', '100', 'London', 'United Kingdom', 'gb', '1433883545', '7', '3', '20470', '460', '460'), ('12', 'Dallas', '280', 'Dallas', 'United States', 'us', '2928647331', '3', '1', '1', '226', '226'), ('13', 'NewYork', '1250', 'New York', 'United States', 'us', '1167323119', '5', '1', '1', '370', '370'), ('14', 'Boston', '320', 'Boston', 'United States', 'us', '644813289', '5', '1', '1', '60', '60'), ('15', 'Miami', '250', 'Miami', 'United States', 'us', '1090195139', '5', '1', '18189', '247', '247'), ('16', 'Washington', '200', 'Herndon', 'United States', 'us', '1076013393', '7', '1', '20464', '220', '220'), ('17', 'Barcelona', '60', 'Barcelona', 'Spain', 'es', '3057052428', '7', '3', '6354', '382', '382'), ('18', 'Atlanta', '200', 'Atlanta', 'United States', 'us', '2921501218', '5', '1', '1', '279', '279'), ('19', 'Newmarket', '100', 'Newmarket', 'Ireland', 'ie', '3648222627', '1', '3', '1', '223', '223'), ('20', 'Vienna', '300', 'Vienna', 'Austria', 'at', '3561340327', '1', '3', '1', '196', '196'), ('21', 'Brisbane', '15', 'Brisbane', 'Australia', 'au', '3397201799', '1', '4', '1', '273', '273'), ('22', 'Chicago', '250', 'Chicago', 'United States', 'us', '1081612740', '5', '1', '20464', '242', '242'), ('23', 'SanJose', '250', 'Santa Clara', 'United States', 'us', '1246931634', '3', '1', '1', '219', '219'), ('24', 'Seattle', '1000', 'Seattle', 'United States', 'us', '3492515873', '1', '1', '1', '227', '227'), ('25', 'Tallinn', '1000', 'Tallinn', 'Estonia', 'ee', '1347385558', '3', '3', '1', '204', '204'), ('26', 'Copenhagen', '1000', 'Copenhagen', 'Denmark', 'dk', '1346765543', '1', '3', '1', '246', '246'), ('27', 'Milan', '1000', 'Milan', 'Italy', 'it', '3266404684', '5', '3', '18111', '311', '311'), ('29', 'Frankfurt', '1000', 'Frankfurt', 'Germany', 'de', '2997021069', '7', '3', '18491', '278', '278'), ('30', 'Fremont', '1250', 'Fremont', 'United States', 'us', '1078442818', '0', '1', '177', '81', '82'), ('31', 'Singapore', '150', 'Singapore', 'Republic of Singapore', 'sg', '1970925911', '7', '3', '1', '202', '202'), ('32', 'Warsaw', '1000', 'Warsaw', 'Poland', 'pl', '1541719427', '1', '3', '1', '213', '213'), ('33', 'Mexico', '100', 'Mexico', 'Mexico', 'mx', '3359200654', '7', '1', '3890', '239', '239'), ('34', 'Kiev', '1000', 'Kiev', 'Ukraine', 'ua', '782667068', '0', '3', '1', '78', '79'), ('35', 'Zurich', '4000', 'Zurich', 'Switzerland', 'ch', '3000054826', '7', '3', '18111', '189', '189'), ('36', 'Malaysia', '15', 'Malaysia', 'Malaysia', 'my', '2094659682', '1', '3', '0', '145', '145'), ('37', 'LosAngeles', '500', 'Los Angeles', 'United States', 'us', '3351482124', '3', '1', '1', '283', '283'), ('38', 'Phoenix', '600', 'Phoenix', 'United States', 'us', '3351481364', '1', '1', '1', '180', '180'), ('39', 'Houston', '2000', 'Houston', 'United States', 'us', '2927287792', '5', '1', '0', '185', '185'), ('40', 'Baltimore', '250', 'Baltimore', 'United States', 'us', '2918606586', '3', '1', '1', '208', '208'), ('41', 'London2', '4000', 'London', 'United Kingdom', 'gb', '772847680', '0', '3', '12653', '110', '111'), ('42', 'CapeTown', '10', 'Cape Town', 'South Africa', 'za', '3291056450', '3', '5', '0', '140', '140'), ('43', 'Bruges', '20', 'Bruges', 'Belgium', 'be', '1365212851', '7', '3', '0', '201', '201'), ('44', 'Lisbon', '100', 'Lisbon', 'Portugal', 'pt', '1382424133', '1', '3', '0', '217', '217'), ('45', 'Helsinki', '100', 'Espoo', 'Finland', 'fi', '3644860635', '1', '3', '0', '195', '195'), ('46', 'NewDelhi', '200', 'New Delhi', 'India', 'in', '1870050605', '3', '3', '0', '147', '147'), ('47', 'Budapest', '100', 'Budapest', 'Hungary', 'hu', '1603019171', '3', '3', '0', '131', '131'), ('48', 'Bergen', '100', 'Bergen', 'Norway', 'no', '1360735841', '1', '3', '0', '198', '198'), ('49', 'Medellin', '150', 'Medellin', 'Colombia', 'co', '3193610317', '3', '2', '0', '140', '140'), ('50', 'Rosario', '300', 'Rosario', 'Argentina', 'ar', '3359273136', '1', '2', '0', '163', '163'), ('51', 'SanAntonio', '4000', 'San Antonio', 'United States', 'us', '1116159230', '7', '1', '0', '231', '231'), ('52', 'Montreal', '2000', 'Montréal', 'Canada', 'ca', '3094067250', '7', '1', '18202', '156', '156'), ('53', 'Vancouver', '5000', 'Vancouver', 'Canada', 'ca', '1211308389', '5', '1', '18397', '169', '169'), ('54', 'Roubaix', '5000', 'Roubaix', 'France', 'fr', '778681297', '7', '3', '611', '155', '155'), ('55', 'KansasCity', '225', 'Kansas City', 'United States', 'us', '3351308040', '3', '1', '16623', '159', '159'), ('56', 'Hyderabad', '250', 'Hyderabad', 'India', 'in', '3054670604', '0', '3', '0', '49', '50'), ('57', 'Jakarta', '10', 'Jakarta', 'Indonesia', 'id', '2011955091', '1', '3', '0', '79', '79'), ('58', 'Valencia', '750', 'Valencia', 'Spain', 'es', '1607941894', '7', '3', '17773', '145', '145'), ('59', 'Christchurch', '60', 'Christchurch', 'New Zealand', 'nz', '1952089628', '3', '4', '0', '170', '170'), ('60', 'Graz', '4000', 'Graz', 'Austria', 'at', '1534484649', '7', '3', '18039', '76', '76'), ('61', 'Luxembourg', '1000', 'Steinsel', 'Luxembourg', 'lu', '782667728', '7', '3', '0', '80', '80'), ('62', 'Cairo', '500', 'Ramadan', 'Egypt', 'eg', '702017640', '5', '5', '0', '71', '71'), ('63', 'Fez', '100', 'Fez', 'Morocco', 'ma', '696864930', '1', '5', '0', '71', '71'), ('64', 'Bangkok', '1000', 'Bangkok', 'Thailand', 'th', '1728371207', '1', '3', '0', '78', '78'), ('65', 'Hanoi', '100', 'Hanoi', 'Vietnam', 'vn', '2065598571', '1', '3', '0', '57', '57'), ('66', 'Istanbul', '250', 'Istanbul', 'Turkey', 'tr', '533883379', '0', '3', '0', '14', '15'), ('67', 'Bucharest', '500', 'Bucharest', 'Romania', 'ro', '3169940820', '5', '3', '0', '73', '73'), ('68', 'Philadelphia', '500', 'Philadelphia', 'United States', 'us', '1279828278', '7', '1', '0', '103', '103'), ('69', 'Varna', '100', 'Varna', 'Bulgaria', 'bg', '1490407392', '1', '3', '0', '35', '35'), ('70', 'Santiago', '100', 'Santiago', 'Chile', 'cl', '3360229022', '1', '2', '0', '27', '27'), ('71', 'Denver', '1000', 'Denver', 'United States', 'us', '1256052341', '7', '1', '0', '57', '57'), ('72', 'HongKong', '200', 'Hong Kong', 'Hong Kong', 'hk', '3496946395', '7', '3', '0', '46', '46'), ('73', 'SanDiego', '3000', 'San Diego', 'United States', 'us', '3625018704', '7', '1', '0', '34', '34'), ('74', 'Heredia', '1000', 'Heredia', 'Costa Rica', 'cr', '3358777346', '7', '1', '0', '11', '11'), ('75', 'Jacksonville', '1000', 'Jacksonville', 'United States', 'us', '3344131129', '7', '1', '0', '2', '2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
