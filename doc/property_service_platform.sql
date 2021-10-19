/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : family_service_platform

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 18/04/2020 14:07:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fc_building
-- ----------------------------
DROP TABLE IF EXISTS 'fc_building';
CREATE TABLE 'fc_building'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'estate_code' varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'building_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥�����',
  'building_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'building_function' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥���',
  'used_area' double NULL DEFAULT NULL COMMENT 'ʹ�����',
  'build_area' double NULL DEFAULT NULL COMMENT '�������',
  'build_permission_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������֤��',
  'sale_permission_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������֤��',
  'finish_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'over_roof_date' datetime NULL DEFAULT NULL COMMENT '�ⶥ����',
  'decorate' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'װ��',
  'struct_type' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ṹ���',
  'damage_grade' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ȼ�',
  'unit_count' double NULL DEFAULT NULL COMMENT '��Ԫ����',
  'building_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'clean_floor' int(11) NULL DEFAULT NULL COMMENT '��ɨ����',
  'mop_floor' int(11) NULL DEFAULT NULL COMMENT '��ϴ����',
  'channel_area' double NULL DEFAULT NULL COMMENT '¥��ͨ������',
  'elevator' int(11) NULL DEFAULT NULL COMMENT '���ݽ���',
  'channel_door' int(11) NULL DEFAULT NULL COMMENT 'ͨ����',
  'evevator_door' int(11) NULL DEFAULT NULL COMMENT '������',
  'water_well_door' int(11) NULL DEFAULT NULL COMMENT 'ˮ����',
  'electric_well_door' int(11) NULL DEFAULT NULL COMMENT '�羮��',
  'window_shades' int(11) NULL DEFAULT NULL COMMENT '��Ҷ��',
  'hydrant' int(11) NULL DEFAULT NULL COMMENT '����˨',
  'mirrors' int(11) NULL DEFAULT NULL COMMENT '���ݾ�',
  'unit_door' int(11) NULL DEFAULT NULL COMMENT '��Ԫ��',
  'harden_ground_area' double NULL DEFAULT NULL COMMENT 'Ӳ������',
  'green_area' double NULL DEFAULT NULL COMMENT '�ᴿ�̵�',
  'no_green_area' double NULL DEFAULT NULL COMMENT '���ᴿ�̵�',
  'water_by_person' double NULL DEFAULT NULL COMMENT '�˹�ˮ��',
  'is_elevator' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ʹ�õ���',
  'is_second_water_electric' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���Ҫ����ˮ��',
  'random_identify' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ʶ��',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥����Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fc_building
-- ----------------------------
INSERT INTO 'fc_building' VALUES (1, '11', 'B1', '��1��¥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_building' VALUES (2, '11', 'B2', '��2��¥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_building' VALUES (3, '22', 'B3', '��1��¥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_building' VALUES (4, '22', 'B4', '��2��¥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_building' VALUES (5, '22', 'B5', '��3��¥', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fc_cell
-- ----------------------------
DROP TABLE IF EXISTS 'fc_cell';
CREATE TABLE 'fc_cell'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '������',
  'unit_code' varchar(20) NULL DEFAULT NULL COMMENT '��Ԫ����',
  'cell_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'cell_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'cell_house_code' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ͱ���',
  'cell_toward_code' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'cell_function' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' ����',
  'cell_decorate_code' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'װ�ޱ���',
  'cell_used_area' double NULL DEFAULT NULL COMMENT 'ʹ�����',
  'cell_build_area' double NULL DEFAULT NULL COMMENT '�������',
  'carport_area' double NULL DEFAULT NULL COMMENT '�������',
  'car_area' double NULL DEFAULT NULL COMMENT '��λ���',
  'loft_area' double NULL DEFAULT NULL COMMENT '��¥���',
  'store_area' double NULL DEFAULT NULL COMMENT '���������',
  'floor_number' int(11) NULL DEFAULT NULL COMMENT '¥����',
  'last_debt' double NULL DEFAULT NULL COMMENT '�ϴ�Ƿ��',
  'property_type' bigint(20) NULL DEFAULT NULL COMMENT '��ҵ����',
  'rent_money' double NULL DEFAULT NULL COMMENT '���',
  'length' double NULL DEFAULT NULL COMMENT '����',
  'width' double NULL DEFAULT NULL COMMENT '���',
  'stall_use' bigint(20) NULL DEFAULT NULL COMMENT '������;',
  'stall_area' bigint(20) NULL DEFAULT NULL COMMENT '��������',
  'is_sale' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'is_rent' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'sale_contract_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ۺ�ͬ���',
  'rent_contract_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���޺�ͬ���',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'factor' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ϵ��',
  'cell_property' int(11) NULL DEFAULT NULL COMMENT '��������',
  'store_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����Һ�',
  'car_licence_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ƺ�',
  'car_space_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fc_cell
-- ----------------------------

-- ----------------------------
-- Table structure for fc_cell_addbuild
-- ----------------------------
DROP TABLE IF EXISTS 'fc_cell_addbuild';
CREATE TABLE 'fc_cell_addbuild'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '��������id',
  'addbuild_area' double NULL DEFAULT NULL COMMENT '�ӽ����',
  'addbuild_time' datetime NULL DEFAULT NULL COMMENT '�ӽ�ʱ��',
  'addbuild_state' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ӽ�״̬',
  'addbuild_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ӽ�˵��',
  'addbuild_accessory' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ӽ�����',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����ӽ���Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fc_cell_addbuild
-- ----------------------------

-- ----------------------------
-- Table structure for fc_estate
-- ----------------------------
DROP TABLE IF EXISTS 'fc_estate';
CREATE TABLE 'fc_estate'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'estate_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'estate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'estate_addr' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ַ',
  'cover_area' double NULL DEFAULT NULL COMMENT 'ռ�����',
  'build_area' double NULL DEFAULT NULL COMMENT '�������',
  'green_area' double NULL DEFAULT NULL COMMENT '�̵����',
  'road_area' double NULL DEFAULT NULL COMMENT '��·���',
  'building_number' double NULL DEFAULT NULL COMMENT '¥������',
  'building_leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'company_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾����',
  'company_behalf' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˴���',
  'contact' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��',
  'contact_phone' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'contact_addr' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��ַ',
  'car_space_delay_rate' double NULL DEFAULT NULL COMMENT '��λ���ɽ����',
  'car_space_over_day' int(11) NULL DEFAULT NULL COMMENT '��λ��������',
  'estate_type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'street_lamp_number' int(11) NULL DEFAULT NULL COMMENT '·������',
  'hfcNum' int(11) NULL DEFAULT NULL COMMENT '���������',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥����Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fc_estate
-- ----------------------------
INSERT INTO 'fc_estate' VALUES (1, '11', '11', '', NULL, NULL, NULL, NULL, 2, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '0');
INSERT INTO 'fc_estate' VALUES (2, '22', '22', '', NULL, NULL, NULL, NULL, 3, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '0');

-- ----------------------------
-- Table structure for fc_unit
-- ----------------------------
DROP TABLE IF EXISTS 'fc_unit';
CREATE TABLE 'fc_unit'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'building_code' varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥����',
  'unit_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'unit_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'start_floor' int(11) NULL DEFAULT NULL COMMENT '��ʼ¥��',
  'stop_floor' int(11) NULL DEFAULT NULL COMMENT '����¥��',
  'start_cell_id' int(11) NULL DEFAULT NULL COMMENT '��ʼ����',
  'stop_cell_id' int(11) NULL DEFAULT NULL COMMENT '��������',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ԫ��Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fc_unit
-- ----------------------------
INSERT INTO 'fc_unit' VALUES (1, 'B1', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (2, 'B2', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (3, 'B2', 'U2', '��2��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (4, 'B1', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (5, 'B2', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (6, 'B2', 'U2', '��2��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (7, 'B3', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (8, 'B4', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (9, 'B4', 'U2', '��2��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (10, 'B5', 'U1', '��1��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (11, 'B5', 'U2', '��2��Ԫ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'fc_unit' VALUES (12, 'B5', 'U3', '��3��Ԫ', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fy_estate_temporary
-- ----------------------------
DROP TABLE IF EXISTS 'fy_estate_temporary';
CREATE TABLE 'fy_estate_temporary'  (
  'company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'estate_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'estate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'building_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥�����',
  'building_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'unit_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'unit_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'cell_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'cell_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'build_area' double NULL DEFAULT NULL COMMENT '�������',
  'floor_number' int(11) NULL DEFAULT NULL COMMENT '¥����',
  'function' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������Ϣ��ʱ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_estate_temporary
-- ----------------------------

-- ----------------------------
-- Table structure for fy_history_money_temp
-- ----------------------------
DROP TABLE IF EXISTS 'fy_history_money_temp';
CREATE TABLE 'fy_history_money_temp'  (
  'cell_id' int(50) NOT NULL COMMENT '����id',
  'cell_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'build_area' double NULL DEFAULT NULL COMMENT '�������',
  'price_unit' double NULL DEFAULT NULL COMMENT '����',
  'money' double NULL DEFAULT NULL COMMENT '���',
  'money_start_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'money_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ��',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ʷ������ʱ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_history_money_temp
-- ----------------------------

-- ----------------------------
-- Table structure for fy_invalid_main
-- ----------------------------
DROP TABLE IF EXISTS 'fy_invalid_main';
CREATE TABLE 'fy_invalid_main'  (
  'invalid_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '���ϵ���',
  'receive_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����տ��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�շ�����',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'real_receive_money' double NULL DEFAULT NULL COMMENT 'ʵ�ս��',
  'discount_money' double NULL DEFAULT NULL COMMENT '�Żݽ��',
  'receive_method' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տʽ',
  'is_customer' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ҵ��',
  'receive_money' double NULL DEFAULT NULL COMMENT '�շѽ��',
  'money_id' bigint(20) NULL DEFAULT NULL COMMENT '����id',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'current_delay_money' double NULL DEFAULT NULL COMMENT '����Ƿ��',
  'last_delay_money' double NULL DEFAULT NULL COMMENT '�ϴ�Ƿ��',
  'invalid_type' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'receipt_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�վݺ�',
  'invoice_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʊ��',
  'receive_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ���',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'invalid_reason' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'invalid_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  PRIMARY KEY ('invalid_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ϵ�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_invalid_main
-- ----------------------------

-- ----------------------------
-- Table structure for fy_invalid_sub
-- ----------------------------
DROP TABLE IF EXISTS 'fy_invalid_sub';
CREATE TABLE 'fy_invalid_sub'  (
  'invalid_detail_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '������ϸ����',
  'invalid_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������ϵ���',
  'money_setting_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'charge_unit' double NULL DEFAULT NULL COMMENT '�Ʒѵ���',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'real_used' double NULL DEFAULT NULL COMMENT 'ʵ������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'delay_money' double NULL DEFAULT NULL COMMENT '���ɽ�',
  'current_should_pay' double NULL DEFAULT NULL COMMENT '����Ӧ��',
  'over_day' int(11) NULL DEFAULT NULL COMMENT '��������',
  'money_start_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'money_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ��',
  'pay_limit_day' datetime NULL DEFAULT NULL COMMENT '�ɷ�����',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼��',
  'standing_book_id' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����̨��id',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'derate_money' double NULL DEFAULT NULL COMMENT '������',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'delay_derate_money' double NULL DEFAULT NULL COMMENT '���ɽ������',
  'mop_floor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  'money_mult' int(11) NULL DEFAULT NULL COMMENT '���ñ���',
  PRIMARY KEY ('invalid_detail_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ϵ��ӵ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_invalid_sub
-- ----------------------------

-- ----------------------------
-- Table structure for fy_money_setting
-- ----------------------------
DROP TABLE IF EXISTS 'fy_money_setting';
CREATE TABLE 'fy_money_setting'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'money_setting_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'money_setting_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'receive_type' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շѷ�ʽ',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'money_type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'is_update_price' char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ������޸ĵ���',
  'is_convenient_money' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ��ݷ���',
  'min_used_number' double NULL DEFAULT NULL COMMENT '��Сʹ����',
  'is_step_receive' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����շ�',
  'step_condition_1' double NULL DEFAULT NULL COMMENT '��������1',
  'step_price_1' double NULL DEFAULT NULL COMMENT '���ݵ���1',
  'step_condition_21' double NULL DEFAULT NULL COMMENT '��������2',
  'step_condition_22' double NULL DEFAULT NULL COMMENT '��������2',
  'step_price_2' double NULL DEFAULT NULL COMMENT '���ݵ���2',
  'step_condition_31' double NULL DEFAULT NULL COMMENT '��������3',
  'step_condition_32' double NULL DEFAULT NULL COMMENT '��������3',
  'step_price_3' double NULL DEFAULT NULL COMMENT '���ݵ���3',
  'step_condition_41' double NULL DEFAULT NULL COMMENT '��������4',
  'step_condition_42' double NULL DEFAULT NULL COMMENT '��������4',
  'step_price_4' double NULL DEFAULT NULL COMMENT '���ݵ���4',
  'step_condition_5' double NULL DEFAULT NULL COMMENT '��������5',
  'step_price_5' double NULL DEFAULT NULL COMMENT '���ݵ���5',
  'renew_message' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ѷ���',
  'receive_warn_stop_day' int(11) NULL DEFAULT NULL COMMENT '�����շѵķ���ֹ�ں�N�췢�Ͷ���',
  'max_warn_number' smallint(6) NULL DEFAULT NULL COMMENT '�������ظ����Ѵ���',
  'ask_message' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�߽ɶ���',
  'no_receive_warn_stop_day' smallint(6) NULL DEFAULT NULL COMMENT '��δ��ȡ�Ľɷ�����ǰN�췢�Ͷ���',
  'associate_money_id' int(11) NULL DEFAULT NULL COMMENT '��������ID',
  'delay_rate' double NULL DEFAULT NULL COMMENT '���ɽ����',
  'delay_over_day' int(11) NULL DEFAULT NULL COMMENT '���ɽ�������',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'receive_print_hidden' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����շѴ�ӡʱ���ص���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_money_setting
-- ----------------------------

-- ----------------------------
-- Table structure for fy_money_temporary_01
-- ----------------------------
DROP TABLE IF EXISTS 'fy_money_temporary_01';
CREATE TABLE 'fy_money_temporary_01'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '�������',
  'record_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'record_remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ע',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�������',
  'estate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'building_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'unit_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'cell_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'box_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'current_use_number' double NULL DEFAULT NULL COMMENT '��������',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ɷ���',
  'last_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ϴη���ֹ��',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  'money_mult' int(11) NULL DEFAULT NULL COMMENT '���ñ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ʱ��1' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_money_temporary_01
-- ----------------------------

-- ----------------------------
-- Table structure for fy_money_temporary_02
-- ----------------------------
DROP TABLE IF EXISTS 'fy_money_temporary_02';
CREATE TABLE 'fy_money_temporary_02'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '�������',
  'record_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'record_remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ע',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�������',
  'estate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'building_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'unit_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'cell_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'charge_unit' double NULL DEFAULT NULL COMMENT '�Ʒѵ�λ',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ɷ���',
  'last_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ϴη���ֹ��',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ʱ��2' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_money_temporary_02
-- ----------------------------

-- ----------------------------
-- Table structure for fy_money_temporary_03
-- ----------------------------
DROP TABLE IF EXISTS 'fy_money_temporary_03';
CREATE TABLE 'fy_money_temporary_03'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'money_setting_code' int(11) NULL DEFAULT NULL COMMENT '�������',
  'record_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'record_remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ע',
  'public_box_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'share_number' double NULL DEFAULT NULL COMMENT '��̯����',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'current_use_number' double NULL DEFAULT NULL COMMENT '��������',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ɷ���',
  'last_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ϴη���ֹ��',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ʱ��3' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_money_temporary_03
-- ----------------------------

-- ----------------------------
-- Table structure for fy_money_temporary_04
-- ----------------------------
DROP TABLE IF EXISTS 'fy_money_temporary_04';
CREATE TABLE 'fy_money_temporary_04'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'money_setting_code' int(11) NULL DEFAULT NULL COMMENT '�������',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '������',
  'estate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'building_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¥������',
  'unit_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ԫ����',
  'cell_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'box_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'share_money' double NULL DEFAULT NULL COMMENT '��̯���',
  'current_share_number' double NULL DEFAULT NULL COMMENT '���η�̯��',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'primary_identify' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ʶ',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ʱ��4' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_money_temporary_04
-- ----------------------------

-- ----------------------------
-- Table structure for fy_pre_receive
-- ----------------------------
DROP TABLE IF EXISTS 'fy_pre_receive';
CREATE TABLE 'fy_pre_receive'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'voucher_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ƾ֤��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  'summary' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ժҪ',
  'money' double NULL DEFAULT NULL COMMENT '���',
  'handler_person' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�տ�����',
  'input_person' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¼����',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'receive_method' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տʽ',
  'data_source' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Դ',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ԥ�տ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_pre_receive
-- ----------------------------

-- ----------------------------
-- Table structure for fy_property_money_dist
-- ----------------------------
DROP TABLE IF EXISTS 'fy_property_money_dist';
CREATE TABLE 'fy_property_money_dist'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '������',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '������',
  'is_public_money' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ��з���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '��ǰ����',
  'last_charge_unit' double NULL DEFAULT NULL COMMENT '�ϴμƷѵ�λ',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  'use_number_mult' int(11) NULL DEFAULT NULL COMMENT 'ʹ��������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ�ѷֲ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_property_money_dist
-- ----------------------------

-- ----------------------------
-- Table structure for fy_public_box
-- ----------------------------
DROP TABLE IF EXISTS 'fy_public_box';
CREATE TABLE 'fy_public_box'  (
  'public_box_id' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '��������',
  'public_box_read_number' double NULL DEFAULT NULL COMMENT '�������',
  'share_method' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��̯����',
  'public_box_state' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����״̬'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_public_box
-- ----------------------------

-- ----------------------------
-- Table structure for fy_public_box_user
-- ----------------------------
DROP TABLE IF EXISTS 'fy_public_box_user';
CREATE TABLE 'fy_public_box_user'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ�����id',
  'public_box_id' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������û�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_public_box_user
-- ----------------------------

-- ----------------------------
-- Table structure for fy_receipt_main
-- ----------------------------
DROP TABLE IF EXISTS 'fy_receipt_main';
CREATE TABLE 'fy_receipt_main'  (
  'id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '�տ��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�շ�����',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'should_pay_total' double NULL DEFAULT NULL COMMENT 'Ӧ���ϼ�',
  'current_should_receive' double NULL DEFAULT NULL COMMENT '����Ӧ��',
  'discount_money' double NULL DEFAULT NULL COMMENT '�Żݽ��',
  'receive_method' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տʽ',
  'is_customer' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ҵ��',
  'current_real_receive' double NULL DEFAULT NULL COMMENT '����ʵ��',
  'temporary_money_id' bigint(20) NULL DEFAULT NULL COMMENT '�ٿͷ���id',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'current_delay_money' double NULL DEFAULT NULL COMMENT '����Ƿ��',
  'last_delay_money' double NULL DEFAULT NULL COMMENT '�ϴ�Ƿ��',
  'title' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'receive_type' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ�����',
  'receipt_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�վݺ�',
  'invoice_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʊ��',
  'status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'remark' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'receive_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ���',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'update_reason' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�ԭ��',
  'receipt_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������״̬',
  'receipt_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���������',
  'receipt_check_time' datetime NULL DEFAULT NULL COMMENT '�������ʱ��',
  'receipt_check_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'money_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ����״̬',
  'money_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ������',
  'money_check_time' datetime NULL DEFAULT NULL COMMENT '�ֽ����ʱ��',
  'money_check_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ�������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�տ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_receipt_main
-- ----------------------------

-- ----------------------------
-- Table structure for fy_receipt_sub
-- ----------------------------
DROP TABLE IF EXISTS 'fy_receipt_sub';
CREATE TABLE 'fy_receipt_sub'  (
  'receipt_detail_id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�տ���ϸ����',
  'receipt_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����տ��',
  'money_setting_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'charge_unit' double NULL DEFAULT NULL COMMENT '�Ʒѵ���',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'real_used' double NULL DEFAULT NULL COMMENT 'ʵ������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'delay_money' double NULL DEFAULT NULL COMMENT '���ɽ�',
  'delay_derate_money' double NULL DEFAULT NULL COMMENT '���ɽ������',
  'current_should_pay' double NULL DEFAULT NULL COMMENT '����Ӧ��',
  'over_day' int(11) NULL DEFAULT NULL COMMENT '��������',
  'money_start_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'money_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ��',
  'pay_limit_day' datetime NULL DEFAULT NULL COMMENT '�ɷ�����',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼��',
  'standing_book_id' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����̨��id',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'derate_money' double NULL DEFAULT NULL COMMENT '���ü�����',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'update_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ԭ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����id',
  'update_date' datetime NULL DEFAULT NULL COMMENT '���ʱ��',
  'money_mult' int(11) NULL DEFAULT NULL COMMENT '���ñ���',
  PRIMARY KEY ('receipt_detail_id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�տ�ӵ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_receipt_sub
-- ----------------------------

-- ----------------------------
-- Table structure for fy_refund_main
-- ----------------------------
DROP TABLE IF EXISTS 'fy_refund_main';
CREATE TABLE 'fy_refund_main'  (
  'refund_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '�˿��',
  'receipt_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����տ��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  'receive_cycle' datetime NULL DEFAULT NULL COMMENT '�շ�����',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'real_receive_money' double NULL DEFAULT NULL COMMENT 'ʵ�ս��',
  'discount_money' double NULL DEFAULT NULL COMMENT '�Żݽ��',
  'receive_method' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տʽ',
  'is_customer' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ҵ��',
  'receive_money' double NULL DEFAULT NULL COMMENT '�տ���',
  'money_id' bigint(20) NULL DEFAULT NULL COMMENT '����id',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'current_delay_money' double NULL DEFAULT NULL COMMENT '����Ƿ��',
  'last_delay_money' double NULL DEFAULT NULL COMMENT '�ϴ�Ƿ��',
  'refund_type' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿�����',
  'receipt_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�վݺ�',
  'invoice_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʊ��',
  'receive_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ���',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'refund_reason' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿�ԭ��',
  'refund_time' datetime NULL DEFAULT NULL COMMENT '�˿�ʱ��',
  'refund_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿���',
  'check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���״̬',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'check_time' datetime NULL DEFAULT NULL COMMENT '���ʱ��',
  'check_advice' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  PRIMARY KEY ('refund_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�˿����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_refund_main
-- ----------------------------

-- ----------------------------
-- Table structure for fy_refund_sub
-- ----------------------------
DROP TABLE IF EXISTS 'fy_refund_sub';
CREATE TABLE 'fy_refund_sub'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�˿��ϸ����',
  'refund_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˿��',
  'money_setting_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'charge_unit' double NULL DEFAULT NULL COMMENT '�Ʒѵ���',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'real_used' double NULL DEFAULT NULL COMMENT 'ʵ������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'delay_money' double NULL DEFAULT NULL COMMENT '���ɽ�',
  'current_should_pay' double NULL DEFAULT NULL COMMENT '����Ӧ��',
  'over_day' int(11) NULL DEFAULT NULL COMMENT '��������',
  'money_start_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'money_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ��',
  'pay_limit_day' datetime NULL DEFAULT NULL COMMENT '�ɷ�����',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼��',
  'standing_book_id' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����̨��id',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'money_derate' double NULL DEFAULT NULL COMMENT '���ü�����',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'delay_derate_money' double NULL DEFAULT NULL COMMENT '���ɽ������',
  'money_mult' int(11) NULL DEFAULT NULL COMMENT '���ñ���',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�˿�ӵ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_refund_sub
-- ----------------------------

-- ----------------------------
-- Table structure for fy_sale_contract
-- ----------------------------
DROP TABLE IF EXISTS 'fy_sale_contract';
CREATE TABLE 'fy_sale_contract'  (
  'sale_contract_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '��ͬ���',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '����������',
  'contract_money' double NULL DEFAULT NULL COMMENT '��ͬ���',
  'contract_date' datetime NULL DEFAULT NULL COMMENT '��ͬ����',
  'pay_method' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ʽ',
  'id_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���֤��',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'online_phone' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�̶��绰',
  'phone_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ�����',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'contract_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ����',
  PRIMARY KEY ('sale_contract_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ۺ�ͬ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_sale_contract
-- ----------------------------

-- ----------------------------
-- Table structure for fy_share_standing_book
-- ----------------------------
DROP TABLE IF EXISTS 'fy_share_standing_book';
CREATE TABLE 'fy_share_standing_book'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��̯���ñ��',
  'standing_book_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '̨������',
  'associate_cost_code' int(11) NULL DEFAULT NULL COMMENT '�������ñ���',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��̯����̨�˸�Ҫ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_share_standing_book
-- ----------------------------

-- ----------------------------
-- Table structure for fy_share_standing_book_detail
-- ----------------------------
DROP TABLE IF EXISTS 'fy_share_standing_book_detail';
CREATE TABLE 'fy_share_standing_book_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '������ϸid',
  'standing_book_id' double NULL DEFAULT NULL COMMENT '����̨�˱��',
  'public_box_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'share_number' double NULL DEFAULT NULL COMMENT '��̯����',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'current_use_number' double NULL DEFAULT NULL COMMENT '��������',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ɷ���',
  'last_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ϴη���ֹ��',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��̯����̨�˹�����ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_share_standing_book_detail
-- ----------------------------

-- ----------------------------
-- Table structure for fy_share_user_detail
-- ----------------------------
DROP TABLE IF EXISTS 'fy_share_user_detail';
CREATE TABLE 'fy_share_user_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�û���ϸid',
  'standing_book_id' double NULL DEFAULT NULL COMMENT '����̨�˱��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'box_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'share_money' double NULL DEFAULT NULL COMMENT '��̯���',
  'current_share_number' double NULL DEFAULT NULL COMMENT '���η�̯��',
  'current_pay_start_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���νɷ�����',
  'receive_identify' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շѱ�ʶ',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'cost_identify' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ñ�ʶ',
  'receive_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շѵ���',
  'refund_number' int(11) NULL DEFAULT NULL COMMENT '�˿����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'derate_money' double NULL DEFAULT NULL COMMENT '������',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ս��',
  'invalid_number' int(11) NULL DEFAULT NULL COMMENT '���ϴ���',
  'derate_delay_money' double NULL DEFAULT NULL COMMENT '�������ɽ�',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��̯����̨���û���ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_share_user_detail
-- ----------------------------

-- ----------------------------
-- Table structure for fy_standing_book
-- ----------------------------
DROP TABLE IF EXISTS 'fy_standing_book';
CREATE TABLE 'fy_standing_book'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '̨�˱��',
  'standing_book_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '̨������',
  'associate_cost_code' int(11) NULL DEFAULT NULL COMMENT '�������ñ���',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'creation_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'creation_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'associate_standing_book_id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����̨���˺�',
  'company' int(11) NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����̨�˸�Ҫ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_standing_book
-- ----------------------------

-- ----------------------------
-- Table structure for fy_standing_book_detail
-- ----------------------------
DROP TABLE IF EXISTS 'fy_standing_book_detail';
CREATE TABLE 'fy_standing_book_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '̨����ϸ���',
  'standing_book_id' int(11) NULL DEFAULT NULL COMMENT '����̨�˱��',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'box_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'charge_unit' double NULL DEFAULT NULL COMMENT '�Ʒѵ�λ',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'last_read_number' double NULL DEFAULT NULL COMMENT '�ϴζ���',
  'current_read_number' double NULL DEFAULT NULL COMMENT '���ζ���',
  'current_use_number' double NULL DEFAULT NULL COMMENT '��������',
  'should_pay' double NULL DEFAULT NULL COMMENT 'Ӧ�ɷ���',
  'last_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ϴη���ֹ��',
  'last_pay_start_date' datetime NULL DEFAULT NULL COMMENT '�ϴη�������',
  'current_pay_stop_date' datetime NULL DEFAULT NULL COMMENT '���η���ֹ��',
  'current_pay_limit_date' datetime NULL DEFAULT NULL COMMENT '���η�������',
  'cost_identify' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ñ�ʶ',
  'receive_identify' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շѱ�ʶ',
  'receive_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շѵ���',
  'refund_number' int(11) NULL DEFAULT NULL COMMENT '�˿����',
  'receive_cycle' int(11) NULL DEFAULT NULL COMMENT '�շ�����',
  'derate_money' double NULL DEFAULT NULL COMMENT '�������',
  'should_receive' double NULL DEFAULT NULL COMMENT 'Ӧ�շ���',
  'invalid_number' int(11) NULL DEFAULT NULL COMMENT '���ϴ���',
  'floor_factor' double NULL DEFAULT NULL COMMENT '¥��ϵ��',
  'derate_delay_money' double NULL DEFAULT NULL COMMENT '�������ɽ�',
  'pay_mult' int(11) NULL DEFAULT NULL COMMENT '���ñ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����̨����ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_standing_book_detail
-- ----------------------------

-- ----------------------------
-- Table structure for fy_temporary_money_setting
-- ----------------------------
DROP TABLE IF EXISTS 'fy_temporary_money_setting';
CREATE TABLE 'fy_temporary_money_setting'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�ٿͷ���id',
  'temporary_money_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'upper_money_id' int(11) NULL DEFAULT NULL COMMENT '�ϼ�����id',
  'price_unit' double NULL DEFAULT NULL COMMENT '��λ�۸�',
  'money_description' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ٿͷ�������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fy_temporary_money_setting
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_advice_box
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_advice_box';
CREATE TABLE 'tbl_advice_box'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'type' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'status' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'admin_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Աid',
  'user_range_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���Χid',
  'User_range_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���Χ����',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_advice_box
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_answer_data
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_answer_data';
CREATE TABLE 'tbl_answer_data'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�𰸱��',
  'subject_id' int(11) NULL DEFAULT NULL COMMENT '������Ŀ���',
  'answer_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'answer_type' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_record_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_record_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ŀ��ѡ����Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_answer_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_arg_record
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_arg_record';
CREATE TABLE 'tbl_arg_record'  (
  'arg_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '��������',
  'arg_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'arg_value' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ֵ',
  'arg_desc' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'arg_order' int(11) NULL DEFAULT NULL COMMENT '�����',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  PRIMARY KEY ('arg_code') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_arg_record
-- ----------------------------
INSERT INTO 'tbl_arg_record' VALUES ('E_DelZc', '�Ƿ�����ɾ���ʲ�����', '��', '�ǡ���Ĭ��Ϊ��', 50, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('E_TxmGz', '�ʲ�������/�����Զ����ɹ���', '1', '1�����ʲ������������д+��ǰ�������ˮ��(�ܳ���14λ)��2�����ʲ��������ǰ2λ�ַ�+4��0+6λ����ˮ��(�ܳ���12λ)', 54, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('E_UpdateAudi', '�ʲ��޸ĺ��Ƿ���Ҫ����������Ч', '��', '�ǡ���Ĭ��Ϊ��', 53, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('E_UpdateSy', '�Ƿ�����ֱ���޸��ʲ��Ĵ��/ʹ������', '��', '�ǡ���Ĭ��Ϊ��ֻ����δ�����ʲ�ת��/���ù��ܵ�ʱ������趨Ϊ[��]', 52, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('E_UpdateZj', '�Ƿ�����ֱ���޸��ʲ����۾��������', '��', '�ǡ���Ĭ��Ϊ��ֻ����δ�����ʲ��۾ɹ��ܵ�ʱ������趨Ϊ[��]', 51, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('E_Wpslxs', '��Ʒ�����е�����Ĭ����ʾС��λ��', '0', '0������ʾС��;1������ʾ1λС��;2������ʾ2λС��', 55, 'E');
INSERT INTO 'tbl_arg_record' VALUES ('F_Lstk', '�Ƿ�����Ա������ǰ���տ�����˿�/����', '��', '�ǡ���Ĭ��Ϊ��', 16, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('F_ScPzh', '�Ƿ���ϵͳ�Զ�����Ԥ�տ��ƾ֤��', '��', '�ǡ���Ĭ��Ϊ��', 15, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('F_ScSjh', '��ҵ�շ�ʱ���վݺ����ɹ���', '2', '0�����ֹ�����;1�����Ʊ�ݹ�����ȡֵ;2������ϵͳ�Զ����ɡ�Ĭ��Ϊ0', 14, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('F_skjerad', '����/��̯��ҵ���ý���С����λ��', '0.00', '0�����������뵽Ԫ;0.0�����������뵽��;0.00�����������뵽��', 12, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('K_cgsfrad', '�����շѽ���С����λ��', '2', '0�����������뵽Ԫ;1�����������뵽��;2�����������뵽��', 60, 'K');
INSERT INTO 'tbl_arg_record' VALUES ('M_jjdd_qz', '���������ĵ���ǰ׺(��ĸ)', 'W', 'ֻ��¼��1���ַ���', 30, 'M');
INSERT INTO 'tbl_arg_record' VALUES ('M_max_chartsize', 'ͼ����Զ���������(px)', '10000', '�������ø�����Խ�ʡ��������Դ������780��10000֮�䡣', 31, 'M');
INSERT INTO 'tbl_arg_record' VALUES ('M_max_query', 'һ��������ѯʱ�䷶Χ(��)', '36500', '�������ø�����Խ�ʡ��������Դ������90�졣', 32, 'M');
INSERT INTO 'tbl_arg_record' VALUES ('M_msg_gys1', '��Ӧ�̵�½��ʾ��Ϣ(������״̬)', '�Բ��𣬸��û�Ŀǰ���ڷ�����״̬�����ܵ�¼��', '', 33, 'M');
INSERT INTO 'tbl_arg_record' VALUES ('M_msg_gys2', '��Ӧ�̵�½��ʾ��Ϣ(������Ч��)', '�Բ��𣬸��û�������Ч�ڷ�Χ�ڣ����ܵ�¼��', '', 34, 'M');
INSERT INTO 'tbl_arg_record' VALUES ('P_AttType', '�����ϴ��ĸ�������', '.doc|.docx|.xls|.xlsx|.ppt|.pptx|.pdf|.rar|.zip|.gif|.jpg|.jpeg', '��ʹ�á�|������', 1, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('P_fj_size', '�����������ֵ(KB)', '10000', '����Ʒ���롢������ݡ�վ���ʼ�/վ���ʼ��ĵ��������ȡ�', 2, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('P_ImgType', '�����ϴ���ͼƬ����', '.jpg|.gif|.png|.jpeg|.bmp', '��ʹ�á�|������', 4, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('P_IPaddr', '��ϵͳ�ķ���������IP��ַ', '192.168.1.135', '��������������Ե�����IP��ַ', 5, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('P_pic_size', 'ͼƬ�������ֵ(KB)', '10000', '����Ʒ���롢����ƾ֤����Ʒ���̵��ϴ�ͼƬҳ�档', 3, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('P_sdate', 'Ĭ�ϲ�ѯ��ʼ����', '1', '0������Ի���;1�����³�;2�������', 0, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('R_rsurl', '���������·��', 'http://192.168.1.135/ReportServer_SQL2008', '�趨������������ļ����·��', 40, 'R');
INSERT INTO 'tbl_arg_record' VALUES ('screen_bottom', '�����ϵ��', 'qstVnZ+S0z4=', '��Ļ���±߾�ȱʡֵ', 94, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('screen_browse', '������汾', '/0F6/fVrxmc=', '����ie/firefox/navigator������', 97, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('screen_paramt', '�����ϵ��', '1', '��Ļ���ұ߾�ȱʡֵ', 96, 'F');
INSERT INTO 'tbl_arg_record' VALUES ('screen_size_x', 'Ĭ����Ļ�ĺ���ߴ����ֵ', 'xJiPw0f3+QMo5uAK/2KlHg==', '�����������ڵĴ󲿷ֱַ���', 98, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('screen_size_y', 'Ĭ����Ļ������ߴ����ֵ', 'BVqKPfqlWKRw8zXQ3mlXTQ==', '�����������ڵĴ󲿷ֱַ���', 99, 'P');
INSERT INTO 'tbl_arg_record' VALUES ('screen_top', '�����ϵ��', '2TiybG+qJWM=', '��Ļ���±߾�ȱʡֵ', 95, 'K');
INSERT INTO 'tbl_arg_record' VALUES ('Y_keytype', '�趨���õ�UsbKey�ͺ�', '2', '1����ikey1000;2����ET99', 20, 'Y');

-- ----------------------------
-- Table structure for tbl_attupload
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_attupload';
CREATE TABLE 'tbl_attupload'  (
  'attID' int(20) NOT NULL AUTO_INCREMENT COMMENT '����id',
  'attName' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'attNewName' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'attKey' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ψһkey',
  'attClass' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  PRIMARY KEY ('attID') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_attupload
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_color
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_color';
CREATE TABLE 'tbl_color'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  'color' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ɫ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ɫ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_color
-- ----------------------------
INSERT INTO 'tbl_color' VALUES (1, '#009900');
INSERT INTO 'tbl_color' VALUES (2, '#00FF00');
INSERT INTO 'tbl_color' VALUES (3, '#33CCFF');
INSERT INTO 'tbl_color' VALUES (4, '#669900');
INSERT INTO 'tbl_color' VALUES (5, '#006699');
INSERT INTO 'tbl_color' VALUES (6, '#CCCCCC');
INSERT INTO 'tbl_color' VALUES (7, '#0000FF');
INSERT INTO 'tbl_color' VALUES (8, '#996699');
INSERT INTO 'tbl_color' VALUES (9, '#333300');
INSERT INTO 'tbl_color' VALUES (10, '#FF00CC');
INSERT INTO 'tbl_color' VALUES (11, '#FFFFCC');
INSERT INTO 'tbl_color' VALUES (12, '#99CCFF');
INSERT INTO 'tbl_color' VALUES (13, '#9900FF');
INSERT INTO 'tbl_color' VALUES (14, '#66FFCC');
INSERT INTO 'tbl_color' VALUES (15, '#FF0000');
INSERT INTO 'tbl_color' VALUES (16, '#99FFFF');
INSERT INTO 'tbl_color' VALUES (17, '#666666');
INSERT INTO 'tbl_color' VALUES (18, '#663399');
INSERT INTO 'tbl_color' VALUES (19, '#669999');
INSERT INTO 'tbl_color' VALUES (20, '#9999CC');
INSERT INTO 'tbl_color' VALUES (21, '#009900');
INSERT INTO 'tbl_color' VALUES (22, '#00FF00');
INSERT INTO 'tbl_color' VALUES (23, '#333300');
INSERT INTO 'tbl_color' VALUES (24, '#669900');
INSERT INTO 'tbl_color' VALUES (25, '#666666');
INSERT INTO 'tbl_color' VALUES (26, '#CCCCCC');
INSERT INTO 'tbl_color' VALUES (27, '#0000FF');
INSERT INTO 'tbl_color' VALUES (28, '#996699');
INSERT INTO 'tbl_color' VALUES (29, '#99FFFF');
INSERT INTO 'tbl_color' VALUES (30, '#FF00CC');
INSERT INTO 'tbl_color' VALUES (31, '#FFFFCC');
INSERT INTO 'tbl_color' VALUES (32, '#99CCFF');
INSERT INTO 'tbl_color' VALUES (33, '#9900FF');
INSERT INTO 'tbl_color' VALUES (34, '#66FFCC');
INSERT INTO 'tbl_color' VALUES (35, '#FF0000');
INSERT INTO 'tbl_color' VALUES (36, '#006699');
INSERT INTO 'tbl_color' VALUES (37, '#33CCFF');
INSERT INTO 'tbl_color' VALUES (38, '#663399');
INSERT INTO 'tbl_color' VALUES (39, '#669999');
INSERT INTO 'tbl_color' VALUES (40, '#9999CC');
INSERT INTO 'tbl_color' VALUES (41, '#009900');
INSERT INTO 'tbl_color' VALUES (42, '#00FF00');
INSERT INTO 'tbl_color' VALUES (43, '#333300');
INSERT INTO 'tbl_color' VALUES (44, '#669900');
INSERT INTO 'tbl_color' VALUES (45, '#666666');
INSERT INTO 'tbl_color' VALUES (46, '#CCCCCC');
INSERT INTO 'tbl_color' VALUES (47, '#0000FF');
INSERT INTO 'tbl_color' VALUES (48, '#996699');
INSERT INTO 'tbl_color' VALUES (49, '#99FFFF');
INSERT INTO 'tbl_color' VALUES (50, '#FF00CC');
INSERT INTO 'tbl_color' VALUES (51, '#FFFFCC');
INSERT INTO 'tbl_color' VALUES (52, '#99CCFF');
INSERT INTO 'tbl_color' VALUES (53, '#9900FF');
INSERT INTO 'tbl_color' VALUES (54, '#66FFCC');
INSERT INTO 'tbl_color' VALUES (55, '#FF0000');
INSERT INTO 'tbl_color' VALUES (56, '#006699');
INSERT INTO 'tbl_color' VALUES (57, '#33CCFF');
INSERT INTO 'tbl_color' VALUES (58, '#663399');
INSERT INTO 'tbl_color' VALUES (59, '#669999');
INSERT INTO 'tbl_color' VALUES (60, '#9999CC');

-- ----------------------------
-- Table structure for tbl_common_language
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_common_language';
CREATE TABLE 'tbl_common_language'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'content' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'category' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_common_language
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_common_message
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_common_message';
CREATE TABLE 'tbl_common_message'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���ű���',
  'message_content' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'message_type' bigint(20) NULL DEFAULT NULL COMMENT '����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ö���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_common_message
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_company
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_company';
CREATE TABLE 'tbl_company'  (
  'id' int(10) NOT NULL AUTO_INCREMENT COMMENT '��ҵ���',
  'company_full_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵȫ��',
  'company_simple_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ���',
  'company_english_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ӣ������',
  'company_brand' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵƷ��',
  'company_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ����',
  'company_trade' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ҵ',
  'company_addr' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ��ַ',
  'post_code' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'company_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ�绰',
  'company_fax' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ����',
  'company_website' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ��վ',
  'company_email' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ����',
  'company_national' varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˰��',
  'company_land' varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˰��',
  'open_bank' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'bank_account' varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˺�',
  'company_leader' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˴���',
  'register_date' datetime NULL DEFAULT NULL COMMENT 'ע��ʱ��',
  'register_money' double NULL DEFAULT NULL COMMENT 'ע���ʽ�',
  'employee_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ա������',
  'company_intro' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ���',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_company
-- ----------------------------
INSERT INTO 'tbl_company' VALUES (1, '��ʿ�������Ƽ����޹�˾', '��ʿ����ʦ', 'mashibing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'tbl_company' VALUES (2, '��ʿ�������Ϻ��ֹ�˾', '��ʿ��_SH', 'mashibing_sh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'tbl_company' VALUES (3, '��ʿ���������ڷֹ�˾', '��ʿ��_SZ', 'mashibing_sz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO 'tbl_company' VALUES (4, '��ʿ���������ݷֹ�˾', '��ʿ��_HZ', 'mashibing_hz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_company_record
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_company_record';
CREATE TABLE 'tbl_company_record'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'company_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾����',
  'company_add' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾��ַ',
  'company_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾����',
  'compant_grade' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾����',
  'parent_company' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ϼ�����',
  'leader' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'post_code' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'company_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾�绰',
  'fax_number' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'email' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ʼ�',
  'simple_desc' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�򵥽���',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¼����',
  'input_time' datetime NULL DEFAULT NULL COMMENT '¼��ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��λ��¼' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_company_record
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_compary_notice
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_compary_notice';
CREATE TABLE 'tbl_compary_notice'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ�����id',
  'notice_theme' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'notice_content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��������',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼʱ��',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'receive_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'notice_category' bigint(20) NULL DEFAULT NULL COMMENT '�������',
  'attach_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'attach_path' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����·��',
  'status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'notice_type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'notice_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���渽��',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¼����',
  'input_date' datetime NULL DEFAULT NULL COMMENT '¼��ʱ��',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_advice' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'allow_user_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����鿴���û�����',
  'allow_user_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����鿴���û�����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_compary_notice
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_custom_type
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_custom_type';
CREATE TABLE 'tbl_custom_type'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '���ͱ��',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����״̬',
  'category' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ͷ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 795 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�Զ�������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_custom_type
-- ----------------------------
INSERT INTO 'tbl_custom_type' VALUES (1, '������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (2, '�����', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (3, '�Ϻ���', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (4, 'ɽ��ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (5, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (6, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (7, '�Ϻ���', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (8, '�����', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (9, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (10, '�人��', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (11, 'ͬ��', '����', 'p03');
INSERT INTO 'tbl_custom_type' VALUES (12, '��ͬ��', '����', 'p03');
INSERT INTO 'tbl_custom_type' VALUES (13, '����', '����', 'p03');
INSERT INTO 'tbl_custom_type' VALUES (14, '�ݻ�', '����', 'p03');
INSERT INTO 'tbl_custom_type' VALUES (15, '�ܾ���', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (16, 'ҵ����', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (17, '���³�', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (18, '���ž���', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (19, '�곤', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (20, 'ֵ�ྭ��', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (21, 'ҵ��Ա', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (22, '������Ա', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (23, '�ͷ�����', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (24, '�̾�������', '����', 'g07');
INSERT INTO 'tbl_custom_type' VALUES (25, 'ϴ����', '����', 'g07');
INSERT INTO 'tbl_custom_type' VALUES (26, '���Ը�ʳ��', '����', 'g07');
INSERT INTO 'tbl_custom_type' VALUES (27, '����������', '����', 'g07');
INSERT INTO 'tbl_custom_type' VALUES (28, '��֯�ٻ���', '����', 'g07');
INSERT INTO 'tbl_custom_type' VALUES (29, '���10�ѹ�Ӧ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (30, '���10����Ӫ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (31, '���ȹ�Ӧ������ǰ50��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (32, '���ȹ�Ӧ�����ۺ�50��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (33, '�¶ȹ�Ӧ������ǰ30��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (34, '�¶ȹ�Ӧ�����ۺ�30��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (35, '���Ż���', '����', 'o01');
INSERT INTO 'tbl_custom_type' VALUES (36, '���Ż���', '����', 'o01');
INSERT INTO 'tbl_custom_type' VALUES (37, '��ʱ����', '����', 'o01');
INSERT INTO 'tbl_custom_type' VALUES (38, '�����ܽ����', '����', 'o01');
INSERT INTO 'tbl_custom_type' VALUES (39, '��ĩ�㱨����', '����', 'o01');
INSERT INTO 'tbl_custom_type' VALUES (40, '��ҵ����Ƭ', '����', 'p08');
INSERT INTO 'tbl_custom_type' VALUES (41, '����ƹ�Ƭ', '����', 'p08');
INSERT INTO 'tbl_custom_type' VALUES (42, '���ż�¼Ƭ', '����', 'p08');
INSERT INTO 'tbl_custom_type' VALUES (43, '��ѵ����Ƭ', '����', 'p08');
INSERT INTO 'tbl_custom_type' VALUES (44, 'ITҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (45, '����ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (46, '����ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (47, '���ز�ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (48, '����ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (49, 'ͨѶҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (50, 'ף����', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (51, '�ʺ���', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (52, '������', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (53, '֪ʶ��', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (54, '������', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (55, '��0-10��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (56, '��10-20��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (57, '��20-30��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (58, 'Ů30-50��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (59, 'Ů50-80��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (60, 'Ů20-45��', '����', 'g04');
INSERT INTO 'tbl_custom_type' VALUES (61, '�̾�����', '����', 'g08');
INSERT INTO 'tbl_custom_type' VALUES (62, '���Ը�ʳ', '����', 'g08');
INSERT INTO 'tbl_custom_type' VALUES (63, 'ϴ��', '����', 'g08');
INSERT INTO 'tbl_custom_type' VALUES (64, '�����������͵���', '����', 'g08');
INSERT INTO 'tbl_custom_type' VALUES (65, '��֯�ٻ�', '����', 'g08');
INSERT INTO 'tbl_custom_type' VALUES (66, '��װЬñ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (67, '�߲�ˮ��_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (68, '�����ʳ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (69, '�õ���', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (70, 'ú��', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (71, '����ˮ', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (72, '����', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (73, '����', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (74, '����', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (75, '�컨���ذ�', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (76, '�����豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (77, '�̳��豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (78, '�����豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (79, '����', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (80, '�����豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (81, '�����豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (82, '�칫�豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (83, '�����豸', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (84, '�Ĳ�', '����', 'g09');
INSERT INTO 'tbl_custom_type' VALUES (85, '�������ۼƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (86, '�����', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (87, 'ֵ�๫��', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (88, '����Ӵ�', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (89, '��ܰ��ʾ', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (90, '��������', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (91, '���Ź���', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (92, 'Ա������', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (93, '��λ�淶', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (94, 'ɽ��ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (95, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (96, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (97, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (98, '�Ĵ�ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (99, '�㶫ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (100, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (101, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (102, '�ӱ�ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (103, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (104, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (105, '����ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (106, '������ʡ', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (107, '���ɹ�������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (108, '�½�ά���������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (109, '���Ļ���������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (110, '����׳��������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (111, '����������', '����', 'g02');
INSERT INTO 'tbl_custom_type' VALUES (112, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (113, '̫ԭ��', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (114, 'ʯ��ׯ��', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (115, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (116, '���ͺ�����', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (117, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (118, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (119, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (120, '��������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (121, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (122, '��³ľ����', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (123, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (124, '������', '����', 'g03');
INSERT INTO 'tbl_custom_type' VALUES (125, '��Ա', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (126, '������ѿ�湩Ӧ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (127, '��������湩Ӧ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (128, 'ÿ������ͻ�����Ӧ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (129, 'ÿ������ͻ�����Ӧ��', '����', 'g01');
INSERT INTO 'tbl_custom_type' VALUES (130, '����Ԥ��ƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (131, '���˹���Ŀ��ƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (132, '��Ա���ּƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (133, '�������ƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (134, '����ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (135, '��ͨ��Ա', '����', 'v06');
INSERT INTO 'tbl_custom_type' VALUES (136, 'VIP��Ա', '����', 'v06');
INSERT INTO 'tbl_custom_type' VALUES (137, '��ʯ��Ա', '����', 'v06');
INSERT INTO 'tbl_custom_type' VALUES (138, '������', '����', 'v05');
INSERT INTO 'tbl_custom_type' VALUES (139, '����', '����', 'v05');
INSERT INTO 'tbl_custom_type' VALUES (140, '����', '����', 'v05');
INSERT INTO 'tbl_custom_type' VALUES (141, 'һ¥', '����', 'g05');
INSERT INTO 'tbl_custom_type' VALUES (142, '��¥', '����', 'g05');
INSERT INTO 'tbl_custom_type' VALUES (143, '��¥', '����', 'g05');
INSERT INTO 'tbl_custom_type' VALUES (144, '��һ¥', '����', 'g05');
INSERT INTO 'tbl_custom_type' VALUES (145, '����¥', '����', 'g05');
INSERT INTO 'tbl_custom_type' VALUES (146, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (147, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (148, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (149, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (150, '׳��', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (151, 'ά�����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (152, '������', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (153, '�ɹ���', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (154, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (155, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (156, '��ɽ��', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (157, '����', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (158, 'ŭ��', '����', 'p13');
INSERT INTO 'tbl_custom_type' VALUES (159, '�����ܼ�', '����', 'p06');
INSERT INTO 'tbl_custom_type' VALUES (160, '����ˮ��_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (161, 'ҽҩ����Ʒ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (162, '�ҵ�����_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (163, '����Ʒ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (164, 'ɢװʳƷ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (165, 'ͼ�����_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (166, '������Ʒ_��̨', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (167, '����', '����', 'g11');
INSERT INTO 'tbl_custom_type' VALUES (168, '���ӳ�', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (169, '����', '����', 'g10');
INSERT INTO 'tbl_custom_type' VALUES (170, '�ͷ�����', '����', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (171, '���۲���', '����', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (172, '���е��', '����', 'g06');
INSERT INTO 'tbl_custom_type' VALUES (173, 'ת��֧Ʊ', '����', 'g06');
INSERT INTO 'tbl_custom_type' VALUES (174, '��Ʊ', '����', 'g06');
INSERT INTO 'tbl_custom_type' VALUES (175, '�ʾֻ��', '����', 'g06');
INSERT INTO 'tbl_custom_type' VALUES (176, 'Сѧ', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (177, '����', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (178, '����', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (179, '��ר', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (180, '��ѧר��', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (181, '��ѧ����', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (182, '�о���', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (183, '˶ʿ', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (184, '��ʿ', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (185, 'ѧʿ', '����', 'v03');
INSERT INTO 'tbl_custom_type' VALUES (186, '�𿨻�Ա�طüƻ�', '����', 'v02');
INSERT INTO 'tbl_custom_type' VALUES (187, '��ҵ��ԱӪ���ƻ�', '����', 'v02');
INSERT INTO 'tbl_custom_type' VALUES (188, '�ڼ��չػ��ƻ�', '����', 'v02');
INSERT INTO 'tbl_custom_type' VALUES (189, '�����ػ��ƻ�', '����', 'v02');
INSERT INTO 'tbl_custom_type' VALUES (190, '�Ϻ�', '����', 'v04');
INSERT INTO 'tbl_custom_type' VALUES (191, '��', '����', 'v04');
INSERT INTO 'tbl_custom_type' VALUES (192, 'һ��', '����', 'v04');
INSERT INTO 'tbl_custom_type' VALUES (193, '��', '����', 'v04');
INSERT INTO 'tbl_custom_type' VALUES (194, '�ϲ�', '����', 'v04');
INSERT INTO 'tbl_custom_type' VALUES (195, 'Ͷ��', '����', 'v01');
INSERT INTO 'tbl_custom_type' VALUES (196, '����', '����', 'v01');
INSERT INTO 'tbl_custom_type' VALUES (197, '����', '����', 'v01');
INSERT INTO 'tbl_custom_type' VALUES (198, '����', '����', 'v01');
INSERT INTO 'tbl_custom_type' VALUES (199, '������', '����', 'p04');
INSERT INTO 'tbl_custom_type' VALUES (200, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (201, '���', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (202, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (203, '��Ϫ', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (204, '�㽭', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (205, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (206, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (207, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (208, 'IBM', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (209, 'HP', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (210, 'DELL', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (211, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (212, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (213, '��Ԫ', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (214, '�����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (215, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (216, '������', '����', 'p10');
INSERT INTO 'tbl_custom_type' VALUES (217, '������', '����', 'p10');
INSERT INTO 'tbl_custom_type' VALUES (218, '���', '����', 'p10');
INSERT INTO 'tbl_custom_type' VALUES (219, '����ͼֽ��', '����', 'f08');
INSERT INTO 'tbl_custom_type' VALUES (220, '������·��', '����', 'f08');
INSERT INTO 'tbl_custom_type' VALUES (221, '������ʩ��', '����', 'f08');
INSERT INTO 'tbl_custom_type' VALUES (222, '����������', '����', 'f08');
INSERT INTO 'tbl_custom_type' VALUES (223, '�����¶ȼƻ�', '����', 'o02');
INSERT INTO 'tbl_custom_type' VALUES (224, 'B��-���', '����', 'f01');
INSERT INTO 'tbl_custom_type' VALUES (225, 'C��-��ɷ�', '����', 'f01');
INSERT INTO 'tbl_custom_type' VALUES (226, 'D��-����', '����', 'f01');
INSERT INTO 'tbl_custom_type' VALUES (227, 'E��-����', '����', 'f01');
INSERT INTO 'tbl_custom_type' VALUES (228, '��Ʒչʾ', '����', 'f15');
INSERT INTO 'tbl_custom_type' VALUES (229, '�ͻ�̸��', '����', 'f15');
INSERT INTO 'tbl_custom_type' VALUES (230, '����ִ�', '����', 'f15');
INSERT INTO 'tbl_custom_type' VALUES (231, 'E1-��1��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (232, 'E2-��2��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (233, 'W1-��1��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (234, 'W2-��2��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (235, 'S1-��1��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (236, 'S2-��2��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (237, 'N1-��1��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (238, 'N2-��2��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (239, 'C1-����1��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (240, 'C2-����2��', '����', 'f09');
INSERT INTO 'tbl_custom_type' VALUES (241, '����Ʒ���⻧ ', '����', 'f16');
INSERT INTO 'tbl_custom_type' VALUES (242, '����Ʒ���⻧', '����', 'f16');
INSERT INTO 'tbl_custom_type' VALUES (243, '����Ʒ���⻧', '����', 'f16');
INSERT INTO 'tbl_custom_type' VALUES (244, '��С��ҵ�⻧', '����', 'f16');
INSERT INTO 'tbl_custom_type' VALUES (245, '�����⻧', '����', 'f16');
INSERT INTO 'tbl_custom_type' VALUES (246, '���֤', '����', 'p07');
INSERT INTO 'tbl_custom_type' VALUES (247, '��ʻ֤ ', '����', 'p07');
INSERT INTO 'tbl_custom_type' VALUES (248, 'Ӫҵִ��', '����', 'p07');
INSERT INTO 'tbl_custom_type' VALUES (249, '��װ', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (250, 'Ь��', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (251, '��� ', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (252, '�ľ�', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (253, '�鱦����', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (254, '��������', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (255, '���', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (256, 'ʳƷ', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (257, '�ӹ�����', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (258, '����', '����', 'f14');
INSERT INTO 'tbl_custom_type' VALUES (259, '���沿��', '����', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (260, 'һ������', '����', 'o03');
INSERT INTO 'tbl_custom_type' VALUES (261, '��������', '����', 'o03');
INSERT INTO 'tbl_custom_type' VALUES (262, '��ʱ����', '����', 'o03');
INSERT INTO 'tbl_custom_type' VALUES (263, '��ס', '����', 'f04');
INSERT INTO 'tbl_custom_type' VALUES (264, '����', '����', 'f04');
INSERT INTO 'tbl_custom_type' VALUES (265, '����', '����', 'f04');
INSERT INTO 'tbl_custom_type' VALUES (266, '�ⷿ', '����', 'f04');
INSERT INTO 'tbl_custom_type' VALUES (267, 'ˮ��ṹ', '����', 'f06');
INSERT INTO 'tbl_custom_type' VALUES (268, '�ֽ�ṹ', '����', 'f06');
INSERT INTO 'tbl_custom_type' VALUES (269, 'ש�ṹ', '����', 'f06');
INSERT INTO 'tbl_custom_type' VALUES (270, 'ľ�ṹ', '����', 'f06');
INSERT INTO 'tbl_custom_type' VALUES (271, '��װ', '����', 'f17');
INSERT INTO 'tbl_custom_type' VALUES (272, '��װ', '����', 'f17');
INSERT INTO 'tbl_custom_type' VALUES (273, '����', '����', 'f17');
INSERT INTO 'tbl_custom_type' VALUES (274, '��δ�깤', '����', 'f12');
INSERT INTO 'tbl_custom_type' VALUES (275, '�ո��깤', '����', 'f12');
INSERT INTO 'tbl_custom_type' VALUES (276, 'ͨ������', '����', 'f12');
INSERT INTO 'tbl_custom_type' VALUES (277, '����һ��', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (278, '����һ��', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (279, '���Ҷ���', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (280, '���Ҷ���', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (281, 'һ��һ��', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (282, '��������', '����', 'f03');
INSERT INTO 'tbl_custom_type' VALUES (283, '��������', '����', 'f03');
INSERT INTO 'tbl_custom_type' VALUES (284, '���ϳ���', '����', 'f03');
INSERT INTO 'tbl_custom_type' VALUES (285, '��ҵ����', '����', 'f10');
INSERT INTO 'tbl_custom_type' VALUES (286, '�շ�����', '����', 'f10');
INSERT INTO 'tbl_custom_type' VALUES (287, '��������', '����', 'f10');
INSERT INTO 'tbl_custom_type' VALUES (288, '��ȫ����', '����', 'f10');
INSERT INTO 'tbl_custom_type' VALUES (289, '��׼��λ', '����', 'f02');
INSERT INTO 'tbl_custom_type' VALUES (290, '���ͳ�λ', '����', 'f02');
INSERT INTO 'tbl_custom_type' VALUES (291, 'A��-��׼', '����', 'f01');
INSERT INTO 'tbl_custom_type' VALUES (292, 'һ��һ��', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (293, '��������', '����', 'f05');
INSERT INTO 'tbl_custom_type' VALUES (294, '��������', '����', 'f15');
INSERT INTO 'tbl_custom_type' VALUES (295, '��ס�ۺ�', '����', 'f04');
INSERT INTO 'tbl_custom_type' VALUES (296, 'С�ͳ�λ', '����', 'f02');
INSERT INTO 'tbl_custom_type' VALUES (297, '���⳵λ', '����', 'f02');
INSERT INTO 'tbl_custom_type' VALUES (298, '��ҵ�շ�', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (299, '��ů���', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (300, '�������', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (301, '�������', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (302, 'ҵ�����', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (303, '������Ϣ', '����', 'b01');
INSERT INTO 'tbl_custom_type' VALUES (304, '��ҵ����ָ��', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (305, 'װ������ָ��', '����', 'p05');
INSERT INTO 'tbl_custom_type' VALUES (306, 'ҵ��֪ͨ', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (307, '��������', '����', 'p02');
INSERT INTO 'tbl_custom_type' VALUES (308, '����ͼֽ', '����', 'f11');
INSERT INTO 'tbl_custom_type' VALUES (309, '����ͼֽ', '����', 'f11');
INSERT INTO 'tbl_custom_type' VALUES (310, '����ͼֽ', '����', 'f11');
INSERT INTO 'tbl_custom_type' VALUES (311, '����', '����', 'f13');
INSERT INTO 'tbl_custom_type' VALUES (312, '��̨', '����', 'f13');
INSERT INTO 'tbl_custom_type' VALUES (313, '�ذ�', '����', 'f13');
INSERT INTO 'tbl_custom_type' VALUES (314, 'ǽ��', '����', 'f13');
INSERT INTO 'tbl_custom_type' VALUES (315, '�컨��', '����', 'f13');
INSERT INTO 'tbl_custom_type' VALUES (316, 'һ����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (317, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (318, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (319, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (320, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (321, '������', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (322, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (323, '����', '����', 'f07');
INSERT INTO 'tbl_custom_type' VALUES (324, '����', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (325, '�г�����', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (326, '�޳�����', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (327, '����Ͷ��', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (328, '���ܾ���', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (329, '��������', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (330, '��ӯ', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (331, '���н���', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (332, '�Ľ�����', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (333, '����', '����', 'e03');
INSERT INTO 'tbl_custom_type' VALUES (334, '����', '����', 'e01');
INSERT INTO 'tbl_custom_type' VALUES (335, '��', '����', 'e01');
INSERT INTO 'tbl_custom_type' VALUES (336, '��ʧ', '����', 'e01');
INSERT INTO 'tbl_custom_type' VALUES (337, '����', '����', 'e01');
INSERT INTO 'tbl_custom_type' VALUES (338, '��˾����', '����', 'e04');
INSERT INTO 'tbl_custom_type' VALUES (339, '��������', '����', 'e04');
INSERT INTO 'tbl_custom_type' VALUES (340, '������;', '����', 'e04');
INSERT INTO 'tbl_custom_type' VALUES (341, '����', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (342, 'δʹ��', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (343, '������', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (344, '�ٻ�������', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (345, 'Σ��������', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (346, '����', '����', 'e02');
INSERT INTO 'tbl_custom_type' VALUES (347, '����', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (348, '����ҵ', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (349, '����', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (350, '����', '����', 'p11');
INSERT INTO 'tbl_custom_type' VALUES (351, 'Сѧ', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (352, '����', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (353, '����', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (354, '��ר', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (355, '��ר', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (356, '����', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (357, '˶ʿ', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (358, '��ʿ', '����', 'p12');
INSERT INTO 'tbl_custom_type' VALUES (359, '��������', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (360, '���л���', '����', 'k02');
INSERT INTO 'tbl_custom_type' VALUES (361, '��ʡ����', '����', 'k02');
INSERT INTO 'tbl_custom_type' VALUES (362, '��ʡ����', '����', 'k02');
INSERT INTO 'tbl_custom_type' VALUES (363, '�⼮����', '����', 'k02');
INSERT INTO 'tbl_custom_type' VALUES (364, '�а�', '����', 'k03');
INSERT INTO 'tbl_custom_type' VALUES (365, 'С��', '����', 'k03');
INSERT INTO 'tbl_custom_type' VALUES (366, '�а�', '����', 'k03');
INSERT INTO 'tbl_custom_type' VALUES (367, '���', '����', 'k03');
INSERT INTO 'tbl_custom_type' VALUES (368, '��԰��', '����', 'k03');
INSERT INTO 'tbl_custom_type' VALUES (369, '����5����', '����', 'k04');
INSERT INTO 'tbl_custom_type' VALUES (370, '����', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (371, '����', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (372, '����', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (373, '�鷨', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (374, 'ħ��', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (375, '������', '����', 'k06');
INSERT INTO 'tbl_custom_type' VALUES (376, '��ʳ����', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (377, '����', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (378, 'ĸ��', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (379, 'үү', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (380, '����', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (381, '��ү', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (382, '����', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (383, '����', '����', 'k05');
INSERT INTO 'tbl_custom_type' VALUES (384, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (385, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (386, '������ѵ��', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (387, '���մ���', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (388, '�����ӷ�', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (389, '��Ʒ����', '����', 'c19');
INSERT INTO 'tbl_custom_type' VALUES (390, '��������', '����', 'c19');
INSERT INTO 'tbl_custom_type' VALUES (391, '��������', '����', 'c19');
INSERT INTO 'tbl_custom_type' VALUES (392, '��������', '����', 'c19');
INSERT INTO 'tbl_custom_type' VALUES (393, '���ڲɹ�', '����', 'c16');
INSERT INTO 'tbl_custom_type' VALUES (394, '���ǲɹ�', '����', 'c16');
INSERT INTO 'tbl_custom_type' VALUES (395, '�绰', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (396, '����', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (397, '���ýӴ�', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (398, '����', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (399, '��ѵ', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (400, '�������', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (401, '����', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (402, '����', '����', 'c08');
INSERT INTO 'tbl_custom_type' VALUES (403, '�绰', '����', 'c22');
INSERT INTO 'tbl_custom_type' VALUES (404, '����', '����', 'c22');
INSERT INTO 'tbl_custom_type' VALUES (405, '�ʼ�', '����', 'c22');
INSERT INTO 'tbl_custom_type' VALUES (406, '����', '����', 'c22');
INSERT INTO 'tbl_custom_type' VALUES (407, '����', '����', 'c22');
INSERT INTO 'tbl_custom_type' VALUES (408, '����', '����', 'c21');
INSERT INTO 'tbl_custom_type' VALUES (409, '�����ų�', '����', 'c21');
INSERT INTO 'tbl_custom_type' VALUES (410, '��ѵ', '����', 'c21');
INSERT INTO 'tbl_custom_type' VALUES (411, '����', '����', 'c21');
INSERT INTO 'tbl_custom_type' VALUES (412, '����', '����', 'c21');
INSERT INTO 'tbl_custom_type' VALUES (413, '֧Ʊ', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (414, '�ֽ�', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (415, '�������', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (416, '���', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (417, '��������', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (418, '����', '����', 'c14');
INSERT INTO 'tbl_custom_type' VALUES (419, '��', '����', 'c25');
INSERT INTO 'tbl_custom_type' VALUES (420, '��', '����', 'c25');
INSERT INTO 'tbl_custom_type' VALUES (421, '��', '����', 'c25');
INSERT INTO 'tbl_custom_type' VALUES (422, '����ý��', '����', 'c24');
INSERT INTO 'tbl_custom_type' VALUES (423, '������־', '����', 'c24');
INSERT INTO 'tbl_custom_type' VALUES (424, '������', '����', 'c24');
INSERT INTO 'tbl_custom_type' VALUES (425, '����ý��', '����', 'c24');
INSERT INTO 'tbl_custom_type' VALUES (426, '�㲥ý��', '����', 'c24');
INSERT INTO 'tbl_custom_type' VALUES (427, '��Ʒ����', '����', 'c15');
INSERT INTO 'tbl_custom_type' VALUES (428, '����', '����', 'c15');
INSERT INTO 'tbl_custom_type' VALUES (429, 'ҵ�����', '����', 'c15');
INSERT INTO 'tbl_custom_type' VALUES (430, '�������', '����', 'c15');
INSERT INTO 'tbl_custom_type' VALUES (431, '����', '����', 'c15');
INSERT INTO 'tbl_custom_type' VALUES (432, '�¿ͻ�����', '����', 'c17');
INSERT INTO 'tbl_custom_type' VALUES (433, '�Ͽͻ�����', '����', 'c17');
INSERT INTO 'tbl_custom_type' VALUES (434, 'Ѻ��', '����', 'c17');
INSERT INTO 'tbl_custom_type' VALUES (435, '����', '����', 'c17');
INSERT INTO 'tbl_custom_type' VALUES (436, '�����', '����', 'c17');
INSERT INTO 'tbl_custom_type' VALUES (437, '�绰', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (438, '����', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (439, '���ýӴ�', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (440, '����', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (441, '��ѵ', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (442, '�������', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (443, '����', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (444, '����', '����', 'c09');
INSERT INTO 'tbl_custom_type' VALUES (445, '���ľ���', '����', 'c12');
INSERT INTO 'tbl_custom_type' VALUES (446, '��������', '����', 'c12');
INSERT INTO 'tbl_custom_type' VALUES (447, 'һ�㾺��', '����', 'c12');
INSERT INTO 'tbl_custom_type' VALUES (448, '���Ծ���', '����', 'c12');
INSERT INTO 'tbl_custom_type' VALUES (449, '�绰�ػ�', '����', 'c07');
INSERT INTO 'tbl_custom_type' VALUES (450, '���Źػ�', '����', 'c07');
INSERT INTO 'tbl_custom_type' VALUES (451, '����', '����', 'c02');
INSERT INTO 'tbl_custom_type' VALUES (452, '�Ϻ�', '����', 'c02');
INSERT INTO 'tbl_custom_type' VALUES (453, 'һ��', '����', 'c02');
INSERT INTO 'tbl_custom_type' VALUES (454, '�ϲ�', '����', 'c02');
INSERT INTO 'tbl_custom_type' VALUES (455, '��ǰ����', '����', 'c05');
INSERT INTO 'tbl_custom_type' VALUES (456, '��ִͬ��', '����', 'c05');
INSERT INTO 'tbl_custom_type' VALUES (457, '�ۺ����', '����', 'c05');
INSERT INTO 'tbl_custom_type' VALUES (458, '��ͬ����', '����', 'c05');
INSERT INTO 'tbl_custom_type' VALUES (459, '������ֹ', '����', 'c05');
INSERT INTO 'tbl_custom_type' VALUES (460, '�绰����', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (461, '�ͻ�����', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (462, '��������', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (463, 'ý������', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (464, '�����', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (465, '�Ͽͻ�', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (466, '������', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (467, '�������', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (468, '�����б�', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (469, '������', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (470, '����', '����', 'c04');
INSERT INTO 'tbl_custom_type' VALUES (471, '10������', '����', 'c03');
INSERT INTO 'tbl_custom_type' VALUES (472, '10-20��', '����', 'c03');
INSERT INTO 'tbl_custom_type' VALUES (473, '20-50��', '����', 'c03');
INSERT INTO 'tbl_custom_type' VALUES (474, '50-200��', '����', 'c03');
INSERT INTO 'tbl_custom_type' VALUES (475, '200������', '����', 'c03');
INSERT INTO 'tbl_custom_type' VALUES (476, '��ͨ', '����', 'c01');
INSERT INTO 'tbl_custom_type' VALUES (477, 'Ǳ��', '����', 'c01');
INSERT INTO 'tbl_custom_type' VALUES (478, 'VIP', '����', 'c01');
INSERT INTO 'tbl_custom_type' VALUES (479, 'ʧЧ', '����', 'c01');
INSERT INTO 'tbl_custom_type' VALUES (480, '�ر���Ҫ', '����', 'c06');
INSERT INTO 'tbl_custom_type' VALUES (481, '��Ҫ', '����', 'c06');
INSERT INTO 'tbl_custom_type' VALUES (482, '��ͨ', '����', 'c06');
INSERT INTO 'tbl_custom_type' VALUES (483, '����Ҫ', '����', 'c06');
INSERT INTO 'tbl_custom_type' VALUES (484, 'ʧЧ', '����', 'c06');
INSERT INTO 'tbl_custom_type' VALUES (485, '��ֵ', '����', 'c18');
INSERT INTO 'tbl_custom_type' VALUES (486, '��ͨ��˰', '����', 'c18');
INSERT INTO 'tbl_custom_type' VALUES (487, '��ͨ��˰', '����', 'c18');
INSERT INTO 'tbl_custom_type' VALUES (488, '�վ�', '����', 'c18');
INSERT INTO 'tbl_custom_type' VALUES (489, '�����', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (490, '������������', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (491, '���/�ʼ��ź�/��Ѷ', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (492, '���ֻ�/�/չ��', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (493, '�г���������/¼��/¼��/����', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (494, '����ѵ��', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (495, '����ѵ��', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (496, '����', '����', 'c23');
INSERT INTO 'tbl_custom_type' VALUES (497, '��ƷͶ��', '����', 'c20');
INSERT INTO 'tbl_custom_type' VALUES (498, '����Ͷ��', '����', 'c20');
INSERT INTO 'tbl_custom_type' VALUES (499, '�ͻ����', '����', 'c20');
INSERT INTO 'tbl_custom_type' VALUES (500, '����', '����', 'c20');
INSERT INTO 'tbl_custom_type' VALUES (501, '����', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (502, '��ͨ', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (503, 'ͨѶ', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (504, '��Ʒ', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (505, '�칫', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (506, '�', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (507, '����', '����', 'c13');
INSERT INTO 'tbl_custom_type' VALUES (508, '���ڹ�ͨ', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (509, '��������', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (510, '�������', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (511, '�����ƶ�', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (512, '��Ͷ��/����', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (513, '����̸��', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (514, '��ͬǩԼ', '����', 'c11');
INSERT INTO 'tbl_custom_type' VALUES (515, '�绰����', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (516, '�ͻ�����', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (517, '��������', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (518, 'ý������', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (519, '�����', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (520, '�Ͽͻ�', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (521, '�������', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (522, '�����б�', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (523, '������', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (524, '����', '����', 'c10');
INSERT INTO 'tbl_custom_type' VALUES (525, '����', '����', 'c27');
INSERT INTO 'tbl_custom_type' VALUES (526, '�˻�', '����', 'c27');
INSERT INTO 'tbl_custom_type' VALUES (527, '����', '����', 'c26');
INSERT INTO 'tbl_custom_type' VALUES (528, '�˻�', '����', 'c26');
INSERT INTO 'tbl_custom_type' VALUES (529, '����', '����', 'c26');
INSERT INTO 'tbl_custom_type' VALUES (530, '����', '����', 'p10');
INSERT INTO 'tbl_custom_type' VALUES (531, '����', '����', 'p10');
INSERT INTO 'tbl_custom_type' VALUES (532, '����', '����', 'o04');
INSERT INTO 'tbl_custom_type' VALUES (533, '����', '����', 'o04');
INSERT INTO 'tbl_custom_type' VALUES (534, '����', '����', 'o04');
INSERT INTO 'tbl_custom_type' VALUES (535, 'A��', '����', 'o05');
INSERT INTO 'tbl_custom_type' VALUES (536, 'B��', '����', 'o05');
INSERT INTO 'tbl_custom_type' VALUES (537, 'C��', '����', 'o05');
INSERT INTO 'tbl_custom_type' VALUES (538, 'D��', '����', 'o05');
INSERT INTO 'tbl_custom_type' VALUES (539, '��������', '����', 'o09');
INSERT INTO 'tbl_custom_type' VALUES (540, '�ڲ�����', '����', 'o09');
INSERT INTO 'tbl_custom_type' VALUES (541, 'ʡ������', '����', 'o09');
INSERT INTO 'tbl_custom_type' VALUES (542, '��������', '����', 'o09');
INSERT INTO 'tbl_custom_type' VALUES (543, 'A1��', '����', 'o08');
INSERT INTO 'tbl_custom_type' VALUES (544, 'B1��', '����', 'o08');
INSERT INTO 'tbl_custom_type' VALUES (545, 'C1��', '����', 'o08');
INSERT INTO 'tbl_custom_type' VALUES (546, '��', '����', 'o06');
INSERT INTO 'tbl_custom_type' VALUES (547, '��', '����', 'o06');
INSERT INTO 'tbl_custom_type' VALUES (548, '����', '����', 'o07');
INSERT INTO 'tbl_custom_type' VALUES (549, 'һ��', '����', 'o07');
INSERT INTO 'tbl_custom_type' VALUES (550, '����', '����', 'f18');
INSERT INTO 'tbl_custom_type' VALUES (551, '˽��', '����', 'f18');
INSERT INTO 'tbl_custom_type' VALUES (552, '�빫����˽��', '����', 'f18');
INSERT INTO 'tbl_custom_type' VALUES (553, '��ѧ����', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (554, '��Ȥ����', '����', 'k01');
INSERT INTO 'tbl_custom_type' VALUES (555, '����A��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (556, '����B��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (557, '����A��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (558, '����B��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (559, '�ֹ�A��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (560, '�ֹ�B��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (561, '����A��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (562, '����B��', '����', 'k07');
INSERT INTO 'tbl_custom_type' VALUES (563, '���ͥԭ��', '����', 'k08');
INSERT INTO 'tbl_custom_type' VALUES (564, '��԰��������', '����', 'k08');
INSERT INTO 'tbl_custom_type' VALUES (565, 'ת�빫���׶�԰', '����', 'k08');
INSERT INTO 'tbl_custom_type' VALUES (566, '�׶�����Ӧ&��������', '����', 'k08');
INSERT INTO 'tbl_custom_type' VALUES (567, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (568, '����', '����', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (569, '����', '����', 'p09');
INSERT INTO 'tbl_custom_type' VALUES (570, '�ֽ�', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (571, '΢��', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (572, '֧����', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (573, '֧Ʊ', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (574, '���п�', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (575, '����ת��', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (576, '����', '����', 'p15');
INSERT INTO 'tbl_custom_type' VALUES (577, '����', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (578, '����', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (579, '�Ƴ�', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (580, '�ܼ�', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (581, '��Ƹ', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (582, 'ְԱ', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (583, '����', '����', 'h01');
INSERT INTO 'tbl_custom_type' VALUES (584, '�й���������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (585, '�й���������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (586, '�й�ũҵ����', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (587, '�й��ʴ�����', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (588, '�й�����', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (589, '��ͨ����', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (590, '��������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (591, '��������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (592, '��������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (593, '�ַ�����', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (594, '�������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (595, '��������', '����', 'p16');
INSERT INTO 'tbl_custom_type' VALUES (596, '������Ƹ', '����', 'h07');
INSERT INTO 'tbl_custom_type' VALUES (597, '��Ƹ�᳡', '����', 'h07');
INSERT INTO 'tbl_custom_type' VALUES (598, 'Ա���Ƽ�', '����', 'h07');
INSERT INTO 'tbl_custom_type' VALUES (599, '�ڲ�ѡ��', '����', 'h07');
INSERT INTO 'tbl_custom_type' VALUES (600, '����', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (601, '�Ϻ�', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (602, '����', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (603, '����', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (604, '����', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (605, '���', '����', 'h04');
INSERT INTO 'tbl_custom_type' VALUES (606, '��ͬ��', '����', 'h11');
INSERT INTO 'tbl_custom_type' VALUES (607, '��ʱ��', '����', 'h11');
INSERT INTO 'tbl_custom_type' VALUES (608, '�ֳ�', '����', 'h09');
INSERT INTO 'tbl_custom_type' VALUES (609, '����', '����', 'h09');
INSERT INTO 'tbl_custom_type' VALUES (610, '�ڲ�����', '����', 'h09');
INSERT INTO 'tbl_custom_type' VALUES (611, '�ֳ�', '����', 'h10');
INSERT INTO 'tbl_custom_type' VALUES (612, '����', '����', 'h10');
INSERT INTO 'tbl_custom_type' VALUES (613, '�绰', '����', 'h10');
INSERT INTO 'tbl_custom_type' VALUES (614, '����', '����', 'h10');
INSERT INTO 'tbl_custom_type' VALUES (615, '��Ա', '����', 'h02');
INSERT INTO 'tbl_custom_type' VALUES (616, '��Ա', '����', 'h02');
INSERT INTO 'tbl_custom_type' VALUES (617, 'Ⱥ��', '����', 'h02');
INSERT INTO 'tbl_custom_type' VALUES (618, '����', '����', 'h08');
INSERT INTO 'tbl_custom_type' VALUES (619, '��Ƹ��', '����', 'h08');
INSERT INTO 'tbl_custom_type' VALUES (620, 'ý��', '����', 'h08');
INSERT INTO 'tbl_custom_type' VALUES (621, '����', '����', 'h06');
INSERT INTO 'tbl_custom_type' VALUES (622, '�Ƽ�', '����', 'h06');
INSERT INTO 'tbl_custom_type' VALUES (623, '����', '����', 'h06');
INSERT INTO 'tbl_custom_type' VALUES (624, '����', '����', 'h06');
INSERT INTO 'tbl_custom_type' VALUES (625, '����', '����', 'h05');
INSERT INTO 'tbl_custom_type' VALUES (626, '�м�', '����', 'h05');
INSERT INTO 'tbl_custom_type' VALUES (627, '�߼�', '����', 'h05');
INSERT INTO 'tbl_custom_type' VALUES (628, '��������ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (629, '�м�����ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (630, '�߼�����ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (631, '������ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (632, '���ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (633, '�߼����ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (634, 'ϵͳ����ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (635, '�������ʦ', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (636, '����Ա', '����', 'h03');
INSERT INTO 'tbl_custom_type' VALUES (637, '���ҽ�����', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (638, '������Դ����ᱣ�ϲ�', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (639, '������Ϣ��Э��', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (640, 'ְҵ�ʸ�֤', '����', 'p07');
INSERT INTO 'tbl_custom_type' VALUES (641, '����', '����', 'p07');
INSERT INTO 'tbl_custom_type' VALUES (642, '������', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (643, '�ֳ�����', '����', 'h12');
INSERT INTO 'tbl_custom_type' VALUES (644, '���Ͽ���', '����', 'h12');
INSERT INTO 'tbl_custom_type' VALUES (645, '����������', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (646, '����������', '����', 'h13');
INSERT INTO 'tbl_custom_type' VALUES (647, '������', '����', 'h26');
INSERT INTO 'tbl_custom_type' VALUES (648, '��ϵ��ʽ���', '����', 'h26');
INSERT INTO 'tbl_custom_type' VALUES (649, '�����', '����', 'h26');
INSERT INTO 'tbl_custom_type' VALUES (650, '��ϵ�˱��', '����', 'h26');
INSERT INTO 'tbl_custom_type' VALUES (651, '�������', '����', 'h26');
INSERT INTO 'tbl_custom_type' VALUES (652, '�Ͷ���ͬ', '����', 'h22');
INSERT INTO 'tbl_custom_type' VALUES (653, '���ܺ�ͬ', '����', 'h22');
INSERT INTO 'tbl_custom_type' VALUES (654, '2016��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (655, '2017��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (656, '2018��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (657, '2019��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (658, '2020��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (659, '��������', '����', 'h27');
INSERT INTO 'tbl_custom_type' VALUES (660, '��Ŀ����', '����', 'h27');
INSERT INTO 'tbl_custom_type' VALUES (661, '��������', '����', 'h28');
INSERT INTO 'tbl_custom_type' VALUES (662, '��������', '����', 'h28');
INSERT INTO 'tbl_custom_type' VALUES (663, '���õ���', '����', 'h29');
INSERT INTO 'tbl_custom_type' VALUES (664, '��ǰת��', '����', 'h29');
INSERT INTO 'tbl_custom_type' VALUES (665, '��ְ', '����', 'h23');
INSERT INTO 'tbl_custom_type' VALUES (666, '����', '����', 'h23');
INSERT INTO 'tbl_custom_type' VALUES (667, '��ְ', '����', 'h24');
INSERT INTO 'tbl_custom_type' VALUES (668, '����', '����', 'h24');
INSERT INTO 'tbl_custom_type' VALUES (669, '����', '����', 'h30');
INSERT INTO 'tbl_custom_type' VALUES (670, '����', '����', 'h30');
INSERT INTO 'tbl_custom_type' VALUES (671, 'ƽ��', '����', 'h30');
INSERT INTO 'tbl_custom_type' VALUES (672, '�ָ�', '����', 'h30');
INSERT INTO 'tbl_custom_type' VALUES (673, '���ʵ���', '����', 'h30');
INSERT INTO 'tbl_custom_type' VALUES (674, '����', '����', 'h31');
INSERT INTO 'tbl_custom_type' VALUES (675, '���', '����', 'h31');
INSERT INTO 'tbl_custom_type' VALUES (676, '����', '����', 'h31');
INSERT INTO 'tbl_custom_type' VALUES (677, '����', '����', 'h31');
INSERT INTO 'tbl_custom_type' VALUES (678, '����', '����', 'h32');
INSERT INTO 'tbl_custom_type' VALUES (679, '��Ա', '����', 'h32');
INSERT INTO 'tbl_custom_type' VALUES (680, '2015��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (681, '2016��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (682, '2017��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (683, '2018��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (684, '����', '����', 'h14');
INSERT INTO 'tbl_custom_type' VALUES (685, '����', '����', 'h14');
INSERT INTO 'tbl_custom_type' VALUES (686, '����', '����', 'h14');
INSERT INTO 'tbl_custom_type' VALUES (687, '��̸', '����', 'h14');
INSERT INTO 'tbl_custom_type' VALUES (688, '�ڲ��ֳ���ѵ', '����', 'h18');
INSERT INTO 'tbl_custom_type' VALUES (689, '�ڲ�������ѵ', '����', 'h18');
INSERT INTO 'tbl_custom_type' VALUES (690, '�����ֳ���ѵ', '����', 'h18');
INSERT INTO 'tbl_custom_type' VALUES (691, '����������ѵ', '����', 'h18');
INSERT INTO 'tbl_custom_type' VALUES (692, '�ֳ�', '����', 'h20');
INSERT INTO 'tbl_custom_type' VALUES (693, '����', '����', 'h20');
INSERT INTO 'tbl_custom_type' VALUES (694, '����', '����', 'h15');
INSERT INTO 'tbl_custom_type' VALUES (695, '����', '����', 'h15');
INSERT INTO 'tbl_custom_type' VALUES (696, '��ҵ����', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (697, '�������', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (698, '������ѯ', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (699, '����Ӫ��', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (700, '��������', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (701, '�����μ�', '����', 'h19');
INSERT INTO 'tbl_custom_type' VALUES (702, '2016��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (703, '2017��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (704, '2018��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (705, '2019��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (706, '2020��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (707, '����Э��', '����', 'h21');
INSERT INTO 'tbl_custom_type' VALUES (708, '����Э��', '����', 'h21');
INSERT INTO 'tbl_custom_type' VALUES (709, 'ҵ������', '����', 'h33');
INSERT INTO 'tbl_custom_type' VALUES (710, '��������', '����', 'h33');
INSERT INTO 'tbl_custom_type' VALUES (711, '��������', '����', 'h33');
INSERT INTO 'tbl_custom_type' VALUES (712, '�ŶӾ���', '����', 'h33');
INSERT INTO 'tbl_custom_type' VALUES (713, '�ϰ���', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (714, '�°���', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (715, 'һ����', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (716, '������', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (717, '������', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (718, '�ļ���', '����', 'h34');
INSERT INTO 'tbl_custom_type' VALUES (719, '�ʼ��ػ�', '����', 'c07');
INSERT INTO 'tbl_custom_type' VALUES (720, '�����ػ�', '����', 'c07');
INSERT INTO 'tbl_custom_type' VALUES (721, '������Ŀ', '����', 'o10');
INSERT INTO 'tbl_custom_type' VALUES (722, '��ѯ��Ŀ', '����', 'o10');
INSERT INTO 'tbl_custom_type' VALUES (723, 'IT������Ŀ', '����', 'o10');
INSERT INTO 'tbl_custom_type' VALUES (724, '�ͼ�', '����', 'o11');
INSERT INTO 'tbl_custom_type' VALUES (725, '�м�', '����', 'o11');
INSERT INTO 'tbl_custom_type' VALUES (726, '�߼�', '����', 'o11');
INSERT INTO 'tbl_custom_type' VALUES (727, '������', '����', 'o12');
INSERT INTO 'tbl_custom_type' VALUES (728, '������', '����', 'o12');
INSERT INTO 'tbl_custom_type' VALUES (729, '������', '����', 'o12');
INSERT INTO 'tbl_custom_type' VALUES (730, '�����׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (731, '���н׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (732, '��ƽ׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (733, '�����׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (734, 'ʵʩ�׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (735, '���ս׶�', '����', 'o13');
INSERT INTO 'tbl_custom_type' VALUES (736, '�˹��ɱ�', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (737, '���ϳɱ�', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (738, '�����ɱ�', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (739, '�豸', '����', 'o15');
INSERT INTO 'tbl_custom_type' VALUES (740, '����', '����', 'o15');
INSERT INTO 'tbl_custom_type' VALUES (741, '���', '����', 'o15');
INSERT INTO 'tbl_custom_type' VALUES (742, '��ý��', '����', 'o15');
INSERT INTO 'tbl_custom_type' VALUES (743, '����', '����', 'o16');
INSERT INTO 'tbl_custom_type' VALUES (744, '����', '����', 'o16');
INSERT INTO 'tbl_custom_type' VALUES (745, 'ͨѶ', '����', 'o16');
INSERT INTO 'tbl_custom_type' VALUES (746, '����', '����', 'o16');
INSERT INTO 'tbl_custom_type' VALUES (747, '����', '����', 'o16');
INSERT INTO 'tbl_custom_type' VALUES (748, '���', '����', 'o17');
INSERT INTO 'tbl_custom_type' VALUES (749, '��ͼ', '����', 'o17');
INSERT INTO 'tbl_custom_type' VALUES (750, '����', '����', 'o17');
INSERT INTO 'tbl_custom_type' VALUES (751, '����', '����', 'o17');
INSERT INTO 'tbl_custom_type' VALUES (752, '�ڲ�ת��', '����', 'o18');
INSERT INTO 'tbl_custom_type' VALUES (753, '����ת��', '����', 'o18');
INSERT INTO 'tbl_custom_type' VALUES (754, '��ѯ����', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (755, '��������', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (756, '��������', '����', 'o14');
INSERT INTO 'tbl_custom_type' VALUES (757, 'ITӲ����Ѳ��(ÿ��ĩ)', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (758, '�ص��ʲ�Ѳ��(ÿ����)', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (759, '�ʲ��ܲ�Ѳ��(ÿ��ĩ)', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (760, '��ʱ���Ѳ��', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (761, '�������Ѳ��', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (762, '�����豸Ѳ��', '����', 'e05');
INSERT INTO 'tbl_custom_type' VALUES (763, '111', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (764, '1112', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (765, '', 'ɾ��', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (766, '', 'ɾ��', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (767, '', 'ɾ��', 'p14');
INSERT INTO 'tbl_custom_type' VALUES (768, '11121313213', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (769, '222', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (770, '333', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (771, '', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (772, '', 'ɾ��', 'p01');
INSERT INTO 'tbl_custom_type' VALUES (773, '԰���ڲ�', '����', 'k09');
INSERT INTO 'tbl_custom_type' VALUES (774, '�������', '����', 'k09');
INSERT INTO 'tbl_custom_type' VALUES (775, '�׶��ҳ�', '����', 'k09');
INSERT INTO 'tbl_custom_type' VALUES (776, '��λԱ��', '����', 'k09');
INSERT INTO 'tbl_custom_type' VALUES (777, '������Ա', '����', 'k09');
INSERT INTO 'tbl_custom_type' VALUES (778, '2021��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (779, '2022��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (780, '2023��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (781, '2024��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (782, '2025��', '����', 'h25');
INSERT INTO 'tbl_custom_type' VALUES (783, '2021��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (784, '2022��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (785, '2023��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (786, '2024��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (787, '2025��', '����', 'h16');
INSERT INTO 'tbl_custom_type' VALUES (788, '2019��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (789, '2020��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (790, '2021��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (791, '2022��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (792, '2023��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (793, '2024��', '����', 'h17');
INSERT INTO 'tbl_custom_type' VALUES (794, '2025��', '����', 'h17');

-- ----------------------------
-- Table structure for tbl_dashboard
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_dashboard';
CREATE TABLE 'tbl_dashboard'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'data_item' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'more_path' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ַ',
  'privileges' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ȩ��',
  'Status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�Ǳ���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dashboard
-- ----------------------------
INSERT INTO 'tbl_dashboard' VALUES (1, '���ǰ10������ʵ�ģ��(��λ:��)', '../../portal/rzcx/rzcx.aspx', '', '����', 'P');
INSERT INTO 'tbl_dashboard' VALUES (5, '��ֹĿǰ��Ƿ����ҵ��(��λ:Ԫ)', 'bbcx/qfcx.aspx', '', '����', 'F');

-- ----------------------------
-- Table structure for tbl_date
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_date';
CREATE TABLE 'tbl_date'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'dt' datetime NULL DEFAULT NULL COMMENT '����',
  'weekday' int(11) NULL DEFAULT NULL COMMENT '����',
  'is_work' tinyint(4) NULL DEFAULT NULL COMMENT '�Ƿ��ϰ�',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_date
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_db_setting
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_db_setting';
CREATE TABLE 'tbl_db_setting'  (
  'db_Url' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ӵ�ַ',
  'db_username' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���',
  'db_pwd' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'db_lib_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ݿ���',
  'save_path' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���·��',
  'save_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ݿ�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_db_setting
-- ----------------------------
INSERT INTO 'tbl_db_setting' VALUES ('localhost', 'root', '123456', 'family_service_platform', 'd:\\dbbak\\', 'localhost');

-- ----------------------------
-- Table structure for tbl_dbbackup
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_dbbackup';
CREATE TABLE 'tbl_dbbackup'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'db_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������ݿ���',
  'db_url' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����·��',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ݿⱸ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dbbackup
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbrecovery
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_dbrecovery';
CREATE TABLE 'tbl_dbrecovery'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'db_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ԭ���ݿ���',
  'db_url' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ԭ·��',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ݿ⻹ԭ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dbrecovery
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbsource
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_dbsource';
CREATE TABLE 'tbl_dbsource'  (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'source_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'source_desc' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ľ���',
  'source_type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'source_class' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'id_clear' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�������',
  'update_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ݿ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dbsource
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_dept';
CREATE TABLE 'tbl_dept'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  'dept_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ű���',
  'dept_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'dept_leader' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ÿ�����',
  'dept_phone' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ŵ绰',
  'dept_type' bigint(20) NULL DEFAULT NULL COMMENT '��������',
  'dept_fax' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ŵ���',
  'dept_parent' int(11) NULL DEFAULT NULL COMMENT '�����ϼ����',
  'dept_line' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ų㼶��',
  'dept_privileges' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ȩ��',
  'dept_manage_privileges' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ź���Ȩ��',
  'organ_category' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'dept_person_number' int(11) NULL DEFAULT NULL COMMENT '��λ������',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_time' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'dept_remark' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '���ű�ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO 'tbl_dept' VALUES (1, '01', '��˾����', '', '', NULL, '', 0, '|-', 'aaaaaa', '', '0', NULL, 'admin', '2020-04-10 22:57:13', NULL);

-- ----------------------------
-- Table structure for tbl_deptkey
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_deptkey';
CREATE TABLE 'tbl_deptkey'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT 'Key����',
  'dept_name' varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����key' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_deptkey
-- ----------------------------
INSERT INTO 'tbl_deptkey' VALUES (1, 'aaaaa');
INSERT INTO 'tbl_deptkey' VALUES (2, 'bbbbb');
INSERT INTO 'tbl_deptkey' VALUES (3, 'ccccc');
INSERT INTO 'tbl_deptkey' VALUES (4, 'ddddd');
INSERT INTO 'tbl_deptkey' VALUES (5, 'eeeee');
INSERT INTO 'tbl_deptkey' VALUES (6, 'fffff');
INSERT INTO 'tbl_deptkey' VALUES (7, 'ggggg');
INSERT INTO 'tbl_deptkey' VALUES (8, 'hhhhh');
INSERT INTO 'tbl_deptkey' VALUES (9, 'iiiii');
INSERT INTO 'tbl_deptkey' VALUES (10, 'jjjjj');
INSERT INTO 'tbl_deptkey' VALUES (11, 'kkkkk');
INSERT INTO 'tbl_deptkey' VALUES (12, 'lllll');
INSERT INTO 'tbl_deptkey' VALUES (13, 'mmmmm');
INSERT INTO 'tbl_deptkey' VALUES (14, 'nnnnn');
INSERT INTO 'tbl_deptkey' VALUES (15, 'ooooo');
INSERT INTO 'tbl_deptkey' VALUES (16, 'ppppp');
INSERT INTO 'tbl_deptkey' VALUES (17, 'qqqqq');
INSERT INTO 'tbl_deptkey' VALUES (18, 'rrrrr');
INSERT INTO 'tbl_deptkey' VALUES (19, 'sssss');
INSERT INTO 'tbl_deptkey' VALUES (20, 'ttttt');
INSERT INTO 'tbl_deptkey' VALUES (21, 'uuuuu');
INSERT INTO 'tbl_deptkey' VALUES (22, 'vvvvv');
INSERT INTO 'tbl_deptkey' VALUES (23, 'wwwww');
INSERT INTO 'tbl_deptkey' VALUES (24, 'xxxxx');
INSERT INTO 'tbl_deptkey' VALUES (25, 'yyyyy');
INSERT INTO 'tbl_deptkey' VALUES (26, 'zzzzz');

-- ----------------------------
-- Table structure for tbl_desktop
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_desktop';
CREATE TABLE 'tbl_desktop'  (
  'id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'more_path' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ַ',
  'privileges' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ȩ��',
  'status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_desktop
-- ----------------------------
INSERT INTO 'tbl_desktop' VALUES ('gg', '���¹���', 'portal/xzgl/Qyggcx.aspx', '', '����', 'P');
INSERT INTO 'tbl_desktop' VALUES ('gz', '�����ƶ�', 'portal/xzgl/Gzzdcx.aspx', '', '����', 'P');
INSERT INTO 'tbl_desktop' VALUES ('lp', '���·���', 'bbcx/fccx.aspx', '', '����', 'F');
INSERT INTO 'tbl_desktop' VALUES ('ts', 'ҵ��Ͷ��', 'yzgl/zhtscx.aspx', '', '����', 'F');
INSERT INTO 'tbl_desktop' VALUES ('yj', '�ҵ��ʼ�', 'portal/yjgl/sjx.aspx', '', '����', 'P');
INSERT INTO 'tbl_desktop' VALUES ('yw', 'ҵί�����', 'ywhgl/ywhhycx.aspx', '', '����', 'F');

-- ----------------------------
-- Table structure for tbl_email_receive
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_email_receive';
CREATE TABLE 'tbl_email_receive'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  'email_send_id' bigint(20) NULL DEFAULT NULL COMMENT '�����ʼ�id',
  'receive_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������id',
  'receive_person_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ⱥ����',
  'receive_person_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ⱥ����',
  'email_title' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ�����',
  'email_content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '�ʼ�����',
  'important_grade' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ҫ����',
  'status' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'is_delete' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ɾ����־',
  'is_secret_send' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ͱ�־',
  'email_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ�����',
  'receive_type' char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'send_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'send_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'send_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ʼ�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_email_receive
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_email_send
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_email_send';
CREATE TABLE 'tbl_email_send'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�ʼ�id',
  'receive_person_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ⱥ����',
  'receive_person_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ⱥ����',
  'email_title' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ�����',
  'email_content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '�ʼ�����',
  'important_grade' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ҫ����',
  'is_draft' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ݸ�',
  'is_delete' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ɾ����־',
  'is_secret_send' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ͱ�־',
  'email_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ�����',
  'send_type' char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'send_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'send_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'send_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ʼ�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_email_send
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_employee_contact
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_employee_contact';
CREATE TABLE 'tbl_employee_contact'  (
  'id' int(20) NOT NULL COMMENT '�Զ����',
  'order_id' int(20) NULL DEFAULT NULL COMMENT '�����',
  'category_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����������',
  'category_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������id',
  'name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'work_num' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'dept' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'role' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ɫ',
  'position' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְλ',
  'gender' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�',
  'birthday' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'office_phone' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�칫�绰',
  'fax' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'move_phone' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ƶ��绰',
  'home_phone' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͥ�绰',
  'email' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ʼ�',
  'qq' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ��',
  'wchat' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢�ź�',
  'inner_msn' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ڲ���ʱͨ',
  'addr' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ַ',
  'post_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʱ�',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_person_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'create_person' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ա��ͨѶ¼' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_employee_contact
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_employee_contact_category
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_employee_contact_category';
CREATE TABLE 'tbl_employee_contact_category'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'category_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'order_id' bigint(20) NULL DEFAULT NULL COMMENT '�����',
  'remark' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��ע',
  'parent_category_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ϼ����id',
  'line' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'create_person_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'create_person' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'privileges' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ȩ���ַ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ա��ͨѶ¼���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_employee_contact_category
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_envir_setting
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_envir_setting';
CREATE TABLE 'tbl_envir_setting'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'logo_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logoͼƬ����',
  'product_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʒ����',
  'version' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�汾��',
  'current_version' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ǰ�汾��ʶ',
  'type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'is_main' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���ϵͳ',
  'custom_text_one' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Զ����ı�һ',
  'custom_text_two' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Զ����ı���',
  'custom_text_three' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Զ����ı���',
  'custom_text_four' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Զ����ı���',
  'set_time' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'product_id' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʒ����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_envir_setting
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_function_model
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_function_model';
CREATE TABLE 'tbl_function_model'  (
  'id' int(20) NOT NULL COMMENT 'ģ�����',
  'model_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ģ������',
  'model_type' varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ģ������',
  'model_parent' bigint(20) NULL DEFAULT NULL COMMENT '�ϼ�ģ�����',
  'model_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'model_url' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ļ�·��',
  'model_analyse_ref' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '�����ο�',
  'model_report_analyse' int(11) NULL DEFAULT NULL COMMENT '�������',
  'model_icon' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼ������',
  'model_property' char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ģ������',
  'model_desc' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ģ������',
  'is_control' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���Ʋ���Ȩ��',
  'm_full' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ȫ��',
  'm_add' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'm_mod' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�',
  'm_del' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ɾ��',
  'm_exp' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'm_aud' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'm_exe' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ִ��',
  'm_que' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ѯ',
  'd_person' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'd_dept' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'd_company' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˾',
  'orderid' double NULL DEFAULT NULL COMMENT '�����ֶ�',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����ģ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_function_model
-- ----------------------------
INSERT INTO 'tbl_function_model' VALUES (221, '¥�̹���', 'F', 0, '����', '#', '', 0, '/fsp/221.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 221, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (223, 'ҵ������', 'F', 0, '����', '#', '', 0, '/fsp/223.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 221.1, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (224, '��������', 'F', 0, '����', '#', '', 0, '/fsp/224.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 224, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (225, '��������', 'F', 0, '����', '#', '', 0, '/fsp/225.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 225, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (226, '��������', 'F', 0, '����', '#', '', 0, '/fsp/226.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 221.2, 'admin', '2012-12-06 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (227, '�����̻�', 'F', 0, '����', '#', '', 0, '/fsp/227.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 227, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (228, '�շѹ���', 'F', 0, '����', '#', '', 0, '/fsp/228.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 221.3, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (229, '�����ѯ', 'F', 0, '����', '#', '', 0, '/fsp/229.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 229, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (230, '�������', 'F', 0, '����', '#', '', 0, '/fsp/230.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 227.1, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (233, '��λ����', 'F', 0, '����', '#', '', 0, '/fsp/233.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 221.4, 'admin', '2019-02-22 12:25:19');
INSERT INTO 'tbl_function_model' VALUES (901, '���˰칫', 'P', 0, '����', '#', '', 0, '/portal/901.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 100, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (902, '�ֻ�����', 'P', 0, '����', '#', '', 0, '/portal/902.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 902, 'admin', '2012-02-23 11:18:48');
INSERT INTO 'tbl_function_model' VALUES (903, '��������', 'P', 0, '����', '#', '', 0, '/portal/903.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 903, 'admin', '2007-11-20 10:26:35');
INSERT INTO 'tbl_function_model' VALUES (904, 'ϵͳ����', 'P', 0, '����', '#', '', 0, '/portal/904.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 904, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (905, '��������', 'P', 0, '����', '#', '', 0, '/portal/905.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 905, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (22101, 'סլС��', 'F', 221, '����', '#', '', 0, '/fsp/22101.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22101, 'admin', '2019-02-21 20:09:04');
INSERT INTO 'tbl_function_model' VALUES (22102, '��ҵ����', 'F', 221, '����', '#', '', 0, '/fsp/22102.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22102, 'admin', '2019-02-21 20:16:34');
INSERT INTO 'tbl_function_model' VALUES (22301, 'ҵ���鷿', 'F', 223, '����', 'fsp2/yzgl/zhyf.aspx', '', 0, '/fsp/22301.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22301, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22302, 'ҵ��װ��', 'F', 223, '����', '#', '', 0, '/fsp/22302.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22302, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22303, 'ҵ��Ͷ��', 'F', 223, '����', 'fsp2/yzgl/zhts.aspx', '', 0, '/fsp/22303.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22303, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22304, '���޹���', 'F', 223, '����', 'fsp2/yzgl/qxgl.aspx', '', 0, '/fsp/22304.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22304, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22305, 'ҵ����ס', 'F', 223, '����', 'fsp2/yzgl/zhrz.aspx', '', 0, '/fsp/22305.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22302.1, 'admin', '2012-12-03 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22306, 'ҵ���ӽ�', 'F', 223, '����', 'fsp2/yzgl/zhjj.aspx', '', 0, '/fsp/22306.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22306, 'admin', '2013-07-22 01:45:07');
INSERT INTO 'tbl_function_model' VALUES (22307, 'ҵ����Ϣ', 'F', 223, '����', 'fsp2/yzgl/yzxx.aspx', '', 0, '/fsp/22307.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22300, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22402, '��������', 'F', 224, '����', 'fsp2/cwgl/clgl.aspx', '', 0, '/fsp/22402.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22402, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22411, '��������', 'F', 224, '����', 'fsp2/bagl/baap.aspx', '', 0, '/fsp/22411.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22411, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22412, 'ִ�ڹ���', 'F', 224, '����', 'fsp2/bagl/zqgl.aspx', '', 0, '/fsp/22412.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22412, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22413, '���ù���', 'F', 224, '����', 'fsp2/bagl/lfgl.aspx', '', 0, '/fsp/22413.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22413, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22414, '��Ʒ����', 'F', 224, '����', 'fsp2/bagl/wpcr.aspx', '', 0, '/fsp/22414.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22414, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22504, '�����', 'F', 225, '����', 'fsp2/xfgl/sqhd.aspx', '', 0, '/fsp/22504.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22504, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22505, 'ֲ����Ϣ', 'F', 227, '����', 'fsp2/bjgl/zbxx.aspx', '', 0, '/fsp/22505.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22505, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22506, '�̻�����', 'F', 227, '����', 'fsp2/bjgl/lhsz.aspx', '', 0, '/fsp/22506.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22506, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22507, '�̻����', 'F', 227, '����', 'fsp2/bjgl/lhjc.aspx', '', 0, '/fsp/22507.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22507, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22508, '�ż���ȡ', 'F', 225, '����', 'fsp2/xfgl/xjsq.aspx', '', 0, '/fsp/22508.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22508, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22601, '�������', 'F', 226, '����', '#', '', 0, '/fsp/22601.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22601, 'admin', '2019-02-22 08:59:36');
INSERT INTO 'tbl_function_model' VALUES (22602, '��̯����', 'F', 226, '����', '#', '', 0, '/fsp/22602.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22602, 'admin', '2019-02-22 09:05:42');
INSERT INTO 'tbl_function_model' VALUES (22603, '��ݷ���', 'F', 226, '����', 'fsp2/fxsz/lsfxsz.aspx', '', 0, '/fsp/22603.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22603, 'admin', '2012-12-06 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22604, '�ٿͷ���', 'F', 226, '����', 'fsp2/fxsz/Lkfxsz.aspx', '', 0, '/fsp/22604.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22604, 'admin', '2015-10-22 14:45:42');
INSERT INTO 'tbl_function_model' VALUES (22605, '�ͷ�������', 'F', 226, '����', 'fsp2/fxsz/kfsz.aspx', '', 0, '/fsp/22605.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22605, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22606, '��ӡ�����趨', 'F', 226, '����', 'fsp2/fxsz/dycssd.aspx', '', 0, '/fsp/22606.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22606, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22701, '������ʩ', 'F', 225, '����', 'fsp2/xfgl/xfss.aspx', '', 0, '/fsp/22701.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22701, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22702, '����Ѳ��', 'F', 225, '����', 'fsp2/xfgl/xfxc.aspx', '', 0, '/fsp/22702.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22702, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22703, '��������', 'F', 225, '����', 'fsp2/xfgl/xfyl.aspx', '', 0, '/fsp/22703.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22703, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22704, '�����¹�', 'F', 225, '����', 'fsp2/xfgl/xfsg.aspx', '', 0, '/fsp/22704.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22704, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22705, '���ల��', 'F', 227, '����', 'fsp2/bjgl/qjap.aspx', '', 0, '/fsp/22705.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22705, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22706, '�����¼', 'F', 227, '����', 'fsp2/bjgl/qjjl.aspx', '', 0, '/fsp/22706.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22706, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22707, '������', 'F', 227, '����', 'fsp2/bjgl/qjjc.aspx', '', 0, '/fsp/22707.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22707, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22708, '������Ŀ', 'F', 227, '����', 'fsp2/bjgl/lysx.aspx', '', 0, '/fsp/22708.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22507.1, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22801, '��������', 'F', 228, '����', '#', '', 0, '/fsp/22801.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22801, 'admin', '2019-02-22 09:57:53');
INSERT INTO 'tbl_function_model' VALUES (22802, '̨�ʹ���', 'F', 228, '����', '#', '', 0, '/fsp/22802.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22802, 'admin', '2019-02-22 10:01:36');
INSERT INTO 'tbl_function_model' VALUES (22803, '������ȡ', 'F', 228, '����', '#', '', 0, '/fsp/22803.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22803, 'admin', '2019-02-22 10:41:34');
INSERT INTO 'tbl_function_model' VALUES (22804, '�տ���', 'F', 228, '����', '#', '', 0, '/fsp/22804.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22804, 'admin', '2019-02-22 11:33:26');
INSERT INTO 'tbl_function_model' VALUES (22805, '�˿�����', 'F', 228, '����', '#', '', 0, '/fsp/22805.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22805, 'admin', '2019-02-22 11:02:58');
INSERT INTO 'tbl_function_model' VALUES (22806, 'Ԥ�տ����', 'F', 228, '����', 'fsp2/fysq/yskxx.aspx', '', 0, '/fsp/22806.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22806, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22901, '������ѯ', 'F', 229, '����', 'fsp2/bbcx/fccx.aspx', '', 0, '/fsp/22901.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22901, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (22902, 'ҵ������', 'F', 229, '����', '#', '', 0, '/fsp/22902.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22902, 'admin', '2019-02-22 16:05:47');
INSERT INTO 'tbl_function_model' VALUES (22903, '���ñ���', 'F', 229, '����', '#', '', 0, '/fsp/22903.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22903, 'admin', '2019-02-22 16:12:00');
INSERT INTO 'tbl_function_model' VALUES (22904, '�տ��', 'F', 229, '����', '#', '', 0, '/fsp/22904.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22904, 'admin', '2019-02-22 16:19:31');
INSERT INTO 'tbl_function_model' VALUES (22905, '�˿��', 'F', 229, '����', '#', '', 0, '/fsp/22905.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22905, 'admin', '2019-02-22 16:26:08');
INSERT INTO 'tbl_function_model' VALUES (22906, 'Ԥ�տ��', 'F', 229, '����', '#', '', 0, '/fsp/22906.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22906, 'admin', '2019-02-22 16:28:46');
INSERT INTO 'tbl_function_model' VALUES (22907, '��λ����', 'F', 229, '����', '#', '', 0, '/fsp/22907.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22907, 'admin', '2019-02-22 16:31:28');
INSERT INTO 'tbl_function_model' VALUES (22908, '����ʱͳ��', 'F', 229, '����', 'fsp2/fwgl/fwgstj.aspx', '', 0, '/fsp/22908.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22908, 'admin', '2016-08-16 14:38:20');
INSERT INTO 'tbl_function_model' VALUES (23001, '�ͷ�����̨', 'F', 230, '����', 'fsp2/bbcx/rcgl.aspx', '', 0, '/fsp/23001.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23001, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (23002, '��������', 'F', 230, '����', 'fsp2/fwgl/fwlxwh.aspx', '', 0, '/fsp/23002.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23002, 'admin', '2016-04-08 09:52:37');
INSERT INTO 'tbl_function_model' VALUES (23003, '���񹤵�', 'F', 230, '����', '#', '', 0, '/fsp/23003.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23003, 'admin', '2019-02-22 14:41:40');
INSERT INTO 'tbl_function_model' VALUES (23004, '����ף��', 'F', 230, '����', 'fsp2/fwgl/srzf.aspx', '', 0, '/fsp/23004.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23004, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (23301, '���ɽ�����', 'F', 233, '����', 'fsp2/fxsz/znjsz.aspx', '', 0, '/fsp/23301.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23301, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (23302, '��λ��Ϣ', 'F', 233, '����', 'fsp2/cwgl/cwgl.aspx', '', 0, '/fsp/23302.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23302, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (23303, '��λ����', 'F', 233, '����', 'fsp2/cwgl/cwxs.aspx', '', 0, '/fsp/23303.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23303, 'admin', '2012-12-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (23304, '��λ����', 'F', 233, '����', '#', '', 0, '/fsp/23304.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23304, 'admin', '2019-02-22 13:47:05');
INSERT INTO 'tbl_function_model' VALUES (90101, '�ҵ���Ϣ', 'P', 901, '����', 'portal/xxgl/sxx.aspx', '', 0, '/portal/90101.gif', '��׼ģ��', '', '��', '90101f', '0', '0', '0', '0', '0', '0', '0', '901011', '0', '0', 90101, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90102, '�ҵ��ʼ�', 'P', 901, '����', 'portal/yjgl/sjx.aspx', '', 0, '/portal/90102.gif', '��׼ģ��', '', '��', '90102f', '0', '0', '0', '0', '0', '0', '0', '901021', '0', '0', 90102, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90103, '�ҵĶ���', 'P', 901, '����', 'portal/dxgl/yfsdx.aspx', '', 0, '/portal/90103.gif', '��׼ģ��', '', '��', '90103f', '0', '0', '0', '0', '0', '0', '0', '901031', '0', '0', 90103, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90104, '�ҵ�����', 'P', 901, '����', 'portal/wpgl/showdisk.aspx', '', 0, '/portal/90104.gif', '��׼ģ��', '', '��', '90104f', '0', '0', '0', '0', '0', '0', '0', '901041', '0', '0', 90104, 'admin', '2008-05-25 18:04:51');
INSERT INTO 'tbl_function_model' VALUES (90105, '�ҵ��ճ�', 'P', 901, '����', 'portal/rcgl/wdrc.aspx', '', 0, '/portal/90105.gif', '��׼ģ��', '', '��', '90105f', '0', '0', '0', '0', '0', '0', '0', '901051', '0', '0', 90105, 'admin', '2007-11-09 15:57:03');
INSERT INTO 'tbl_function_model' VALUES (90106, '�ҵļ��±�', 'P', 901, '����', 'portal/rcgl/wdjsb.aspx', '', 0, '/portal/90106.gif', '��׼ģ��', '', '��', '90106f', '0', '0', '0', '0', '0', '0', '0', '901061', '0', '0', 90106, 'admin', '2007-11-20 10:02:05');
INSERT INTO 'tbl_function_model' VALUES (90107, '�ҵĳ�����', 'P', 901, '����', 'portal/grbg/cyy.aspx', '', 0, '/portal/90107.gif', '��׼ģ��', '', '��', '90107f', '0', '0', '0', '0', '0', '0', '0', '901071', '0', '0', 90107, 'admin', '2014-12-27 16:54:44');
INSERT INTO 'tbl_function_model' VALUES (90108, '�ҵļ�ʻ��', 'P', 901, '����', 'portal/grbg/MyReport.aspx', '', 0, '/portal/90108.gif', '��׼ģ��', '', '��', '90108f', '0', '0', '0', '0', '0', '0', '0', '901081', '0', '0', 90108, 'admin', '2012-04-01 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (90109, '�ҵ������', 'P', 901, '����', 'portal/xzgl/wdyjx.aspx', '', 0, '/portal/90109.gif', '��׼ģ��', '', '��', '90109f', '0', '0', '0', '0', '0', '0', '0', '901091', '0', '0', 90109, 'admin', '2007-11-23 14:03:48');
INSERT INTO 'tbl_function_model' VALUES (90110, '�ҵ��û�Ⱥ��', 'P', 901, '����', 'portal/yhgl/wdyhqz.aspx', '', 0, '/portal/90110.gif', '��׼ģ��', '', '��', '90110f', '0', '0', '0', '0', '0', '0', '0', '901101', '0', '0', 90110, 'admin', '2012-11-27 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (90201, '���ö���', 'P', 902, '����', 'portal/dxgl/cydx.aspx', '', 0, '/portal/90201.gif', '��׼ģ��', '', '��', '90201f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '902019', 90201, 'admin', '2007-10-26 00:07:09');
INSERT INTO 'tbl_function_model' VALUES (90202, '������Ȩ', 'P', 902, '����', 'portal/dxgl/dxqx.aspx', '', 0, '/portal/90202.gif', '��׼ģ��', '', '��', '90202f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '902029', 90202, 'admin', '2007-12-02 23:19:40');
INSERT INTO 'tbl_function_model' VALUES (90203, '����ͳ��', 'P', 902, '����', 'portal/dxgl/dxtj.aspx', '', 0, '/portal/90203.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '90203e', '0', '0', '0', '0', '0', '902039', 90203, 'admin', '2007-10-26 00:07:43');
INSERT INTO 'tbl_function_model' VALUES (90204, '��ֵ��¼', 'P', 902, '����', 'portal/dxgl/dxczjl.aspx', '', 0, '/portal/90204.gif', '��׼ģ��', '', '��', '0', '90204a', '90204m', '90204d', '0', '0', '0', '0', '0', '0', '902049', 90204, 'admin', '2008-06-21 09:51:00');
INSERT INTO 'tbl_function_model' VALUES (90301, '�������', 'P', 903, '����', 'portal/xzgl/qygg.aspx', '', 0, '/portal/90301.gif', '��׼ģ��', '', '��', '0', '90301a', '90301m', '90301d', '0', '90301u', '0', '0', '0', '0', '903019', 90301, 'admin', '2007-11-20 10:26:50');
INSERT INTO 'tbl_function_model' VALUES (90302, '�����ƶ�', 'P', 903, '����', 'portal/xzgl/gzzd.aspx', '', 0, '/portal/90302.gif', '��׼ģ��', '', '��', '0', '90302a', '90302m', '90302d', '0', '90302u', '0', '0', '0', '0', '903029', 90302, 'admin', '2007-11-20 10:28:14');
INSERT INTO 'tbl_function_model' VALUES (90303, '��λ��¼', 'P', 903, '����', 'portal/xzgl/dwml.aspx', '', 0, '/portal/90303.gif', '��׼ģ��', '', '��', '0', '90303a', '90303m', '90303d', '0', '0', '0', '0', '0', '0', '903039', 90303, 'admin', '2007-11-04 21:06:53');
INSERT INTO 'tbl_function_model' VALUES (90304, '��Ƶ�㲥', 'P', 903, '����', 'portal/xzgl/spdb.aspx', '', 0, '/portal/90304.gif', '��׼ģ��', '', '��', '0', '90304a', '90304m', '90304d', '0', '90304u', '0', '0', '0', '0', '903049', 90304, 'admin', '2008-06-14 14:22:21');
INSERT INTO 'tbl_function_model' VALUES (90305, 'ͶƱ����', 'P', 903, '����', '#', '', 0, '/portal/90305.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 90305, 'admin', '2019-02-23 08:50:52');
INSERT INTO 'tbl_function_model' VALUES (90306, '���������', 'P', 903, '����', 'portal/xzgl/yjxsz.aspx', '', 0, '/portal/90306.gif', '��׼ģ��', '', '��', '0', '90306a', '90306m', '90306d', '0', '90306u', '0', '0', '0', '0', '903069', 90306, 'admin', '2007-11-20 10:31:14');
INSERT INTO 'tbl_function_model' VALUES (90307, 'Ա��ͨѶ¼', 'P', 903, '����', 'portal/xzgl/ygtxl.aspx', '', 0, '/portal/90307.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 90307, 'admin', '2017-08-31 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (90401, '��ҵ����', 'P', 904, '����', 'portal/bmgl/qyda.aspx', '', 0, '/portal/90401.gif', '��׼ģ��', '', '��', '90401f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '904019', 90401, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90402, '���Ź���', 'P', 904, '����', 'portal/bmgl/Dept.aspx', '', 0, '/portal/90402.gif', '��׼ģ��', '', '��', '0', '90402a', '90402m', '90402d', '0', '0', '0', '0', '0', '0', '904029', 90402, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90403, 'ְλ����', 'P', 904, '����', 'portal/bmgl/zwwh.aspx', '', 0, '/portal/90403.gif', '��׼ģ��', '', '��', '0', '90403a', '90403m', '90403d', '0', '0', '0', '0', '0', '0', '904039', 90403, 'admin', '2007-11-09 00:30:27');
INSERT INTO 'tbl_function_model' VALUES (90404, '��ɫ����', 'P', 904, '����', 'portal/jsgl/role.aspx', '', 0, '/portal/90404.gif', '��׼ģ��', '', '��', '90404f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '904049', 90404, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90405, '�û�����', 'P', 904, '����', '#', '', 0, '/portal/90405.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 90405, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90406, '��������', 'P', 904, '����', 'portal/yhgl/dbsxfz.aspx', '', 0, '/portal/90406.gif', '��׼ģ��', '', '��', '90406f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '904069', 90406, 'admin', '2008-05-27 23:29:55');
INSERT INTO 'tbl_function_model' VALUES (90407, '��־��ѯ', 'P', 904, '����', 'portal/rzcx/rzcx.aspx', '', 0, '/portal/90407.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '90407e', '0', '0', '0', '904071', '904072', '904079', 90407, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90501, 'ģ�����', 'P', 905, '����', 'portal/mkgl/mk.aspx', '', 0, '/portal/90501.gif', '��׼ģ��', '', '��', '90501f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905019', 90501, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90502, '����ѡ��', 'P', 905, '����', 'portal/csxx/cs.aspx', '', 0, '/portal/90502.gif', '��׼ģ��', '', '��', '90502f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905029', 90502, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90503, '�Զ�������', 'P', 905, '����', 'portal/csxx/lxwh.aspx', '', 0, '/portal/90503.gif', '��׼ģ��', '', '��', '90503f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905039', 90503, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (90504, '����������', 'P', 905, '����', 'portal/csxx/gzrsz.aspx', '', 0, '/portal/90504.gif', '��׼ģ��', '', '��', '90504f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905049', 90504, 'admin', '2013-03-04 05:43:38');
INSERT INTO 'tbl_function_model' VALUES (90505, '���ݿⱸ��', 'P', 905, '����', 'portal/xtgl/sjkbf.aspx', '', 0, '/portal/90505.gif', '��׼ģ��', '', '��', '90505f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905059', 90505, 'admin', '2014-01-14 01:54:23');
INSERT INTO 'tbl_function_model' VALUES (90506, '��ݷ�ʽ', 'P', 905, '����', 'portal/kjfs/kjfstb.aspx', '', 0, '/portal/90506.gif', '��׼ģ��', '', '��', '90506f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905069', 90506, 'admin', '2008-06-08 10:29:00');
INSERT INTO 'tbl_function_model' VALUES (90507, '�������', 'P', 905, '����', 'portal/xtgl/qcrz.aspx', '', 0, '/portal/90507.gif', '��׼ģ��', '', '��', '90507f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905079', 90507, 'admin', '2007-11-01 22:57:09');
INSERT INTO 'tbl_function_model' VALUES (90508, 'ϵͳ��ʼ��', 'P', 905, '����', 'portal/xtgl/xtsjsc.aspx', '', 0, '/portal/90508.gif', '��׼ģ��', '', '��', '90508f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905089', 90508, 'admin', '2013-06-30 07:16:59');
INSERT INTO 'tbl_function_model' VALUES (90509, '��ӡֽ������', 'P', 905, '����', 'portal/csxx/dyzzsz.aspx', '', 0, '/portal/90509.gif', '��׼ģ��', '', '��', '90509f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '905099', 90509, 'admin', '2007-11-17 15:07:58');
INSERT INTO 'tbl_function_model' VALUES (2210101, '����סլ��', 'F', 22101, '����', 'fsp2/zzgl/x01.aspx', '', 0, '/fsp/2210101.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210101, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2210102, '��������¥��', 'F', 22101, '����', 'fsp2/zzgl/x05.aspx', '', 0, '/fsp/2210102.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210102, 'admin', '2013-10-11 14:18:33');
INSERT INTO 'tbl_function_model' VALUES (2210103, 'סլά��', 'F', 22101, '����', 'fsp2/zzgl/xqxx.aspx', '', 0, '/fsp/2210103.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210103, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2210104, 'סլ��ѯ', 'F', 22101, '����', 'fsp2/zzgl/xqcx.aspx', '', 0, '/fsp/2210104.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210104, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2210201, '����������', 'F', 22102, '����', 'fsp2/dsgl/d01.aspx', '', 0, '/fsp/2210201.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210201, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2210202, '��������¥��', 'F', 22102, '����', 'fsp2/dsgl/d05.aspx', '', 0, '/fsp/2210202.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210202, 'admin', '2013-10-11 14:18:33');
INSERT INTO 'tbl_function_model' VALUES (2210203, '����ά��', 'F', 22102, '����', 'fsp2/dsgl/dsxx.aspx', '', 0, '/fsp/2210203.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210203, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2210204, '������ѯ', 'F', 22102, '����', 'fsp2/dsgl/dscx.aspx', '', 0, '/fsp/2210204.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2210204, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2230201, 'װ��¼��', 'F', 22302, '����', 'fsp2/yzgl/Zxlr.aspx', '', 0, '/fsp/2230201.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230201, 'admin', '2019-06-03 17:35:08');
INSERT INTO 'tbl_function_model' VALUES (2230202, 'װ������', 'F', 22302, '����', 'fsp2/yzgl/Zxsp.aspx', '', 0, '/fsp/2230202.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230202, 'admin', '2019-06-03 17:35:08');
INSERT INTO 'tbl_function_model' VALUES (2230203, 'װ������', 'F', 22302, '����', 'fsp2/yzgl/Zxzf.aspx', '', 0, '/fsp/2230203.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230203, 'admin', '2019-06-03 17:35:08');
INSERT INTO 'tbl_function_model' VALUES (2230204, 'װ������', 'F', 22302, '����', 'fsp2/yzgl/Zxys.aspx', '', 0, '/fsp/2230204.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230204, 'admin', '2019-06-03 17:35:08');
INSERT INTO 'tbl_function_model' VALUES (2230205, 'װ�޲�ѯ', 'F', 22302, '����', 'fsp2/yzgl/Zxcx.aspx', '', 0, '/fsp/2230205.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230205, 'admin', '2019-06-03 17:35:08');
INSERT INTO 'tbl_function_model' VALUES (2260101, '�����趨', 'F', 22601, '����', 'fsp2/fxsz/fxsz.aspx', '', 0, '/fsp/2260101.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260101, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2260102, '����ֲ�', 'F', 22601, '����', 'fsp2/fxsz/wyffb.aspx', '', 0, '/fsp/2260102.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260102, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2260103, '��ʼ���Ǳ�', 'F', 22601, '����', 'fsp2/fxsz/cshyb.aspx', '', 0, '/fsp/2260103.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260103, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2260104, '¥��ϵ��', 'F', 22601, '����', 'fsp2/fxsz/Lcxssd.aspx', '', 0, '/fsp/2260104.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260104, 'admin', '2015-03-14 17:50:16');
INSERT INTO 'tbl_function_model' VALUES (2260201, '�����趨', 'F', 22602, '����', 'fsp2/fxsz/gtfxsz.aspx', '', 0, '/fsp/2260201.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260201, 'admin', '2012-12-06 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2260202, '��̯�ѷֲ�', 'F', 22602, '����', 'fsp2/fxsz/gtffb.aspx', '', 0, '/fsp/2260202.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2260202, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280101, '����̨��', 'F', 22801, '����', 'fsp2/fysq/scwyf.aspx', '', 0, '/fsp/2280101.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280101, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280102, '��������̨��', 'F', 22801, '����', 'fsp2/fysq/plscwyf.aspx', '', 0, '/fsp/2280102.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280102, 'admin', '2015-06-07 15:52:12');
INSERT INTO 'tbl_function_model' VALUES (2280103, '�������ݵ���', 'F', 22801, '����', 'fsp2/fysq/cbsjdr.aspx', '', 0, '/fsp/2280103.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280103, 'admin', '2013-03-26 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280201, '����̨���޸�', 'F', 22802, '����', 'fsp2/fysq/lsmxz.aspx', '', 0, '/fsp/2280201.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280201, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280202, '��̨̯���޸�', 'F', 22802, '����', 'fsp2/fysq/gtmxz.aspx', '', 0, '/fsp/2280202.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280202, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280203, '����̨�ʸ���', 'F', 22802, '����', 'fsp2/fysq/Cgtzfz.aspx', '', 0, '/fsp/2280203.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280203, 'admin', '2013-04-03 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280301, '�����տ�', 'F', 22803, '����', 'fsp2/fysq/sqwyf.aspx', '', 0, '/fsp/2280301.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280301, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280302, '����տ�', 'F', 22803, '����', 'fsp2/fysq/lssf.aspx', '', 0, '/fsp/2280302.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280302, 'admin', '2012-10-14 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280303, '�ٿ��տ�', 'F', 22803, '����', 'fsp2/fysq/lssf_w.aspx', '', 0, '/fsp/2280303.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280303, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280401, '�����տ���', 'F', 22804, '����', 'fsp2/fysq/Cgsfxg.aspx', '', 0, '/fsp/2280401.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280401, 'admin', '2015-10-20 16:56:33');
INSERT INTO 'tbl_function_model' VALUES (2280402, '�ٿ��տ���', 'F', 22804, '����', 'fsp2/fysq/Lksfxg.aspx', '', 0, '/fsp/2280402.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280402, 'admin', '2015-03-14 10:44:15');
INSERT INTO 'tbl_function_model' VALUES (2280501, '�տ�˿�', 'F', 22805, '����', 'fsp2/fysq/wyftk.aspx', '', 0, '/fsp/2280501.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280501, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2280502, '�տ����', 'F', 22805, '����', 'fsp2/fysq/wyfzf.aspx', '', 0, '/fsp/2280502.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2280502, 'admin', '2015-10-23 15:29:30');
INSERT INTO 'tbl_function_model' VALUES (2290201, 'ҵ����Ϣ��ѯ', 'F', 22902, '����', 'fsp2/bbcx/yzcx.aspx', '', 0, '/fsp/2290201.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290201, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290202, 'ҵ���鷿�Ա�', 'F', 22902, '����', 'fsp2/bbcx/Yfdbcx.aspx', '', 0, '/fsp/2290202.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290202, 'admin', '2015-05-27 21:50:18');
INSERT INTO 'tbl_function_model' VALUES (2290301, 'ҵ��������ϸ', 'F', 22903, '����', 'fsp2/bbcx/grfymx.aspx', '', 0, '/fsp/2290301.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290301, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290302, 'Ƿ��ҵ��֪ͨ', 'F', 22903, '����', 'fsp2/bbcx/qfcx.aspx', '', 0, '/fsp/2290302.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290302, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290303, 'ҵ���ɷѼ��', 'F', 22903, '����', 'fsp2/bbcx/yzjfjk.aspx', '', 0, '/fsp/2290303.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290303, 'admin', '2013-07-22 01:45:07');
INSERT INTO 'tbl_function_model' VALUES (2290304, '���ڷ��ò�ѯ', 'F', 22903, '����', 'fsp2/bbcx/Dqfycx.aspx', '', 0, '/fsp/2290304.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290304, 'admin', '2015-08-17 15:50:35');
INSERT INTO 'tbl_function_model' VALUES (2290305, '�������ͳ��', 'F', 22903, '����', 'fsp2/bbcx/fyhzcx.aspx', '', 0, '/fsp/2290305.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290305, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290401, '���տ��ѯ', 'F', 22904, '����', 'fsp2/bbcx/yskcx.aspx', '', 0, '/fsp/2290401.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290401, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290402, '�������տ�', 'F', 22904, '����', 'fsp2/bbcx/yskcx_gr.aspx', '', 0, '/fsp/2290402.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290402, 'admin', '2015-11-02 11:10:15');
INSERT INTO 'tbl_function_model' VALUES (2290403, '����տ�ͳ��', 'F', 22904, '����', 'fsp2/bbcx/lsfyhz.aspx', '', 0, '/fsp/2290403.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290403, 'admin', '2012-10-14 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290404, '�ٿ��տ�ͳ��', 'F', 22904, '����', 'fsp2/bbcx/lkfyhz.aspx', '', 0, '/fsp/2290404.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290404, 'admin', '2013-04-03 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290405, '�ۺ��տ�ͳ��', 'F', 22904, '����', 'fsp2/bbcx/zhfyhz.aspx', '', 0, '/fsp/2290405.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290405, 'admin', '2012-12-06 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290501, '���˿��ѯ', 'F', 22905, '����', 'fsp2/bbcx/tkcx.aspx', '', 0, '/fsp/2290501.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290501, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290502, '�����ϲ�ѯ', 'F', 22905, '����', 'fsp2/bbcx/zfcx.aspx', '', 0, '/fsp/2290502.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290502, 'admin', '2015-10-23 15:34:46');
INSERT INTO 'tbl_function_model' VALUES (2290601, 'Ԥ������ѯ', 'F', 22906, '����', 'fsp2/bbcx/Yskyecx.aspx', '', 0, '/fsp/2290601.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290601, 'admin', '2018-07-09 14:34:25');
INSERT INTO 'tbl_function_model' VALUES (2290602, 'Ԥ����ϸ��ѯ', 'F', 22906, '����', 'fsp2/fysq/yskcx.aspx', '', 0, '/fsp/2290602.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290602, 'admin', '2012-08-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290701, '��λ��ѯ', 'F', 22907, '����', 'fsp2/cwgl/cwcx.aspx', '', 0, '/fsp/2290701.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290701, 'admin', '2012-12-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2290702, '��λ�ɷ�ͳ��', 'F', 22907, '����', 'fsp2/bbcx/cwjftj.aspx', '', 0, '/fsp/2290702.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2290702, 'admin', '2016-06-24 15:07:24');
INSERT INTO 'tbl_function_model' VALUES (2300301, '�½�����', 'F', 23003, '����', 'fsp2/fwgl/xjfwd.aspx', '', 0, '/fsp/2300301.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2300301, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2300302, '���񵥷���', 'F', 23003, '����', 'fsp2/fwgl/fwdfp.aspx', '', 0, '/fsp/2300302.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2300302, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2300303, '���񵥰���', 'F', 23003, '����', 'fsp2/fwgl/fwdbl.aspx', '', 0, '/fsp/2300303.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2300303, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2300304, '���񵥻ط�', 'F', 23003, '����', 'fsp2/fwgl/fwdhf.aspx', '', 0, '/fsp/2300304.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2300304, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2300305, '���񵥲�ѯ', 'F', 23003, '����', 'fsp2/fwgl/fwdcx.aspx', '', 0, '/fsp/2300305.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2300305, 'admin', '2012-12-25 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2330401, '��ͬ����', 'F', 23304, '����', 'fsp2/cwgl/cwzl.aspx', '', 0, '/fsp/2330401.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2330401, 'admin', '2012-12-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2330402, '��ͬ�ɷ�', 'F', 23304, '����', 'fsp2/cwgl/cwjf.aspx', '', 0, '/fsp/2330402.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2330402, 'admin', '2012-12-21 00:00:00');
INSERT INTO 'tbl_function_model' VALUES (2330403, '�ɷ�����', 'F', 23304, '����', 'fsp2/cwgl/Cwjfzf.aspx', '', 0, '/fsp/2330403.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2330403, 'admin', '2018-12-07 11:10:55');
INSERT INTO 'tbl_function_model' VALUES (9030501, 'ͶƱ��Ŀά��', 'P', 90305, '����', 'portal/tpgl/tpdc.aspx', '', 0, '/portal/9030501.gif', '��׼ģ��', '', '��', '9030501f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '90305019', 9030501, 'admin', '2007-11-20 09:30:18');
INSERT INTO 'tbl_function_model' VALUES (9030502, 'ͶƱ��Ŀά��', 'P', 90305, '����', 'portal/tpgl/tmsz.aspx', '', 0, '/portal/9030502.gif', '��׼ģ��', '', '��', '9030502f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '90305029', 9030502, 'admin', '2007-11-20 09:30:31');
INSERT INTO 'tbl_function_model' VALUES (9030503, '��ѯͶƱ��ϸ', 'P', 90305, '����', 'portal/tpgl/cksj.aspx', '', 0, '/portal/9030503.gif', '��׼ģ��', '', '��', '9030503f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '90305039', 9030503, 'admin', '2007-11-20 10:59:13');
INSERT INTO 'tbl_function_model' VALUES (9030504, 'ͳ��ͶƱ���', 'P', 90305, '����', 'portal/tpgl/fxdcjg.aspx', '', 0, '/portal/9030504.gif', '��׼ģ��', '', '��', '9030504f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '90305049', 9030504, 'admin', '2007-11-20 10:59:29');
INSERT INTO 'tbl_function_model' VALUES (9040501, '�û�ά��', 'P', 90405, '����', 'portal/yhgl/yh.aspx', '', 0, '/portal/9040501.gif', '��׼ģ��', '', '��', '0', '9040501a', '9040501m', '9040501d', '9040501e', '9040501u', '0', '0', '0', '0', '90405019', 9040501, 'admin', '2019-08-07 07:25:19');
INSERT INTO 'tbl_function_model' VALUES (9040502, '��ʼ������', 'P', 90405, '����', 'portal/yhgl/cshmm.aspx', '', 0, '/portal/9040502.gif', '��׼ģ��', '', '��', '90408f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '904089', 9040502, 'admin', NULL);
INSERT INTO 'tbl_function_model' VALUES (9040503, '��¼����', 'P', 90405, '����', 'portal/yhgl/dlxz.aspx', '', 0, '/portal/9040503.gif', '��׼ģ��', '', '��', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 9040503, 'admin', '2019-08-07 07:25:19');

-- ----------------------------
-- Table structure for tbl_group_record
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_group_record';
CREATE TABLE 'tbl_group_record'  (
  'group_record_id' int(11) NULL DEFAULT NULL COMMENT '�Զ�����id',
  'group_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ⱥ������',
  'group_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ⱥ������',
  'group_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ⱥ��˵��',
  'group_member_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ڳ�Աid',
  'group_member_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ڳ�Ա����',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ⱥ�鵵��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_group_record
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_groups_todo
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_groups_todo';
CREATE TABLE 'tbl_groups_todo'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  'todo_id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������id',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_groups_todo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_groups_user
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_groups_user';
CREATE TABLE 'tbl_groups_user'  (
  'group_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'obj_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����id',
  'obj_type' int(11) NULL DEFAULT NULL COMMENT '������'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����û�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_groups_user
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_login_log
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_login_log';
CREATE TABLE 'tbl_login_log'  (
  'id' int(50) NOT NULL AUTO_INCREMENT COMMENT '��¼��Ա����',
  'login_date' datetime NULL DEFAULT NULL COMMENT '��¼����',
  'login_ip' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼��ip��ַ',
  'login_status' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼״̬',
  'open_mk' bigint(20) NULL DEFAULT NULL COMMENT '����ģ������',
  'login_mechine_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼������',
  'login_port' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿ں�',
  'login_door' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��¼��־' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_main_menu
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_main_menu';
CREATE TABLE 'tbl_main_menu'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���˵����',
  'main_menu_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˵�����',
  'main_menu_url' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˵��ļ�·��',
  'main_menu_icon' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˵�ͼ��',
  'main_menu_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���˵�״̬',
  'main_menu_key' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˵�key',
  'main_menu_order' double NULL DEFAULT NULL COMMENT '�����',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʒid',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���˵�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_main_menu
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_message_charge
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_message_charge';
CREATE TABLE 'tbl_message_charge'  (
  'charge_number' varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ֵ����',
  'charge_account' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ֵ�˻�',
  'charge_money' double NULL DEFAULT NULL COMMENT '��ֵ���',
  'charge_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ֵ˵��',
  'charge_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ֵ��',
  'charge_date' datetime NULL DEFAULT NULL COMMENT '��ֵ����'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ų�ֵ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_message_charge
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_message_receive
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_message_receive';
CREATE TABLE 'tbl_message_receive'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��¼���',
  'phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ�����',
  'extend_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��չ����',
  'message_content' varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'reply_date' datetime NULL DEFAULT NULL COMMENT '�ظ�ʱ��',
  'position_order' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'λ�����',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'read_tag' tinyint(4) NULL DEFAULT NULL COMMENT '��ȡ���',
  'read_date' datetime NULL DEFAULT NULL COMMENT '��ȡʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���Ž��ܱ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_message_receive
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_message_send
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_message_send';
CREATE TABLE 'tbl_message_send'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'content' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'send_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'send_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ϣ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_message_send
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_msg_receive
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_msg_receive';
CREATE TABLE 'tbl_msg_receive'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'receive_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'status' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ϣ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_msg_receive
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_my_note
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_my_note';
CREATE TABLE 'tbl_my_note'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  'create_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ա����',
  'title' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'type' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'place' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ص�',
  'content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '����',
  'is_private' tinyint(4) NULL DEFAULT NULL COMMENT '�Ƿ�˽������',
  'is_repeat' tinyint(4) NULL DEFAULT NULL COMMENT '�Ƿ��ظ�',
  'repeat' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ظ�',
  'repeat_stop' datetime NULL DEFAULT NULL COMMENT '�ظ����ս���',
  'is_remain' tinyint(4) NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'remain_day' smallint(6) NULL DEFAULT NULL COMMENT '��ǰN������',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼʱ��',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'order_person' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ԤԼ��Ա',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ҵļ��±�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_my_note
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_myadvice
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_myadvice';
CREATE TABLE 'tbl_myadvice'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'title' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '����',
  'advice_box' int(11) NULL DEFAULT NULL COMMENT '�����',
  'status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'attach_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'publisher_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'publisher_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'publisher_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'reply_content' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ظ�����',
  'reply_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ظ���id',
  'reply_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ظ�������',
  'reply_date' datetime NULL DEFAULT NULL COMMENT '�ظ�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ҵ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_myadvice
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_mydash
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_mydash';
CREATE TABLE 'tbl_mydash'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'dash_id' int(11) NULL DEFAULT NULL COMMENT '������ʻ��id',
  'order_id' bigint(20) NULL DEFAULT NULL COMMENT '�����',
  'username' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���',
  'show_num' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʾ����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ҵļ�ʻ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_mydash
-- ----------------------------
INSERT INTO 'tbl_mydash' VALUES (1, 1, 4, 'admin', '10');

-- ----------------------------
-- Table structure for tbl_mydesk
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_mydesk';
CREATE TABLE 'tbl_mydesk'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'belong_model' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ģ��',
  'order_id' bigint(20) NULL DEFAULT NULL COMMENT '�����',
  'username' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���',
  'show_num' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʾ����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ҵ�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_mydesk
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_myplan
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_myplan';
CREATE TABLE 'tbl_myplan'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  'plan_theme' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'plan_addr' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ص�',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼʱ��',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'plan_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'plan_status' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'plan_prior' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ȼ�',
  'field_bak' char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ֶ�',
  'plan_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ճ�����',
  'attach_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'attach_url' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����·��',
  'owner' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'plan_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ճ̸���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ҵ��ճ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_myplan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_myset
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_myset';
CREATE TABLE 'tbl_myset'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'username' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�����',
  'id_remain' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���Ҫ����',
  'remain_interval' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ѽ��ʱ��',
  'remain_window_open' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������Ѵ���',
  'message_remain' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ϣ����',
  'default_main' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ĭ����ҳ��',
  'email_all' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ȫ��',
  'smtp_addr' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'smtp��ַ',
  'login_user' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼�û�',
  'login_pwd' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼����',
  'mail_port' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ��˿�',
  'send_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'page_count' int(11) NULL DEFAULT NULL COMMENT '��ҳ����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_myset
-- ----------------------------
INSERT INTO 'tbl_myset' VALUES (1, 'admin', '��', '60000', '��', '1.swf', '1', 'ok8209@sohu.com', 'smtp.sohu.com', 'ok8209', 'haokee3000', '25', '��������Ա', 15);

-- ----------------------------
-- Table structure for tbl_netdisk_dir
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_netdisk_dir';
CREATE TABLE 'tbl_netdisk_dir'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'name' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ļ�������',
  'parent_dir' int(11) NULL DEFAULT NULL COMMENT '�ϼ��ļ���',
  'is_share' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���',
  'user_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����û�����',
  'create_date' datetime NULL DEFAULT NULL COMMENT '��������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����Ӳ��_�ļ���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_netdisk_dir
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_netdisk_url
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_netdisk_url';
CREATE TABLE 'tbl_netdisk_url'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'dir_id' int(11) NULL DEFAULT NULL COMMENT '�ļ���id',
  'file_name' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ļ�ԭ����',
  'new_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'file_type' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ļ�����',
  'file_size' int(11) NULL DEFAULT NULL COMMENT '�ĵ���С',
  'create_date' datetime NULL DEFAULT NULL COMMENT '�ϴ�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����Ӳ��·��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_netdisk_url
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_position_record
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_position_record';
CREATE TABLE 'tbl_position_record'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'position_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְλ����',
  'position_desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְλ����',
  'position_duty' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��λְ��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ְλ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_position_record
-- ----------------------------
INSERT INTO 'tbl_position_record' VALUES (1, '��������Ա', '', '', 'admin', '2020-01-08 12:08:19');

-- ----------------------------
-- Table structure for tbl_print_paper
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_print_paper';
CREATE TABLE 'tbl_print_paper'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  'paper_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'paper_value' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֵ',
  'paper_status' int(11) NULL DEFAULT NULL COMMENT '״̬',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ӡֽ�ſ������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_print_paper
-- ----------------------------
INSERT INTO 'tbl_print_paper' VALUES (1, 'A4', '����', 650);
INSERT INTO 'tbl_print_paper' VALUES (2, 'A3', '����', 750);

-- ----------------------------
-- Table structure for tbl_print_param
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_print_param';
CREATE TABLE 'tbl_print_param'  (
  'print_id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '��ӡ�������',
  'print_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ӡ��������',
  'print_value' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ӡ����ֵ',
  'print_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ӡ��������',
  PRIMARY KEY ('print_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ӡ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_print_param
-- ----------------------------
INSERT INTO 'tbl_print_param' VALUES ('qf1', 'Ƿ�Ѵ�ӡ1', '�𾴵ģ�', '');
INSERT INTO 'tbl_print_param' VALUES ('qf2', 'Ƿ�Ѵ�ӡ2', '���ݱ���˾�ļ�¼������ס�ķ������ۼ�Ƿ�����£�', '');
INSERT INTO 'tbl_print_param' VALUES ('qf3', 'Ƿ�Ѵ�ӡ3', '����˾���غ�֪ͨ���������콫���������а������ջ�ֱ�Ӵ��ֽ���ҵ��˾���񲿽��ɡ�', '');
INSERT INTO 'tbl_print_param' VALUES ('qf4', 'Ƿ�Ѵ�ӡ4', '�߿����ڣ�', '');
INSERT INTO 'tbl_print_param' VALUES ('qf5', 'Ƿ�Ѵ�ӡ5', 'лл��', '');

-- ----------------------------
-- Table structure for tbl_quick
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_quick';
CREATE TABLE 'tbl_quick'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'quick_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ݷ�ʽ����',
  'url_param' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���Ӳ���',
  'code_path' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����·��',
  'icon_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼ������',
  'mechine_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'public_type' varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���',
  'input_record_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_record_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ݷ�ʽ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_quick
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_role';
CREATE TABLE 'tbl_role'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��ɫ���',
  'role_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ɫ����',
  'role_type' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ɫ����',
  'role_privileges' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '����Ȩ��',
  'role_remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ɫ��ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ɫ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO 'tbl_role' VALUES (1, '��������Ա', '��ҵ', '221-223-226-901', '', 'admin', '2020-01-08 12:08:19');

-- ----------------------------
-- Table structure for tbl_role_menu_privi
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_role_menu_privi';
CREATE TABLE 'tbl_role_menu_privi'  (
  'role_id' int(11) NULL DEFAULT NULL COMMENT '��ɫid',
  'model_id' int(20) NULL DEFAULT NULL COMMENT 'ģ��id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ɫ�˵�Ȩ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_role_menu_privi
-- ----------------------------
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 16);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 17);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 18);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 109);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 110);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 111);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 115);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 116);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 120);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 130);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 131);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 132);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 133);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 134);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 135);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 136);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 137);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 138);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 140);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 141);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 142);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 143);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 145);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 146);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 147);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 148);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 149);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 209);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 210);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 212);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 221);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 223);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 224);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 225);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 226);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 227);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 228);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 229);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 230);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 233);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 308);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 309);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 310);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 311);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 312);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 313);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 406);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 407);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 408);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 409);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 410);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 411);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 510);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 511);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 512);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 515);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 516);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 517);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 518);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 706);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 707);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 708);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 709);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 710);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 711);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 806);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 807);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 808);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 809);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 810);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 811);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 812);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 905);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 912);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 919);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1307);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1308);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1309);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10200);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10507);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10509);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10706);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10707);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 10905);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11510);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11511);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11512);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11513);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11514);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11515);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11516);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11517);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11518);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11519);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 11607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12007);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12008);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12009);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12010);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12011);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 12012);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13411);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13412);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13413);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13414);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13511);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13512);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13514);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13611);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13612);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13613);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13614);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13615);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13616);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13711);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13712);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 13804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 14903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20900);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20905);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20906);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20907);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20908);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20909);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20922);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 20923);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 21108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22307);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22411);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22412);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22413);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22414);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22507);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22706);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22707);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22708);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22806);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22905);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22906);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22907);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 22908);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 23304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30905);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30906);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30907);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30908);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30909);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30911);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 30912);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31007);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31008);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31009);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31010);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31011);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31012);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31013);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31014);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31015);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31016);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31017);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31109);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31110);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31111);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31112);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31113);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31114);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31115);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31116);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31117);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31118);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31119);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31120);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31121);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31122);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31208);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31209);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31210);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31211);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31212);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31213);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31214);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31215);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31216);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31217);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31218);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31219);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31220);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31221);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31222);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31300);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 31306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40409);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40811);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40812);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40813);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 40902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 41106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 50805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51507);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 51803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70208);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70209);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70307);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70406);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70407);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70408);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70608);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70706);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70707);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70708);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70709);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70805);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70806);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 70902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71007);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 71108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80804);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 80904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81004);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81005);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81006);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81007);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81008);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81009);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81010);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 81207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90109);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90110);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90307);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90406);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90407);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90507);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 90509);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91904);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91911);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 91912);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1040503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1060401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1060402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1060501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1060502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1070702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1080303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1090501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1090502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1090503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1090504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1090505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1151901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1151902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1160703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1310502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1330204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1380401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1380402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1380403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1380404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1400201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1400202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1400301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1400302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1400303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1420203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 1450505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2210204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2230201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2230202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2230203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2230204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2230205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2260202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2280502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2290702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2300301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2300302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2300303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2300304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2300305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2330401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2330402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 2330403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5020304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5030504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5060705);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5100603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5110302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5120404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150608);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150704);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5150802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 5170302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110109);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110110);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110111);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110112);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110113);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110205);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110206);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110207);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110208);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110209);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110210);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110211);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110212);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110213);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110305);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110306);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110307);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110308);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110309);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110310);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110311);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110312);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110313);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110314);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110315);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110316);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110317);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110318);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110319);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110320);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110406);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110407);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110408);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110409);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110410);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110411);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110412);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110413);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110505);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110506);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110507);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110508);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110509);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110510);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110511);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110512);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110513);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110514);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110515);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110516);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110517);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110604);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110605);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110606);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110607);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110703);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 7110802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8020201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8020202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030203);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030204);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8030404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8040202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8050101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8050102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8050103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8080401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8080402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8090402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100104);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100105);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100106);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100107);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100108);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100401);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100402);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100403);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100404);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100405);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100406);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100407);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100408);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100601);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100602);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100603);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100701);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100702);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100801);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100802);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100803);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100901);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100902);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8100903);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8101001);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8101002);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8101003);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110201);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110202);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110301);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110302);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110303);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 8110304);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9030501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9030502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9030503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9030504);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9040501);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9040502);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9040503);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9191101);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9191102);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9191103);
INSERT INTO 'tbl_role_menu_privi' VALUES (1, 9191201);

-- ----------------------------
-- Table structure for tbl_rule
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_rule';
CREATE TABLE 'tbl_rule'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ�����id',
  'title' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '����',
  'use_range' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���÷�Χ',
  'category' bigint(20) NULL DEFAULT NULL COMMENT '����',
  'article_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ĺ�',
  'level' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ƶȵȼ�',
  'secret_level' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ܵȼ�',
  'title_word' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'publish_company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ĵ�λ',
  'attach_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'attach_path' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����·��',
  'status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_advice' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'allow_user_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����鿴���û�����',
  'allow_user_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����鿴���û�����',
  'rule_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ƶȸ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����ƶ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_rule
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_send_log
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_send_log';
CREATE TABLE 'tbl_send_log'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��¼���',
  'send_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'request_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'send_tag' tinyint(4) NULL DEFAULT NULL COMMENT '��ʱ��־',
  'timing_date' datetime NULL DEFAULT NULL COMMENT '��ʱʱ��',
  'message_type' int(11) NULL DEFAULT NULL COMMENT '��������',
  'extend_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��չ����',
  'receive_phone' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '�����ֻ�����',
  'message_content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��������',
  'is_send' int(11) NULL DEFAULT NULL COMMENT '�Ƿ���',
  'receive_identify' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱�ʶ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������־��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_send_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_shortcut_icon
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_shortcut_icon';
CREATE TABLE 'tbl_shortcut_icon'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'icon_name' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'icon_path' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼ��·��',
  'status' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ݷ�ʽͼ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_shortcut_icon
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stop_date
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_stop_date';
CREATE TABLE 'tbl_stop_date'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'days' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_stop_date
-- ----------------------------
INSERT INTO 'tbl_stop_date' VALUES (1, '3����', '3');
INSERT INTO 'tbl_stop_date' VALUES (2, '7����', '7');
INSERT INTO 'tbl_stop_date' VALUES (3, '30����', '30');
INSERT INTO 'tbl_stop_date' VALUES (4, '60����', '60');
INSERT INTO 'tbl_stop_date' VALUES (5, '90����', '90');
INSERT INTO 'tbl_stop_date' VALUES (6, '120����', '120');
INSERT INTO 'tbl_stop_date' VALUES (7, '180����', '180');
INSERT INTO 'tbl_stop_date' VALUES (8, '365����', '365');
INSERT INTO 'tbl_stop_date' VALUES (9, '�ѹ���', '10000');
INSERT INTO 'tbl_stop_date' VALUES (10, '���쵽��', '0');

-- ----------------------------
-- Table structure for tbl_sys_diagrams
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_sys_diagrams';
CREATE TABLE 'tbl_sys_diagrams'  (
  'diagram_name' varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼ������',
  'belong_person' int(11) NULL DEFAULT NULL COMMENT '������',
  'diagram_id' int(11) NULL DEFAULT NULL COMMENT 'ͼ����',
  'diagram_version' int(11) NULL DEFAULT NULL COMMENT 'ͼ��汾',
  'diagram_definition' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ͼ�궨��'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ϵͳͼ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_sys_diagrams
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_system_log
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_system_log';
CREATE TABLE 'tbl_system_log'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'log_content' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��־����',
  'model_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ģ�����',
  'ip_addr' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip��ַ',
  'dept_privileges' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ȩ��',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˱���',
  'operate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'dept_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ű���',
  'dept_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ϵͳ��־' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_system_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_todo
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_todo';
CREATE TABLE 'tbl_todo'  (
  'id' int(10) NOT NULL AUTO_INCREMENT COMMENT '���',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'privileges' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ȩ��',
  'status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'url' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ӵ�ַ',
  'show_number' int(11) NULL DEFAULT NULL COMMENT '��ʾ����',
  'days' int(11) NULL DEFAULT NULL COMMENT '����',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_todo
-- ----------------------------
INSERT INTO 'tbl_todo' VALUES (1, '���޺�ͬ����Ԥ��', '', '����', '', 100, 3650, 'F');
INSERT INTO 'tbl_todo' VALUES (2, '�����Ԥ��', '', '����', '', 100, 3650, 'F');
INSERT INTO 'tbl_todo' VALUES (3, '��ҵ��Ƿ��Ԥ��', '', '����', '', 100, 0, 'F');
INSERT INTO 'tbl_todo' VALUES (4, '��ҵ�ѵ���Ԥ��', '', '����', '', 100, 3650, 'F');
INSERT INTO 'tbl_todo' VALUES (5, '�������Ͷ�߼�¼', '', '����', '', 100, 0, 'F');
INSERT INTO 'tbl_todo' VALUES (6, '������ķ����¼', '', '����', '', 100, 0, 'F');
INSERT INTO 'tbl_todo' VALUES (7, '�������װ�޼�¼', '', '����', '', 100, 0, 'F');
INSERT INTO 'tbl_todo' VALUES (8, '����������޼�¼', '', '����', '', 100, 0, 'F');

-- ----------------------------
-- Table structure for tbl_type
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_type';
CREATE TABLE 'tbl_type'  (
  'id' int(3) NOT NULL AUTO_INCREMENT COMMENT '���ͱ��',
  'type_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'type_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'belong_product' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���Ϳ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_type
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user_dept
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_user_dept';
CREATE TABLE 'tbl_user_dept'  (
  'user_id' int(50) NULL DEFAULT NULL COMMENT '�û����',
  'dept_id' int(11) NULL DEFAULT NULL COMMENT '���ű��'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û����ű�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_dept
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user_group
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_user_group';
CREATE TABLE 'tbl_user_group'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'group_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ⱥ������',
  'group_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ⱥ������',
  'group_desc' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user_record
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_user_record';
CREATE TABLE 'tbl_user_record'  (
  'id' int(50) NOT NULL AUTO_INCREMENT COMMENT '�û����',
  'user_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�����',
  'user_password' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�����',
  'user_type' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�����',
  'user_role' int(11) NULL DEFAULT NULL COMMENT '��λ��ɫ',
  'user_gender' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û��Ա�',
  'user_dept' int(11) NULL DEFAULT NULL COMMENT '��������',
  'user_job' int(11) NULL DEFAULT NULL COMMENT 'ְλ',
  'user_status' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�״̬',
  'office_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�칫�绰',
  'inner_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ߵ绰',
  'move_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ƶ��绰',
  'email' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'is_send_msg' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������ֻ�����',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��Ч��ʼ����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��Ч��������',
  'birthday' datetime NULL DEFAULT NULL COMMENT '��������',
  'ip_rule' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��½ip����',
  'user_hiredate' datetime NULL DEFAULT NULL COMMENT '��ְ����',
  'is_send_wchat' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������΢��',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'is_dept_admin' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ��Ź�����',
  'last_login_date' datetime NULL DEFAULT NULL COMMENT '����½ʱ��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_record
-- ----------------------------
INSERT INTO 'tbl_user_record' VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '��ҵ', 1, '', 1, 1, '����', '', '', '13888888888', 'ceshi@126.com', 'Y', '2020-01-01 00:00:00', '2022-12-31 00:00:00', '2020-01-01 00:00:00', 'N', '2020-01-01 00:00:00', 'N', '', '001', '��', '2020-02-03 09:40:33', 'admin', '2020-01-08 12:08:20');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_user_role';
CREATE TABLE 'tbl_user_role'  (
  'user_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û����',
  'role_id' int(11) NULL DEFAULT NULL COMMENT '��ɫ���'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û���ɫ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user_sub_company
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_user_sub_company';
CREATE TABLE 'tbl_user_sub_company'  (
  'user_id' int(50) NULL DEFAULT NULL COMMENT '�û����',
  'company_id' int(10) NULL DEFAULT NULL COMMENT '�ӹ�˾���'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û��ӹ�˾��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user_sub_company
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vod
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_vod';
CREATE TABLE 'tbl_vod'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ƶ����',
  'video_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ƶ����',
  'video_source' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Դ',
  'videl_type' bigint(20) NULL DEFAULT NULL COMMENT '��Ƶ����',
  'program_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'program_url' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ·��',
  'simple_intro' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '���',
  'is_first' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����ҳ��ʾ',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ƶ�㲥' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_vod
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vote_data
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_vote_data';
CREATE TABLE 'tbl_vote_data'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT 'ͶƱ���',
  'vote_project_id' int(11) NULL DEFAULT NULL COMMENT 'ͶƱ��Ŀ���',
  'vote_user_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͶƱ�û�����',
  'vote_user_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͶƱ�û�����',
  'vote_date' datetime NULL DEFAULT NULL COMMENT 'ͶƱʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ͶƱ���ݱ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_vote_data
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vote_detail
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_vote_detail';
CREATE TABLE 'tbl_vote_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'vote_id' int(11) NULL DEFAULT NULL COMMENT 'ͶƱ���',
  'answer_id' int(11) NULL DEFAULT NULL COMMENT '�𰸱��',
  'result' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ͶƱ������ϸ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_vote_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vote_project1
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_vote_project1';
CREATE TABLE 'tbl_vote_project1'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀ���',
  'project_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'project_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'project_tag' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ��־',
  'project_desc' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ˵��',
  'input_record_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_record_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ͶƱ��Ŀ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_vote_project1
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_vote_subject
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_vote_subject';
CREATE TABLE 'tbl_vote_subject'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀ���',
  'project_id' int(11) NULL DEFAULT NULL COMMENT '������Ŀ���',
  'subject_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'input_record_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'input_record_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ͶƱ��Ŀ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_vote_subject
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_work_date
-- ----------------------------
DROP TABLE IF EXISTS 'tbl_work_date';
CREATE TABLE 'tbl_work_date'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'dt' datetime NULL DEFAULT NULL COMMENT '����',
  'weekday' int(11) NULL DEFAULT NULL COMMENT '����',
  'is_work' tinyint(4) NULL DEFAULT NULL COMMENT '�Ƿ��ϰ�',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9525 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_work_date
-- ----------------------------
INSERT INTO 'tbl_work_date' VALUES (5874, '2021-01-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5875, '2021-01-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5876, '2021-01-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5877, '2021-01-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5878, '2021-01-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5879, '2021-01-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5880, '2021-01-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5881, '2021-01-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5882, '2021-01-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5883, '2021-01-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5884, '2021-01-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5885, '2021-01-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5886, '2021-01-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5887, '2021-01-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5888, '2021-01-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5889, '2021-01-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5890, '2021-01-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5891, '2021-01-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5892, '2021-01-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5893, '2021-01-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5894, '2021-01-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5895, '2021-01-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5896, '2021-01-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5897, '2021-01-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5898, '2021-01-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5899, '2021-01-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5900, '2021-01-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5901, '2021-01-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5902, '2021-01-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5903, '2021-01-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5904, '2021-01-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5905, '2021-02-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5906, '2021-02-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5907, '2021-02-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5908, '2021-02-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5909, '2021-02-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5910, '2021-02-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5911, '2021-02-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5912, '2021-02-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5913, '2021-02-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5914, '2021-02-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5915, '2021-02-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5916, '2021-02-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5917, '2021-02-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5918, '2021-02-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5919, '2021-02-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5920, '2021-02-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5921, '2021-02-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5922, '2021-02-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5923, '2021-02-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5924, '2021-02-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5925, '2021-02-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5926, '2021-02-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5927, '2021-02-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5928, '2021-02-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5929, '2021-02-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5930, '2021-02-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5931, '2021-02-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5932, '2021-02-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5933, '2021-03-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5934, '2021-03-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5935, '2021-03-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5936, '2021-03-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5937, '2021-03-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5938, '2021-03-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5939, '2021-03-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5940, '2021-03-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5941, '2021-03-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5942, '2021-03-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5943, '2021-03-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5944, '2021-03-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5945, '2021-03-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5946, '2021-03-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5947, '2021-03-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5948, '2021-03-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5949, '2021-03-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5950, '2021-03-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5951, '2021-03-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5952, '2021-03-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5953, '2021-03-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5954, '2021-03-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5955, '2021-03-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5956, '2021-03-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5957, '2021-03-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5958, '2021-03-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5959, '2021-03-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5960, '2021-03-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5961, '2021-03-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5962, '2021-03-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5963, '2021-03-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5964, '2021-04-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5965, '2021-04-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5966, '2021-04-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5967, '2021-04-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5968, '2021-04-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5969, '2021-04-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5970, '2021-04-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5971, '2021-04-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5972, '2021-04-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5973, '2021-04-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5974, '2021-04-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5975, '2021-04-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5976, '2021-04-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5977, '2021-04-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5978, '2021-04-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5979, '2021-04-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5980, '2021-04-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5981, '2021-04-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5982, '2021-04-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5983, '2021-04-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5984, '2021-04-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5985, '2021-04-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5986, '2021-04-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5987, '2021-04-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5988, '2021-04-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5989, '2021-04-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5990, '2021-04-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5991, '2021-04-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5992, '2021-04-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (5993, '2021-04-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (5994, '2021-05-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (5995, '2021-05-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (5996, '2021-05-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (5997, '2021-05-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (5998, '2021-05-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (5999, '2021-05-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6000, '2021-05-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6001, '2021-05-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6002, '2021-05-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6003, '2021-05-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6004, '2021-05-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6005, '2021-05-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6006, '2021-05-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6007, '2021-05-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6008, '2021-05-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6009, '2021-05-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6010, '2021-05-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6011, '2021-05-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6012, '2021-05-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6013, '2021-05-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6014, '2021-05-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6015, '2021-05-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6016, '2021-05-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6017, '2021-05-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6018, '2021-05-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6019, '2021-05-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6020, '2021-05-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6021, '2021-05-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6022, '2021-05-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6023, '2021-05-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6024, '2021-05-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6025, '2021-06-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6026, '2021-06-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6027, '2021-06-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6028, '2021-06-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6029, '2021-06-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6030, '2021-06-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6031, '2021-06-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6032, '2021-06-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6033, '2021-06-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6034, '2021-06-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6035, '2021-06-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6036, '2021-06-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6037, '2021-06-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6038, '2021-06-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6039, '2021-06-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6040, '2021-06-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6041, '2021-06-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6042, '2021-06-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6043, '2021-06-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6044, '2021-06-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6045, '2021-06-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6046, '2021-06-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6047, '2021-06-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6048, '2021-06-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6049, '2021-06-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6050, '2021-06-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6051, '2021-06-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6052, '2021-06-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6053, '2021-06-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6054, '2021-06-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6055, '2021-07-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6056, '2021-07-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6057, '2021-07-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6058, '2021-07-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6059, '2021-07-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6060, '2021-07-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6061, '2021-07-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6062, '2021-07-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6063, '2021-07-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6064, '2021-07-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6065, '2021-07-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6066, '2021-07-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6067, '2021-07-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6068, '2021-07-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6069, '2021-07-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6070, '2021-07-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6071, '2021-07-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6072, '2021-07-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6073, '2021-07-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6074, '2021-07-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6075, '2021-07-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6076, '2021-07-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6077, '2021-07-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6078, '2021-07-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6079, '2021-07-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6080, '2021-07-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6081, '2021-07-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6082, '2021-07-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6083, '2021-07-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6084, '2021-07-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6085, '2021-07-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6086, '2021-08-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6087, '2021-08-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6088, '2021-08-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6089, '2021-08-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6090, '2021-08-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6091, '2021-08-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6092, '2021-08-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6093, '2021-08-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6094, '2021-08-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6095, '2021-08-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6096, '2021-08-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6097, '2021-08-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6098, '2021-08-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6099, '2021-08-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6100, '2021-08-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6101, '2021-08-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6102, '2021-08-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6103, '2021-08-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6104, '2021-08-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6105, '2021-08-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6106, '2021-08-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6107, '2021-08-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6108, '2021-08-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6109, '2021-08-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6110, '2021-08-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6111, '2021-08-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6112, '2021-08-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6113, '2021-08-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6114, '2021-08-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6115, '2021-08-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6116, '2021-08-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6117, '2021-09-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6118, '2021-09-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6119, '2021-09-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6120, '2021-09-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6121, '2021-09-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6122, '2021-09-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6123, '2021-09-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6124, '2021-09-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6125, '2021-09-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6126, '2021-09-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6127, '2021-09-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6128, '2021-09-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6129, '2021-09-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6130, '2021-09-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6131, '2021-09-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6132, '2021-09-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6133, '2021-09-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6134, '2021-09-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6135, '2021-09-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6136, '2021-09-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6137, '2021-09-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6138, '2021-09-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6139, '2021-09-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6140, '2021-09-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6141, '2021-09-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6142, '2021-09-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6143, '2021-09-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6144, '2021-09-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6145, '2021-09-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6146, '2021-09-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6147, '2021-10-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6148, '2021-10-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6149, '2021-10-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6150, '2021-10-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6151, '2021-10-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6152, '2021-10-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6153, '2021-10-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6154, '2021-10-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6155, '2021-10-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6156, '2021-10-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6157, '2021-10-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6158, '2021-10-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6159, '2021-10-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6160, '2021-10-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6161, '2021-10-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6162, '2021-10-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6163, '2021-10-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6164, '2021-10-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6165, '2021-10-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6166, '2021-10-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6167, '2021-10-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6168, '2021-10-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6169, '2021-10-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6170, '2021-10-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6171, '2021-10-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6172, '2021-10-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6173, '2021-10-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6174, '2021-10-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6175, '2021-10-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6176, '2021-10-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6177, '2021-10-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6178, '2021-11-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6179, '2021-11-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6180, '2021-11-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6181, '2021-11-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6182, '2021-11-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6183, '2021-11-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6184, '2021-11-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6185, '2021-11-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6186, '2021-11-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6187, '2021-11-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6188, '2021-11-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6189, '2021-11-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6190, '2021-11-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6191, '2021-11-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6192, '2021-11-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6193, '2021-11-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6194, '2021-11-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6195, '2021-11-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6196, '2021-11-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6197, '2021-11-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6198, '2021-11-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6199, '2021-11-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6200, '2021-11-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6201, '2021-11-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6202, '2021-11-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6203, '2021-11-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6204, '2021-11-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6205, '2021-11-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6206, '2021-11-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6207, '2021-11-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6208, '2021-12-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6209, '2021-12-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6210, '2021-12-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6211, '2021-12-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6212, '2021-12-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6213, '2021-12-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6214, '2021-12-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6215, '2021-12-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6216, '2021-12-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6217, '2021-12-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6218, '2021-12-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6219, '2021-12-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6220, '2021-12-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6221, '2021-12-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6222, '2021-12-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6223, '2021-12-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6224, '2021-12-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6225, '2021-12-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6226, '2021-12-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6227, '2021-12-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6228, '2021-12-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6229, '2021-12-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6230, '2021-12-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6231, '2021-12-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6232, '2021-12-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6233, '2021-12-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6234, '2021-12-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6235, '2021-12-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6236, '2021-12-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6237, '2021-12-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6238, '2021-12-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6239, '2022-01-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6240, '2022-01-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6241, '2022-01-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6242, '2022-01-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6243, '2022-01-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6244, '2022-01-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6245, '2022-01-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6246, '2022-01-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6247, '2022-01-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6248, '2022-01-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6249, '2022-01-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6250, '2022-01-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6251, '2022-01-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6252, '2022-01-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6253, '2022-01-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6254, '2022-01-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6255, '2022-01-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6256, '2022-01-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6257, '2022-01-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6258, '2022-01-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6259, '2022-01-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6260, '2022-01-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6261, '2022-01-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6262, '2022-01-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6263, '2022-01-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6264, '2022-01-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6265, '2022-01-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6266, '2022-01-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6267, '2022-01-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6268, '2022-01-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6269, '2022-01-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6270, '2022-02-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6271, '2022-02-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6272, '2022-02-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6273, '2022-02-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6274, '2022-02-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6275, '2022-02-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6276, '2022-02-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6277, '2022-02-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6278, '2022-02-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6279, '2022-02-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6280, '2022-02-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6281, '2022-02-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6282, '2022-02-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6283, '2022-02-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6284, '2022-02-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6285, '2022-02-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6286, '2022-02-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6287, '2022-02-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6288, '2022-02-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6289, '2022-02-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6290, '2022-02-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6291, '2022-02-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6292, '2022-02-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6293, '2022-02-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6294, '2022-02-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6295, '2022-02-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6296, '2022-02-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6297, '2022-02-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6299, '2022-03-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6300, '2022-03-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6301, '2022-03-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6302, '2022-03-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6303, '2022-03-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6304, '2022-03-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6305, '2022-03-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6306, '2022-03-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6307, '2022-03-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6308, '2022-03-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6309, '2022-03-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6310, '2022-03-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6311, '2022-03-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6312, '2022-03-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6313, '2022-03-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6314, '2022-03-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6315, '2022-03-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6316, '2022-03-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6317, '2022-03-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6318, '2022-03-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6319, '2022-03-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6320, '2022-03-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6321, '2022-03-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6322, '2022-03-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6323, '2022-03-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6324, '2022-03-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6325, '2022-03-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6326, '2022-03-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6327, '2022-03-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6328, '2022-03-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6329, '2022-03-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6330, '2022-04-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6331, '2022-04-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6332, '2022-04-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6333, '2022-04-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6334, '2022-04-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6335, '2022-04-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6336, '2022-04-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6337, '2022-04-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6338, '2022-04-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6339, '2022-04-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6340, '2022-04-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6341, '2022-04-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6342, '2022-04-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6343, '2022-04-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6344, '2022-04-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6345, '2022-04-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6346, '2022-04-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6347, '2022-04-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6348, '2022-04-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6349, '2022-04-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6350, '2022-04-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6351, '2022-04-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6352, '2022-04-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6353, '2022-04-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6354, '2022-04-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6355, '2022-04-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6356, '2022-04-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6357, '2022-04-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6358, '2022-04-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6359, '2022-04-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6360, '2022-05-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6361, '2022-05-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6362, '2022-05-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6363, '2022-05-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6364, '2022-05-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6365, '2022-05-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6366, '2022-05-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6367, '2022-05-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6368, '2022-05-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6369, '2022-05-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6370, '2022-05-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6371, '2022-05-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6372, '2022-05-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6373, '2022-05-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6374, '2022-05-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6375, '2022-05-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6376, '2022-05-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6377, '2022-05-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6378, '2022-05-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6379, '2022-05-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6380, '2022-05-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6381, '2022-05-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6382, '2022-05-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6383, '2022-05-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6384, '2022-05-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6385, '2022-05-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6386, '2022-05-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6387, '2022-05-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6388, '2022-05-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6389, '2022-05-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6390, '2022-05-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6391, '2022-06-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6392, '2022-06-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6393, '2022-06-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6394, '2022-06-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6395, '2022-06-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6396, '2022-06-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6397, '2022-06-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6398, '2022-06-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6399, '2022-06-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6400, '2022-06-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6401, '2022-06-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6402, '2022-06-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6403, '2022-06-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6404, '2022-06-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6405, '2022-06-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6406, '2022-06-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6407, '2022-06-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6408, '2022-06-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6409, '2022-06-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6410, '2022-06-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6411, '2022-06-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6412, '2022-06-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6413, '2022-06-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6414, '2022-06-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6415, '2022-06-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6416, '2022-06-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6417, '2022-06-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6418, '2022-06-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6419, '2022-06-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6420, '2022-06-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6421, '2022-07-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6422, '2022-07-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6423, '2022-07-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6424, '2022-07-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6425, '2022-07-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6426, '2022-07-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6427, '2022-07-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6428, '2022-07-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6429, '2022-07-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6430, '2022-07-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6431, '2022-07-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6432, '2022-07-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6433, '2022-07-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6434, '2022-07-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6435, '2022-07-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6436, '2022-07-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6437, '2022-07-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6438, '2022-07-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6439, '2022-07-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6440, '2022-07-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6441, '2022-07-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6442, '2022-07-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6443, '2022-07-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6444, '2022-07-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6445, '2022-07-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6446, '2022-07-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6447, '2022-07-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6448, '2022-07-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6449, '2022-07-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6450, '2022-07-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6451, '2022-07-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6452, '2022-08-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6453, '2022-08-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6454, '2022-08-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6455, '2022-08-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6456, '2022-08-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6457, '2022-08-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6458, '2022-08-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6459, '2022-08-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6460, '2022-08-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6461, '2022-08-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6462, '2022-08-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6463, '2022-08-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6464, '2022-08-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6465, '2022-08-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6466, '2022-08-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6467, '2022-08-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6468, '2022-08-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6469, '2022-08-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6470, '2022-08-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6471, '2022-08-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6472, '2022-08-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6473, '2022-08-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6474, '2022-08-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6475, '2022-08-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6476, '2022-08-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6477, '2022-08-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6478, '2022-08-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6479, '2022-08-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6480, '2022-08-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6481, '2022-08-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6482, '2022-08-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6483, '2022-09-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6484, '2022-09-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6485, '2022-09-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6486, '2022-09-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6487, '2022-09-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6488, '2022-09-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6489, '2022-09-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6490, '2022-09-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6491, '2022-09-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6492, '2022-09-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6493, '2022-09-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6494, '2022-09-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6495, '2022-09-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6496, '2022-09-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6497, '2022-09-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6498, '2022-09-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6499, '2022-09-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6500, '2022-09-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6501, '2022-09-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6502, '2022-09-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6503, '2022-09-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6504, '2022-09-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6505, '2022-09-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6506, '2022-09-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6507, '2022-09-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6508, '2022-09-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6509, '2022-09-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6510, '2022-09-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6511, '2022-09-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6512, '2022-09-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6513, '2022-10-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6514, '2022-10-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6515, '2022-10-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6516, '2022-10-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6517, '2022-10-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6518, '2022-10-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6519, '2022-10-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6520, '2022-10-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6521, '2022-10-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6522, '2022-10-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6523, '2022-10-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6524, '2022-10-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6525, '2022-10-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6526, '2022-10-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6527, '2022-10-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6528, '2022-10-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6529, '2022-10-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6530, '2022-10-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6531, '2022-10-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6532, '2022-10-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6533, '2022-10-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6534, '2022-10-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6535, '2022-10-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6536, '2022-10-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6537, '2022-10-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6538, '2022-10-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6539, '2022-10-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6540, '2022-10-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6541, '2022-10-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6542, '2022-10-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6543, '2022-10-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6544, '2022-11-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6545, '2022-11-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6546, '2022-11-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6547, '2022-11-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6548, '2022-11-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6549, '2022-11-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6550, '2022-11-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6551, '2022-11-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6552, '2022-11-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6553, '2022-11-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6554, '2022-11-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6555, '2022-11-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6556, '2022-11-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6557, '2022-11-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6558, '2022-11-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6559, '2022-11-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6560, '2022-11-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6561, '2022-11-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6562, '2022-11-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6563, '2022-11-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6564, '2022-11-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6565, '2022-11-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6566, '2022-11-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6567, '2022-11-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6568, '2022-11-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6569, '2022-11-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6570, '2022-11-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6571, '2022-11-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6572, '2022-11-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6573, '2022-11-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6574, '2022-12-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6575, '2022-12-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6576, '2022-12-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6577, '2022-12-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6578, '2022-12-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6579, '2022-12-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6580, '2022-12-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6581, '2022-12-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6582, '2022-12-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6583, '2022-12-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6584, '2022-12-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6585, '2022-12-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6586, '2022-12-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6587, '2022-12-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6588, '2022-12-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6589, '2022-12-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6590, '2022-12-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6591, '2022-12-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6592, '2022-12-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6593, '2022-12-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6594, '2022-12-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6595, '2022-12-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6596, '2022-12-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6597, '2022-12-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6598, '2022-12-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6599, '2022-12-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6600, '2022-12-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6601, '2022-12-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6602, '2022-12-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6603, '2022-12-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6604, '2022-12-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6605, '2023-01-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6606, '2023-01-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6607, '2023-01-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6608, '2023-01-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6609, '2023-01-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6610, '2023-01-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6611, '2023-01-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6612, '2023-01-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6613, '2023-01-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6614, '2023-01-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6615, '2023-01-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6616, '2023-01-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6617, '2023-01-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6618, '2023-01-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6619, '2023-01-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6620, '2023-01-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6621, '2023-01-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6622, '2023-01-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6623, '2023-01-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6624, '2023-01-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6625, '2023-01-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6626, '2023-01-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6627, '2023-01-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6628, '2023-01-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6629, '2023-01-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6630, '2023-01-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6631, '2023-01-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6632, '2023-01-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6633, '2023-01-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6634, '2023-01-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6635, '2023-01-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6636, '2023-02-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6637, '2023-02-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6638, '2023-02-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6639, '2023-02-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6640, '2023-02-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6641, '2023-02-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6642, '2023-02-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6643, '2023-02-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6644, '2023-02-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6645, '2023-02-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6646, '2023-02-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6647, '2023-02-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6648, '2023-02-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6649, '2023-02-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6650, '2023-02-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6651, '2023-02-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6652, '2023-02-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6653, '2023-02-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6654, '2023-02-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6655, '2023-02-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6656, '2023-02-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6657, '2023-02-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6658, '2023-02-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6659, '2023-02-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6660, '2023-02-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6661, '2023-02-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6662, '2023-02-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6663, '2023-02-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6664, '2023-03-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6665, '2023-03-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6666, '2023-03-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6667, '2023-03-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6668, '2023-03-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6669, '2023-03-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6670, '2023-03-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6671, '2023-03-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6672, '2023-03-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6673, '2023-03-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6674, '2023-03-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6675, '2023-03-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6676, '2023-03-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6677, '2023-03-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6678, '2023-03-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6679, '2023-03-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6680, '2023-03-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6681, '2023-03-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6682, '2023-03-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6683, '2023-03-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6684, '2023-03-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6685, '2023-03-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6686, '2023-03-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6687, '2023-03-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6688, '2023-03-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6689, '2023-03-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6690, '2023-03-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6691, '2023-03-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6692, '2023-03-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6693, '2023-03-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6694, '2023-03-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6695, '2023-04-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6696, '2023-04-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6697, '2023-04-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6698, '2023-04-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6699, '2023-04-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6700, '2023-04-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6701, '2023-04-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6702, '2023-04-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6703, '2023-04-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6704, '2023-04-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6705, '2023-04-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6706, '2023-04-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6707, '2023-04-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6708, '2023-04-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6709, '2023-04-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6710, '2023-04-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6711, '2023-04-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6712, '2023-04-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6713, '2023-04-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6714, '2023-04-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6715, '2023-04-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6716, '2023-04-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6717, '2023-04-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6718, '2023-04-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6719, '2023-04-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6720, '2023-04-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6721, '2023-04-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6722, '2023-04-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6723, '2023-04-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6724, '2023-04-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6725, '2023-05-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6726, '2023-05-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6727, '2023-05-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6728, '2023-05-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6729, '2023-05-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6730, '2023-05-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6731, '2023-05-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6732, '2023-05-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6733, '2023-05-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6734, '2023-05-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6735, '2023-05-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6736, '2023-05-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6737, '2023-05-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6738, '2023-05-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6739, '2023-05-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6740, '2023-05-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6741, '2023-05-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6742, '2023-05-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6743, '2023-05-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6744, '2023-05-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6745, '2023-05-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6746, '2023-05-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6747, '2023-05-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6748, '2023-05-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6749, '2023-05-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6750, '2023-05-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6751, '2023-05-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6752, '2023-05-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6753, '2023-05-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6754, '2023-05-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6755, '2023-05-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6756, '2023-06-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6757, '2023-06-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6758, '2023-06-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6759, '2023-06-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6760, '2023-06-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6761, '2023-06-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6762, '2023-06-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6763, '2023-06-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6764, '2023-06-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6765, '2023-06-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6766, '2023-06-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6767, '2023-06-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6768, '2023-06-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6769, '2023-06-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6770, '2023-06-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6771, '2023-06-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6772, '2023-06-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6773, '2023-06-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6774, '2023-06-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6775, '2023-06-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6776, '2023-06-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6777, '2023-06-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6778, '2023-06-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6779, '2023-06-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6780, '2023-06-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6781, '2023-06-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6782, '2023-06-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6783, '2023-06-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6784, '2023-06-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6785, '2023-06-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6786, '2023-07-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6787, '2023-07-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6788, '2023-07-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6789, '2023-07-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6790, '2023-07-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6791, '2023-07-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6792, '2023-07-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6793, '2023-07-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6794, '2023-07-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6795, '2023-07-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6796, '2023-07-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6797, '2023-07-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6798, '2023-07-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6799, '2023-07-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6800, '2023-07-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6801, '2023-07-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6802, '2023-07-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6803, '2023-07-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6804, '2023-07-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6805, '2023-07-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6806, '2023-07-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6807, '2023-07-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6808, '2023-07-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6809, '2023-07-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6810, '2023-07-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6811, '2023-07-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6812, '2023-07-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6813, '2023-07-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6814, '2023-07-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6815, '2023-07-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6816, '2023-07-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6817, '2023-08-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6818, '2023-08-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6819, '2023-08-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6820, '2023-08-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6821, '2023-08-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6822, '2023-08-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6823, '2023-08-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6824, '2023-08-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6825, '2023-08-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6826, '2023-08-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6827, '2023-08-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6828, '2023-08-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6829, '2023-08-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6830, '2023-08-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6831, '2023-08-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6832, '2023-08-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6833, '2023-08-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6834, '2023-08-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6835, '2023-08-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6836, '2023-08-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6837, '2023-08-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6838, '2023-08-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6839, '2023-08-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6840, '2023-08-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6841, '2023-08-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6842, '2023-08-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6843, '2023-08-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6844, '2023-08-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6845, '2023-08-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6846, '2023-08-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6847, '2023-08-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6848, '2023-09-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6849, '2023-09-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6850, '2023-09-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6851, '2023-09-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6852, '2023-09-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6853, '2023-09-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6854, '2023-09-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6855, '2023-09-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6856, '2023-09-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6857, '2023-09-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6858, '2023-09-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6859, '2023-09-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6860, '2023-09-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6861, '2023-09-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6862, '2023-09-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6863, '2023-09-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6864, '2023-09-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6865, '2023-09-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6866, '2023-09-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6867, '2023-09-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6868, '2023-09-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6869, '2023-09-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6870, '2023-09-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6871, '2023-09-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6872, '2023-09-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6873, '2023-09-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6874, '2023-09-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6875, '2023-09-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6876, '2023-09-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6877, '2023-09-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6878, '2023-10-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6879, '2023-10-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6880, '2023-10-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6881, '2023-10-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6882, '2023-10-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6883, '2023-10-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6884, '2023-10-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6885, '2023-10-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6886, '2023-10-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6887, '2023-10-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6888, '2023-10-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6889, '2023-10-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6890, '2023-10-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6891, '2023-10-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6892, '2023-10-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6893, '2023-10-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6894, '2023-10-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6895, '2023-10-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6896, '2023-10-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6897, '2023-10-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6898, '2023-10-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6899, '2023-10-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6900, '2023-10-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6901, '2023-10-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6902, '2023-10-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6903, '2023-10-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6904, '2023-10-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6905, '2023-10-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6906, '2023-10-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6907, '2023-10-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6908, '2023-10-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6909, '2023-11-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6910, '2023-11-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6911, '2023-11-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6912, '2023-11-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6913, '2023-11-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6914, '2023-11-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6915, '2023-11-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6916, '2023-11-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6917, '2023-11-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6918, '2023-11-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6919, '2023-11-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6920, '2023-11-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6921, '2023-11-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6922, '2023-11-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6923, '2023-11-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6924, '2023-11-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6925, '2023-11-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6926, '2023-11-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6927, '2023-11-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6928, '2023-11-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6929, '2023-11-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6930, '2023-11-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6931, '2023-11-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6932, '2023-11-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6933, '2023-11-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6934, '2023-11-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6935, '2023-11-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6936, '2023-11-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6937, '2023-11-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6938, '2023-11-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6939, '2023-12-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6940, '2023-12-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6941, '2023-12-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6942, '2023-12-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6943, '2023-12-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6944, '2023-12-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6945, '2023-12-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6946, '2023-12-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6947, '2023-12-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6948, '2023-12-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6949, '2023-12-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6950, '2023-12-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6951, '2023-12-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6952, '2023-12-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6953, '2023-12-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6954, '2023-12-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6955, '2023-12-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6956, '2023-12-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6957, '2023-12-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6958, '2023-12-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6959, '2023-12-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6960, '2023-12-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6961, '2023-12-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6962, '2023-12-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6963, '2023-12-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6964, '2023-12-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6965, '2023-12-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6966, '2023-12-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6967, '2023-12-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6968, '2023-12-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6969, '2023-12-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6970, '2024-01-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6971, '2024-01-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6972, '2024-01-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6973, '2024-01-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6974, '2024-01-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6975, '2024-01-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6976, '2024-01-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6977, '2024-01-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6978, '2024-01-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6979, '2024-01-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6980, '2024-01-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6981, '2024-01-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6982, '2024-01-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6983, '2024-01-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6984, '2024-01-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6985, '2024-01-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6986, '2024-01-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6987, '2024-01-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6988, '2024-01-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6989, '2024-01-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6990, '2024-01-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6991, '2024-01-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6992, '2024-01-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (6993, '2024-01-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (6994, '2024-01-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (6995, '2024-01-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (6996, '2024-01-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (6997, '2024-01-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (6998, '2024-01-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (6999, '2024-01-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7000, '2024-01-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7001, '2024-02-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7002, '2024-02-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7003, '2024-02-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7004, '2024-02-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7005, '2024-02-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7006, '2024-02-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7007, '2024-02-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7008, '2024-02-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7009, '2024-02-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7010, '2024-02-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7011, '2024-02-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7012, '2024-02-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7013, '2024-02-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7014, '2024-02-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7015, '2024-02-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7016, '2024-02-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7017, '2024-02-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7018, '2024-02-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7019, '2024-02-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7020, '2024-02-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7021, '2024-02-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7022, '2024-02-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7023, '2024-02-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7024, '2024-02-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7025, '2024-02-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7026, '2024-02-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7027, '2024-02-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7028, '2024-02-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7029, '2024-03-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7030, '2024-03-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7031, '2024-03-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7032, '2024-03-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7033, '2024-03-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7034, '2024-03-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7035, '2024-03-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7036, '2024-03-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7037, '2024-03-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7038, '2024-03-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7039, '2024-03-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7040, '2024-03-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7041, '2024-03-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7042, '2024-03-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7043, '2024-03-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7044, '2024-03-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7045, '2024-03-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7046, '2024-03-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7047, '2024-03-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7048, '2024-03-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7049, '2024-03-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7050, '2024-03-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7051, '2024-03-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7052, '2024-03-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7053, '2024-03-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7054, '2024-03-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7055, '2024-03-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7056, '2024-03-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7057, '2024-03-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7058, '2024-03-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7059, '2024-03-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7060, '2024-04-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7061, '2024-04-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7062, '2024-04-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7063, '2024-04-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7064, '2024-04-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7065, '2024-04-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7066, '2024-04-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7067, '2024-04-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7068, '2024-04-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7069, '2024-04-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7070, '2024-04-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7071, '2024-04-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7072, '2024-04-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7073, '2024-04-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7074, '2024-04-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7075, '2024-04-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7076, '2024-04-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7077, '2024-04-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7078, '2024-04-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7079, '2024-04-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7080, '2024-04-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7081, '2024-04-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7082, '2024-04-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7083, '2024-04-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7084, '2024-04-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7085, '2024-04-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7086, '2024-04-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7087, '2024-04-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7088, '2024-04-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7089, '2024-04-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7090, '2024-05-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7091, '2024-05-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7092, '2024-05-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7093, '2024-05-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7094, '2024-05-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7095, '2024-05-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7096, '2024-05-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7097, '2024-05-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7098, '2024-05-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7099, '2024-05-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7100, '2024-05-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7101, '2024-05-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7102, '2024-05-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7103, '2024-05-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7104, '2024-05-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7105, '2024-05-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7106, '2024-05-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7107, '2024-05-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7108, '2024-05-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7109, '2024-05-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7110, '2024-05-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7111, '2024-05-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7112, '2024-05-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7113, '2024-05-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7114, '2024-05-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7115, '2024-05-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7116, '2024-05-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7117, '2024-05-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7118, '2024-05-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7119, '2024-05-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7120, '2024-05-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7121, '2024-06-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7122, '2024-06-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7123, '2024-06-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7124, '2024-06-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7125, '2024-06-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7126, '2024-06-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7127, '2024-06-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7128, '2024-06-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7129, '2024-06-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7130, '2024-06-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7131, '2024-06-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7132, '2024-06-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7133, '2024-06-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7134, '2024-06-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7135, '2024-06-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7136, '2024-06-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7137, '2024-06-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7138, '2024-06-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7139, '2024-06-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7140, '2024-06-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7141, '2024-06-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7142, '2024-06-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7143, '2024-06-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7144, '2024-06-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7145, '2024-06-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7146, '2024-06-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7147, '2024-06-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7148, '2024-06-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7149, '2024-06-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7150, '2024-06-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7151, '2024-07-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7152, '2024-07-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7153, '2024-07-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7154, '2024-07-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7155, '2024-07-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7156, '2024-07-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7157, '2024-07-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7158, '2024-07-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7159, '2024-07-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7160, '2024-07-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7161, '2024-07-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7162, '2024-07-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7163, '2024-07-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7164, '2024-07-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7165, '2024-07-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7166, '2024-07-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7167, '2024-07-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7168, '2024-07-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7169, '2024-07-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7170, '2024-07-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7171, '2024-07-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7172, '2024-07-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7173, '2024-07-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7174, '2024-07-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7175, '2024-07-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7176, '2024-07-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7177, '2024-07-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7178, '2024-07-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7179, '2024-07-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7180, '2024-07-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7181, '2024-07-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7182, '2024-08-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7183, '2024-08-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7184, '2024-08-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7185, '2024-08-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7186, '2024-08-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7187, '2024-08-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7188, '2024-08-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7189, '2024-08-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7190, '2024-08-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7191, '2024-08-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7192, '2024-08-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7193, '2024-08-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7194, '2024-08-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7195, '2024-08-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7196, '2024-08-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7197, '2024-08-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7198, '2024-08-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7199, '2024-08-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7200, '2024-08-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7201, '2024-08-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7202, '2024-08-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7203, '2024-08-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7204, '2024-08-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7205, '2024-08-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7206, '2024-08-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7207, '2024-08-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7208, '2024-08-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7209, '2024-08-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7210, '2024-08-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7211, '2024-08-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7212, '2024-08-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7213, '2024-09-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7214, '2024-09-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7215, '2024-09-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7216, '2024-09-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7217, '2024-09-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7218, '2024-09-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7219, '2024-09-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7220, '2024-09-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7221, '2024-09-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7222, '2024-09-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7223, '2024-09-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7224, '2024-09-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7225, '2024-09-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7226, '2024-09-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7227, '2024-09-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7228, '2024-09-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7229, '2024-09-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7230, '2024-09-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7231, '2024-09-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7232, '2024-09-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7233, '2024-09-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7234, '2024-09-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7235, '2024-09-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7236, '2024-09-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7237, '2024-09-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7238, '2024-09-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7239, '2024-09-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7240, '2024-09-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7241, '2024-09-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7242, '2024-09-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7243, '2024-10-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7244, '2024-10-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7245, '2024-10-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7246, '2024-10-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7247, '2024-10-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7248, '2024-10-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7249, '2024-10-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7250, '2024-10-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7251, '2024-10-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7252, '2024-10-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7253, '2024-10-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7254, '2024-10-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7255, '2024-10-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7256, '2024-10-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7257, '2024-10-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7258, '2024-10-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7259, '2024-10-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7260, '2024-10-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7261, '2024-10-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7262, '2024-10-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7263, '2024-10-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7264, '2024-10-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7265, '2024-10-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7266, '2024-10-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7267, '2024-10-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7268, '2024-10-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7269, '2024-10-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7270, '2024-10-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7271, '2024-10-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7272, '2024-10-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7273, '2024-10-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7274, '2024-11-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7275, '2024-11-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7276, '2024-11-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7277, '2024-11-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7278, '2024-11-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7279, '2024-11-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7280, '2024-11-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7281, '2024-11-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7282, '2024-11-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7283, '2024-11-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7284, '2024-11-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7285, '2024-11-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7286, '2024-11-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7287, '2024-11-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7288, '2024-11-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7289, '2024-11-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7290, '2024-11-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7291, '2024-11-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7292, '2024-11-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7293, '2024-11-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7294, '2024-11-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7295, '2024-11-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7296, '2024-11-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7297, '2024-11-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7298, '2024-11-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7299, '2024-11-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7300, '2024-11-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7301, '2024-11-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7302, '2024-11-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7303, '2024-11-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7304, '2024-12-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7305, '2024-12-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7306, '2024-12-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7307, '2024-12-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7308, '2024-12-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7309, '2024-12-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7310, '2024-12-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7311, '2024-12-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7312, '2024-12-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7313, '2024-12-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7314, '2024-12-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7315, '2024-12-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7316, '2024-12-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7317, '2024-12-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7318, '2024-12-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7319, '2024-12-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7320, '2024-12-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7321, '2024-12-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7322, '2024-12-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7323, '2024-12-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7324, '2024-12-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7325, '2024-12-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7326, '2024-12-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7327, '2024-12-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7328, '2024-12-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7329, '2024-12-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7330, '2024-12-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7331, '2024-12-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7332, '2024-12-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7333, '2024-12-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7334, '2024-12-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7335, '2025-01-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7336, '2025-01-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7337, '2025-01-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7338, '2025-01-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7339, '2025-01-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7340, '2025-01-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7341, '2025-01-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7342, '2025-01-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7343, '2025-01-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7344, '2025-01-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7345, '2025-01-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7346, '2025-01-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7347, '2025-01-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7348, '2025-01-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7349, '2025-01-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7350, '2025-01-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7351, '2025-01-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7352, '2025-01-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7353, '2025-01-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7354, '2025-01-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7355, '2025-01-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7356, '2025-01-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7357, '2025-01-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7358, '2025-01-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7359, '2025-01-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7360, '2025-01-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7361, '2025-01-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7362, '2025-01-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7363, '2025-01-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7364, '2025-01-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7365, '2025-01-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7366, '2025-02-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7367, '2025-02-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7368, '2025-02-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7369, '2025-02-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7370, '2025-02-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7371, '2025-02-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7372, '2025-02-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7373, '2025-02-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7374, '2025-02-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7375, '2025-02-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7376, '2025-02-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7377, '2025-02-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7378, '2025-02-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7379, '2025-02-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7380, '2025-02-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7381, '2025-02-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7382, '2025-02-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7383, '2025-02-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7384, '2025-02-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7385, '2025-02-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7386, '2025-02-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7387, '2025-02-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7388, '2025-02-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7389, '2025-02-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7390, '2025-02-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7391, '2025-02-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7392, '2025-02-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7393, '2025-02-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7394, '2025-03-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7395, '2025-03-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7396, '2025-03-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7397, '2025-03-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7398, '2025-03-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7399, '2025-03-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7400, '2025-03-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7401, '2025-03-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7402, '2025-03-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7403, '2025-03-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7404, '2025-03-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7405, '2025-03-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7406, '2025-03-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7407, '2025-03-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7408, '2025-03-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7409, '2025-03-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7410, '2025-03-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7411, '2025-03-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7412, '2025-03-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7413, '2025-03-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7414, '2025-03-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7415, '2025-03-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7416, '2025-03-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7417, '2025-03-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7418, '2025-03-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7419, '2025-03-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7420, '2025-03-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7421, '2025-03-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7422, '2025-03-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7423, '2025-03-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7424, '2025-03-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7425, '2025-04-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7426, '2025-04-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7427, '2025-04-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7428, '2025-04-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7429, '2025-04-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7430, '2025-04-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7431, '2025-04-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7432, '2025-04-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7433, '2025-04-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7434, '2025-04-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7435, '2025-04-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7436, '2025-04-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7437, '2025-04-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7438, '2025-04-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7439, '2025-04-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7440, '2025-04-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7441, '2025-04-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7442, '2025-04-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7443, '2025-04-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7444, '2025-04-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7445, '2025-04-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7446, '2025-04-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7447, '2025-04-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7448, '2025-04-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7449, '2025-04-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7450, '2025-04-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7451, '2025-04-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7452, '2025-04-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7453, '2025-04-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7454, '2025-04-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7455, '2025-05-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7456, '2025-05-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7457, '2025-05-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7458, '2025-05-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7459, '2025-05-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7460, '2025-05-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7461, '2025-05-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7462, '2025-05-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7463, '2025-05-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7464, '2025-05-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7465, '2025-05-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7466, '2025-05-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7467, '2025-05-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7468, '2025-05-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7469, '2025-05-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7470, '2025-05-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7471, '2025-05-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7472, '2025-05-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7473, '2025-05-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7474, '2025-05-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7475, '2025-05-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7476, '2025-05-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7477, '2025-05-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7478, '2025-05-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7479, '2025-05-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7480, '2025-05-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7481, '2025-05-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7482, '2025-05-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7483, '2025-05-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7484, '2025-05-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7485, '2025-05-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7486, '2025-06-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7487, '2025-06-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7488, '2025-06-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7489, '2025-06-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7490, '2025-06-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7491, '2025-06-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7492, '2025-06-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7493, '2025-06-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7494, '2025-06-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7495, '2025-06-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7496, '2025-06-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7497, '2025-06-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7498, '2025-06-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7499, '2025-06-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7500, '2025-06-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7501, '2025-06-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7502, '2025-06-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7503, '2025-06-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7504, '2025-06-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7505, '2025-06-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7506, '2025-06-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7507, '2025-06-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7508, '2025-06-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7509, '2025-06-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7510, '2025-06-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7511, '2025-06-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7512, '2025-06-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7513, '2025-06-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7514, '2025-06-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7515, '2025-06-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7516, '2025-07-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7517, '2025-07-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7518, '2025-07-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7519, '2025-07-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7520, '2025-07-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7521, '2025-07-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7522, '2025-07-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7523, '2025-07-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7524, '2025-07-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7525, '2025-07-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7526, '2025-07-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7527, '2025-07-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7528, '2025-07-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7529, '2025-07-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7530, '2025-07-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7531, '2025-07-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7532, '2025-07-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7533, '2025-07-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7534, '2025-07-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7535, '2025-07-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7536, '2025-07-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7537, '2025-07-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7538, '2025-07-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7539, '2025-07-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7540, '2025-07-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7541, '2025-07-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7542, '2025-07-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7543, '2025-07-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7544, '2025-07-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7545, '2025-07-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7546, '2025-07-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7547, '2025-08-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7548, '2025-08-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7549, '2025-08-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7550, '2025-08-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7551, '2025-08-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7552, '2025-08-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7553, '2025-08-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7554, '2025-08-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7555, '2025-08-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7556, '2025-08-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7557, '2025-08-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7558, '2025-08-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7559, '2025-08-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7560, '2025-08-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7561, '2025-08-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7562, '2025-08-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7563, '2025-08-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7564, '2025-08-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7565, '2025-08-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7566, '2025-08-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7567, '2025-08-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7568, '2025-08-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7569, '2025-08-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7570, '2025-08-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7571, '2025-08-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7572, '2025-08-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7573, '2025-08-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7574, '2025-08-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7575, '2025-08-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7576, '2025-08-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7577, '2025-08-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7578, '2025-09-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7579, '2025-09-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7580, '2025-09-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7581, '2025-09-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7582, '2025-09-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7583, '2025-09-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7584, '2025-09-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7585, '2025-09-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7586, '2025-09-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7587, '2025-09-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7588, '2025-09-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7589, '2025-09-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7590, '2025-09-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7591, '2025-09-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7592, '2025-09-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7593, '2025-09-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7594, '2025-09-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7595, '2025-09-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7596, '2025-09-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7597, '2025-09-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7598, '2025-09-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7599, '2025-09-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7600, '2025-09-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7601, '2025-09-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7602, '2025-09-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7603, '2025-09-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7604, '2025-09-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7605, '2025-09-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7606, '2025-09-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7607, '2025-09-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7608, '2025-10-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7609, '2025-10-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7610, '2025-10-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7611, '2025-10-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7612, '2025-10-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7613, '2025-10-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7614, '2025-10-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7615, '2025-10-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7616, '2025-10-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7617, '2025-10-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7618, '2025-10-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7619, '2025-10-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7620, '2025-10-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7621, '2025-10-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7622, '2025-10-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7623, '2025-10-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7624, '2025-10-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7625, '2025-10-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7626, '2025-10-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7627, '2025-10-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7628, '2025-10-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7629, '2025-10-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7630, '2025-10-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7631, '2025-10-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7632, '2025-10-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7633, '2025-10-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7634, '2025-10-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7635, '2025-10-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7636, '2025-10-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7637, '2025-10-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7638, '2025-10-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7639, '2025-11-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7640, '2025-11-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7641, '2025-11-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7642, '2025-11-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7643, '2025-11-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7644, '2025-11-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7645, '2025-11-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7646, '2025-11-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7647, '2025-11-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7648, '2025-11-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7649, '2025-11-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7650, '2025-11-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7651, '2025-11-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7652, '2025-11-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7653, '2025-11-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7654, '2025-11-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7655, '2025-11-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7656, '2025-11-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7657, '2025-11-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7658, '2025-11-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7659, '2025-11-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7660, '2025-11-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7661, '2025-11-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7662, '2025-11-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7663, '2025-11-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7664, '2025-11-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7665, '2025-11-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7666, '2025-11-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7667, '2025-11-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7668, '2025-11-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7669, '2025-12-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7670, '2025-12-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7671, '2025-12-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7672, '2025-12-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7673, '2025-12-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7674, '2025-12-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7675, '2025-12-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7676, '2025-12-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7677, '2025-12-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7678, '2025-12-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7679, '2025-12-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7680, '2025-12-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7681, '2025-12-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7682, '2025-12-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7683, '2025-12-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7684, '2025-12-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7685, '2025-12-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7686, '2025-12-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7687, '2025-12-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7688, '2025-12-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7689, '2025-12-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7690, '2025-12-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7691, '2025-12-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7692, '2025-12-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7693, '2025-12-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7694, '2025-12-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7695, '2025-12-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7696, '2025-12-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7697, '2025-12-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7698, '2025-12-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7699, '2025-12-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7700, '2021-01-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7701, '2021-01-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7702, '2021-01-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7703, '2021-01-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7704, '2021-01-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7705, '2021-01-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7706, '2021-01-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7707, '2021-01-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7708, '2021-01-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7709, '2021-01-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7710, '2021-01-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7711, '2021-01-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7712, '2021-01-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7713, '2021-01-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7714, '2021-01-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7715, '2021-01-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7716, '2021-01-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7717, '2021-01-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7718, '2021-01-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7719, '2021-01-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7720, '2021-01-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7721, '2021-01-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7722, '2021-01-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7723, '2021-01-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7724, '2021-01-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7725, '2021-01-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7726, '2021-01-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7727, '2021-01-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7728, '2021-01-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7729, '2021-01-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7730, '2021-01-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7731, '2021-02-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7732, '2021-02-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7733, '2021-02-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7734, '2021-02-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7735, '2021-02-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7736, '2021-02-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7737, '2021-02-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7738, '2021-02-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7739, '2021-02-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7740, '2021-02-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7741, '2021-02-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7742, '2021-02-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7743, '2021-02-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7744, '2021-02-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7745, '2021-02-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7746, '2021-02-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7747, '2021-02-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7748, '2021-02-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7749, '2021-02-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7750, '2021-02-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7751, '2021-02-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7752, '2021-02-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7753, '2021-02-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7754, '2021-02-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7755, '2021-02-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7756, '2021-02-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7757, '2021-02-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7758, '2021-02-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7759, '2021-03-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7760, '2021-03-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7761, '2021-03-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7762, '2021-03-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7763, '2021-03-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7764, '2021-03-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7765, '2021-03-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7766, '2021-03-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7767, '2021-03-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7768, '2021-03-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7769, '2021-03-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7770, '2021-03-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7771, '2021-03-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7772, '2021-03-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7773, '2021-03-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7774, '2021-03-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7775, '2021-03-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7776, '2021-03-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7777, '2021-03-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7778, '2021-03-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7779, '2021-03-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7780, '2021-03-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7781, '2021-03-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7782, '2021-03-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7783, '2021-03-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7784, '2021-03-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7785, '2021-03-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7786, '2021-03-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7787, '2021-03-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7788, '2021-03-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7789, '2021-03-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7790, '2021-04-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7791, '2021-04-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7792, '2021-04-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7793, '2021-04-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7794, '2021-04-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7795, '2021-04-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7796, '2021-04-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7797, '2021-04-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7798, '2021-04-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7799, '2021-04-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7800, '2021-04-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7801, '2021-04-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7802, '2021-04-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7803, '2021-04-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7804, '2021-04-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7805, '2021-04-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7806, '2021-04-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7807, '2021-04-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7808, '2021-04-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7809, '2021-04-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7810, '2021-04-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7811, '2021-04-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7812, '2021-04-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7813, '2021-04-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7814, '2021-04-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7815, '2021-04-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7816, '2021-04-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7817, '2021-04-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7818, '2021-04-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7819, '2021-04-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7820, '2021-05-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7821, '2021-05-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7822, '2021-05-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7823, '2021-05-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7824, '2021-05-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7825, '2021-05-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7826, '2021-05-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7827, '2021-05-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7828, '2021-05-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7829, '2021-05-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7830, '2021-05-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7831, '2021-05-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7832, '2021-05-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7833, '2021-05-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7834, '2021-05-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7835, '2021-05-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7836, '2021-05-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7837, '2021-05-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7838, '2021-05-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7839, '2021-05-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7840, '2021-05-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7841, '2021-05-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7842, '2021-05-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7843, '2021-05-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7844, '2021-05-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7845, '2021-05-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7846, '2021-05-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7847, '2021-05-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7848, '2021-05-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7849, '2021-05-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7850, '2021-05-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7851, '2021-06-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7852, '2021-06-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7853, '2021-06-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7854, '2021-06-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7855, '2021-06-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7856, '2021-06-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7857, '2021-06-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7858, '2021-06-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7859, '2021-06-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7860, '2021-06-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7861, '2021-06-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7862, '2021-06-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7863, '2021-06-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7864, '2021-06-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7865, '2021-06-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7866, '2021-06-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7867, '2021-06-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7868, '2021-06-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7869, '2021-06-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7870, '2021-06-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7871, '2021-06-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7872, '2021-06-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7873, '2021-06-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7874, '2021-06-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7875, '2021-06-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7876, '2021-06-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7877, '2021-06-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7878, '2021-06-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7879, '2021-06-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7880, '2021-06-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7881, '2021-07-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7882, '2021-07-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7883, '2021-07-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7884, '2021-07-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7885, '2021-07-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7886, '2021-07-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7887, '2021-07-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7888, '2021-07-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7889, '2021-07-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7890, '2021-07-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7891, '2021-07-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7892, '2021-07-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7893, '2021-07-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7894, '2021-07-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7895, '2021-07-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7896, '2021-07-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7897, '2021-07-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7898, '2021-07-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7899, '2021-07-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7900, '2021-07-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7901, '2021-07-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7902, '2021-07-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7903, '2021-07-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7904, '2021-07-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7905, '2021-07-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7906, '2021-07-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7907, '2021-07-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7908, '2021-07-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7909, '2021-07-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7910, '2021-07-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7911, '2021-07-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7912, '2021-08-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7913, '2021-08-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7914, '2021-08-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7915, '2021-08-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7916, '2021-08-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7917, '2021-08-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7918, '2021-08-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7919, '2021-08-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7920, '2021-08-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7921, '2021-08-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7922, '2021-08-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7923, '2021-08-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7924, '2021-08-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7925, '2021-08-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7926, '2021-08-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7927, '2021-08-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7928, '2021-08-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7929, '2021-08-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7930, '2021-08-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7931, '2021-08-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7932, '2021-08-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7933, '2021-08-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7934, '2021-08-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7935, '2021-08-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7936, '2021-08-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7937, '2021-08-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7938, '2021-08-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7939, '2021-08-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7940, '2021-08-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7941, '2021-08-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7942, '2021-08-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7943, '2021-09-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7944, '2021-09-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7945, '2021-09-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7946, '2021-09-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7947, '2021-09-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7948, '2021-09-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7949, '2021-09-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7950, '2021-09-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7951, '2021-09-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7952, '2021-09-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7953, '2021-09-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7954, '2021-09-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7955, '2021-09-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7956, '2021-09-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7957, '2021-09-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7958, '2021-09-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7959, '2021-09-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7960, '2021-09-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7961, '2021-09-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7962, '2021-09-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7963, '2021-09-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7964, '2021-09-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7965, '2021-09-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7966, '2021-09-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7967, '2021-09-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7968, '2021-09-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7969, '2021-09-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7970, '2021-09-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7971, '2021-09-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7972, '2021-09-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7973, '2021-10-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7974, '2021-10-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7975, '2021-10-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7976, '2021-10-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7977, '2021-10-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7978, '2021-10-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7979, '2021-10-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7980, '2021-10-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7981, '2021-10-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7982, '2021-10-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7983, '2021-10-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7984, '2021-10-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7985, '2021-10-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7986, '2021-10-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7987, '2021-10-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7988, '2021-10-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7989, '2021-10-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7990, '2021-10-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7991, '2021-10-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7992, '2021-10-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (7993, '2021-10-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (7994, '2021-10-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (7995, '2021-10-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (7996, '2021-10-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (7997, '2021-10-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (7998, '2021-10-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (7999, '2021-10-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8000, '2021-10-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8001, '2021-10-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8002, '2021-10-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8003, '2021-10-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8004, '2021-11-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8005, '2021-11-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8006, '2021-11-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8007, '2021-11-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8008, '2021-11-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8009, '2021-11-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8010, '2021-11-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8011, '2021-11-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8012, '2021-11-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8013, '2021-11-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8014, '2021-11-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8015, '2021-11-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8016, '2021-11-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8017, '2021-11-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8018, '2021-11-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8019, '2021-11-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8020, '2021-11-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8021, '2021-11-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8022, '2021-11-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8023, '2021-11-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8024, '2021-11-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8025, '2021-11-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8026, '2021-11-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8027, '2021-11-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8028, '2021-11-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8029, '2021-11-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8030, '2021-11-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8031, '2021-11-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8032, '2021-11-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8033, '2021-11-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8034, '2021-12-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8035, '2021-12-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8036, '2021-12-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8037, '2021-12-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8038, '2021-12-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8039, '2021-12-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8040, '2021-12-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8041, '2021-12-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8042, '2021-12-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8043, '2021-12-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8044, '2021-12-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8045, '2021-12-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8046, '2021-12-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8047, '2021-12-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8048, '2021-12-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8049, '2021-12-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8050, '2021-12-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8051, '2021-12-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8052, '2021-12-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8053, '2021-12-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8054, '2021-12-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8055, '2021-12-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8056, '2021-12-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8057, '2021-12-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8058, '2021-12-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8059, '2021-12-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8060, '2021-12-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8061, '2021-12-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8062, '2021-12-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8063, '2021-12-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8064, '2021-12-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8065, '2022-01-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8066, '2022-01-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8067, '2022-01-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8068, '2022-01-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8069, '2022-01-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8070, '2022-01-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8071, '2022-01-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8072, '2022-01-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8073, '2022-01-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8074, '2022-01-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8075, '2022-01-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8076, '2022-01-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8077, '2022-01-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8078, '2022-01-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8079, '2022-01-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8080, '2022-01-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8081, '2022-01-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8082, '2022-01-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8083, '2022-01-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8084, '2022-01-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8085, '2022-01-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8086, '2022-01-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8087, '2022-01-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8088, '2022-01-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8089, '2022-01-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8090, '2022-01-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8091, '2022-01-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8092, '2022-01-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8093, '2022-01-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8094, '2022-01-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8095, '2022-01-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8096, '2022-02-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8097, '2022-02-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8098, '2022-02-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8099, '2022-02-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8100, '2022-02-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8101, '2022-02-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8102, '2022-02-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8103, '2022-02-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8104, '2022-02-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8105, '2022-02-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8106, '2022-02-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8107, '2022-02-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8108, '2022-02-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8109, '2022-02-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8110, '2022-02-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8111, '2022-02-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8112, '2022-02-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8113, '2022-02-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8114, '2022-02-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8115, '2022-02-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8116, '2022-02-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8117, '2022-02-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8118, '2022-02-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8119, '2022-02-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8120, '2022-02-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8121, '2022-02-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8122, '2022-02-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8123, '2022-02-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8124, '2022-03-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8125, '2022-03-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8126, '2022-03-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8127, '2022-03-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8128, '2022-03-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8129, '2022-03-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8130, '2022-03-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8131, '2022-03-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8132, '2022-03-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8133, '2022-03-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8134, '2022-03-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8135, '2022-03-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8136, '2022-03-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8137, '2022-03-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8138, '2022-03-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8139, '2022-03-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8140, '2022-03-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8141, '2022-03-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8142, '2022-03-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8143, '2022-03-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8144, '2022-03-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8145, '2022-03-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8146, '2022-03-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8147, '2022-03-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8148, '2022-03-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8149, '2022-03-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8150, '2022-03-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8151, '2022-03-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8152, '2022-03-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8153, '2022-03-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8154, '2022-03-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8155, '2022-04-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8156, '2022-04-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8157, '2022-04-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8158, '2022-04-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8159, '2022-04-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8160, '2022-04-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8161, '2022-04-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8162, '2022-04-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8163, '2022-04-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8164, '2022-04-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8165, '2022-04-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8166, '2022-04-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8167, '2022-04-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8168, '2022-04-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8169, '2022-04-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8170, '2022-04-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8171, '2022-04-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8172, '2022-04-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8173, '2022-04-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8174, '2022-04-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8175, '2022-04-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8176, '2022-04-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8177, '2022-04-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8178, '2022-04-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8179, '2022-04-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8180, '2022-04-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8181, '2022-04-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8182, '2022-04-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8183, '2022-04-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8184, '2022-04-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8185, '2022-05-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8186, '2022-05-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8187, '2022-05-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8188, '2022-05-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8189, '2022-05-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8190, '2022-05-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8191, '2022-05-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8192, '2022-05-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8193, '2022-05-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8194, '2022-05-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8195, '2022-05-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8196, '2022-05-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8197, '2022-05-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8198, '2022-05-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8199, '2022-05-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8200, '2022-05-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8201, '2022-05-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8202, '2022-05-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8203, '2022-05-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8204, '2022-05-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8205, '2022-05-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8206, '2022-05-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8207, '2022-05-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8208, '2022-05-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8209, '2022-05-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8210, '2022-05-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8211, '2022-05-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8212, '2022-05-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8213, '2022-05-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8214, '2022-05-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8215, '2022-05-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8216, '2022-06-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8217, '2022-06-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8218, '2022-06-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8219, '2022-06-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8220, '2022-06-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8221, '2022-06-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8222, '2022-06-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8223, '2022-06-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8224, '2022-06-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8225, '2022-06-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8226, '2022-06-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8227, '2022-06-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8228, '2022-06-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8229, '2022-06-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8230, '2022-06-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8231, '2022-06-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8232, '2022-06-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8233, '2022-06-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8234, '2022-06-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8235, '2022-06-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8236, '2022-06-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8237, '2022-06-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8238, '2022-06-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8239, '2022-06-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8240, '2022-06-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8241, '2022-06-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8242, '2022-06-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8243, '2022-06-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8244, '2022-06-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8245, '2022-06-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8246, '2022-07-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8247, '2022-07-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8248, '2022-07-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8249, '2022-07-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8250, '2022-07-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8251, '2022-07-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8252, '2022-07-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8253, '2022-07-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8254, '2022-07-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8255, '2022-07-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8256, '2022-07-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8257, '2022-07-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8258, '2022-07-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8259, '2022-07-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8260, '2022-07-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8261, '2022-07-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8262, '2022-07-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8263, '2022-07-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8264, '2022-07-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8265, '2022-07-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8266, '2022-07-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8267, '2022-07-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8268, '2022-07-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8269, '2022-07-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8270, '2022-07-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8271, '2022-07-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8272, '2022-07-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8273, '2022-07-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8274, '2022-07-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8275, '2022-07-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8276, '2022-07-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8277, '2022-08-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8278, '2022-08-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8279, '2022-08-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8280, '2022-08-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8281, '2022-08-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8282, '2022-08-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8283, '2022-08-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8284, '2022-08-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8285, '2022-08-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8286, '2022-08-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8287, '2022-08-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8288, '2022-08-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8289, '2022-08-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8290, '2022-08-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8291, '2022-08-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8292, '2022-08-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8293, '2022-08-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8294, '2022-08-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8295, '2022-08-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8296, '2022-08-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8297, '2022-08-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8298, '2022-08-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8299, '2022-08-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8300, '2022-08-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8301, '2022-08-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8302, '2022-08-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8303, '2022-08-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8304, '2022-08-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8305, '2022-08-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8306, '2022-08-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8307, '2022-08-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8308, '2022-09-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8309, '2022-09-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8310, '2022-09-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8311, '2022-09-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8312, '2022-09-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8313, '2022-09-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8314, '2022-09-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8315, '2022-09-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8316, '2022-09-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8317, '2022-09-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8318, '2022-09-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8319, '2022-09-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8320, '2022-09-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8321, '2022-09-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8322, '2022-09-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8323, '2022-09-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8324, '2022-09-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8325, '2022-09-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8326, '2022-09-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8327, '2022-09-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8328, '2022-09-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8329, '2022-09-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8330, '2022-09-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8331, '2022-09-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8332, '2022-09-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8333, '2022-09-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8334, '2022-09-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8335, '2022-09-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8336, '2022-09-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8337, '2022-09-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8338, '2022-10-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8339, '2022-10-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8340, '2022-10-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8341, '2022-10-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8342, '2022-10-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8343, '2022-10-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8344, '2022-10-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8345, '2022-10-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8346, '2022-10-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8347, '2022-10-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8348, '2022-10-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8349, '2022-10-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8350, '2022-10-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8351, '2022-10-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8352, '2022-10-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8353, '2022-10-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8354, '2022-10-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8355, '2022-10-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8356, '2022-10-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8357, '2022-10-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8358, '2022-10-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8359, '2022-10-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8360, '2022-10-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8361, '2022-10-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8362, '2022-10-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8363, '2022-10-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8364, '2022-10-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8365, '2022-10-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8366, '2022-10-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8367, '2022-10-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8368, '2022-10-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8369, '2022-11-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8370, '2022-11-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8371, '2022-11-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8372, '2022-11-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8373, '2022-11-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8374, '2022-11-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8375, '2022-11-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8376, '2022-11-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8377, '2022-11-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8378, '2022-11-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8379, '2022-11-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8380, '2022-11-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8381, '2022-11-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8382, '2022-11-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8383, '2022-11-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8384, '2022-11-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8385, '2022-11-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8386, '2022-11-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8387, '2022-11-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8388, '2022-11-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8389, '2022-11-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8390, '2022-11-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8391, '2022-11-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8392, '2022-11-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8393, '2022-11-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8394, '2022-11-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8395, '2022-11-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8396, '2022-11-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8397, '2022-11-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8398, '2022-11-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8399, '2022-12-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8400, '2022-12-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8401, '2022-12-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8402, '2022-12-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8403, '2022-12-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8404, '2022-12-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8405, '2022-12-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8406, '2022-12-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8407, '2022-12-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8408, '2022-12-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8409, '2022-12-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8410, '2022-12-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8411, '2022-12-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8412, '2022-12-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8413, '2022-12-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8414, '2022-12-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8415, '2022-12-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8416, '2022-12-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8417, '2022-12-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8418, '2022-12-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8419, '2022-12-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8420, '2022-12-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8421, '2022-12-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8422, '2022-12-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8423, '2022-12-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8424, '2022-12-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8425, '2022-12-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8426, '2022-12-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8427, '2022-12-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8428, '2022-12-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8429, '2022-12-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8430, '2023-01-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8431, '2023-01-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8432, '2023-01-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8433, '2023-01-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8434, '2023-01-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8435, '2023-01-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8436, '2023-01-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8437, '2023-01-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8438, '2023-01-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8439, '2023-01-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8440, '2023-01-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8441, '2023-01-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8442, '2023-01-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8443, '2023-01-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8444, '2023-01-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8445, '2023-01-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8446, '2023-01-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8447, '2023-01-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8448, '2023-01-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8449, '2023-01-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8450, '2023-01-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8451, '2023-01-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8452, '2023-01-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8453, '2023-01-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8454, '2023-01-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8455, '2023-01-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8456, '2023-01-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8457, '2023-01-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8458, '2023-01-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8459, '2023-01-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8460, '2023-01-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8461, '2023-02-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8462, '2023-02-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8463, '2023-02-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8464, '2023-02-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8465, '2023-02-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8466, '2023-02-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8467, '2023-02-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8468, '2023-02-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8469, '2023-02-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8470, '2023-02-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8471, '2023-02-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8472, '2023-02-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8473, '2023-02-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8474, '2023-02-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8475, '2023-02-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8476, '2023-02-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8477, '2023-02-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8478, '2023-02-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8479, '2023-02-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8480, '2023-02-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8481, '2023-02-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8482, '2023-02-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8483, '2023-02-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8484, '2023-02-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8485, '2023-02-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8486, '2023-02-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8487, '2023-02-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8488, '2023-02-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8489, '2023-03-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8490, '2023-03-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8491, '2023-03-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8492, '2023-03-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8493, '2023-03-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8494, '2023-03-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8495, '2023-03-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8496, '2023-03-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8497, '2023-03-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8498, '2023-03-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8499, '2023-03-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8500, '2023-03-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8501, '2023-03-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8502, '2023-03-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8503, '2023-03-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8504, '2023-03-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8505, '2023-03-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8506, '2023-03-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8507, '2023-03-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8508, '2023-03-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8509, '2023-03-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8510, '2023-03-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8511, '2023-03-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8512, '2023-03-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8513, '2023-03-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8514, '2023-03-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8515, '2023-03-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8516, '2023-03-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8517, '2023-03-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8518, '2023-03-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8519, '2023-03-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8520, '2023-04-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8521, '2023-04-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8522, '2023-04-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8523, '2023-04-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8524, '2023-04-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8525, '2023-04-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8526, '2023-04-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8527, '2023-04-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8528, '2023-04-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8529, '2023-04-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8530, '2023-04-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8531, '2023-04-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8532, '2023-04-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8533, '2023-04-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8534, '2023-04-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8535, '2023-04-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8536, '2023-04-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8537, '2023-04-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8538, '2023-04-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8539, '2023-04-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8540, '2023-04-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8541, '2023-04-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8542, '2023-04-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8543, '2023-04-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8544, '2023-04-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8545, '2023-04-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8546, '2023-04-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8547, '2023-04-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8548, '2023-04-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8549, '2023-04-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8550, '2023-05-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8551, '2023-05-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8552, '2023-05-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8553, '2023-05-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8554, '2023-05-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8555, '2023-05-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8556, '2023-05-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8557, '2023-05-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8558, '2023-05-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8559, '2023-05-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8560, '2023-05-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8561, '2023-05-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8562, '2023-05-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8563, '2023-05-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8564, '2023-05-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8565, '2023-05-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8566, '2023-05-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8567, '2023-05-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8568, '2023-05-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8569, '2023-05-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8570, '2023-05-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8571, '2023-05-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8572, '2023-05-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8573, '2023-05-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8574, '2023-05-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8575, '2023-05-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8576, '2023-05-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8577, '2023-05-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8578, '2023-05-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8579, '2023-05-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8580, '2023-05-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8581, '2023-06-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8582, '2023-06-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8583, '2023-06-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8584, '2023-06-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8585, '2023-06-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8586, '2023-06-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8587, '2023-06-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8588, '2023-06-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8589, '2023-06-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8590, '2023-06-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8591, '2023-06-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8592, '2023-06-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8593, '2023-06-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8594, '2023-06-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8595, '2023-06-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8596, '2023-06-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8597, '2023-06-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8598, '2023-06-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8599, '2023-06-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8600, '2023-06-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8601, '2023-06-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8602, '2023-06-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8603, '2023-06-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8604, '2023-06-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8605, '2023-06-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8606, '2023-06-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8607, '2023-06-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8608, '2023-06-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8609, '2023-06-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8610, '2023-06-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8611, '2023-07-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8612, '2023-07-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8613, '2023-07-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8614, '2023-07-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8615, '2023-07-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8616, '2023-07-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8617, '2023-07-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8618, '2023-07-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8619, '2023-07-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8620, '2023-07-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8621, '2023-07-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8622, '2023-07-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8623, '2023-07-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8624, '2023-07-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8625, '2023-07-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8626, '2023-07-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8627, '2023-07-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8628, '2023-07-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8629, '2023-07-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8630, '2023-07-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8631, '2023-07-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8632, '2023-07-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8633, '2023-07-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8634, '2023-07-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8635, '2023-07-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8636, '2023-07-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8637, '2023-07-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8638, '2023-07-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8639, '2023-07-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8640, '2023-07-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8641, '2023-07-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8642, '2023-08-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8643, '2023-08-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8644, '2023-08-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8645, '2023-08-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8646, '2023-08-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8647, '2023-08-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8648, '2023-08-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8649, '2023-08-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8650, '2023-08-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8651, '2023-08-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8652, '2023-08-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8653, '2023-08-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8654, '2023-08-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8655, '2023-08-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8656, '2023-08-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8657, '2023-08-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8658, '2023-08-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8659, '2023-08-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8660, '2023-08-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8661, '2023-08-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8662, '2023-08-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8663, '2023-08-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8664, '2023-08-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8665, '2023-08-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8666, '2023-08-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8667, '2023-08-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8668, '2023-08-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8669, '2023-08-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8670, '2023-08-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8671, '2023-08-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8672, '2023-08-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8673, '2023-09-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8674, '2023-09-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8675, '2023-09-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8676, '2023-09-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8677, '2023-09-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8678, '2023-09-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8679, '2023-09-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8680, '2023-09-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8681, '2023-09-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8682, '2023-09-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8683, '2023-09-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8684, '2023-09-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8685, '2023-09-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8686, '2023-09-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8687, '2023-09-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8688, '2023-09-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8689, '2023-09-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8690, '2023-09-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8691, '2023-09-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8692, '2023-09-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8693, '2023-09-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8694, '2023-09-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8695, '2023-09-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8696, '2023-09-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8697, '2023-09-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8698, '2023-09-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8699, '2023-09-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8700, '2023-09-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8701, '2023-09-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8702, '2023-09-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8703, '2023-10-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8704, '2023-10-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8705, '2023-10-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8706, '2023-10-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8707, '2023-10-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8708, '2023-10-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8709, '2023-10-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8710, '2023-10-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8711, '2023-10-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8712, '2023-10-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8713, '2023-10-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8714, '2023-10-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8715, '2023-10-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8716, '2023-10-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8717, '2023-10-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8718, '2023-10-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8719, '2023-10-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8720, '2023-10-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8721, '2023-10-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8722, '2023-10-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8723, '2023-10-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8724, '2023-10-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8725, '2023-10-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8726, '2023-10-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8727, '2023-10-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8728, '2023-10-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8729, '2023-10-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8730, '2023-10-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8731, '2023-10-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8732, '2023-10-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8733, '2023-10-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8734, '2023-11-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8735, '2023-11-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8736, '2023-11-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8737, '2023-11-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8738, '2023-11-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8739, '2023-11-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8740, '2023-11-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8741, '2023-11-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8742, '2023-11-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8743, '2023-11-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8744, '2023-11-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8745, '2023-11-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8746, '2023-11-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8747, '2023-11-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8748, '2023-11-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8749, '2023-11-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8750, '2023-11-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8751, '2023-11-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8752, '2023-11-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8753, '2023-11-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8754, '2023-11-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8755, '2023-11-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8756, '2023-11-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8757, '2023-11-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8758, '2023-11-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8759, '2023-11-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8760, '2023-11-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8761, '2023-11-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8762, '2023-11-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8763, '2023-11-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8764, '2023-12-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8765, '2023-12-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8766, '2023-12-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8767, '2023-12-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8768, '2023-12-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8769, '2023-12-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8770, '2023-12-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8771, '2023-12-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8772, '2023-12-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8773, '2023-12-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8774, '2023-12-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8775, '2023-12-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8776, '2023-12-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8777, '2023-12-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8778, '2023-12-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8779, '2023-12-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8780, '2023-12-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8781, '2023-12-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8782, '2023-12-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8783, '2023-12-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8784, '2023-12-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8785, '2023-12-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8786, '2023-12-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8787, '2023-12-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8788, '2023-12-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8789, '2023-12-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8790, '2023-12-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8791, '2023-12-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8792, '2023-12-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8793, '2023-12-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8794, '2023-12-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8795, '2024-01-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8796, '2024-01-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8797, '2024-01-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8798, '2024-01-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8799, '2024-01-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8800, '2024-01-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8801, '2024-01-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8802, '2024-01-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8803, '2024-01-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8804, '2024-01-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8805, '2024-01-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8806, '2024-01-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8807, '2024-01-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8808, '2024-01-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8809, '2024-01-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8810, '2024-01-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8811, '2024-01-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8812, '2024-01-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8813, '2024-01-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8814, '2024-01-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8815, '2024-01-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8816, '2024-01-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8817, '2024-01-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8818, '2024-01-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8819, '2024-01-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8820, '2024-01-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8821, '2024-01-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8822, '2024-01-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8823, '2024-01-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8824, '2024-01-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8825, '2024-01-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8826, '2024-02-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8827, '2024-02-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8828, '2024-02-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8829, '2024-02-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8830, '2024-02-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8831, '2024-02-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8832, '2024-02-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8833, '2024-02-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8834, '2024-02-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8835, '2024-02-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8836, '2024-02-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8837, '2024-02-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8838, '2024-02-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8839, '2024-02-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8840, '2024-02-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8841, '2024-02-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8842, '2024-02-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8843, '2024-02-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8844, '2024-02-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8845, '2024-02-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8846, '2024-02-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8847, '2024-02-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8848, '2024-02-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8849, '2024-02-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8850, '2024-02-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8851, '2024-02-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8852, '2024-02-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8853, '2024-02-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8854, '2024-03-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8855, '2024-03-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8856, '2024-03-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8857, '2024-03-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8858, '2024-03-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8859, '2024-03-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8860, '2024-03-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8861, '2024-03-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8862, '2024-03-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8863, '2024-03-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8864, '2024-03-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8865, '2024-03-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8866, '2024-03-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8867, '2024-03-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8868, '2024-03-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8869, '2024-03-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8870, '2024-03-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8871, '2024-03-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8872, '2024-03-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8873, '2024-03-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8874, '2024-03-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8875, '2024-03-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8876, '2024-03-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8877, '2024-03-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8878, '2024-03-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8879, '2024-03-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8880, '2024-03-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8881, '2024-03-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8882, '2024-03-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8883, '2024-03-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8884, '2024-03-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8885, '2024-04-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8886, '2024-04-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8887, '2024-04-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8888, '2024-04-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8889, '2024-04-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8890, '2024-04-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8891, '2024-04-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8892, '2024-04-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8893, '2024-04-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8894, '2024-04-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8895, '2024-04-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8896, '2024-04-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8897, '2024-04-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8898, '2024-04-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8899, '2024-04-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8900, '2024-04-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8901, '2024-04-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8902, '2024-04-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8903, '2024-04-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8904, '2024-04-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8905, '2024-04-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8906, '2024-04-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8907, '2024-04-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8908, '2024-04-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8909, '2024-04-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8910, '2024-04-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8911, '2024-04-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8912, '2024-04-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8913, '2024-04-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8914, '2024-04-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8915, '2024-05-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8916, '2024-05-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8917, '2024-05-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8918, '2024-05-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8919, '2024-05-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8920, '2024-05-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8921, '2024-05-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8922, '2024-05-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8923, '2024-05-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8924, '2024-05-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8925, '2024-05-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8926, '2024-05-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8927, '2024-05-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8928, '2024-05-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8929, '2024-05-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8930, '2024-05-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8931, '2024-05-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8932, '2024-05-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8933, '2024-05-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8934, '2024-05-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8935, '2024-05-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8936, '2024-05-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8937, '2024-05-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8938, '2024-05-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8939, '2024-05-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8940, '2024-05-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8941, '2024-05-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8942, '2024-05-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8943, '2024-05-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8944, '2024-05-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8945, '2024-05-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8946, '2024-06-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8947, '2024-06-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8948, '2024-06-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8949, '2024-06-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8950, '2024-06-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8951, '2024-06-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8952, '2024-06-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8953, '2024-06-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8954, '2024-06-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8955, '2024-06-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8956, '2024-06-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8957, '2024-06-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8958, '2024-06-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8959, '2024-06-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8960, '2024-06-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8961, '2024-06-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8962, '2024-06-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8963, '2024-06-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8964, '2024-06-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8965, '2024-06-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8966, '2024-06-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8967, '2024-06-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8968, '2024-06-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8969, '2024-06-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8970, '2024-06-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8971, '2024-06-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8972, '2024-06-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8973, '2024-06-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8974, '2024-06-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8975, '2024-06-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8976, '2024-07-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8977, '2024-07-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8978, '2024-07-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8979, '2024-07-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8980, '2024-07-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8981, '2024-07-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8982, '2024-07-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8983, '2024-07-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8984, '2024-07-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8985, '2024-07-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8986, '2024-07-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8987, '2024-07-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8988, '2024-07-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8989, '2024-07-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8990, '2024-07-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8991, '2024-07-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8992, '2024-07-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (8993, '2024-07-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (8994, '2024-07-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (8995, '2024-07-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (8996, '2024-07-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (8997, '2024-07-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (8998, '2024-07-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (8999, '2024-07-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9000, '2024-07-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9001, '2024-07-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9002, '2024-07-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9003, '2024-07-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9004, '2024-07-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9005, '2024-07-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9006, '2024-07-31 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9007, '2024-08-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9008, '2024-08-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9009, '2024-08-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9010, '2024-08-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9011, '2024-08-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9012, '2024-08-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9013, '2024-08-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9014, '2024-08-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9015, '2024-08-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9016, '2024-08-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9017, '2024-08-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9018, '2024-08-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9019, '2024-08-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9020, '2024-08-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9021, '2024-08-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9022, '2024-08-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9023, '2024-08-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9024, '2024-08-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9025, '2024-08-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9026, '2024-08-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9027, '2024-08-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9028, '2024-08-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9029, '2024-08-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9030, '2024-08-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9031, '2024-08-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9032, '2024-08-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9033, '2024-08-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9034, '2024-08-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9035, '2024-08-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9036, '2024-08-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9037, '2024-08-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9038, '2024-09-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9039, '2024-09-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9040, '2024-09-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9041, '2024-09-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9042, '2024-09-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9043, '2024-09-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9044, '2024-09-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9045, '2024-09-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9046, '2024-09-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9047, '2024-09-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9048, '2024-09-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9049, '2024-09-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9050, '2024-09-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9051, '2024-09-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9052, '2024-09-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9053, '2024-09-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9054, '2024-09-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9055, '2024-09-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9056, '2024-09-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9057, '2024-09-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9058, '2024-09-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9059, '2024-09-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9060, '2024-09-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9061, '2024-09-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9062, '2024-09-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9063, '2024-09-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9064, '2024-09-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9065, '2024-09-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9066, '2024-09-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9067, '2024-09-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9068, '2024-10-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9069, '2024-10-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9070, '2024-10-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9071, '2024-10-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9072, '2024-10-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9073, '2024-10-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9074, '2024-10-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9075, '2024-10-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9076, '2024-10-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9077, '2024-10-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9078, '2024-10-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9079, '2024-10-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9080, '2024-10-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9081, '2024-10-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9082, '2024-10-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9083, '2024-10-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9084, '2024-10-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9085, '2024-10-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9086, '2024-10-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9087, '2024-10-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9088, '2024-10-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9089, '2024-10-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9090, '2024-10-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9091, '2024-10-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9092, '2024-10-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9093, '2024-10-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9094, '2024-10-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9095, '2024-10-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9096, '2024-10-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9097, '2024-10-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9098, '2024-10-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9099, '2024-11-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9100, '2024-11-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9101, '2024-11-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9102, '2024-11-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9103, '2024-11-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9104, '2024-11-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9105, '2024-11-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9106, '2024-11-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9107, '2024-11-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9108, '2024-11-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9109, '2024-11-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9110, '2024-11-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9111, '2024-11-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9112, '2024-11-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9113, '2024-11-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9114, '2024-11-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9115, '2024-11-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9116, '2024-11-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9117, '2024-11-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9118, '2024-11-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9119, '2024-11-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9120, '2024-11-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9121, '2024-11-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9122, '2024-11-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9123, '2024-11-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9124, '2024-11-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9125, '2024-11-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9126, '2024-11-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9127, '2024-11-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9128, '2024-11-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9129, '2024-12-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9130, '2024-12-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9131, '2024-12-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9132, '2024-12-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9133, '2024-12-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9134, '2024-12-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9135, '2024-12-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9136, '2024-12-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9137, '2024-12-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9138, '2024-12-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9139, '2024-12-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9140, '2024-12-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9141, '2024-12-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9142, '2024-12-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9143, '2024-12-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9144, '2024-12-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9145, '2024-12-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9146, '2024-12-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9147, '2024-12-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9148, '2024-12-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9149, '2024-12-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9150, '2024-12-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9151, '2024-12-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9152, '2024-12-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9153, '2024-12-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9154, '2024-12-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9155, '2024-12-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9156, '2024-12-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9157, '2024-12-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9158, '2024-12-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9159, '2024-12-31 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9160, '2025-01-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9161, '2025-01-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9162, '2025-01-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9163, '2025-01-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9164, '2025-01-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9165, '2025-01-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9166, '2025-01-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9167, '2025-01-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9168, '2025-01-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9169, '2025-01-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9170, '2025-01-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9171, '2025-01-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9172, '2025-01-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9173, '2025-01-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9174, '2025-01-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9175, '2025-01-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9176, '2025-01-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9177, '2025-01-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9178, '2025-01-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9179, '2025-01-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9180, '2025-01-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9181, '2025-01-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9182, '2025-01-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9183, '2025-01-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9184, '2025-01-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9185, '2025-01-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9186, '2025-01-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9187, '2025-01-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9188, '2025-01-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9189, '2025-01-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9190, '2025-01-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9191, '2025-02-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9192, '2025-02-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9193, '2025-02-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9194, '2025-02-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9195, '2025-02-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9196, '2025-02-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9197, '2025-02-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9198, '2025-02-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9199, '2025-02-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9200, '2025-02-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9201, '2025-02-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9202, '2025-02-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9203, '2025-02-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9204, '2025-02-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9205, '2025-02-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9206, '2025-02-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9207, '2025-02-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9208, '2025-02-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9209, '2025-02-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9210, '2025-02-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9211, '2025-02-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9212, '2025-02-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9213, '2025-02-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9214, '2025-02-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9215, '2025-02-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9216, '2025-02-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9217, '2025-02-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9218, '2025-02-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9219, '2025-03-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9220, '2025-03-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9221, '2025-03-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9222, '2025-03-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9223, '2025-03-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9224, '2025-03-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9225, '2025-03-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9226, '2025-03-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9227, '2025-03-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9228, '2025-03-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9229, '2025-03-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9230, '2025-03-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9231, '2025-03-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9232, '2025-03-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9233, '2025-03-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9234, '2025-03-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9235, '2025-03-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9236, '2025-03-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9237, '2025-03-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9238, '2025-03-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9239, '2025-03-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9240, '2025-03-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9241, '2025-03-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9242, '2025-03-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9243, '2025-03-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9244, '2025-03-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9245, '2025-03-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9246, '2025-03-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9247, '2025-03-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9248, '2025-03-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9249, '2025-03-31 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9250, '2025-04-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9251, '2025-04-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9252, '2025-04-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9253, '2025-04-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9254, '2025-04-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9255, '2025-04-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9256, '2025-04-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9257, '2025-04-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9258, '2025-04-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9259, '2025-04-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9260, '2025-04-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9261, '2025-04-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9262, '2025-04-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9263, '2025-04-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9264, '2025-04-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9265, '2025-04-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9266, '2025-04-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9267, '2025-04-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9268, '2025-04-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9269, '2025-04-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9270, '2025-04-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9271, '2025-04-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9272, '2025-04-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9273, '2025-04-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9274, '2025-04-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9275, '2025-04-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9276, '2025-04-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9277, '2025-04-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9278, '2025-04-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9279, '2025-04-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9280, '2025-05-01 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9281, '2025-05-02 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9282, '2025-05-03 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9283, '2025-05-04 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9284, '2025-05-05 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9285, '2025-05-06 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9286, '2025-05-07 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9287, '2025-05-08 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9288, '2025-05-09 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9289, '2025-05-10 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9290, '2025-05-11 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9291, '2025-05-12 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9292, '2025-05-13 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9293, '2025-05-14 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9294, '2025-05-15 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9295, '2025-05-16 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9296, '2025-05-17 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9297, '2025-05-18 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9298, '2025-05-19 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9299, '2025-05-20 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9300, '2025-05-21 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9301, '2025-05-22 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9302, '2025-05-23 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9303, '2025-05-24 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9304, '2025-05-25 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9305, '2025-05-26 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9306, '2025-05-27 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9307, '2025-05-28 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9308, '2025-05-29 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9309, '2025-05-30 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9310, '2025-05-31 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9311, '2025-06-01 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9312, '2025-06-02 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9313, '2025-06-03 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9314, '2025-06-04 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9315, '2025-06-05 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9316, '2025-06-06 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9317, '2025-06-07 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9318, '2025-06-08 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9319, '2025-06-09 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9320, '2025-06-10 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9321, '2025-06-11 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9322, '2025-06-12 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9323, '2025-06-13 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9324, '2025-06-14 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9325, '2025-06-15 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9326, '2025-06-16 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9327, '2025-06-17 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9328, '2025-06-18 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9329, '2025-06-19 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9330, '2025-06-20 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9331, '2025-06-21 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9332, '2025-06-22 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9333, '2025-06-23 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9334, '2025-06-24 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9335, '2025-06-25 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9336, '2025-06-26 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9337, '2025-06-27 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9338, '2025-06-28 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9339, '2025-06-29 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9340, '2025-06-30 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9341, '2025-07-01 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9342, '2025-07-02 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9343, '2025-07-03 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9344, '2025-07-04 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9345, '2025-07-05 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9346, '2025-07-06 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9347, '2025-07-07 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9348, '2025-07-08 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9349, '2025-07-09 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9350, '2025-07-10 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9351, '2025-07-11 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9352, '2025-07-12 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9353, '2025-07-13 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9354, '2025-07-14 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9355, '2025-07-15 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9356, '2025-07-16 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9357, '2025-07-17 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9358, '2025-07-18 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9359, '2025-07-19 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9360, '2025-07-20 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9361, '2025-07-21 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9362, '2025-07-22 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9363, '2025-07-23 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9364, '2025-07-24 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9365, '2025-07-25 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9366, '2025-07-26 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9367, '2025-07-27 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9368, '2025-07-28 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9369, '2025-07-29 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9370, '2025-07-30 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9371, '2025-07-31 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9372, '2025-08-01 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9373, '2025-08-02 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9374, '2025-08-03 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9375, '2025-08-04 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9376, '2025-08-05 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9377, '2025-08-06 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9378, '2025-08-07 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9379, '2025-08-08 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9380, '2025-08-09 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9381, '2025-08-10 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9382, '2025-08-11 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9383, '2025-08-12 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9384, '2025-08-13 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9385, '2025-08-14 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9386, '2025-08-15 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9387, '2025-08-16 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9388, '2025-08-17 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9389, '2025-08-18 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9390, '2025-08-19 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9391, '2025-08-20 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9392, '2025-08-21 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9393, '2025-08-22 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9394, '2025-08-23 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9395, '2025-08-24 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9396, '2025-08-25 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9397, '2025-08-26 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9398, '2025-08-27 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9399, '2025-08-28 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9400, '2025-08-29 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9401, '2025-08-30 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9402, '2025-08-31 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9403, '2025-09-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9404, '2025-09-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9405, '2025-09-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9406, '2025-09-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9407, '2025-09-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9408, '2025-09-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9409, '2025-09-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9410, '2025-09-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9411, '2025-09-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9412, '2025-09-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9413, '2025-09-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9414, '2025-09-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9415, '2025-09-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9416, '2025-09-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9417, '2025-09-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9418, '2025-09-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9419, '2025-09-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9420, '2025-09-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9421, '2025-09-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9422, '2025-09-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9423, '2025-09-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9424, '2025-09-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9425, '2025-09-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9426, '2025-09-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9427, '2025-09-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9428, '2025-09-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9429, '2025-09-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9430, '2025-09-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9431, '2025-09-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9432, '2025-09-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9433, '2025-10-01 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9434, '2025-10-02 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9435, '2025-10-03 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9436, '2025-10-04 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9437, '2025-10-05 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9438, '2025-10-06 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9439, '2025-10-07 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9440, '2025-10-08 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9441, '2025-10-09 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9442, '2025-10-10 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9443, '2025-10-11 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9444, '2025-10-12 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9445, '2025-10-13 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9446, '2025-10-14 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9447, '2025-10-15 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9448, '2025-10-16 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9449, '2025-10-17 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9450, '2025-10-18 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9451, '2025-10-19 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9452, '2025-10-20 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9453, '2025-10-21 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9454, '2025-10-22 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9455, '2025-10-23 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9456, '2025-10-24 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9457, '2025-10-25 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9458, '2025-10-26 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9459, '2025-10-27 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9460, '2025-10-28 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9461, '2025-10-29 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9462, '2025-10-30 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9463, '2025-10-31 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9464, '2025-11-01 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9465, '2025-11-02 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9466, '2025-11-03 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9467, '2025-11-04 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9468, '2025-11-05 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9469, '2025-11-06 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9470, '2025-11-07 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9471, '2025-11-08 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9472, '2025-11-09 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9473, '2025-11-10 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9474, '2025-11-11 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9475, '2025-11-12 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9476, '2025-11-13 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9477, '2025-11-14 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9478, '2025-11-15 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9479, '2025-11-16 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9480, '2025-11-17 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9481, '2025-11-18 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9482, '2025-11-19 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9483, '2025-11-20 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9484, '2025-11-21 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9485, '2025-11-22 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9486, '2025-11-23 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9487, '2025-11-24 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9488, '2025-11-25 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9489, '2025-11-26 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9490, '2025-11-27 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9491, '2025-11-28 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9492, '2025-11-29 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9493, '2025-11-30 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9494, '2025-12-01 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9495, '2025-12-02 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9496, '2025-12-03 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9497, '2025-12-04 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9498, '2025-12-05 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9499, '2025-12-06 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9500, '2025-12-07 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9501, '2025-12-08 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9502, '2025-12-09 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9503, '2025-12-10 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9504, '2025-12-11 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9505, '2025-12-12 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9506, '2025-12-13 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9507, '2025-12-14 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9508, '2025-12-15 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9509, '2025-12-16 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9510, '2025-12-17 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9511, '2025-12-18 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9512, '2025-12-19 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9513, '2025-12-20 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9514, '2025-12-21 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9515, '2025-12-22 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9516, '2025-12-23 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9517, '2025-12-24 00:00:00', 4, 1);
INSERT INTO 'tbl_work_date' VALUES (9518, '2025-12-25 00:00:00', 5, 1);
INSERT INTO 'tbl_work_date' VALUES (9519, '2025-12-26 00:00:00', 6, 1);
INSERT INTO 'tbl_work_date' VALUES (9520, '2025-12-27 00:00:00', 7, 0);
INSERT INTO 'tbl_work_date' VALUES (9521, '2025-12-28 00:00:00', 1, 0);
INSERT INTO 'tbl_work_date' VALUES (9522, '2025-12-29 00:00:00', 2, 1);
INSERT INTO 'tbl_work_date' VALUES (9523, '2025-12-30 00:00:00', 3, 1);
INSERT INTO 'tbl_work_date' VALUES (9524, '2025-12-31 00:00:00', 4, 1);

-- ----------------------------
-- Table structure for wy_ask_msg_remind_log
-- ----------------------------
DROP TABLE IF EXISTS 'wy_ask_msg_remind_log';
CREATE TABLE 'wy_ask_msg_remind_log'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'receive_phone' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ܺ���',
  'pay_limit_day' datetime NULL DEFAULT NULL COMMENT '�ɷ�����',
  'remind_days' int(11) NULL DEFAULT NULL COMMENT '��������',
  'cell_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'send_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'send_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'send_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�߽ɶ���������־' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_ask_msg_remind_log
-- ----------------------------

-- ----------------------------
-- Table structure for wy_car_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_car_manage';
CREATE TABLE 'wy_car_manage'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'car_licnece' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ƺ�',
  'stop_car_licence' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͣ���ƺ�',
  'car_owner_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'carport' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ',
  'in_date' datetime NULL DEFAULT NULL COMMENT '�볡ʱ��',
  'out_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'agent' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֵ����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_car_manage
-- ----------------------------

-- ----------------------------
-- Table structure for wy_car_space_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_car_space_manage';
CREATE TABLE 'wy_car_space_manage'  (
  'id' int(30) NOT NULL AUTO_INCREMENT COMMENT '��λ���',
  'car_space_type' bigint(20) NULL DEFAULT NULL COMMENT '��λ����',
  'car_licence_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ƺ���',
  'pre_sale_price' double NULL DEFAULT NULL COMMENT 'Ԥ�ۼ۸�',
  'pre_rent_price' double NULL DEFAULT NULL COMMENT 'Ԥ��۸�',
  'stop_car_licence' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͣ��֤��',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'manage_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'car_sapce_position' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λλ��',
  'car_sapce_area' double NULL DEFAULT NULL COMMENT '��λ���',
  'owner_id' int(11) NULL DEFAULT NULL COMMENT '��Ȩ��id',
  'owner_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ȩ������',
  'real_sale_price' double NULL DEFAULT NULL COMMENT 'ʵ�ۼ۸�',
  'car_space_category' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ���',
  'status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ǰ״̬',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'sale_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'sale_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��λ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_car_space_manage
-- ----------------------------

-- ----------------------------
-- Table structure for wy_car_space_rent
-- ----------------------------
DROP TABLE IF EXISTS 'wy_car_space_rent';
CREATE TABLE 'wy_car_space_rent'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'constract_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ���',
  'car_space_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������λ���',
  'rent_start_date' datetime NULL DEFAULT NULL COMMENT '���ڿ�ʼ��',
  'rent_stop_date' datetime NULL DEFAULT NULL COMMENT '���ڽ�����',
  'rent_month' double NULL DEFAULT NULL COMMENT '��������',
  'user_id' int(11) NULL DEFAULT NULL COMMENT 'ʹ����id',
  'user_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʹ��������',
  'car_licence_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ƺ���',
  'stop_car_licence' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͣ��֤��',
  'rent_per_month' double NULL DEFAULT NULL COMMENT '�����',
  'service_money_per_month' double NULL DEFAULT NULL COMMENT '�·����',
  'sign_date' datetime NULL DEFAULT NULL COMMENT 'ǩ������',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��Ч����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��ֹ����',
  'status' char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'agent_money' double NULL DEFAULT NULL COMMENT '�н��',
  'is_rent_money' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���ȡ���',
  'contract_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ����',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��λ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_car_space_rent
-- ----------------------------

-- ----------------------------
-- Table structure for wy_car_space_rent_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_car_space_rent_detail';
CREATE TABLE 'wy_car_space_rent_detail'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'rent_id' bigint(20) NULL DEFAULT NULL COMMENT '��������id',
  'pay_type' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ɷ�����',
  'pay_start_date' datetime NULL DEFAULT NULL COMMENT '�ɷѿ�ʼ��',
  'pay_stop_date' datetime NULL DEFAULT NULL COMMENT '�ɷѽ�����',
  'should_receive' double NULL DEFAULT NULL COMMENT 'Ӧ�ս��',
  'discount_money' double NULL DEFAULT NULL COMMENT '�Żݽ��',
  'delay_money' double NULL DEFAULT NULL COMMENT '���ɽ�',
  'real_receive_money' double NULL DEFAULT NULL COMMENT 'ʵ�ս��',
  'desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'receive_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ���id',
  'receive_person_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ�������',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�տ�ʱ��',
  'invoice_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʊ����',
  'receive_status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ�״̬',
  'invalid_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'invalid_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'invalid_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'receipt_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������״̬',
  'receipt_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���������',
  'receipt_check_time' datetime NULL DEFAULT NULL COMMENT '�������ʱ��',
  'receipt_check_advice' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'money_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ����״̬',
  'money_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ������',
  'money_check_time' datetime NULL DEFAULT NULL COMMENT '�ֽ����ʱ��',
  'money_check_advice' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֽ�������',
  'invalid_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������״̬',
  'invalid_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���������',
  'invalid_check_time' datetime NULL DEFAULT NULL COMMENT '�������ʱ��',
  'invalid_check_advice' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��λ���޽ɷ���ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_car_space_rent_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_clean_check
-- ----------------------------
DROP TABLE IF EXISTS 'wy_clean_check';
CREATE TABLE 'wy_clean_check'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'check_date' datetime NULL DEFAULT NULL COMMENT '�������',
  'check_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ض�',
  'check_condition' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'check_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'clean_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_clean_check
-- ----------------------------

-- ----------------------------
-- Table structure for wy_clean_plan
-- ----------------------------
DROP TABLE IF EXISTS 'wy_clean_plan';
CREATE TABLE 'wy_clean_plan'  (
  'id' int(10) NOT NULL AUTO_INCREMENT COMMENT '��Ŀ���',
  'project_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'clean_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ض�',
  'clean_content' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'clean_date' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ʱ��',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ల��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_clean_plan
-- ----------------------------

-- ----------------------------
-- Table structure for wy_clean_record
-- ----------------------------
DROP TABLE IF EXISTS 'wy_clean_record';
CREATE TABLE 'wy_clean_record'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'project_id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ���',
  'clean_condition' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'clean_date' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ʱ��',
  'clean_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����¼' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_clean_record
-- ----------------------------

-- ----------------------------
-- Table structure for wy_committee_members
-- ----------------------------
DROP TABLE IF EXISTS 'wy_committee_members';
CREATE TABLE 'wy_committee_members'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'member_code' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ա����',
  'member_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ա����',
  'member_duty' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְ��',
  'birthday' datetime NULL DEFAULT NULL COMMENT '��������',
  'gender' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�',
  'phone_number' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'work_place' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������λ',
  'self_introduce' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '���˼��',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵί���Ա' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_committee_members
-- ----------------------------

-- ----------------------------
-- Table structure for wy_committee_metting
-- ----------------------------
DROP TABLE IF EXISTS 'wy_committee_metting';
CREATE TABLE 'wy_committee_metting'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'meeting_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'meeting_title' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'meeting_addr' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ص�',
  'meeting_content' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��������',
  'hoster' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'recorder' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼Ա',
  'joiner' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�μ���Ա',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵί�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_committee_metting
-- ----------------------------

-- ----------------------------
-- Table structure for wy_community_event
-- ----------------------------
DROP TABLE IF EXISTS 'wy_community_event';
CREATE TABLE 'wy_community_event'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'event_date' datetime NULL DEFAULT NULL COMMENT '�����',
  'event_content' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'hoster' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'join_person' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�μ���Ա',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_community_event
-- ----------------------------

-- ----------------------------
-- Table structure for wy_duty_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_duty_manage';
CREATE TABLE 'wy_duty_manage'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'duty_date' datetime NULL DEFAULT NULL COMMENT 'ִ������',
  'duty_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ִ����',
  'duty_type' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ִ������',
  'duty_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ִ�ڵص�',
  'duty_record' longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ִ�ڼ�¼',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ִ�ڹ���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_duty_manage
-- ----------------------------

-- ----------------------------
-- Table structure for wy_email_receive
-- ----------------------------
DROP TABLE IF EXISTS 'wy_email_receive';
CREATE TABLE 'wy_email_receive'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�ռ�����',
  'get_date' datetime NULL DEFAULT NULL COMMENT '�������',
  'email_type' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʼ����',
  'receive_unit' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ռ���λ',
  'number' int(11) NULL DEFAULT NULL COMMENT '����',
  'get_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'card_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'card' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤��',
  'agent' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ż���ȡ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_email_receive
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_income_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_income_detail';
CREATE TABLE 'wy_estate_income_detail'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'charge_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'income_project' int(11) NULL DEFAULT NULL COMMENT '������Ŀ',
  'income_money' double NULL DEFAULT NULL COMMENT '������',
  'desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̾���������ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_income_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_income_project
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_income_project';
CREATE TABLE 'wy_estate_income_project'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '������Ŀid',
  'income_project' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ŀ����',
  'parent_income_id' int(11) NULL DEFAULT NULL COMMENT '�ϼ�������Ŀid',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̾���������Ŀ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_income_project
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_money
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_money';
CREATE TABLE 'wy_estate_money'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'charge_year' datetime NULL DEFAULT NULL COMMENT '�������',
  'money' double NULL DEFAULT NULL COMMENT '���ý��',
  'desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̷���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_money
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_out_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_out_detail';
CREATE TABLE 'wy_estate_out_detail'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'charge_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'output_main_project' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֧������Ŀ',
  'output_sub_project' int(11) NULL DEFAULT NULL COMMENT '֧������Ŀ',
  'output_money' double NULL DEFAULT NULL COMMENT '֧�����',
  'output_money_year' double NULL DEFAULT NULL COMMENT '���ۼ�֧�����',
  'output_money_main' double NULL DEFAULT NULL COMMENT '�����ۼ�֧�����',
  'status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'next_receive_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��һ��������id',
  'next_receive_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��һ������������',
  'send_check_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̾���֧����ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_out_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_out_detail_sub
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_out_detail_sub';
CREATE TABLE 'wy_estate_out_detail_sub'  (
  'id' bigint(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'belong_out_project_id' bigint(20) NULL DEFAULT NULL COMMENT '��������id',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_advice' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'check_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'check_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����״̬',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̾���֧����ϸ_�����ӱ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_out_detail_sub
-- ----------------------------

-- ----------------------------
-- Table structure for wy_estate_out_project
-- ----------------------------
DROP TABLE IF EXISTS 'wy_estate_out_project';
CREATE TABLE 'wy_estate_out_project'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀid',
  'project_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ŀ����',
  'parent_out_project_id' int(11) NULL DEFAULT NULL COMMENT '�ϼ�֧����Ŀid',
  'belong_main_projecct' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������Ŀ',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '¥�̾���֧����Ŀ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_estate_out_project
-- ----------------------------

-- ----------------------------
-- Table structure for wy_fire_accident
-- ----------------------------
DROP TABLE IF EXISTS 'wy_fire_accident';
CREATE TABLE 'wy_fire_accident'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'accident_date' datetime NULL DEFAULT NULL COMMENT '�¹�����',
  'accident_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�¹ʵص�',
  'occur_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'related_person' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����Ա',
  'handle_result' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'loss' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʧ�̶�',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����¹�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_fire_accident
-- ----------------------------

-- ----------------------------
-- Table structure for wy_fire_check
-- ----------------------------
DROP TABLE IF EXISTS 'wy_fire_check';
CREATE TABLE 'wy_fire_check'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'check_date' datetime NULL DEFAULT NULL COMMENT 'Ѳ������',
  'check_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ѳ�ӵص�',
  'check_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ѳ����',
  'check_condition' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ѳ�����',
  'handle_advice' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����Ѳ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_fire_check
-- ----------------------------

-- ----------------------------
-- Table structure for wy_fire_exercise
-- ----------------------------
DROP TABLE IF EXISTS 'wy_fire_exercise';
CREATE TABLE 'wy_fire_exercise'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'unit' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼ����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'exercise_purpose' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ŀ��',
  'join_persons' int(11) NULL DEFAULT NULL COMMENT '��������',
  'assistant_unit' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Э����λ',
  'exercise_content' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'exercise_result' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ч��',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_fire_exercise
-- ----------------------------

-- ----------------------------
-- Table structure for wy_fire_facility
-- ----------------------------
DROP TABLE IF EXISTS 'wy_fire_facility';
CREATE TABLE 'wy_fire_facility'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'facility_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʩ����',
  'specifications' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ͺ�',
  'unit' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ',
  'number' int(11) NULL DEFAULT NULL COMMENT '����',
  'place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���õص�',
  'leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ʩ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_fire_facility
-- ----------------------------

-- ----------------------------
-- Table structure for wy_goods_inout
-- ----------------------------
DROP TABLE IF EXISTS 'wy_goods_inout';
CREATE TABLE 'wy_goods_inout'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'inout_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'carry_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Я����',
  'id_card' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���֤��',
  'input_type' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'live_addr' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ס��ַ',
  'inout_unit' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���뵥Ԫ',
  'customer_name' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'inout_goods' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʒ',
  'agent' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֵ����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ʒ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_goods_inout
-- ----------------------------

-- ----------------------------
-- Table structure for wy_green_check
-- ----------------------------
DROP TABLE IF EXISTS 'wy_green_check';
CREATE TABLE 'wy_green_check'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'green_code' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�̻�����',
  'check_date' datetime NULL DEFAULT NULL COMMENT '���ʱ��',
  'check_condition' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'handle_condition' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'check_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�̻����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_green_check
-- ----------------------------

-- ----------------------------
-- Table structure for wy_green_setting
-- ----------------------------
DROP TABLE IF EXISTS 'wy_green_setting';
CREATE TABLE 'wy_green_setting'  (
  'setting_code' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ñ���',
  'setting_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'area' double NULL DEFAULT NULL COMMENT '���',
  'green_date' datetime NULL DEFAULT NULL COMMENT '�̻�ʱ��',
  'green_place' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ص�',
  'leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'main_vegetation' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ҫֲ��',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�̻�����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_green_setting
-- ----------------------------

-- ----------------------------
-- Table structure for wy_income_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_income_detail';
CREATE TABLE 'wy_income_detail'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'charge_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'income_project' int(11) NULL DEFAULT NULL COMMENT '������Ŀ',
  'income_money' double NULL DEFAULT NULL COMMENT '������',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_income_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_income_project
-- ----------------------------
DROP TABLE IF EXISTS 'wy_income_project';
CREATE TABLE 'wy_income_project'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '������Ŀid',
  'income_project_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ŀ����',
  'parent_income_id' int(11) NULL DEFAULT NULL COMMENT '�ϼ�������Ŀid',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������Ŀ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_income_project
-- ----------------------------

-- ----------------------------
-- Table structure for wy_note_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_note_manage';
CREATE TABLE 'wy_note_manage'  (
  'note_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Ʊ�ݱ��',
  'note_prefix' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ʊ��ǰ׺',
  'note_serial_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ʊ����ˮ��',
  'note_status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ʊ��״̬',
  'note_desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ʊ��˵��',
  'user_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʹ����id',
  'user_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʹ��������',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'assign_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'assign_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'assign_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'print_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ӡ��id',
  'print_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ӡ������',
  'print_date' datetime NULL DEFAULT NULL COMMENT '��ӡʱ��',
  'note_type' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'receive_money_id' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ��',
  'invalid_reason' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'invalid_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'invalid_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'invalid_confirm_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ȷ����',
  'invalid_confirm_date' datetime NULL DEFAULT NULL COMMENT '����ȷ��ʱ��',
  PRIMARY KEY ('note_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ʊ�ݹ���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_note_manage
-- ----------------------------

-- ----------------------------
-- Table structure for wy_out_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_out_detail';
CREATE TABLE 'wy_out_detail'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'charge_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��id',
  'out_project' int(11) NULL DEFAULT NULL COMMENT '֧����Ŀ',
  'out_money' double NULL DEFAULT NULL COMMENT '֧�����',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '֧����ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_out_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_out_project
-- ----------------------------
DROP TABLE IF EXISTS 'wy_out_project';
CREATE TABLE 'wy_out_project'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '֧����Ŀid',
  'out_project_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֧����Ŀ����',
  'parent_out_project_id' int(11) NULL DEFAULT NULL COMMENT '�ϼ�֧����Ŀid',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '֧����Ŀ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_out_project
-- ----------------------------

-- ----------------------------
-- Table structure for wy_picture_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_picture_manage';
CREATE TABLE 'wy_picture_manage'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'picture_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼֽ����',
  'picture_type' bigint(20) NULL DEFAULT NULL COMMENT 'ͼֽ����',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'picture_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ͼֽ����',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'upload_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ϴ���',
  'upload_date' datetime NULL DEFAULT NULL COMMENT '�ϴ�ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ͼֽ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_picture_manage
-- ----------------------------

-- ----------------------------
-- Table structure for wy_property_takeover_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_property_takeover_detail';
CREATE TABLE 'wy_property_takeover_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�ӹ�ϸ��id',
  'takeover_id' int(11) NULL DEFAULT NULL COMMENT '�����ӹ�id',
  'project_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ŀ����',
  'checked' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���շ�',
  'checked_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'checked_result' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ս��',
  'finish_date' datetime NULL DEFAULT NULL COMMENT '�����������',
  'finish_condition' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ�ӹܹ�����ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_property_takeover_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_property_takeover_schema
-- ----------------------------
DROP TABLE IF EXISTS 'wy_property_takeover_schema';
CREATE TABLE 'wy_property_takeover_schema'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�ӹܵ���',
  'takeover_title' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ӹܱ���',
  'estate_id' int(11) NULL DEFAULT NULL COMMENT '����¥��',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ӹܱ�ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '��������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ�ӹܸ�Ҫ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_property_takeover_schema
-- ----------------------------

-- ----------------------------
-- Table structure for wy_renew_msg_remind_log
-- ----------------------------
DROP TABLE IF EXISTS 'wy_renew_msg_remind_log';
CREATE TABLE 'wy_renew_msg_remind_log'  (
  'id' bigint(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '�����',
  'money_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'receive_phone' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ܺ���',
  'money_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ��',
  'remind_days' int(11) NULL DEFAULT NULL COMMENT '��������',
  'cell_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'send_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'send_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'send_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���Ѷ���������־' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_renew_msg_remind_log
-- ----------------------------

-- ----------------------------
-- Table structure for wy_security_arrange
-- ----------------------------
DROP TABLE IF EXISTS 'wy_security_arrange';
CREATE TABLE 'wy_security_arrange'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼ����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'classes' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���',
  'time_frame' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʱ��',
  'district' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ض�',
  'waterkeeper' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֵ����Ա',
  'job' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_security_arrange
-- ----------------------------

-- ----------------------------
-- Table structure for wy_service_cashier_group
-- ----------------------------
DROP TABLE IF EXISTS 'wy_service_cashier_group';
CREATE TABLE 'wy_service_cashier_group'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ͷ�������',
  'include_building_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����¥�����',
  'include_building_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����¥������',
  'include_service_code' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ͷ�����',
  'include_service_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ͷ�����',
  'desc' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��˵��',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�ͷ�������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_service_cashier_group
-- ----------------------------

-- ----------------------------
-- Table structure for wy_takeover_data_detail
-- ----------------------------
DROP TABLE IF EXISTS 'wy_takeover_data_detail';
CREATE TABLE 'wy_takeover_data_detail'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�ӹ�����id',
  'takeover_id' int(11) NULL DEFAULT NULL COMMENT '�����ӹ�id',
  'data_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'data_copies' int(11) NULL DEFAULT NULL COMMENT '���Ϸ���',
  'data_pages' int(11) NULL DEFAULT NULL COMMENT '����ҳ��',
  'data_type' bigint(20) NULL DEFAULT NULL COMMENT '���Ϸ���',
  'file_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'handover_person' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'receive_person' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ҵ�ӹ�������ϸ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_takeover_data_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wy_vegetation_information
-- ----------------------------
DROP TABLE IF EXISTS 'wy_vegetation_information';
CREATE TABLE 'wy_vegetation_information'  (
  'vegetation_id' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ֲ�����',
  'vegetation_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֲ������',
  'vegetation_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'vegetation_age' int(11) NULL DEFAULT NULL COMMENT '����',
  'vegetation_number' int(11) NULL DEFAULT NULL COMMENT '����',
  'vegetation_unit' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��λ',
  'vegetation_habit' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ϰ��',
  'vegetation_feature' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ص�',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('vegetation_id') USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ֲ����Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_vegetation_information
-- ----------------------------

-- ----------------------------
-- Table structure for wy_visit_manage
-- ----------------------------
DROP TABLE IF EXISTS 'wy_visit_manage';
CREATE TABLE 'wy_visit_manage'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'visit_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'leave_date' datetime NULL DEFAULT NULL COMMENT '�뿪ʱ��',
  'visit_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'id_card' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���֤��',
  'visit_addr' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������סַ',
  'visit_reason' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'visited_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'visited_reason' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ס��ַ',
  'agent' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ֵ����',
  'remark' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ù���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wy_visit_manage
-- ----------------------------

-- ----------------------------
-- Table structure for zh_constomer_decorate
-- ----------------------------
DROP TABLE IF EXISTS 'zh_constomer_decorate';
CREATE TABLE 'zh_constomer_decorate'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'proposer' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'proposer_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'decorate_content' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'װ������',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'decorate_ensure_money' double NULL DEFAULT NULL COMMENT 'װ�ޱ�֤��',
  'check_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'check_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'leader_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˵绰',
  'execute_company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʩ����λ',
  'execute_start_date' datetime NULL DEFAULT NULL COMMENT 'ʩ����ʼ����',
  'leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'checked_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'execute_stop_date' datetime NULL DEFAULT NULL COMMENT 'ʩ����ֹ����',
  'checked_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'checked_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'status' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'identify' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʶ',
  'confirm_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ȷ����',
  'confirm_date' datetime NULL DEFAULT NULL COMMENT 'ȷ��ʱ��',
  'decorate_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'װ�޸���',
  'against_money' double NULL DEFAULT NULL COMMENT 'ΥԼ��',
  'invalid_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ��װ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_constomer_decorate
-- ----------------------------

-- ----------------------------
-- Table structure for zh_consumer_complain
-- ----------------------------
DROP TABLE IF EXISTS 'zh_consumer_complain';
CREATE TABLE 'zh_consumer_complain'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'complain_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ͷ����',
  'complain_phone' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ͷ�ߵ绰',
  'complain_date' datetime NULL DEFAULT NULL COMMENT 'Ͷ������',
  'phone_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'reception_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ӵ���',
  'complain_type' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ͷ�����',
  'status' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'start_accept_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʼ������',
  'start_accept_date' datetime NULL DEFAULT NULL COMMENT '��ʼ����ʱ��',
  'accept_result' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'accept_finish_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���������',
  'accept_finish_date' datetime NULL DEFAULT NULL COMMENT '�������ʱ��',
  'datasource' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Դ',
  'refer_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ο�����',
  'return_visit_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ط���',
  'return_visit_date' datetime NULL DEFAULT NULL COMMENT '�ط�ʱ��',
  'is_satisfy' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'customer_evaluate' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ��Ͷ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_consumer_complain
-- ----------------------------

-- ----------------------------
-- Table structure for zh_cs_handle_result
-- ----------------------------
DROP TABLE IF EXISTS 'zh_cs_handle_result';
CREATE TABLE 'zh_cs_handle_result'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'service_id' int(11) NULL DEFAULT NULL COMMENT '��������id',
  'transactor_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'transactor_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'is_leader' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'relation_company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ص�λ',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'handle_start_date' datetime NULL DEFAULT NULL COMMENT '��ʼ����ʱ��',
  'handle_stop_date' datetime NULL DEFAULT NULL COMMENT '��ɰ���ʱ��',
  'handle_result' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'handle_finish_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ɸ���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ������_������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_cs_handle_result
-- ----------------------------

-- ----------------------------
-- Table structure for zh_cs_handle_speed
-- ----------------------------
DROP TABLE IF EXISTS 'zh_cs_handle_speed';
CREATE TABLE 'zh_cs_handle_speed'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'service_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'transactor_name' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'transactor_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'transactor_content' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'recorder_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼��id',
  'recorder_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼������',
  'recorder_date' datetime NULL DEFAULT NULL COMMENT '��¼ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ������_�������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_cs_handle_speed
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer';
CREATE TABLE 'zh_customer'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'customer_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'customer_pwd' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'customer_birthday' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'customer_gender' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ���Ա�',
  'open_bank' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'nationality' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'bank_account' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˺�',
  'education' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ѧ��',
  'certificate_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'certificate_type' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'work_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������λ',
  'customer_duty' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְ��',
  'police' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ɳ���',
  'nation' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'phone_number' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'native_place' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'address' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��ַ',
  'post_code' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ʱ�',
  'urgency_user_name' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ϵ������',
  'urgency_user_phone' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ϵ�˵绰',
  'urgency_user_address' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ϵ�˵�ַ',
  'customer_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ��״̬',
  'customer_type' char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'picture' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ƭ',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'is_bank_withhold' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ����д���',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ����Ϣ��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_ask_fix
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_ask_fix';
CREATE TABLE 'zh_customer_ask_fix'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'proposer' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'proposer_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'ask_fix_content' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'fix_money' double NULL DEFAULT NULL COMMENT '�������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'check_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'leader_phone' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����˵绰',
  'execute_company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʩ����λ',
  'execute_start_date' datetime NULL DEFAULT NULL COMMENT 'ʩ����ʼ����',
  'leader' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'checked_person' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'execute_stop_date' datetime NULL DEFAULT NULL COMMENT 'ʩ����������',
  'checked_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'checked_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'status' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'identify' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʶ',
  'confirm_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ȷ����',
  'confirm_date' datetime NULL DEFAULT NULL COMMENT 'ȷ��ʱ��',
  'checked_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ո���',
  'refer_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ο�����',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_ask_fix
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_check
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_check';
CREATE TABLE 'zh_customer_check'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'confirm_date' datetime NULL DEFAULT NULL COMMENT 'ȷ������',
  'check_item_id' bigint(20) NULL DEFAULT NULL COMMENT '������Ŀ���',
  'check_item_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ŀ����',
  'is_pass' varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�ϸ�',
  'consumer_advice' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ�����',
  'house_keeper_advice' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ա���',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ա',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'input_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '¼����',
  'input_date' datetime NULL DEFAULT NULL COMMENT '¼��ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'check_house_type' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�鷿����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ���鷿' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_check
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_estate
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_estate';
CREATE TABLE 'zh_customer_estate'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'customer_id' int(11) NULL DEFAULT NULL COMMENT 'ҵ��id',
  'customer_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '����id',
  'use_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ʹ��״̬',
  'live_date' datetime NULL DEFAULT NULL COMMENT '��ס����',
  'decorate_date' datetime NULL DEFAULT NULL COMMENT 'װ��ʱ��',
  'subscription_card_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ϲ�֤��',
  'house_code' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����֤��',
  'is_pay_decorate_money' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ����ά�޽�',
  'pre_pay_decorate_money' double NULL DEFAULT NULL COMMENT 'Ԥ��ά�޽�',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'orderid' int(11) NULL DEFAULT NULL COMMENT '�����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ���������ձ�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_estate
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_members
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_members';
CREATE TABLE 'zh_customer_members'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'belong_customer_id' int(11) NULL DEFAULT NULL COMMENT '����ҵ������',
  'name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  'birdate' datetime NULL DEFAULT NULL COMMENT '��������',
  'gender' varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�',
  'ration' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ����ϵ',
  'certificate_type' varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'certificate_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'education' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ѧ��',
  'remark' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'work_place' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������λ',
  'phone_number' varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'picture' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ƭ',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ����Ա' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_members
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_service
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_service';
CREATE TABLE 'zh_customer_service'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'cell_id' int(11) NULL DEFAULT NULL COMMENT '������',
  'proposer' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'appeal_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'appeal_event' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'service_type' bigint(20) NULL DEFAULT NULL COMMENT '��������',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'identify' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ʶ',
  'check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'check_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'check_advice' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  'service_money' double NULL DEFAULT NULL COMMENT '�������',
  'return_visit_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ط���',
  'return_visit_date' datetime NULL DEFAULT NULL COMMENT '�ط�ʱ��',
  'is_satisfy' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ�����',
  'customer_evaluate' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ҵ������',
  'refer_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ο�����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_service
-- ----------------------------

-- ----------------------------
-- Table structure for zh_customer_service_type
-- ----------------------------
DROP TABLE IF EXISTS 'zh_customer_service_type';
CREATE TABLE 'zh_customer_service_type'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'type_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'type_price' double NULL DEFAULT NULL COMMENT '���͵���',
  'type_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����˵��',
  'type_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����״̬',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '������ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ҵ����������' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_customer_service_type
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_contract
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_contract';
CREATE TABLE 'zh_rent_contract'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ���',
  'sign_date' datetime NULL DEFAULT NULL COMMENT 'ǩ������',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��Ч����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��ֹ����',
  'rent_id' int(11) NULL DEFAULT NULL COMMENT '�����⻧id',
  'contact' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��',
  'start_rent_date' datetime NULL DEFAULT NULL COMMENT '��������',
  'stop_rent_date' datetime NULL DEFAULT NULL COMMENT 'ͣ������',
  'contract_rent_money' double NULL DEFAULT NULL COMMENT '��ͬ�����',
  'receive_area' double NULL DEFAULT NULL COMMENT '�շ����',
  'contract_status' char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ״̬',
  'ensure_money' double NULL DEFAULT NULL COMMENT '��֤��',
  'ensure_money_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��֤��˵��',
  'contract_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ����',
  'rent_days' int(11) NULL DEFAULT NULL COMMENT '����',
  'admin_money' double NULL DEFAULT NULL COMMENT '�����',
  'is_rent_money' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ���ȡ���',
  'pay_method' bigint(20) NULL DEFAULT NULL COMMENT '���ɷ�ʽ',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'attract_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Աid',
  'attract_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ա����',
  'company' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޺�ͬ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_contract
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_contract_cell
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_contract_cell';
CREATE TABLE 'zh_rent_contract_cell'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'stall_message' int(11) NULL DEFAULT NULL COMMENT '����������Ϣ',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޺�ͬ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_contract_cell
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_contract_change
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_contract_change';
CREATE TABLE 'zh_rent_contract_change'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'change_project' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����Ŀ',
  'old_value' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ԭֵ',
  'new_value' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ֵ',
  'desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'change_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����',
  'change_date' datetime NULL DEFAULT NULL COMMENT '���ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޺�ͬ���' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_contract_change
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_contract_refund
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_contract_refund';
CREATE TABLE 'zh_rent_contract_refund'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'rent_id' int(11) NULL DEFAULT NULL COMMENT '�����⻧id',
  'rent_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'refund_time' datetime NULL DEFAULT NULL COMMENT '�˿�����',
  'refund_money' double NULL DEFAULT NULL COMMENT '�˿���',
  'refund_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿�״̬',
  'refund_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˿�˵��',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'invalid_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'invalid_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'invalid_reason' datetime NULL DEFAULT NULL COMMENT '����ԭ��',
  'invalid_date' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޺�ͬ�˿�' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_contract_refund
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_contract_return
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_contract_return';
CREATE TABLE 'zh_rent_contract_return'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'rent_id' int(11) NULL DEFAULT NULL COMMENT '�����⻧id',
  'rent_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'return_money_start' datetime NULL DEFAULT NULL COMMENT '����������',
  'return_money_stop' datetime NULL DEFAULT NULL COMMENT '����������',
  'return_cardinal_money' double NULL DEFAULT NULL COMMENT '�����������',
  'return_rate' double NULL DEFAULT NULL COMMENT '��������',
  'current_return_money' double NULL DEFAULT NULL COMMENT '���η������',
  'return_money_status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����״̬',
  'return_money_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����˵��',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'operate_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'invalid_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'invalid_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'invalid_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'update_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���id',
  'update_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�������',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'update_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�ԭ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޺�ͬ����' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_contract_return
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_information
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_information';
CREATE TABLE 'zh_rent_information'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'rent_code' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'rent_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'member_of_right' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  'rent_type' bigint(20) NULL DEFAULT NULL COMMENT '�⻧����',
  'contact' varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��',
  'gender' char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�',
  'home_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ�',
  'addr' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ַ',
  'certificate_type' bigint(20) NULL DEFAULT NULL COMMENT '֤������',
  'main_sale' bigint(20) NULL DEFAULT NULL COMMENT '��Ӫ��Ʒ',
  'certificate_number' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֤������',
  'status' char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '״̬',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'picture_url' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ƭ��ַ',
  'create_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'create_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'company' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������˾',
  'pwd' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��½����',
  'rent_attach' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�⻧��Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_information
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_receive
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_receive';
CREATE TABLE 'zh_rent_receive'  (
  'id' int(20) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'rent_id' int(11) NULL DEFAULT NULL COMMENT '�����⻧id',
  'rent_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'rent_start_date' datetime NULL DEFAULT NULL COMMENT '���ʼ����',
  'rent_stop_date' datetime NULL DEFAULT NULL COMMENT '����ֹ����',
  'rent_money' double NULL DEFAULT NULL COMMENT '�����',
  'desc' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '˵��',
  'receive_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ���id',
  'receive_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�տ�������',
  'receive_date' datetime NULL DEFAULT NULL COMMENT '�տ�ʱ��',
  'receive_status' varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ȡ״̬',
  'invalid_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'invalid_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'invalid_reason' varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ԭ��',
  'invalid_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'past_receive_method' varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ԭ�տʽ',
  'receipt_check_status' varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������״̬',
  'receipt_check_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���������',
  'receipt_check_time' datetime NULL DEFAULT NULL COMMENT '�������ʱ��',
  'receipt_check_advice' varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����ȡ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_receive
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_share
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_share';
CREATE TABLE 'zh_rent_share'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'rent_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�⻧����',
  'share_rent_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'share_cell_id' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ⷿ��id',
  'share_cell_name' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ⷿ������',
  'contact' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ��',
  'phone_number' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ϵ�绰',
  'start_date' datetime NULL DEFAULT NULL COMMENT '��ʼ����',
  'stop_date' datetime NULL DEFAULT NULL COMMENT '��ֹ����',
  'sale_range' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ӫ��Χ',
  'remark' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  'operate_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������id',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  'update_person_id' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸���id',
  'update_person_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�������',
  'update_date' datetime NULL DEFAULT NULL COMMENT '�޸�ʱ��',
  'update_reason' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�޸�ԭ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���޷�����Ϣ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_share
-- ----------------------------

-- ----------------------------
-- Table structure for zh_rent_transfer
-- ----------------------------
DROP TABLE IF EXISTS 'zh_rent_transfer';
CREATE TABLE 'zh_rent_transfer'  (
  'id' int(11) NOT NULL AUTO_INCREMENT COMMENT '�Զ����',
  'contract_id' int(11) NULL DEFAULT NULL COMMENT '������ͬ���',
  'transfer_out_id' int(11) NULL DEFAULT NULL COMMENT 'ת���⻧id',
  'transfer_out_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ת���⻧����',
  'transfer_in_id' int(11) NULL DEFAULT NULL COMMENT 'ת���⻧id',
  'transfer_in_name' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ת���⻧����',
  'change_name_money' double NULL DEFAULT NULL COMMENT '������',
  'transfer_desc' varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ת��˵��',
  'transfer_date' datetime NULL DEFAULT NULL COMMENT 'ת��ʱ��',
  'operate_person' varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  'operate_date' datetime NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY ('id') USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�⻧ת��' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zh_rent_transfer
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
