/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : mobilestore

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-05-21 20:31:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_mobile`
-- ----------------------------
DROP TABLE IF EXISTS `t_mobile`;
CREATE TABLE `t_mobile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `camera` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `discription` text,
  `model` varchar(255) DEFAULT NULL,
  `network_format` varchar(255) DEFAULT NULL,
  `pictrue` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `screen_size` varchar(255) DEFAULT NULL,
  `time_to_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mobile
-- ----------------------------
INSERT INTO `t_mobile` VALUES ('1', '苹果', '1200万', '白色', '四核', '<p>fefeg</p>', '4s', '移动3G', './upload_images/c14ea728-3004-46bc-8144-63bcea21e60d.jpg', '3000', '2G', '16G', '5', '2012-09-09');
INSERT INTO `t_mobile` VALUES ('3', '三星', 'userInterceptor', '蓝色', '四核', '<p><img src=\"http://img30.360buyimg.com/jgsq-productsoa/g10/M00/12/1E/rBEQWVFjjMwIAAAAAAF-0A5kRgcAADsxgGOur0AAX7o326.jpg\"/></p>', 'I959', '联通3G', './upload_images/de778a04-ba4a-474c-87b0-632e33c49918.jpg', '2999', '2G', '16G', '5', '2013-08-19');
INSERT INTO `t_mobile` VALUES ('4', '三星', '1300万', '蓝色', '四核', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398503019376.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398503026952.jpg\"/></p>', 'I959', '联通3G', './upload_images/05b1cb26-43ee-44c3-94ec-08f59a5fa179.jpg', '3000', '2G', '16G', '5', '2012-09-09');
INSERT INTO `t_mobile` VALUES ('5', '努比亚 ', '1300万', '白色', '四核', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398503441596.jpg\"/></p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398503449107.jpg\"/></p><p><img src=\"http://img14.360buyimg.com/cms/g14/M06/03/09/rBEhV1KVlMwIAAAAAAQw0s2wrLwAAGIrgNwpMsABDDq753.jpg\"/></p><p><img src=\"http://img14.360buyimg.com/cms/g14/M06/03/09/rBEhV1KVlMwIAAAAAAQw0s2wrLwAAGIrgNwpMsABDDq753.jpg\"/></p>', '小牛2 Z5S ', '联通4G', './upload_images/3a81a42c-a313-4c9f-a42f-8d09fd8175c8.jpg', '1499', '2G', '16G', '5', '2013-08-19');
INSERT INTO `t_mobile` VALUES ('6', '苹果', '800W', '白色', '双核', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608359019.jpg\"/></p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608365924.jpg\"/></p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608373008.jpg\"/></p><p><strong><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608378749.jpg\"/></strong><br/></p><p><strong><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608384733.jpg\"/></strong></p><p><strong><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608390759.jpg\"/></strong></p><p><strong><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1398608398687.jpg\"/></strong></p>', '5s', '联通3G', './upload_images/e8b1b0d3-4742-4938-b09f-7c8878ec6127.jpg', '4978', '2G', '16G', '3.5', '2013-08-19');
INSERT INTO `t_mobile` VALUES ('7', '魅族', '800W', '前黑后白', '八核', '<p><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\">1、魅族 MX3 需要使用 Micro-SIM卡,也就是通常所说的小卡。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\">2、京东商城销售的魅族品牌手机，均为全新机，非RE。&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\">3、魅族手机全国联保，如您需要维修时，为保障产品维修质量，魅族专卖店将在接收维修机后，&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\">返回魅族工厂进行维修。&nbsp;</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑; line-height: 18px; text-align: -webkit-center; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-size: 36px;\">更好用的大屏手机</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 18px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 18px; text-align: -webkit-center; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 18px; text-align: -webkit-center; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 18px; text-align: -webkit-center; background-color: rgb(255, 255, 255); font-size: 15px;\">大为好用的设计，让大屏大为好用的<span data-id=\"2324\" class=\"wiki-words\" id=\"wiki-keyword-0\" style=\"margin: 0px; padding: 0px 0px 2px; border-bottom-width: 1px; border-bottom-style: dotted;\">Flyme</span>&nbsp;3.0</span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 18px; text-align: -webkit-center; background-color: rgb(255, 255, 255); font-size: 15px;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload1/20140504/60661399202958179.png\"/></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 24px; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑; line-height: 18px; text-align: -webkit-center; background-color: rgb(255, 255, 255); font-size: 15px;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload1/20140504/70591399202995140.png\"/></span></span></p>', 'MX3', '移动3G', './upload_images/fc13886d-452f-49cf-9158-04a6f1de4a26.jpg', '1799', '2G', '16G', '5.1', '2014-2-1');
INSERT INTO `t_mobile` VALUES ('8', '中兴', '1300万', '白色', '四核', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203235813.jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203294015.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203301296.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203306743.jpg\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\">顶级拍照硬件配置：后置1300万+前置500万摄像头搭配。</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\">专业级的拍照功能：支持独立对焦，独立测光与独立白平衡功能。</span><br style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\">引入了nubia全新NeoVision 3.0的众多核心功能和体验。<img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203319783.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203324868.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203330189.jpg\"/><span style=\"color: rgb(88, 189, 255); font-family: 微软雅黑, 宋体; font-size: 24px; line-height: 31.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\">全新UI 全新体验</span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(88, 189, 255); font-family: 微软雅黑, 宋体; font-size: 24px; line-height: 31.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 14px; line-height: 18.200000762939453px; text-align: -webkit-center; background-color: rgb(255, 255, 255);\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203357022.jpg\"/>采用专门为V5定制的nubia全新UI，为您带来全新体验。整套UI在秉承扁平化设计理念的同时，极大地提升了易用性。在保证实用性的前提下，UI控件样式传承了品牌设计理念，传达出纤细轻薄、年轻时尚的视觉感受。</span></span></span></p>', 'V5', '移动2G/联通2G（GSM），移动3G（TD-SCDMA）', './upload_images/3c69719e-41b0-4117-a98b-dcc93395dc1e.jpg', '899', '1G', '4G', '5.5-5.0', '2014-04-17 ');
INSERT INTO `t_mobile` VALUES ('9', '三星', '1300万', '白色', '2.3GHZ 四核', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203542090.jpg\"/><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203552935.jpg\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; text-align: center; background-color: rgb(255, 255, 255);\">尊敬的顾客：</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在选购手机的同时可参加京东商城与中国电信合作推出购机送话费活动（新入网用户）：该手机属于电信定制机，3G网络制式为电信CDMA2000，您只需点击“购机入网送话费”按钮加入购物车选择套餐、赠费档位、号码后即可享受当地电信的高额话费赠送，订单提交后京东相关人员会为您办理入网，手机和号卡一同配送，具体赠费明细可加入购物车后查看：<img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203571683.jpg\"/></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\">艺术设计</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><span style=\"margin: 0px; padding: 0px; font-size: 24px;\">匠心独具的设计</span><br/>流畅简洁的机身线条，纹理触感设计的后盖，彰显经典与永恒韵味的侧面齿状花纹，外加精心的拼接处理，凝铸为匠心独具的GALAXY Note3。简约而不简单的制作工艺，带来卓尔不群的外形和手感。5.7英寸全高清炫丽大屏，让精彩内容一览无余；分辨率高达1920×1080，屏幕更大的同时显示更细腻更自然，让您的视界更宽广、视觉体验更丰富。GALAXY Note3，让功能和艺术设计完美平衡，完美绽放。</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203595916.jpg\"/></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\">S Pen浮窗指令</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\"><br/></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><span style=\"margin: 0px; padding: 0px; font-size: 24px;\">魔法生活的开始<br/></span>GALAXY Note3的S Pen浮窗指令宛如神奇的魔法，助您瞬间完成各项指令。您只需将S Pen悬浮于手机屏幕上方的任何位置，轻点笔杆的按钮，屏幕上就会自动弹出S Pen浮窗指令的5个常用的强大功能：智能备忘录、随剪随贴、截屏编写、S搜索和随笔窗口。S Pen浮窗指令可随时开启，省去了反复切换屏幕的麻烦，让您的任务处理更加轻松便捷。</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203610926.jpg\"/></span><br/></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\">智能备忘录</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\"><br/></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><span style=\"margin: 0px; padding: 0px; font-size: 24px;\">下笔即来的便捷</span><br/>GALAXY Note3的智能备忘录，能将您的笔迹直接连至7个常用的功能指令：通话、保存联系人信息、发信息、发邮件、搜索网页、地图搜索位置和添加任务。只需手写便条，即可为您执行相应指令，或是将您的手写信息转化为格式化的内容。当您记下某个目的地的名称，就能立即进入地图并找到相应位置；当您手写一个电话号码，就能直接转入通话或存储功能。</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203626440.jpg\"/></span><br/></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\">随剪随贴</span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 32px;\"><br/></span></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><span style=\"margin: 0px; padding: 0px; font-size: 24px;\">随手创建资料库</span><br/>GALAXY Note3的随剪随贴，让您轻松收集和组织各种不同种类的内容。无论是网页还是视频内容，它都能灵巧准确地为您剪出所需，并轻松创建专属于您的个性化资料库。任何您需要的信息，只需轻按S Pen按钮，选择随剪随贴功能，用笔圈出内容并进行编辑，然后保存到剪贴库即可。同时您也可以自行创建文件夹，依照主题分门别类。</span></p><p></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203641669.jpg\"/></span><br/></p><p><span style=\"margin: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;;\"><img src=\"http://img30.360buyimg.com/jgsq-productsoa/g15/M06/1F/1D/rBEhWlLCXZIIAAAAAAH1PbIwbD4AAHcQwO5NncAAfVV412.jpg\"/></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; text-align: center; background-color: rgb(255, 255, 255);\"></span><br/></p>', 'N9009', '电信3G', './upload_images/3187912f-ee6c-4f0d-a12b-c18d85d26a16.jpg', '3999', '3G', '16G', '5.7', '2013-11-29');
INSERT INTO `t_mobile` VALUES ('10', '小辣椒', '1300万', '白色', '四核1.3GHZ', '<p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203891273.jpg\"/></p><p>四核高速处理器，Cortex -A7超低功耗架构</p><p>顶级28纳米工艺四核1.3GHz处理器，1GB高速内存，速度更快，安兔兔跑分17000+，Cortex-A7构架超低功耗，待机更持久。</p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203916760.jpg\"/></p><p>5.0英寸IPS高清大屏，色彩精准，高度耐磨</p><p>时下主流HD分辨率（1280x720），OGS全贴合IPS全视角高清大屏，拥有更广的可视角度，1670万种色彩更精准，使用高硬防划伤玻璃，耐划耐冲击，保持细腻的手指滑动触感。</p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203936649.jpg\"/></p><p><img src=\"http://localhost:8080/MobileStore/ueditor/jsp/upload/1399203944454.jpg\"/></p><p><img src=\"http://img30.360buyimg.com/jgsq-productsoa/g13/M01/13/0A/rBEhVFJt1ZkIAAAAAALvva8ieygAAEq1AJ6EOoAAu_V002.jpg\"/></p><p><br/></p>', '麻辣白', '移动3G', './upload_images/7fd7ca05-eefa-4118-9b40-9acd85824c87.jpg', '698', '1G', '4G', '5.5-5.0英寸', '2014-01-02');

-- ----------------------------
-- Table structure for `t_orders`
-- ----------------------------
DROP TABLE IF EXISTS `t_orders`;
CREATE TABLE `t_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_Status` int(11) NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `recipient_address` varchar(255) DEFAULT NULL,
  `mobile_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(20) DEFAULT NULL,
  `paymentMode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_s8rwvjmfv2hi1uuwl2txuonve` (`mobile_id`),
  KEY `FK_8x1tlmufelu2v0er2x317dpor` (`user_id`),
  CONSTRAINT `FK_8x1tlmufelu2v0er2x317dpor` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_s8rwvjmfv2hi1uuwl2txuonve` FOREIGN KEY (`mobile_id`) REFERENCES `t_mobile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orders
-- ----------------------------
INSERT INTO `t_orders` VALUES ('1', '0', '18cf94ae-07ed-4448-8f33-d22d6ceb81dd', '6000', 'cfc6041c-6e3a-44b4-ad59-3a5920c12ebf', '2014-04-26 16:46:17', '15243675422', '2', '湖南桂东', '1', '1', null, '货到付款');
INSERT INTO `t_orders` VALUES ('2', '1', 'e176a46a-5777-4740-9ed6-4ade75f99827', '6000', 'a1c38eed-364f-4942-974d-59751dc793b0', '2014-04-26 16:46:17', '15243675422', '2', '湖南桂东', '1', '2', null, '货到付款');
INSERT INTO `t_orders` VALUES ('3', '0', '83405011-c6c3-4220-b49a-e850f7a04564', '6000', 'f6490ca4-e53a-48bb-a6d3-6353ad51b904', '2014-04-26 16:46:17', '15243675422', '2', '湖南桂东', '4', '1', null, '货到付款');
INSERT INTO `t_orders` VALUES ('4', '0', 'f8012c58-3116-4d77-b772-89e393ccfd45', '0', '605233b8-5ebc-4f16-bb28-45704a26c3fa', '2014-04-26 20:13:05', '', '1', '', '3', '1', null, '货到付款');
INSERT INTO `t_orders` VALUES ('5', '0', '239e0a60-3318-4c78-8edf-467530d4ba82', '1499', 'e009512a-c475-437d-a23e-eab5b516af37', '2014-04-26 20:13:05', '', '1', '', '5', '1', null, '货到付款');
INSERT INTO `t_orders` VALUES ('7', '1', '5e825939-79d1-42d6-9ff5-eda4d46f3c4d', '6000', 'de23e341-1c31-4278-8c14-214ee6b5b8ef', '2014-04-26 21:36:09', '', '2', '', '1', '2', null, '货到付款');
INSERT INTO `t_orders` VALUES ('8', '0', '1d5030d8-408f-4d45-8613-a8b6e62fe014', '12000', 'ad7b6e0b-cfa9-4f46-adf0-356f6286dd2a', '2014-04-26 21:38:42', '15243675422', '4', 'htht', '1', '2', null, '货到付款');
INSERT INTO `t_orders` VALUES ('9', '0', 'c5381a6c-cf05-4f39-8287-f9c5f00610e9', '0', '679f0b54-ac7b-4147-add1-5d502f96018e', '2014-04-26 21:39:12', '15243675422', '1', 'dd', '3', '2', null, '货到付款');
INSERT INTO `t_orders` VALUES ('10', '0', 'd5ebba48-fae8-46bc-9573-b42ed89cc69b', '9956', 'af51f111-92e2-4262-815c-38bbebc2f6e2', '2014-04-27 22:32:34', '15243675422', '2', '湖南长沙', '6', '2', '方雷江', '货到付款');
INSERT INTO `t_orders` VALUES ('11', '0', 'c2694b03-3ccf-411d-9cd3-7a67cadb955e', '1396', 'c6b6b8c1-737c-4d9e-b284-ef4118c9f7b1', '2014-05-05 10:03:27', '15243675422', '2', '湖南长沙', '10', '2', '方雷江', '货到付款');
INSERT INTO `t_orders` VALUES ('12', '1', 'c1ffafbe-9851-4987-b964-62021e420e7c', '11997', '120150e7-2193-439f-9a30-f24317a35150', '2014-05-05 16:32:55', '15243675422', '3', 'gg', '9', '2', '方雷江', '货到付款');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `identitys` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '湖南省长沙市', '2014-03-31', '管理员', '76d80224611fc919a5d54f0ff9fba446', 'mal', '123@qq.com', '已激活');
INSERT INTO `t_user` VALUES ('2', '湖南省长沙市', '2014-04-23', '普通用户', '76d80224611fc919a5d54f0ff9fba446', 'mal', '456@qq.com', '已激活');
INSERT INTO `t_user` VALUES ('3', '湖南桂东', '2014-04-22', '普通用户', '76d80224611fc919a5d54f0ff9fba446', 'mal', 'fang@qq.com', '已激活');
INSERT INTO `t_user` VALUES ('4', '湖南省长沙市', '2006-02-07', '普通用户', '76d80224611fc919a5d54f0ff9fba446', 'mal', 'asd@qq.com', '已激活');
