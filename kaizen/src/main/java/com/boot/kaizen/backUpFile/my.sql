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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\r\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\r\n    <userTask id=\"usertask1\" name=\"Â§ÑÁêÜ‰ªªÂä°\"></userTask>\r\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\r\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n    <userTask id=\"usertask2\" name=\"ÁªèÁêÜÂ§ÑÁêÜ\"></userTask>\r\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\r\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask2\" targetRef=\"exclusivegateway1\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[#{msg>0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <userTask id=\"usertask3\" name=\"ÊÄªÁªèÁêÜÂ§ÑÁêÜ\"></userTask>\r\n    <sequenceFlow id=\"flow5\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask3\"></sequenceFlow>\r\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\r\n    <sequenceFlow id=\"flow6\" sourceRef=\"exclusivegateway1\" targetRef=\"endevent2\"></sequenceFlow>\r\n    <sequenceFlow id=\"flow7\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\r\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"71.0\" y=\"191.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"260.0\" y=\"180.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"920.0\" y=\"192.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"182.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"611.0\" y=\"189.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"720.0\" y=\"181.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"614.0\" y=\"320.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\r\n        <omgdi:waypoint x=\"106.0\" y=\"208.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"260.0\" y=\"207.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"207.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"440.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\r\n        <omgdi:waypoint x=\"545.0\" y=\"209.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"611.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\r\n        <omgdi:waypoint x=\"651.0\" y=\"209.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"720.0\" y=\"208.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\r\n        <omgdi:waypoint x=\"631.0\" y=\"229.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"631.0\" y=\"320.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\r\n        <omgdi:waypoint x=\"825.0\" y=\"208.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"920.0\" y=\"209.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0),('3',1,'D:\\sourcetreeaz\\actSecurity\\kaizen\\target\\classes\\processes\\MyProcess.myProcess.png','1','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0≈\0\0m\0\0\0.‚»∆\0\0õIDATx⁄Ì›}å]eΩ/ÊÊx’‰&ÍMÒCL1∆á7$◊\\r√Òƒò`å/ïÁ•Z≠X@Á4¥€\n-ÙåG—\"Tîp≈ÉÙr\ZKëX9@±⁄S€!¿°‹9\n¶-mÜóñ°Ì03Î>øùΩ&{63”Ÿ›Ø3Û˘$OfÔ={¶∞◊3Î∑æœ≥÷≥ÊÕ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`∆À≤Ï}xy˜Ó›ŸˆÌ€≥ázHkÅˆ√g˘À_FS€®ó\0\0‘I‚ù;wfGèÕNü>≠µP;vÏX∂c«é—ê◊Î©\0ÕeŸ 2\0≥TwÅ∏µÉq*˙ßıT≠Z¡ ≤fÄ:à‡††∂vãP°ß:hu–\në5É»\0‘A.≈T(v–™9hÉ»Í%\0BÒÌ≠7g˝?Ÿæá◊Z<é◊aEﬁA´¶?£^jˆ/\0ÃÍ\"‚ı˛ÏÈ[ù=˘áe„ZºﬂSày≠ö˛å˝ãAd˚\0fmëyﬂÔﬂàÛˆ æ˚bEﬁA´¶?cˇbŸ˛ÄŸ[‰ˇﬂü˛y“PﬂSày≠ö˛‹tÁ˙\"€øÿø\0Pß\"ˇÙC◊OZ‰„{\n±\"Ô†U”üõjUjYÒ+ëÌ_\0@(V‰ıg≠˙Ûú±<µ—‘/~]„#Q/Ì_ÄÜYπrÂπ∑ﬁzÎøﬂp√\rÉ´V≠\ZY≤dI÷’’ï}˝Î_/¥≈ãgÀó/]ªvÌ€È}œ¸‡?¯{ü\Z3±»«5óì˘¯ûB¨»;h’ÙÁ¶‚<«LÒà`lˇbˇB+koo?/µ\r)/ÌÌËËx=}ŒÛS¥Ù⁄H˙z\"Ωß/=æ3µ}j-Ë∆o¸˛ı◊_ˇvwww∂zıÍlÎ÷≠ŸSO=U∏7Êpñ»˙˙˙≤x [ø~}∂`¡Ç…√Èg˛Â¢ã.züOíôR‰˜Ô˙˘§E>æß+ÚZ5˝πÈÅ¯LØcŸ˛Ö¶jkk[û¬Ó°“\0\\A;ë⁄Ì2TËÈÈ˘_◊^{Ì€ó]vY∂yÛÊBË≠ƒ––P∂k◊ÆBê^≤d…H˙=7˙Tô	E~†ˇ©ÏÈØ{wÄHØ≈˜bEﬁA´¶?7‘™3ﬂ¸˚Æ16àlˇB”•0ª µ∑Œ2ó∑”1{ÏSmíd7_zÈ•Ÿùwﬁô\rf’zÙ—G≥Eãeﬂ˘Œwß\r{éOòV.Ú—^¯€oﬁU‡„5EXëw–™ÈœM	ƒg\nºfå\r\"€ø–\nÅxwy∞çÀM{{{ìå˚ˆÌÀ>úù<yrl1Œæ}ˆŸg≥-[∂ﬁg€Néè•ﬂsÅO∏ÅÆπÊögÆ∏‚äÏ±«ÀjÈ¯Ò„Ÿ-∑‹í-\\∏px˛¸˘Á˚§iŸP|ÍT∂ˇØﬂ “kÒ=ÖXëw–™Èœ\r±|^e3¿ïæÉ»ˆ/‘DL˙Ø≤)Ûdw›uW!ÙV\"&$„r’ûûûq¡∏ΩΩ}4˝=>Ì‚+Øº≤‚çWâMõ6e›››£_˚⁄◊˛¡\'N´˘∏oÎ≥ªnûtf-æÁﬁÆäºÉVMnX ^sñ?\'D∂°aÅ8Ö÷7Kl\\>\Z3¬’àµõ∂m€6na„‘FS8^ÔSØ£8e:fàÎàs˜›w_c3∆¥NëO≈˚˛G≤ˇx‡˚ì‚º≈{‚Ω\næ\"Ô†U”ü[*◊ÍÁ1àlˇB%°x‹qú&]∫qµ˙˚˚≥eÀñïœ\Z€ø’C,™◊?ÒƒY£¸ˆ∑øÓÍÍ:lU5ö]‰œTÿ|EﬁA´¶?7Ãô’jÙÔ±1àlˇ¬§ Ø!ﬁ≥gO]rS\\É◊óŒwvv^l‘ÿ5◊\\s2’j¥Ô}Ô{#ÌÌÌˇj–Ã\"?ù¬>U¡Wòy≠ö˛\\”@\\´SüÕD∂°ûÅxA˘q=≈¢\\Î÷≠w„∏≤-Q#q‚∏ÌR-Vô>õ”:;;GmPöY‰œ6ÁMaV‰¥j˙sÕlàˇKjø*~≠D˘œπ∆ÿ ≤˝uëÚÀ€•◊◊ÚîÈ©.é;˙îúF˝∏-Q#◊_˝€±x≥¸á?<ßÿ4´»käºÉV≠˙sK‚5%¡ˆ?SÀä_ßå\'˚9¡ÿ ≤˝5’÷÷∂ºtïÈj’™D‹!®Ù4Íééémë*≠\\πÚ‹ÓÓÓl``†i°∏øø$6®kãä5EﬁA´˛<Áq¯U1ÿf„“@ú∑€JæÔ\Zcı“˛ÖöIŸÂHL„∂Kç∂~˝˙“`º◊©“∆çw«t≥]~˘Âß;::ñÿ\"T±s\ZòNR‰˘ô`∫ÉÑ˙ÛÃÔœs|@x≤†:Q¿ù*O˜˝Æ1ä’K™ó}ÊÅ4nó‘à;˜î{˛˘Á«›ø¯“K/=◊ñ©¬\r7‹0xˇ˝˜7=ﬂt”M«ùBMï°8ﬂ9§ù√eäº\"?√˚Ûõ±·¬Ö?Ë†uvˆÁT˙ŒÔÔÔ?±k◊Æ∏Ì˜35Ow@rä@º™ †[iÄûÛßRDV/©ÓÔ#’Á\r˘qg¨›,===•ãnı⁄z’—ÆZ5Ú‘SO5=ÔŸ≥ÁÌ∏«ó-B\rBqﬁéM¥SS‰˘“üﬂ…WñL_Ôû,Îœ3≥?ø¸ÚÀ€„ˆ\ZπSßNeõ6m\Z∫‚ä+æ4[$œ2òû)V\ZàKˇ˝ëyst∆ÿ ≤zIuq∫r£Vúû =˜‹c¡≠ZY≤dIS¶¸À9rd8˛ljä«vj•·XëW‰gÇb.Ì«ÔL4\n¨?œ¨˛|‚ƒâKRÕ}g≤Zx‡¿ÅòuxÊLgÃƒ…	ÒtÈd¡˜ÔŒ2èÕÃõ£ßRDV/©ÓÔ#&ÚÚÔ˜ıı5sRq‹ÒÆ≠WÖ8æÀáOGlP[Ñ:Ñ‚±ùZå¯)Úä¸Ôœo•∂ AÎÃÍœ…<x`dd‰åµptt4{‡ÅFó.]∫v6\rHûe û*üÆ\"W˚ﬂcYS/ÁﬂGz<úøﬁ»UßÀ•∫2Óû≈∂^ïæUL#‘hZ’≠ŸE>ﬁ~Ûõﬂå=œ{ﬁì≈}¬k˘˚Àﬂ±c«\nØ«i6ÂÔﬂø·{ü˚‹Á≤˚Óª/Ó^”ˇû≥ii«^æ›‚^Ê£ÈÎH±\rO/é6î⁄È‘N¶˜å‡òﬁÎºQÕçS†bP‰hz|8µ˛Ù˙ÀÈÎKÈÎÈÎs©˝gjœ§ˆtjO∆iH©=\Zk§∂+ΩÔœÈ˘#©=îûoKÌ˛Ù⁄Ω©mNüŸˇMœˇ%µ_ßÁøJœ7¶«7∑µµ˝$ΩˇGÈµ”ÛÎ”Îﬂè[8§ˆèÈ˘Èıoßˆ≠‘∫ª∫∫⁄”Î_NØ!=ˇ‹ô˙q˙ΩÉÒ{¥∂~€ªwoˆ∆oåVZ_{Ìµl„∆çØ≈Ç.≥a@≤3≥„jqy0^Â†ﬂ ≤PÃt˛>Jüó^\n”hCCC„˛€l=3≈0ÂÃZ*ÓkÚElöY‰üyÊô¬\\ÈC<è˚€ïæÔ»ë#Ÿg?˚ŸBHçe˛?Ûôœ˛_‚˘7æÒç¬◊÷Ôˇ˚«˝‹‡‡`·˜Ì‹π3ã≈{~˜ªﬂû«Ôäk^¸Ò	CÙø¯≈qœøÖ/4Ω»_r…%ˇ5µˇñ⁄ˇÍWø˙ëXU1¬AjüJØ˝èÙı¶˘ø#@¶∞yq Ù⁄%ÈsÍå†ôæ.*œû¢HSªÆPX¨Rª5ÇljwD∞Mœ7≈W≈¿˚˚b\0~0q„Ù¯ﬂãAyo18?ë⁄uÎÁ“Û≈¿¡ªøƒ_ç`^i~≠ÿè˚Á`joÉ˝©b–üÉ<⁄‘≠øø?€∞aCˆ˙ÎØW\\„g‚gg√`d˙Œ√kµ◊º˝›3ƒßãØW„qÉ∆Õ€øƒ*∫Âuq›∫uæ˜¡,|?Í›˛á±öu´ºñ∂Í‡u-õ~⁄¸÷Jìä“@ZÂö‚c«éπ¶òZá‚qa∏N˚Â/Y(ÆQ¿„k\\áÚÒè<KÌ]ÔÕn˝ºHﬂq«ÖØqa˘£˝Ë∏üπ˘ÊõﬂuÔè@<Y·è†:ﬁ-?ÿ0Ú›öÉ<1ÛAø˙≥É”Èµ≠[∑fã/~ıØ˝Î»tk‚oºÒb˙ô8À·P⁄ﬁŒÜ…yg^m⁄LÒDéÌ∏{˜Ó¬`P<é∫4Ÿ˚~Úìüˆ;1CW˙˙µ◊^[ı‡rΩØ’ÀŸÒ˜a¶xZπrÂËæ}˚ZbıÈ∏â-B\rvb\'bA¢…no“ÃÖ5äg˛¯O˙Sˆã_¸\"˚Ÿœ~Vx~˚Ì∑øÎ˝QXÛ«O?˝t·Î›wﬂù:t®¯Âó_.|ˇƒâÖÁÈˇ{Z°8FÊÛüçˆÌoªﬁø˝ÌoNk≤XdiÇb|®’¬qpZYé˝“ö5kÜ”Aˇ»◊ü∫Ì∂€˙“{áf Ì5¶; Y@]Slπ–¢Æ≈YM˛á´Ô}Ô{œ?˘…Oˆ/•ÔΩ˜ﬁ{«ˆ±ÕW¨X1ˆ¯+_˘JMóÎ=x≠^Œéø◊œBqü‚m€∂µ }ä˜⁄\"T±õÍ@¨È!\"±QÏ#@ƒ„\'ûxbÏ ?øÓ7\nÚõoæY(»yPé‡<‹NVloπÂñÏc˚X°@∆u¡—Úﬂ≈<◊7ñœˆ˝Ùß?-|ÔÖ^»‚Ïëx|˘Âóg¸„«g°∏1bf∞‰⁄·æ©f\nõ’üúû]N€ÚúÓÓÓ\'“~`§|—≠Áû{n_˙ª=ßÂ«Â≥m@≤äôY´Oœ‚A‰®3Ò˜]˛˙>ÅÏK_˙“ÿÛ∏}h^CKﬁ‚q¸éX3#l>€¡Âz^´ó≥ÁÔ√Í”≥P:ê~4Æ€h∂+ØºÚTÈ)ÅP/Õ\nQcv6¬ƒ˝˜ﬂ_(¯Â3_q⁄X˛˛|Ê7Bk˛æº¿F±çÔ«\"YÒΩ◊Òªœ9ÁúÏªﬂ˝Ó∏”üÁM0S¸“K/\n˝G>ÚëÏÛüˇ¸X`é0èœ=˜‹ÏSü˙TaîætP(nåÆÆÆRq€?ù”fõ—üúVﬂü”ˆ]∞tÈ“ìNco¨\\πÚ`Ä≈Î≥u@rí`|¶@ZØ˚«Á<óÔS‹2É»”\r≈QcﬂßX˙”ü.¸}«{‚yimã>uˆlóÎ=x≠^ŒûøèXê≥ÓSˇvI(~“÷´¬’W_}˛7ø˘Õ¬AtÔQ<´ÕŒ§˚2\"W“ÚÄ_◊Ø__x¸Á?ˇy“”A\':»èpú‡(¥f£Ëñøø¸wÕõ‚ö‚<<ÁEˇïW^˚ôâV™äıgßµÎœq¿∫O{ª∑¬P9úi¶v∫Å∑“`úÚ^{êÊÔ_\"œ+ûù´˘%ÒZOOœªNµéÔ≈ﬂ|\\Í◊«Ûº≈©◊•Éeï.◊{ZΩú]äwô(Ñ—ﬁﬁﬁ¶e®eÀñïﬁïbΩ-S•+VÌÿ±£iÙÁ?ˇy¨º⁄gK0[CDi˚ıØ](ò˘J–Ò¯∫ÎÆõΩ˙–á\n°#t‰Ôèb;YàÆ$óæ\'fﬂJüOˆo≈˙≥É”⁄ˆÁ9Ü\'\n®k™∫”}ø@‹b˚óX; Z˛wªfÕö±€Êµ•˚Öy≈;,ƒ`Y>∞;’@Ótó5x≠^Œ≈3∫\na4Ó‰s¸¯Ò¶^O\\≈ÁŸ2U∫Êöknæ˙Í´õrk¶ÿ°uvvéFÁ≤%òÌ°8Óc±ü(ËQ4œ?ˇ¸¬(y,Ö8Z˙Ò˝ÛŒ;Øp`ãÂ	Õ+Œ|Âèc&≠¥8üÈö‚âVßéÔ«ﬂbÑõ∏Æ8^€æ}ªP¨?O9ê‚‡TÆëò1.?ï˘WÛ*?%z¢`|[Ÿø3\'Ø!n’˝K\\Œ´1¯ó˛ƒ €º‚YKQ\'[m>ŒTâöX˙∑?Ÿ~ß“¡Âz^€øÃ•◊oŸ≤•·j„∆ç•°xø-R#Kñ,âÉõFª·ÜN:ûŸ\"\"Ù~‚ü»ñ.]:Óı∏FÚG?˙Q÷››](¢qMp^T#‰ÔõÓuΩÒ;VØ^=≠[*≈Ã^\\S3~˘kä„wîˇw\n˙ÛT◊;8’ükåKﬂ*\r∏ï,û5ŸœÕπ€.µ˙˛e```Ï÷KÒ∑u∞Ù˚˘≠ÿ‚=•ódƒ™‘1x[z∏x}˛¸˘cècp∂ÉÀıº∂ô=JO°éEJyk¶˛˛˛¬u…luª-R#ã-∫6µ¬ÈhçírÜRáä€Núc0WBÑ¶»œÙ˛Ï‡TÆìÚS©#–ﬁ6ØÚ€,ïˇ\\µ˜G∂i¿jˆ≈Åå¬µ≈˘-c–m≤üôŒ`q%ÉÀç\Zº∂ô=ä˜+>ô”∏\'}£¨]ªv‹-mç\ZK;¢W‚÷,ç8ç:\\‚¥È∂∂∂Â>yÑbMëüπ˝Ÿ¡©˛\\«`\\≠âNÕFΩT/©â“Ÿ‚òπ}Ò≈Îû°‚V∫•◊ß,ıe[¢#ﬂ˙÷∑ﬁâSVÍÈË—£qMÿp¨∂ÈSGë◊y˝Y¶¡∏÷€˛E≥·]R0=í‘Ã≠Á}‚rÉ“”¶Sª€®ìXπ¨ªª{¥^å«q‚¥w˚¥Q‰5E^÷üô@µß<;e⁄˛≈˛ÖÜò?˛˘)◊å‰Au›∫uŸ––P]q,4iq≠äï†S0æ„é;FÍp\rÒ®byMë◊üıg¶l+ùÈµ®ñ˝ã˝\r’ﬁﬁ~Yj£y`çk~c1πZû2]6C|ÃöLç€∏Á•ˇp¨Jã™T{€•Xe:’r\r1äº¶»Îœ˙3‹5uz?ˆ/ˆ/‘D\n©Ω•◊˙∆¨Óû={™^e:Ó∏P˙{‚ÊÖ„Mav‰∆o<u‡¿Åäféè92rÎ≠∑∆Ïp˙=˚l@yMë◊üıgÍåﬂ◊Î#≥±°bÚ/Ö÷—“€€€õıııUÜ<X∏qŸÏp·îiy™π#Á§ç∞#µ·≈ãü˛Òè|‚ëGLl‹2’#{ˆÏy˚¶õn:~ÂïWûJ?ó•0‹ßc˚Q‰5E^÷ü9Kg∫F8_eZ ∂±°©:;;/éÃTf≥´Æ∫*€¥iS·6É±Ju~›q|ç≥ õ7oŒV¨XQÑ-™’ä‚ú˘b@>ñ⁄;•+Ö‡∏»¸Dj{”„ûÖ~–\'Ü\"Ø)Ú˙≥˛L\rL6cÏîi˚˚ZJqBqw˘¨ÒY∂Cnª(Úä<˙≥˛ÃdX ∂±°e≈Ÿ≤)‘Ó,]Ñ´Ç∂?˝|ªOP‰yÙg˝ô…ÇÒ„±˝ã˝ã˝ÀLgœØ7ﬁ[<€vxÇ≥mR{2Ë\r±‡±O\rP‰yE^÷üô ™8êúÁ∂Kˆ/ˆ/ˆ/\0(Úäº˛¨œËœsQ1cˇbˇ\0äº\"Ø?Î3˙≥På˝ã˝\0L”ˆÌ€REﬁA´¶?≈ÿøÿø\007Ì‹πs‰Ë—£äiã∂W^yÂ•T‰OÎ©Z¥\"D÷Ï_\0®ÉGy‰üvÏÿ1˙Í´Ø*®-à~¯·wR[Øß:hu–äPlY3à@ù§–µ&í∑‚`Uk©vZ v–Í†°ÿ ≤f\0¿A´ÉVÑbÉ»öAd\0\0≠Zä\0\0@(\0\0\0°\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0@(ä\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0ä\0\0@(\0\0\0°\0\0\0Ñb\0\0\0hN\0>!¯Ì-ü\0\0\0≥1/8S(noo_„ì\0\0`∂„cSÑ‚]t—˚|J\0\0\0Ã÷P<ÈlqGGGØO\0\0ÄŸå\'∫∂¯-≥ƒ\0\0\0ÃÖPº¿µƒ\0\0\0ÃÂ`|»,1\0\0\0sR{{˚e%°xïO\0\0Ä9%ø∂ÿ,1\0\0\0≥Z{{˚y©mH!xoGG«ÎÈÎpŸ ”#qK¶ÙûæÙ¯Œ‘.Ù©\0\00£µµµ-/ª~∏ív\"µ€Õ$\0\00£Wò~Î,√py;≥«>U\0\0\0fB ﬁ]lª∫∫≤ﬁﬁﬁlÛÊÕŸæ}˚≤√ág\'OûÃ¬––PvÙË—ÏŸgüÕ∂lŸRxﬂÇ&\n««“Ôπ¿\'\0\0@ÀÈËË8ßxΩXê]∏pav◊]wBo%≥≠[∑f===Â˜3MˇFèO\0\0Äñ\nƒ)¥æY\Z`WØ^]òÆ∆p∂m€∂¬Ls…ÔM·xΩO\0\0ÄV	≈„fà„4È¥µ“ﬂﬂü-[∂¨|÷xçO\0\0Ä¶*øÜxœû=Y=ƒ5»qΩqÈåqggÁ≈∂\0\0\0\0Õ\nƒ gàÎ)ÂZ∑n›∏˚«=êm	\0\0\0\Z.“∑KØ!ÆÂ)”ì9~¸x∂h—¢“”®∑%\0\0\0h®∂∂∂Â•´LWª®V%{Ï±qßQwtt\\hã\0\0\0–0)å…Éi‹v©—÷Ø__\Zå˜⁄\"\0\0\04D\\«õ“∏]R•˜!ÆÖÁü~‹˝ã/ΩÙ“sm\0\0\0\Zä7‰Å4VÑnñûûû“E∑zm\0\0\0Í.NWn‘ä”SπÁû{,∏\0\0@cuttºûá—æææ¶Ö‚∏\'r…u≈∂\0\0\0uóËpFπÍtπÉéªg±-\0\0@#BÒX=yÚd”BÒ––PÈLqfÀ\0\0\0––P‹lB1\0\0\0M≈fä\0\0òk°ÿ5≈\0\0\0ÃMVü\0\0`ŒJÙ…V∏Oq¸€%°¯I[\0\0Ä∫ÎÏÏ‹òá—ﬁﬁﬁ¶Ö‚eÀñçÖ‚ˆˆˆı∂\0\0\0u◊’’uAF”„Ï¯Ò„MΩû∏äœ≥e\0\0\0hà“Îä∑lŸ“Pºq„∆“Pºﬂ\0\0†aJO°^≤dICoÕ‘ﬂﬂ_ò°.ô≠n∑E\0\0\0hòã.∫Ë})êûÃÉÈ÷≠[ä◊Æ][:K|»÷\0\0\0†·JgãcÊˆ≈_¨{ ﬁ∂m€∏kâ€⁄⁄ælK\0\0\0–)ò…Í“•K≥¡¡¡∫‚]ªvç;m:µªm\0\0\0öf˛¸˘Áßp:í’uÎ÷eCCCu	ƒ.¥∏\0\0\0≠•ΩΩ˝≤‘FÛ¿\Z◊¸‘ÙîÈ≤‚cÁ¯‰\0\0h	)§ˆñ^Î≥∫{ˆÏ©zïÈÎÆªn‹5ƒ1\0\0\0-©≠≠my\n≠£•!∂∑∑7ÎÎÎ´(<x∞p‚≤Ÿ·¬)”1\0\0\0-´≥≥Û‚^áÀ¬lv’UWeõ6m vÓ‹YX•:øÓ8æFéYÂÕõ7g+V¨(¬’\0\0`ÊàŸ‹bwóœ\Züe;‰∂K\0\0\0Ã8]]]§Pª≥tÆ\n⁄˛ÙÛÌ>E\0\0\0f¥Ö~∞xΩÒﬁX(´¸ÙÍééé∏•”@jO¶\0Ω!µÛ|j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿lÚˇ»Ç.Ã#\0\0\0\0IENDÆB`Ç',1);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('2503','myProcess:1:4','2501','2502','startevent1',NULL,NULL,'Start','startEvent',NULL,'2018-10-14 08:57:31','2018-10-14 08:57:31',0,NULL,''),('2504','myProcess:1:4','2501','2502','usertask1','2505',NULL,'Â§ÑÁêÜ‰ªªÂä°','userTask',NULL,'2018-10-14 08:57:31','2018-10-14 09:13:15',944549,NULL,''),('5001','myProcess:1:4','2501','2502','usertask2','5002',NULL,'ÁªèÁêÜÂ§ÑÁêÜ','userTask',NULL,'2018-10-14 09:13:15',NULL,NULL,NULL,'');

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2505','myProcess:1:4','usertask1','2501','2502','Â§ÑÁêÜ‰ªªÂä°',NULL,NULL,NULL,NULL,'2018-10-14 08:57:31',NULL,'2018-10-14 09:13:15',944534,NULL,50,NULL,NULL,NULL,''),('5002','myProcess:1:4','usertask2','2501','2502','ÁªèÁêÜÂ§ÑÁêÜ',NULL,NULL,NULL,NULL,'2018-10-14 09:13:15',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('5002',1,'2502','2501','myProcess:1:4','ÁªèÁêÜÂ§ÑÁêÜ',NULL,NULL,'usertask2',NULL,NULL,NULL,50,'2018-10-14 09:13:15',NULL,NULL,1,'',NULL,NULL);

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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '‰∏ªÈîÆID',
  `role_id` int(11) NOT NULL COMMENT 'ËßíËâ≤ID',
  `proj_id` int(11) NOT NULL COMMENT 'È°πÁõÆID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `proj_role_relation` */

insert  into `proj_role_relation`(`id`,`role_id`,`proj_id`) values (33,16,53),(36,1,9);

/*Table structure for table `sys_logs` */

DROP TABLE IF EXISTS `sys_logs`;

CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT 'Ê®°ÂùóÂêç',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'ÊàêÂäüÂ§±Ë¥•',
  `remark` text COMMENT 'Â§áÊ≥®',
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

insert  into `sys_permission`(`id`,`parentId`,`name`,`css`,`href`,`type`,`permission`,`sort`) values (7,0,'Á≥ªÁªüËÆæÁΩÆ','fa-gears','',1,'',5),(8,7,'ËèúÂçï','fa-cog','pages/menu/menuList.html',1,'',6),(9,8,'Êü•ËØ¢','','',2,'sys:menu:query',100),(10,8,'Êñ∞Â¢û','','',2,'sys:menu:add',100),(11,8,'Âà†Èô§','','',2,'sys:menu:del',100),(12,7,'ËßíËâ≤','fa-user-secret','pages/role/roleList.html',1,'',7),(13,12,'Êü•ËØ¢','','',2,'sys:role:query',100),(14,12,'Êñ∞Â¢û','','',2,'sys:role:add',100),(15,12,'Âà†Èô§','','',2,'sys:role:del',100),(71,0,'Á≥ªÁªüÁÆ°ÁêÜ','fa-cog','',1,'sys:sys:system',1),(72,71,'È°πÁõÆÁÆ°ÁêÜ','fa-credit-card','pages/project/list.html',1,'sys:project:list',11),(73,72,'ÁºñËæë','','',2,'sys:project:edit',12),(74,72,'Âà†Èô§','','',2,'sys:project:del',100),(75,71,'ËßíËâ≤ÁÆ°ÁêÜ','fa-user-md','pages/role/list.html',1,'sys:role:list',21),(76,75,'ÁºñËæë','','',2,'sys:role:edit',22),(77,75,'Âà†Èô§','fa-times','',2,'sys:role:del',23),(78,71,'ËµÑÊ∫êÁÆ°ÁêÜ','fa-sitemap','pages/menu/list.html',1,'sys:project:list',3),(79,78,'ÁºñËæë','','',2,'sys:menu:edit',31),(80,78,'Âà†Èô§','','',2,'sys:menu:del',32),(81,71,'Áî®Êà∑ÁÆ°ÁêÜ','fa-user','pages/user/list.html',1,'sys:user:list',24),(82,81,'ÁºñËæë','','',2,'sys:user:edit',100),(83,81,'Âà†Èô§','','',2,'sys:user:del',101);

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

insert  into `sys_project`(`id`,`proj_name`,`proj_code`,`proj_intro`,`sort`,`createTime`,`updateTime`) values (9,'Â±±‰∏úÁßªÂä®','shandongyidong','ËøôÊòØÂ±±‰∏úÁßªÂä®ÁöÑÈ°πÁõÆ‰æøÊµãËØï','1','2018-09-16 20:31:08',NULL),(53,'‰∏äÊµ∑ËÅîÈÄö','shlt','‰∏ªË¶ÅÁî®‰∫éËµÑÊ∫êÁöÑÊµãËØï‰ΩøÁî®','1','2018-10-06 09:36:58',NULL);

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

insert  into `sys_role`(`id`,`name`,`description`,`createTime`,`updateTime`,`sort`) values (1,'ADMIN','ÁÆ°ÁêÜÂëò','2017-05-01 13:25:39','2018-10-06 21:35:26','1'),(16,'Á≥ªÁªüÁÆ°ÁêÜÂëò','ÁÆ°ÁêÜÁ≥ªÁªüÁöÑÊ†∏ÂøÉÂäüËÉΩ','2018-10-06 09:41:50',NULL,'1');

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

insert  into `sys_user`(`id`,`username`,`password`,`nickname`,`headImgUrl`,`phone`,`telephone`,`email`,`birthday`,`sex`,`status`,`createTime`,`updateTime`) values (1,'admin','$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK','zhangsan',NULL,'','','','1998-07-01',0,1,'2017-04-10 15:21:38','2017-07-06 09:20:19'),(3,'zhangsan','$2a$10$j55EvI3qSHg/rrlYY7lVLe49ZYEKOs49lE2MXV.dBHMtIkNeGyq9W','zhangsan',NULL,'15797655652','12345678','19348243@qq.com','2018-10-01',0,1,'2018-10-07 11:18:08','2018-10-07 11:18:08'),(4,'zhangba99','$2a$10$oA.v9LTDKavxXc5zBSqTceXwK.KvVsgx6fDoY8aEbMpdK3t462MJu','Âº†ÂÖ´9',NULL,'15797655753','15797655753','19348243@qq.com','2018-10-10',1,1,'2018-10-14 18:36:57',NULL);

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

insert  into `t_dict`(`id`,`type`,`k`,`val`,`createTime`,`updateTime`,`sort`) values (1,'menu','1','ËèúÂçï','2018-10-05 09:58:24','2018-10-05 09:58:24',1),(2,'menu','2','ÊåâÈíÆ','2017-10-05 10:03:46','2017-10-05 10:03:46',2),(3,'sex','0','Áî∑','2018-10-03 21:21:21','2018-06-06 12:12:12',3),(4,'sex','1','Â•≥','2018-10-03 12:21:21','2018-10-04 12:12:12',4);

/*Table structure for table `t_token` */

DROP TABLE IF EXISTS `t_token`;

CREATE TABLE `t_token` (
  `id` varchar(36) NOT NULL COMMENT 'token',
  `val` text NOT NULL COMMENT 'LoginUserÁöÑjson‰∏≤',
  `expireTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_token` */

insert  into `t_token`(`id`,`val`,`expireTime`,`createTime`,`updateTime`) values ('2af47eaa-d58c-45dc-9224-407bb575024a','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539487024706,\"id\":1,\"loginTime\":1539479824706,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"2af47eaa-d58c-45dc-9224-407bb575024a\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 11:17:04','2018-10-14 09:17:04','2018-10-14 09:17:04'),('395578b4-a3ff-489a-8e62-a4d899098fc6','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"1\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538840135800,\"id\":1,\"loginTime\":1538832935800,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"fa-cab\",\"href\":\"2\",\"id\":69,\"name\":\"ÊµÆÈõï\",\"parentId\":2,\"permission\":\"1\",\"sort\":100,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"Êñ∞Â¢û\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"1\",\"id\":3,\"name\":\"Êü•ËØ¢\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"395578b4-a3ff-489a-8e62-a4d899098fc6\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-06 23:35:35','2018-10-06 21:35:35','2018-10-06 21:35:35'),('41e741d1-a38a-4811-8500-6ec009439538','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"1\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538828909025,\"id\":1,\"loginTime\":1538821709025,\"nickname\":\"ÁÆ°ÁêÜÂëò\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"Êñ∞Â¢û\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"1\",\"id\":3,\"name\":\"Êü•ËØ¢\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"fa-cab\",\"href\":\"2\",\"id\":69,\"name\":\"ÊµÆÈõï\",\"parentId\":2,\"permission\":\"1\",\"sort\":100,\"type\":1}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"41e741d1-a38a-4811-8500-6ec009439538\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-06 20:28:29','2018-10-06 18:28:29','2018-10-06 18:28:29'),('51e2af77-15dd-47bc-8340-d96232ed50a0','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539520548746,\"id\":1,\"loginTime\":1539513348746,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"51e2af77-15dd-47bc-8340-d96232ed50a0\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 20:35:48','2018-10-14 18:35:48','2018-10-14 18:35:48'),('8ae8e643-41d3-4ce6-aa11-52ff95c0f700','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538883669317,\"id\":1,\"loginTime\":1538876469317,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"8ae8e643-41d3-4ce6-aa11-52ff95c0f700\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-07 11:41:09','2018-10-07 09:41:09','2018-10-07 09:41:09'),('b60a0921-40f2-4afa-9254-304b7f8e1267','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1539486984933,\"id\":1,\"loginTime\":1539479784933,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"b60a0921-40f2-4afa-9254-304b7f8e1267\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-14 11:16:24','2018-10-14 09:16:24','2018-10-14 09:16:24'),('ee566333-11a8-451e-afe9-91082acb04a9','{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:user:list\"},{\"authority\":\"sys:project:edit\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:role:edit\"},{\"authority\":\"sys:project:list\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"sys:project:del\"},{\"authority\":\"sys:user:edit\"},{\"authority\":\"sys:role:list\"},{\"authority\":\"sys:sys:system\"},{\"authority\":\"sys:menu:edit\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:user:del\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1538891531461,\"id\":1,\"loginTime\":1538884331461,\"nickname\":\"zhangsan\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"css\":\"fa-cog\",\"href\":\"\",\"id\":71,\"name\":\"Á≥ªÁªüÁÆ°ÁêÜ\",\"parentId\":0,\"permission\":\"sys:sys:system\",\"sort\":1,\"type\":1},{\"css\":\"fa-sitemap\",\"href\":\"pages/menu/list.html\",\"id\":78,\"name\":\"ËµÑÊ∫êÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":3,\"type\":1},{\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"Á≥ªÁªüËÆæÁΩÆ\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1},{\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"ËèúÂçï\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1},{\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"ËßíËâ≤\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1},{\"css\":\"fa-credit-card\",\"href\":\"pages/project/list.html\",\"id\":72,\"name\":\"È°πÁõÆÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:project:list\",\"sort\":11,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":73,\"name\":\"ÁºñËæë\",\"parentId\":72,\"permission\":\"sys:project:edit\",\"sort\":12,\"type\":2},{\"css\":\"fa-user-md\",\"href\":\"pages/role/list.html\",\"id\":75,\"name\":\"ËßíËâ≤ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:role:list\",\"sort\":21,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":76,\"name\":\"ÁºñËæë\",\"parentId\":75,\"permission\":\"sys:role:edit\",\"sort\":22,\"type\":2},{\"css\":\"fa-times\",\"href\":\"\",\"id\":77,\"name\":\"Âà†Èô§\",\"parentId\":75,\"permission\":\"sys:role:del\",\"sort\":23,\"type\":2},{\"css\":\"fa-user\",\"href\":\"pages/user/list.html\",\"id\":81,\"name\":\"Áî®Êà∑ÁÆ°ÁêÜ\",\"parentId\":71,\"permission\":\"sys:user:list\",\"sort\":24,\"type\":1},{\"css\":\"\",\"href\":\"\",\"id\":79,\"name\":\"ÁºñËæë\",\"parentId\":78,\"permission\":\"sys:menu:edit\",\"sort\":31,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":80,\"name\":\"Âà†Èô§\",\"parentId\":78,\"permission\":\"sys:menu:del\",\"sort\":32,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"Âà†Èô§\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"Âà†Èô§\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":82,\"name\":\"ÁºñËæë\",\"parentId\":81,\"permission\":\"sys:user:edit\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"Êñ∞Â¢û\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"Êñ∞Â¢û\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":74,\"name\":\"Âà†Èô§\",\"parentId\":72,\"permission\":\"sys:project:del\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"Êü•ËØ¢\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"Êü•ËØ¢\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2},{\"css\":\"\",\"href\":\"\",\"id\":83,\"name\":\"Âà†Èô§\",\"parentId\":81,\"permission\":\"sys:user:del\",\"sort\":101,\"type\":2}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"ee566333-11a8-451e-afe9-91082acb04a9\",\"updateTime\":1499304019000,\"username\":\"admin\"}','2018-10-07 13:52:11','2018-10-07 11:52:11','2018-10-07 11:52:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
