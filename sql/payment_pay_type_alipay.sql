/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 10.254.254.254
 Source Database       : payment

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 05/25/2017 11:06:35 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `payment_pay_type_alipay`
-- ----------------------------
DROP TABLE IF EXISTS `payment_pay_type_alipay`;
CREATE TABLE `payment_pay_type_alipay` (
  `pay_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付手段ID',
  `pay_type_title` varchar(255) NOT NULL DEFAULT '' COMMENT '方式标题',
  `alipay_gateway_url` varchar(255) NOT NULL DEFAULT '' COMMENT '支付宝请求网关',
  `alipay_app_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'APP ID',
  `alipay_rsa_key` varchar(255) NOT NULL DEFAULT '' COMMENT '支付宝私钥',
  `alipay_allow_style` varchar(255) NOT NULL DEFAULT '' COMMENT '支持的支付形式',
  `alipay_format_type` varchar(32) NOT NULL DEFAULT '' COMMENT '请求返回格式',
  `alipay_charset` varchar(32) NOT NULL DEFAULT '' COMMENT '字符编码格式',
  `alipay_sign_type` varchar(32) NOT NULL DEFAULT '' COMMENT '加密格式',
  `create_time` varchar(32) NOT NULL DEFAULT '' COMMENT '支付手段添加时间',
  `last_edit_time` varchar(32) NOT NULL DEFAULT '' COMMENT '支付手段最后编辑时间',
  PRIMARY KEY (`pay_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付宝信息表';

SET FOREIGN_KEY_CHECKS = 1;