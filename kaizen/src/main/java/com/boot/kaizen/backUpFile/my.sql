/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.5.28 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\r\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\r\n    <userTask id=\"usertask1\" name=\"处理任务\"></userTask>\r\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\r\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n    <userTask id=\"usertask2\" name=\"经理处理\"></userTask>\r\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\r\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask2\" targetRef=\"exclusivegateway1\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[#{msg>0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <userTask id=\"usertask3\" name=\"总经理处理\"></userTask>\r\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\"></sequenceFlow>\r\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\r\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"endevent2\"></sequenceFlow>\r\n    <sequenceFlow id=\"flow7\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\r\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"71.0\" y=\"191.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"260.0\" y=\"180.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"920.0\" y=\"192.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"182.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"611.0\" y=\"189.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"720.0\" y=\"181.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"614.0\" y=\"320.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\r\n        <omgdi:waypoint x=\"106.0\" y=\"208.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"260.0\" y=\"207.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"207.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"440.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\r\n        <omgdi:waypoint x=\"545.0\" y=\"209.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"611.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\r\n        <omgdi:waypoint x=\"651.0\" y=\"209.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"720.0\" y=\"208.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\r\n        <omgdi:waypoint x=\"631.0\" y=\"229.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"631.0\" y=\"320.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\r\n        <omgdi:waypoint x=\"825.0\" y=\"208.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"920.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0),('3',1,'D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.myProcess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0m\0\0\0.���\0\0�IDATx���}�]e�/���x��&�M�CL1���7$�\\r��Ę`�/��Z�X@�4��\n-�G�\"T�pŃ�r\ZK�X9@��S�!���9\n�-m�����03�>���&{63��ݯ3��$Of�={���3뷾ϳֳ��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�˲�}xy������۳�zHk����g��_FSۨ�\0\0�I�;wfG��N�>��P;v�X�cǎ����\0�e� 2\0�Tw����q*���T�Z� �f�:�ࠠ�v�P��:hu�\n�5��\0�A.�T(vЪ9h���%\0B��7g�?پ��Z<��aE�A��?�^j�/\0��\"�����[�=��e�Z��S�y������Ad�\0fm�y������ʾ�bE�A��?c�b����[��ߟ�y�P�S�y����t��\"ۿؿ\0P�\"��C�OZ��{\n�\"�Uӟ�jUjY�+��_\0@(V��g���<���/~]�#Q/�_��Y�r幷�z��p�\r��V�\ZY�dI��Օ}��_/�ŋg˗/]�v���}���?�{�\Z3���5�����B��;h����<�L�`l�b�B+koo?/�\r)/����x=}��S���H�z\"��/=�3�}j-��o����_�vwww�z��l�֭�SO=U�7���p������x [�~}�`�����g�墋.z�O��R������E>��+�Z5����L�c����jkk[����\0\\A;���2T����_�^{�ۗ]vY�y��B����P�k׮B�^�d�H�=7�T�	E~������{w�H���bE�A��?7Ԫ3����16�l�Bӥ0� ���2���1{�Sm�d7_z�ٝwޙ\rf�z��G�E�e���w�\r{�O�V.��^��o�U��5EX�wЪ��M	�g\n�f�\r\"ۿ�\n�xwy���M{{{������>��<yrl1ξ}��g�-[��g�N����s�O�����g������j�����-�ܒ-\\�px������i�P|�T���� �k�=�X�wЪ��\r�|^e3������/�DL���)�dw�uW!�V\"&$�r՞��q����}4�=>��+����W�M�6e��ݣ_�����\'N���o볻n�tf-��ޮ���VMnX ^s�?\'D��a�8��7Kl\\>\Z3�Ո���m�6na��FS8^�S��8e:f���s��w_c3ƴN�O����G��x�����{�\n�\"�Uӟ[*���1�l�B%�x�q�&]�q�����e˖��\Zۿ�C,��?��Y��������:lU5�]��T�|E�A��?7̙�j��1�l�¤ʯ!޳gO]rS\\����wvv^l��5�\\s2�j��}�{#����j��\"?��>U�W�y���\\�@\\�S��D����xA�q=Ţ\\�֭w��-Q#q��R-V�>��:;;GmP�Y��6�MaV��j�s�l��Kj�*~�D�Ϲ�� ��u���ۥ����.�;���F��-Q#�_�۱x����?<��4��k���V��sK�5%��?Sˊ_��\'�9�� ��5��ֶ�t��jժD�!��4ꎎ�m�*�\\������l``�i����$6�k��5E�A��<�q�U1�f��@���J��\Zc�����I��HL�K��~���`����ƍw�t�]~��;::��\"T�s\Z�NR���`��������s|@x��:Q��*O���1��K��}�4n�Ԉ;��{����ݿ��K/=ז��\r7�0x���7=�t�MǝBM��8�9���e��\"?����?�uv��T�����?�k׮���35Ow@r�@��ʠ[i���RDV/���#��\r�qg��,===��n��z�ѮZ5��SO5=�ٳ��Ǘ-B\rBqގM�SS��ҟ��W�L_�,��3�?�������\Z�S�Ne�6m\Z��+�4[$�2��)�V\Z�K���yst�� �zIuq�r�V���=��c��ZY�dIS���9rd8�lj��vj��X�W�g�b.���L4\n�?Ϭ�|�ĉKR�}g�Zx����ux�Lg���	�t�d����2��̛��RDV/���#&������5sRq��W�8�ˇOGlP[�:�ⱝZ��)����o���A�����<x`dd䌵ptt4{��F�.]�v6\rH�e �*��\"W��cYS/���Gz<����U�˥�2�Ŷ^��UL#�hZխ�E>�~�ߌ=�{ޓ�}�k���߱c�\n��i6��߿�{������/�^����ii�^���^���H�\rO/�6����N��������Q͍S�bP�hz|8�������K����s��gjϤ�tjO�iH�=\Zk��+�����#�=��oK���ڽ�mN���M��%�_��J�7��7����$��G������ߏ[8�������o���Ժ������_N�!=�ܙ�q����{��~ۻwo��o�VZ_{�l�ƍ�ł.�a@�3��jqy0^�� �P�t�>J��^\n�hCCC���l=3�0��Z*�k�El�Y�y��\\�C<��ە��ȑ#�g?��BH�e�?���_��7�������������`���ܹ3��{~������k^��	C����qϿ��/4��_r�%�5������W���XU1�Aj�J��������#@��yq���%�sꌠ��.*Ϟ�HS��PX�R�5�ljwD�M�7�W����b\0~0q���ߋAyo18?��u����������_�`^i~�؏��`jo���bП�<�ԭ��?۰aC���W\\�g�gg�`d���k�׼��3ħ��W�q���ۿ�*��uqݺu���,|?�������u������u-�~���J���@Z��cǎ���Z��qa�N��/Y(�Q��k\\���<K�]��n��H�q���qa���踟����u�@<YᏠ:�-?�0�ݚ�<1�A�����鵭[�f�/~�����tk�o��b��8��P��Ά�yg^m�L�D��{���`P<��4��~��;1CW����^[��r�������a�xZ�r��}�Zb���-B\rvb\'bA��no���5�g��O�S��_�\"���~Vx~����QX��O?�t���wߝ:t����_.|�ĉ����{Z�8F����o��޿��oNk�Xdi�b|���qpZY��Қ5k��A���������{�f��5�; Y@]Sl�Т��YM�����}�{�?��O�/����{����W�X1��+_�JM��=x�^Ύ���Bq��m۶��}���\"T���@��!\"�Q�#@��\'�xb� ?��7\n�o�Y(�yP��<�NVlo���c�X�@�u�����<�7������?-|�^���x|��g���g��1bf���ᾩf\n�՟��]N�����\'�~`�|ѭ�{n_��=�����m@���Y�O��A�3��]��>���K_����}h^CK��q��X3#l>���z^�������ӳP:�~4��h�+���T�)�P/�\nQcv6�����_(��3_q�X��|�7Bk����F����\"Y����9�����ӟ�M0S��K/\n�G>�����X`�0��=���S��Ta��tP(n����Rq�?��f�џ�Vߟ��]�t�ғNco�\\��`���u@r�`|�@Z����<��S�2���\r�Qc��X�ӟ.�}�{�yim�>u�l��=x�^Ξ��X���S�vI(~�֫��W_}�7����At�Q<��Τ�2\"W��_ׯ__x��?�y��A\':ȏp��(�f�薿��w͛��<<�E��W^���V���g����q��O{���P9�i�v����`��^{���_\"�+����%�ZOOϻN�����|\\����ũץ�e�.�{�Z��]�w�(����ަe�e˖�ޕb�-S�+V�ر�i��?�y���gK0[CDi���](��J����뮛��Ї\n�#t��b;Y��$��\'f�J�O�o��������9�\'\n�k���}�@�b��X; Z�w�f͚�������y�;,�`Y>�;�@�t�5x�^��3�\na4��s���^O\\���2U��kn��ꫛrk�ءuvv�F�%��8�c��(�Q4�?���(y,�8Z�����;�p`��	�+�|�c&��8���V�����b����8^۾}�P�?O9���T���1.?��W�*?%z�`|[ٿ3\'�!n��K\\��1���� ۼ�YKQ\'[m>�T��X��?�~����z^ۿ���oٲ��j�ƍ��x�-R#K�,���F��N:��\"\"�~��Ȗ.]:���F�G?�Q���](�qMp^T#���u��;V�^=�[*��^\\S3~�k��w��w\n��T�;8՟k�K�*\r��,�5��͹�.���e```��K�u�������=��dĪ�1x[z�x}���c�cp�������=JO��EJyk�����u�lu�-R#�-�6���h��r�R���N�c0WB��������T���S�#��6���,��\\��G�i�j�Ł�µ��-c�m����`q%�ˍ\Z���=��+>�Ӹ\'}��]�v�-m�\ZK;�W��,�8�:\\�鶶��>y�bM��������\\�`\\��N�F�T/����☹}��랡�V����,�e[�#��ַމSV���ѣqM�p���SG��y�Y������E��]R0=��̭�}�r��ӦS����X����{�^��q�w��Q�5E^֟�@��<;e�������?��)׌�Auݺu���P]q,4iq����S0��;F�p\r�byM�ן�g�l+�鵨����\r���~Yj�y`�k~c1�Z�2]6C|̚L�۸��p�J��T{ۥXe:�r\r1�������3�5uz?�/�/�D\n�����Ƭ�={�^e:�P�{���Mav��o<u����f��92r뭷��p�=�l@yM�ן�g�����#���b�/������ۛ���U�<X�q��p�iy��#礍�#��ŋ���|�GLl�2�#{��y���n:~�W�J?��0��c�Q�5E^֟9Kg�F8_eZ ����:;;/��Tf����*۴iS�6��Ju~�q|��ʛ7o�V�XQ�-�Պ��b@>��;�+����Dj{�㞅~�\'�\"�)����L\rL6c�i��ZJqBqw���Y�Cn�(�<����dX ���e�ٲ)��,]����?�|�OP�y�g��ɂ���������Lg��7�[<�vx��mR{2�\r��O\rP�yE^֟�ʪ8���K�/�/�/\0(������sQ1c�b�\0��\"�?�3��P����\0L����RE�A��?�ؿؿ\007�ܹs��ѣ�i��W^y�T�O�Z�\"D��_\0��Gy�v��1�ꫯ*�-�~��wR[��:huЊPlY3�@��е&���`Uk�vZ v���� �f\0�A��V�b�ȚAd\0\0�Z�\0\0@(\0\0\0�\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0@(�\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0�\0\0@(\0\0\0�\0\0\0�b\0\0\0hN\0>!��-�\0\0\0�1/8S(noo_�\0\0`��cS��]t��|J\0\0\0��P<�lqGGG�O\0\0���\'���-��\0\0\0̅P����\0\0\0��`|�,1\0\0\0sR{{�e%�x�O\0\0�9%���,1\0\0\0�Z{{�y�mH!xoGG����p���#qK��������.��\0\00����-/�~��v\"���$\0\00�W�~�,�py;��>U\0\0\0fB �]l�������l���پ}��Çg\'O�����Pv�����g�Ͷl�Rx߂&\n�����\'\0\0@����8�x��X�]�pav�]wBo%��[�f===��3M�F�O\0\0��\n�)��Y\Z`W�^]�����p�m۶�Ls��M�x�O\0\0�V	��f��4�����ߟ-[��|�x�O\0\0��*��xϞ=Y=�5�q�q�qgg�Ŷ\0\0\0\0�\n��g��)�Z�nݸ��=�m	\0\0\0\Z.ҷK�!��)ӓ9~�x�hѢ�Ө�%\0\0\0h����奫LW��V%{�q�Qwtt\\h�\0\0\0�0)�Ƀi�v��֯__\Z���\"\0\0\04D\\ǛҸ]R��!���~���/���sm\0\0\0\Z�7�4V�n�����E�zm\0\0\0�.NWnԊ�S��{,�\0\0@cutt���Ѿ�����\'r�u��\0\0\0u��pF��t����g�-\0\0@#B�X=y�d�B���P�Lqf�\0\0\0��P�lB1\0\0\0M�f�\0\0�k��5�\0\0\0�MV�\0\0`�J��V�Oq��%��I[\0\0�����ܘ����ަ��e˖��������\0\0\0u���uAF������M����ϳe\0\0\0h��늷l���P�q���P��\0\0�aJO�^�dICo����_��.��n�E\0\0\0h��.��})��̃�֭[�׮][:K|��\0\0\0��Jg�c���_�{ ޶m۸k���ھlK\0\0\0�)���ҥK������]�v�;m:��m\0\0\0�f����p:��u��eCCCu	�.��\0\0\0�������F��\Z�������c���\0\0h	)���^���{��z��뮻n�5�1\0\0\0-���my\n���!���7���(<x�p����)�1\0\0\0-�����^���lv�UWe�6m�v��YX�:��8�F�Y�͛7g+V�(��\0\0`���bw��\Z�e;�K\0\0\0�8]]]�P��t�\n�����>E\0\0\0f��~�x���X(���ꎎ����@jO�\0�!��|j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�l����.�#\0\0\0\0IEND�B`�',1);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('cfg.execution-related-entities-count','false',1),('next.dbid','7501',4),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('2503','myProcess:1:4','2501','2502','startevent1',NULL,NULL,'Start','startEvent',NULL,'2018-10-14 08:57:31','2018-10-14 08:57:31',0,NULL,''),('2504','myProcess:1:4','2501','2502','usertask1','2505',NULL,'处理任务','userTask',NULL,'2018-10-14 08:57:31','2018-10-14 09:13:15',944549,NULL,''),('5001','myProcess:1:4','2501','2502','usertask2','5002',NULL,'经理处理','userTask',NULL,'2018-10-14 09:13:15',NULL,NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2501','2501',NULL,'myProcess:1:4','2018-10-14 08:57:31',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2505','myProcess:1:4','usertask1','2501','2502','处理任务',NULL,NULL,NULL,NULL,'2018-10-14 08:57:31',NULL,'2018-10-14 09:13:15',944534,NULL,50,NULL,NULL,NULL,''),('5002','myProcess:1:4','usertask2','2501','2502','经理处理',NULL,NULL,NULL,NULL,'2018-10-14 09:13:15',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values ('1','SpringAutoDeployment',NULL,NULL,'','2018-10-14 08:55:04',NULL);

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values ('myProcess:1:4',1,'http://www.activiti.org/test','My process','myProcess',1,'1','D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.bpmn','D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.myProcess.png',NULL,0,1,1,'',NULL);

/*Table structure for table `act_ru_deadletter_job` */

DROP TABLE IF EXISTS `act_ru_deadletter_job`;

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_deadletter_job` */

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ROOT_PROC_INST_ID_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`IS_MI_ROOT_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`START_TIME_`,`START_USER_ID_`,`LOCK_TIME_`,`IS_COUNT_ENABLED_`,`EVT_SUBSCR_COUNT_`,`TASK_COUNT_`,`JOB_COUNT_`,`TIMER_JOB_COUNT_`,`SUSP_JOB_COUNT_`,`DEADLETTER_JOB_COUNT_`,`VAR_COUNT_`,`ID_LINK_COUNT_`) values ('2501',1,'2501',NULL,NULL,'myProcess:1:4',NULL,'2501',NULL,1,0,1,0,0,1,NULL,'',NULL,'2018-10-14 08:57:31',NULL,NULL,0,0,0,0,0,0,0,0,0),('2502',2,'2501',NULL,'2501','myProcess:1:4',NULL,'2501','usertask2',1,0,0,0,0,1,NULL,'',NULL,'2018-10-14 08:57:31',NULL,NULL,0,0,0,0,0,0,0,0,0);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_suspended_job` */

DROP TABLE IF EXISTS `act_ru_suspended_job`;

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_suspended_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('5002',1,'2502','2501','myProcess:1:4','经理处理',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2018-10-14 09:13:15',NULL,NULL,1,'',NULL,NULL);

/*Table structure for table `act_ru_timer_job` */

DROP TABLE IF EXISTS `act_ru_timer_job`;

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_timer_job` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `proj_role_relation` */

DROP TABLE IF EXISTS `proj_role_relation`;

CREATE TABLE `proj_role_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `proj_id` int(11) NOT NULL COMMENT '项目ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `proj_role_relation` */

insert  into `proj_role_relation`(`id`,`role_id`,`proj_id`) values (33,16,53),(36,1,9);

/*Table structure for table `sys_logs` */

DROP TABLE IF EXISTS `sys_logs`;

CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_logs` */

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`parentId`,`name`,`css`,`href`,`type`,`permission`,`sort`) values (7,0,'系统设置','fa-gears','',1,'',5),(8,7,'菜单','fa-cog','pages/menu/menuList.html',1,'',6),(9,8,'查询','','',2,'sys:menu:query',100),(10,8,'新增','','',2,'sys:menu:add',100),(11,8,'删除','','',2,'sys:menu:del',100),(12,7,'角色','fa-user-secret','pages/role/roleList.html',1,'',7),(13,12,'查询','','',2,'sys:role:query',100),(14,12,'新增','','',2,'sys:role:add',100),(15,12,'删除','','',2,'sys:role:del',100),(71,0,'系统管理','fa-cog','',1,'sys:sys:system',1),(72,71,'项目管理','fa-credit-card','pages/project/list.html',1,'sys:project:list',11),(73,72,'编辑','','',2,'sys:project:edit',12),(74,72,'删除','','',2,'sys:project:del',100),(75,71,'角色管理','fa-user-md','pages/role/list.html',1,'sys:role:list',21),(76,75,'编辑','','',2,'sys:role:edit',22),(77,75,'删除','fa-times','',2,'sys:role:del',23),(78,71,'资源管理','fa-sitemap','pages/menu/list.html',1,'sys:project:list',3),(79,78,'编辑','','',2,'sys:menu:edit',31),(80,78,'删除','','',2,'sys:menu:del',32),(81,71,'用户管理','fa-user','pages/user/list.html',1,'sys:user:list',24),(82,81,'编辑','','',2,'sys:user:edit',100),(83,81,'删除','','',2,'sys:user:del',101);

/*Table structure for table `sys_project` */

DROP TABLE IF EXISTS `sys_project`;

CREATE TABLE `sys_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_name` varchar(50) NOT NULL,
  `proj_code` varchar(60) DEFAULT NULL,
  `proj_intro` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_project` */

insert  into `sys_project`(`id`,`proj_name`,`proj_code`,`proj_intro`,`sort`,`createTime`,`updateTime`) values (9,'山东移动','shandongyidong','这是山东移动的项目便测试','1','2018-09-16 20:31:08',NULL),(53,'上海联通','shlt','主要用于资源的测试使用','1','2018-10-06 09:36:58',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `sort` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`description`,`createTime`,`updateTime`,`sort`) values (1,'ADMIN','管理员','2017-05-01 13:25:39','2018-10-06 21:35:26','1'),(16,'系统管理员','管理系统的核心功能','2018-10-06 09:41:50',NULL,'1');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`roleId`,`permissionId`,`id`) values (16,71,106),(16,78,107),(16,79,108),(16,80,109),(16,72,110),(16,73,111),(16,74,112),(16,75,113),(16,76,114),(16,77,115),(1,71,162),(1,78,163),(1,79,164),(1,80,165),(1,72,166),(1,73,167),(1,74,168),(1,75,169),(1,76,170),(1,77,171),(1,81,172),(1,82,173),(1,83,174),(1,7,175),(1,8,176),(1,9,177),(1,10,178),(1,11,179),(1,12,180),(1,13,181),(1,14,182),(1,15,183),(1,3,184),(1,4,185),(1,69,186);

/*Table structure for table `sys_role_user` */

DROP TABLE IF EXISTS `sys_role_user`;

CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role_user` */

insert  into `sys_role_user`(`userId`,`roleId`,`id`) values (1,1,1);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`password`,`nickname`,`headImgUrl`,`phone`,`telephone`,`email`,`birthday`,`sex`,`status`,`createTime`,`updateTime`) values (1,'admin','$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK','zhangsan',NULL,'','','','1998-07-01',0,1,'2017-04-10 15:21:38','2017-07-06 09:20:19'),(3,'zhangsan','$2a$10$j55EvI3qSHg/rrlYY7lVLe49ZYEKOs49lE2MXV.dBHMtIkNeGyq9W','zhangsan',NULL,'15797655652','12345678','19348243@qq.com','2018-10-01',0,1,'2018-10-07 11:18:08','2018-10-07 11:18:08'),(4,'zhangba99','$2a$10$oA.v9LTDKavxXc5zBSqTceXwK.KvVsgx6fDoY8aEbMpdK3t462MJu','张八9',NULL,'15797655753','15797655753','19348243@qq.com','2018-10-10',1,1,'2018-10-14 18:36:57',NULL);

/*Table structure for table `t_dict` */

DROP TABLE IF EXISTS `t_dict`;

CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_dict` */

insert  into `t_dict`(`id`,`type`,`k`,`val`,`createTime`,`updateTime`,`sort`) values (1,'menu','1','菜单','2018-10-05 09:58:24','2018-10-05 09:58:24',1),(2,'menu','2','按钮','2017-10-05 10:03:46','2017-10-05 10:03:46',2),(3,'sex','0','男','2018-10-03 21:21:21','2018-06-06 12:12:12',3),(4,'sex','1','女','2018-10-03 12:21:21','2018-10-04 12:12:12',4);

/*Table structure for table `t_token` */

DROP TABLE IF EXISTS `t_token`;

CREATE TABLE `t_token` (
  `id` varchar(36) NOT NULL COMMENT 'token',
  `val` text NOT NULL COMMENT 'LoginUser的json串',
  `expireTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_token` */

insert  into `t_token`(`id`,`val`,`expireTime`,`createTime`,`updateTime`) values ('2af47eaa-d58c-45dc-9224-407bb575024a','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539487024706,\"id\":1,\"loginTime\":1539479824706,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"2af47eaa-d58c-45dc-9224-407bb575024a\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 11:17:04','2018-10-14 09:17:04','2018-10-14 09:17:04'),('395578b4-a3ff-489a-8e62-a4d899098fc6','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"1\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538840135800,\"id\":1,\"loginTime\":1538832935800,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"fa-cab\",\"href\":\"2\",\"id\":69,\"name\":\"浮雕\",\"parentId\":2,\"permission\":\"1\",\"sort\":100,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"1\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"395578b4-a3ff-489a-8e62-a4d899098fc6\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-06 23:35:35','2018-10-06 21:35:35','2018-10-06 21:35:35'),('41e741d1-a38a-4811-8500-6ec009439538','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"1\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538828909025,\"id\":1,\"loginTime\":1538821709025,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"1\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"fa-cab\",\"href\":\"2\",\"id\":69,\"name\":\"浮雕\",\"parentId\":2,\"permission\":\"1\",\"sort\":100,\"type\":1}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"41e741d1-a38a-4811-8500-6ec009439538\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-06 20:28:29','2018-10-06 18:28:29','2018-10-06 18:28:29'),('51e2af77-15dd-47bc-8340-d96232ed50a0','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539520548746,\"id\":1,\"loginTime\":1539513348746,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"51e2af77-15dd-47bc-8340-d96232ed50a0\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 20:35:48','2018-10-14 18:35:48','2018-10-14 18:35:48'),('8ae8e643-41d3-4ce6-aa11-52ff95c0f700','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538883669317,\"id\":1,\"loginTime\":1538876469317,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"8ae8e643-41d3-4ce6-aa11-52ff95c0f700\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-07 11:41:09','2018-10-07 09:41:09','2018-10-07 09:41:09'),('b60a0921-40f2-4afa-9254-304b7f8e1267','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539486984933,\"id\":1,\"loginTime\":1539479784933,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"b60a0921-40f2-4afa-9254-304b7f8e1267\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 11:16:24','2018-10-14 09:16:24','2018-10-14 09:16:24'),('ee566333-11a8-451e-afe9-91082acb04a9','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538891531461,\"id\":1,\"loginTime\":1538884331461,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"系统管理\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"资源管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"项目管理\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"编辑\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"角色管理\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"编辑\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"删除\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"用户管理\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"编辑\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"删除\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"编辑\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"删除\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"删除\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"ee566333-11a8-451e-afe9-91082acb04a9\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-07 13:52:11','2018-10-07 11:52:11','2018-10-07 11:52:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
