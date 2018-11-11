2018-11-07 09:33:16,536 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:16,547 [http-nio-8090-exec-2] ==> Parameters: 0b141cad-ec79-41c3-bc83-7f2420faf9ac(String)
2018-11-07 09:33:16,555 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:33:16,744 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:16,745 [http-nio-8090-exec-4] ==> Parameters: 0b141cad-ec79-41c3-bc83-7f2420faf9ac(String)
2018-11-07 09:33:16,746 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:33:47,173 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 09:33:47,175 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-07 09:33:47,177 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:47,198 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:33:47,204 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-07 09:33:47,205 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:47,208 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 09:33:47,211 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-07 09:33:47,218 [http-nio-8090-exec-6] <==      Total: 36
2018-11-07 09:33:47,399 [http-nio-8090-exec-6] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 09:33:47,405 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1541561627387,"id":10,"loginTime":1541554427387,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b","username":"wuzhihua"}(String), 2018-11-07 11:33:47.387(Timestamp), 2018-11-07 09:33:47.387(Timestamp), 2018-11-07 09:33:47.387(Timestamp)
2018-11-07 09:33:47,414 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-07 09:33:47,533 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:47,533 [http-nio-8090-exec-2] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:33:47,534 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:33:47,597 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:47,598 [http-nio-8090-exec-5] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:33:47,598 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 09:33:48,031 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:48,032 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:33:48,033 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:48,039 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 09:33:48,041 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-07 09:33:48,043 [http-nio-8090-exec-6] <==      Total: 2
2018-11-07 09:33:48,044 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:33:48,044 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-07 09:33:48,045 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:55,480 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:55,480 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:33:55,482 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:55,738 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:33:55,739 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:33:55,740 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:55,785 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:33:55,786 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-07 09:33:55,787 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:33:55,789 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-07 09:33:55,790 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-07 09:33:55,792 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:35:23,045 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:35:23,046 [http-nio-8090-exec-8] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:35:23,047 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 09:35:23,064 [http-nio-8090-exec-8] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:35:23,066 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-07 09:35:29,172 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:35:29,172 [http-nio-8090-exec-4] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:35:29,174 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:35:29,181 [http-nio-8090-exec-4] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:35:29,182 [http-nio-8090-exec-4] ==> Parameters: 4(Long), LteConfig(String)
2018-11-07 09:35:44,795 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:35:44,796 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:35:44,798 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:35:44,802 [http-nio-8090-exec-6] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:35:44,803 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-07 09:38:24,444 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:24,451 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:24,459 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:24,574 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:24,575 [http-nio-8090-exec-1] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:24,576 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 09:38:24,659 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:24,660 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:24,661 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:24,668 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 09:38:24,672 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-07 09:38:24,674 [http-nio-8090-exec-10] <==      Total: 2
2018-11-07 09:38:24,676 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:38:24,679 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-07 09:38:24,680 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:27,365 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:27,366 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:27,367 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:27,458 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:27,459 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:27,461 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:27,515 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:38:27,516 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-07 09:38:27,517 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:27,521 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-07 09:38:27,524 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-07 09:38:27,527 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:38:31,557 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:31,557 [http-nio-8090-exec-5] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:31,559 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 09:38:31,573 [http-nio-8090-exec-5] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:38:31,575 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-07 09:38:31,594 [http-nio-8090-exec-5] <==      Total: 2
2018-11-07 09:38:31,720 [http-nio-8090-exec-5] ==>  Preparing: delete from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:38:31,727 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-07 09:38:31,728 [http-nio-8090-exec-5] <==    Updates: 4
2018-11-07 09:38:31,731 [http-nio-8090-exec-5] ==>  Preparing: delete from lte_config where id in ( ? ) 
2018-11-07 09:38:31,733 [http-nio-8090-exec-5] ==> Parameters: 4(Long)
2018-11-07 09:38:31,734 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-07 09:38:31,752 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:38:31,752 [http-nio-8090-exec-2] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:38:31,753 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:38:31,757 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:38:31,758 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-07 09:38:31,759 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:39:28,912 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:28,913 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:28,915 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:39:28,924 [http-nio-8090-exec-10] ==>  Preparing: insert into lte_config ( mVoiceCount, mVoiceTarget, mFtpService, mFtpPort, mFtpUserName, mFtpPaw, mFtpFileDownPath, mFtpFileUpPath, mFtpUpRateTarget, mFtpDownRateTarget, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 09:39:28,933 [http-nio-8090-exec-10] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 2018-11-07 09:39:28.924(Timestamp), 10(Long), 479(Long)
2018-11-07 09:39:28,939 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-07 09:39:28,957 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:28,958 [http-nio-8090-exec-4] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:28,959 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:39:28,966 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:39:28,967 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-07 09:39:28,970 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:39:28,971 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-07 09:39:28,972 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-07 09:39:28,974 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:39:31,301 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:31,302 [http-nio-8090-exec-2] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:31,303 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:39:31,307 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_config where id=? 
2018-11-07 09:39:31,308 [http-nio-8090-exec-2] ==> Parameters: 5(Long)
2018-11-07 09:39:31,312 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:39:31,321 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:31,321 [http-nio-8090-exec-6] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:31,322 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 09:39:31,334 [http-nio-8090-exec-6] ==>  Preparing: select c.role_id as "roleId" ,c.role_name as "roleName" ,GROUP_CONCAT(c.user_id_name SEPARATOR ',') as "userList" from ( select r.id as role_id ,r.name as role_name ,concat_ws('_',u.id,u.nickname) as user_id_name from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? ) c group by c.role_id,c.role_name 
2018-11-07 09:39:31,341 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-07 09:39:31,344 [http-nio-8090-exec-6] <==      Total: 3
2018-11-07 09:39:35,399 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:35,400 [http-nio-8090-exec-4] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:35,401 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:39:35,589 [http-nio-8090-exec-4] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-07 09:39:35,591 [http-nio-8090-exec-4] ==> Parameters: 1(Long), 5(Long)
2018-11-07 09:39:35,592 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-07 09:39:35,593 [http-nio-8090-exec-4] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id) values(?,?,?,?,?,?) 
2018-11-07 09:39:35,594 [http-nio-8090-exec-4] ==> Parameters: LteConfig(String), 2018-11-07 09:39:35.593(Timestamp), 5(Long), 479(Long), 55001(String), 7,6(String)
2018-11-07 09:39:35,595 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-07 09:39:35,613 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:39:35,613 [http-nio-8090-exec-10] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:39:35,615 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:39:35,618 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:39:35,619 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-07 09:39:35,621 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:39:35,623 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-07 09:39:35,624 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-07 09:39:35,626 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 09:40:03,310 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:03,311 [http-nio-8090-exec-8] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:40:03,312 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 09:40:03,314 [http-nio-8090-exec-8] ==>  Preparing: delete from t_token where id = ? 
2018-11-07 09:40:03,315 [http-nio-8090-exec-8] ==> Parameters: c9f0ba3e-9f7f-46d4-9b1d-25c89e3cc45b(String)
2018-11-07 09:40:03,331 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-07 09:40:09,100 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 09:40:09,107 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-07 09:40:09,109 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:09,109 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:40:09,109 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-07 09:40:09,109 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:09,109 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 09:40:09,125 [http-nio-8090-exec-9] ==> Parameters: weicheng(String), 479(Long)
2018-11-07 09:40:09,125 [http-nio-8090-exec-9] <==      Total: 19
2018-11-07 09:40:09,218 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 09:40:09,218 [http-nio-8090-exec-9] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1541562009203,"id":6,"loginTime":1541554809203,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"b108dfcc-c793-4c63-9487-803b0918d66e","username":"weicheng"}(String), 2018-11-07 11:40:09.203(Timestamp), 2018-11-07 09:40:09.203(Timestamp), 2018-11-07 09:40:09.203(Timestamp)
2018-11-07 09:40:09,218 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 09:40:09,311 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:09,312 [http-nio-8090-exec-9] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:09,314 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:09,333 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:09,333 [http-nio-8090-exec-3] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:09,335 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 09:40:09,408 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:09,409 [http-nio-8090-exec-9] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:09,410 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:09,412 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 09:40:09,413 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-07 09:40:09,414 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:09,415 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:40:09,416 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-07 09:40:09,416 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 09:40:11,655 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:11,655 [http-nio-8090-exec-4] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:11,657 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:15,552 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:15,553 [http-nio-8090-exec-5] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:15,554 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 09:40:15,593 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:15,594 [http-nio-8090-exec-7] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:15,595 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 09:40:15,597 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_config where id=? 
2018-11-07 09:40:15,599 [http-nio-8090-exec-7] ==> Parameters: 5(Long)
2018-11-07 09:40:15,603 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 09:40:15,612 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:15,612 [http-nio-8090-exec-8] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:15,614 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 09:40:15,621 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-07 09:40:15,623 [http-nio-8090-exec-8] ==> Parameters: 5(Long), LteConfig(String)
2018-11-07 09:40:15,624 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 09:40:19,742 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:19,743 [http-nio-8090-exec-3] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:19,743 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 09:40:19,745 [http-nio-8090-exec-3] ==>  Preparing: delete from t_token where id = ? 
2018-11-07 09:40:19,745 [http-nio-8090-exec-3] ==> Parameters: b108dfcc-c793-4c63-9487-803b0918d66e(String)
2018-11-07 09:40:19,752 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-07 09:40:27,325 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 09:40:27,326 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-07 09:40:27,327 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:27,328 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:40:27,329 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-07 09:40:27,330 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:27,331 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 09:40:27,332 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-07 09:40:27,335 [http-nio-8090-exec-4] <==      Total: 36
2018-11-07 09:40:27,416 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 09:40:27,416 [http-nio-8090-exec-4] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1541562027416,"id":10,"loginTime":1541554827416,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"4f9d5efe-3527-4dae-bab6-278b3d157c7a","username":"wuzhihua"}(String), 2018-11-07 11:40:27.416(Timestamp), 2018-11-07 09:40:27.416(Timestamp), 2018-11-07 09:40:27.416(Timestamp)
2018-11-07 09:40:27,666 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-07 09:40:27,744 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:27,744 [http-nio-8090-exec-4] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:27,745 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:27,768 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:27,768 [http-nio-8090-exec-7] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:27,769 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 09:40:27,839 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:27,839 [http-nio-8090-exec-4] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:27,840 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:27,842 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 09:40:27,843 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-07 09:40:27,844 [http-nio-8090-exec-4] <==      Total: 2
2018-11-07 09:40:27,845 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 09:40:27,845 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-07 09:40:27,846 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:30,268 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:30,268 [http-nio-8090-exec-4] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:30,269 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:30,360 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:30,360 [http-nio-8090-exec-4] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:30,361 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:30,365 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:40:30,366 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-07 09:40:30,367 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:30,370 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-07 09:40:30,371 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-07 09:40:30,372 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 09:40:33,190 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:33,191 [http-nio-8090-exec-2] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:33,192 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:40:33,195 [http-nio-8090-exec-2] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:40:33,197 [http-nio-8090-exec-2] ==> Parameters: 5(Long), LteConfig(String)
2018-11-07 09:40:33,238 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] ==>  Preparing: delete from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] ==> Parameters: 5(Long), LteConfig(String)
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] ==>  Preparing: delete from lte_config where id in ( ? ) 
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] ==> Parameters: 5(Long)
2018-11-07 09:40:33,510 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-07 09:40:33,537 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 09:40:33,538 [http-nio-8090-exec-7] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 09:40:33,539 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 09:40:33,543 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-07 09:40:33,544 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-07 09:40:33,545 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 12:12:43,759 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:43,786 [http-nio-8090-exec-1] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 12:12:43,796 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 12:12:43,863 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:43,864 [http-nio-8090-exec-3] ==> Parameters: 4f9d5efe-3527-4dae-bab6-278b3d157c7a(String)
2018-11-07 12:12:43,865 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:12:48,483 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 12:12:48,494 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:12:48,495 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:12:48,495 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 12:12:48,764 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:12:48,764 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:12:48,764 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 12:12:48,779 [http-nio-8090-exec-9] ==> Parameters: admin(String), 9(Long)
2018-11-07 12:12:48,779 [http-nio-8090-exec-9] <==      Total: 29
2018-11-07 12:12:48,943 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 12:12:48,944 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541571168936,"id":1,"loginTime":1541563968936,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"6642ec19-b1bb-495c-9813-d00da56ae911","updateTime":1499304019000,"username":"admin"}(String), 2018-11-07 14:12:48.936(Timestamp), 2018-11-07 12:12:48.936(Timestamp), 2018-11-07 12:12:48.936(Timestamp)
2018-11-07 12:12:48,973 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 12:12:49,056 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:49,056 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:12:49,058 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:12:49,135 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:49,136 [http-nio-8090-exec-10] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:12:49,137 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 12:12:49,276 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:49,276 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:12:49,277 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:12:49,283 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 12:12:49,285 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:12:49,286 [http-nio-8090-exec-9] <==      Total: 2
2018-11-07 12:12:49,287 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 12:12:49,288 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:12:49,289 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:12:52,118 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:12:52,118 [http-nio-8090-exec-3] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:12:52,119 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:12:52,174 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 12:12:52,175 [http-nio-8090-exec-3] ==> Parameters: 9(Long)
2018-11-07 12:12:52,176 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:12:52,178 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 12:12:52,179 [http-nio-8090-exec-3] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 12:12:52,182 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:13:14,404 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:13:14,405 [http-nio-8090-exec-10] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:13:14,406 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 12:13:14,431 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:13:14,431 [http-nio-8090-exec-2] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:13:14,433 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 12:13:14,623 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:13:14,623 [http-nio-8090-exec-10] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:13:14,625 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 12:13:14,629 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 12:13:14,630 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-07 12:13:14,631 [http-nio-8090-exec-10] <==      Total: 2
2018-11-07 12:13:14,632 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 12:13:14,632 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-07 12:13:14,633 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 12:13:16,827 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:13:16,828 [http-nio-8090-exec-8] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:13:16,829 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:13:16,834 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 12:13:16,835 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-07 12:13:16,836 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:13:16,837 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 12:13:16,838 [http-nio-8090-exec-8] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 12:13:16,841 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:13:29,586 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:13:29,587 [http-nio-8090-exec-1] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:13:29,588 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 12:13:29,603 [http-nio-8090-exec-1] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 12:13:29,605 [http-nio-8090-exec-1] ==> Parameters: 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2018-11-06(String), 2018-11-07 12:13:29.601(Timestamp), 1(Long), 9(Long)
2018-11-07 12:13:29,609 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-07 12:13:29,614 [http-nio-8090-exec-1] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%2%' 
2018-11-07 12:13:29,615 [http-nio-8090-exec-1] ==> Parameters: LtePlan(String)
2018-11-07 12:13:29,723 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 12:17:10,568 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:10,577 [http-nio-8090-exec-3] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:10,584 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:17:10,698 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:10,699 [http-nio-8090-exec-2] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:10,701 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 12:17:10,925 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:10,926 [http-nio-8090-exec-3] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:10,937 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:17:10,973 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 12:17:10,976 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-07 12:17:10,979 [http-nio-8090-exec-3] <==      Total: 2
2018-11-07 12:17:10,980 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 12:17:10,988 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-07 12:17:10,989 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 12:17:15,284 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:15,285 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:15,287 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:17:15,365 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 12:17:15,367 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-07 12:17:15,371 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:17:15,373 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-07 12:17:15,374 [http-nio-8090-exec-9] ==> Parameters: 9(Long), 3(Integer)
2018-11-07 12:17:15,376 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:17:16,579 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:16,580 [http-nio-8090-exec-8] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:16,583 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:17:16,593 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 12:17:16,597 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-07 12:17:16,599 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:17:16,601 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 12:17:16,603 [http-nio-8090-exec-8] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 12:17:16,606 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 12:17:31,064 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:17:31,064 [http-nio-8090-exec-7] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:17:31,066 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 12:17:31,090 [http-nio-8090-exec-7] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 12:17:31,100 [http-nio-8090-exec-7] ==> Parameters: 21(String), 12(String), 12(String), 12(String), 12(String), 121(String), 212(String), 21(String), 1(String), 2(String), 12(String), 2018-11-06(String), 2018-11-07 12:17:31.088(Timestamp), 1(Long), 9(Long)
2018-11-07 12:17:31,105 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-07 12:17:31,107 [http-nio-8090-exec-7] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%21%' 
2018-11-07 12:17:31,109 [http-nio-8090-exec-7] ==> Parameters: LtePlan(String)
2018-11-07 12:17:31,110 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 12:21:39,093 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:21:39,101 [http-nio-8090-exec-2] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:21:39,108 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 12:21:46,901 [http-nio-8090-exec-2] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 12:21:47,107 [http-nio-8090-exec-2] ==> Parameters: 11(String), 11(String), 1(String), 11(String), 1(String), 11(String), 11(String), 11(String), 11(String), 11(String), 11(String), 2018-11-07(String), 2018-11-07 12:21:39.209(Timestamp), 1(Long), 9(Long)
2018-11-07 12:21:47,107 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-07 12:21:48,516 [http-nio-8090-exec-2] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%11%' 
2018-11-07 12:21:48,554 [http-nio-8090-exec-2] ==> Parameters: LtePlan(String)
2018-11-07 12:21:48,585 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 12:23:20,387 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:23:20,397 [http-nio-8090-exec-10] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:23:20,407 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 12:23:20,566 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:23:20,567 [http-nio-8090-exec-1] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:23:20,570 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 12:23:20,682 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:23:20,682 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:23:20,683 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:23:20,691 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 12:23:20,695 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:23:20,696 [http-nio-8090-exec-9] <==      Total: 2
2018-11-07 12:23:20,698 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 12:23:20,703 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-07 12:23:20,704 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 12:23:22,536 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:23:22,536 [http-nio-8090-exec-4] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:23:22,538 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 12:23:22,625 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 12:23:22,628 [http-nio-8090-exec-4] ==> Parameters: 9(Long)
2018-11-07 12:23:22,629 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 12:23:22,631 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 12:23:22,632 [http-nio-8090-exec-4] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 12:23:22,636 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 12:23:33,765 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 12:23:33,766 [http-nio-8090-exec-7] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 12:23:33,768 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 12:23:36,782 [http-nio-8090-exec-7] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 12:23:36,938 [http-nio-8090-exec-7] ==> Parameters: 33(String), 33(String), 3(String), 33(String), 3(String), 3(String), 3(String), 33(String), 3(String), 3(String), 3(String), 2018-11-07(String), 2018-11-07 12:23:33.785(Timestamp), 1(Long), 9(Long)
2018-11-07 12:23:36,954 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-07 12:23:37,408 [http-nio-8090-exec-7] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%33%' 
2018-11-07 12:23:37,423 [http-nio-8090-exec-7] ==> Parameters: LtePlan(String)
2018-11-07 12:23:37,439 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 14:28:42,414 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:28:42,421 [http-nio-8090-exec-5] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 14:28:42,428 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 14:28:42,498 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:28:42,499 [http-nio-8090-exec-9] ==> Parameters: 6642ec19-b1bb-495c-9813-d00da56ae911(String)
2018-11-07 14:28:42,500 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 14:29:07,588 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 14:29:07,598 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-07 14:29:07,599 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 14:29:07,599 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 14:29:07,599 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-07 14:29:07,615 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 14:29:07,615 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 14:29:07,615 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long)
2018-11-07 14:29:07,615 [http-nio-8090-exec-4] <==      Total: 29
2018-11-07 14:29:07,740 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 14:29:07,740 [http-nio-8090-exec-4] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541579347724,"id":1,"loginTime":1541572147724,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"d4def388-2425-4adf-a8a4-f887204676b9","updateTime":1499304019000,"username":"admin"}(String), 2018-11-07 16:29:07.724(Timestamp), 2018-11-07 14:29:07.724(Timestamp), 2018-11-07 14:29:07.724(Timestamp)
2018-11-07 14:29:07,756 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-07 14:29:07,843 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:07,845 [http-nio-8090-exec-4] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:07,848 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 14:29:07,908 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:07,908 [http-nio-8090-exec-1] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:07,911 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 14:29:08,084 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:08,084 [http-nio-8090-exec-4] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:08,085 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 14:29:08,094 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 14:29:08,095 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-07 14:29:08,096 [http-nio-8090-exec-4] <==      Total: 2
2018-11-07 14:29:08,097 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 14:29:08,098 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-07 14:29:08,100 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 14:29:25,420 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:25,421 [http-nio-8090-exec-8] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:25,422 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 14:29:25,516 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 14:29:25,518 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-07 14:29:25,530 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 14:29:25,532 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 14:29:25,534 [http-nio-8090-exec-8] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 14:29:25,536 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 14:29:42,499 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:42,500 [http-nio-8090-exec-7] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:42,501 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 14:29:42,518 [http-nio-8090-exec-7] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 14:29:42,520 [http-nio-8090-exec-7] ==> Parameters: 12(String), 2(String), 2(String), 22(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2(String), 2018-11-05(String), 2018-11-07 14:29:42.516(Timestamp), 1(Long), 9(Long)
2018-11-07 14:29:42,525 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-07 14:29:42,529 [http-nio-8090-exec-7] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%12%' 
2018-11-07 14:29:42,531 [http-nio-8090-exec-7] ==> Parameters: LtePlan(String)
2018-11-07 14:29:42,532 [http-nio-8090-exec-7] <==      Total: 1
2018-11-07 14:29:42,804 [http-nio-8090-exec-7] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-07 14:29:42,805 [http-nio-8090-exec-7] ==> Parameters: LtePlan(String), 2018-11-07 14:29:42.804(Timestamp), 11(Long), 9(Long), 60001(String), (String), LtePlan_12_11(String)
2018-11-07 14:29:42,806 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-07 14:29:42,824 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 14:29:42,825 [http-nio-8090-exec-2] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 14:29:42,828 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 14:29:42,833 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 14:29:42,833 [http-nio-8090-exec-2] ==> Parameters: 9(Long)
2018-11-07 14:29:42,834 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 14:29:42,835 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 14:29:42,836 [http-nio-8090-exec-2] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 14:29:42,838 [http-nio-8090-exec-2] <==      Total: 2
2018-11-07 20:23:32,868 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:32,891 [http-nio-8090-exec-5] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 20:23:32,900 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 20:23:33,005 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:33,005 [http-nio-8090-exec-10] ==> Parameters: d4def388-2425-4adf-a8a4-f887204676b9(String)
2018-11-07 20:23:33,006 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:23:43,019 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-07 20:23:43,021 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-11-07 20:23:43,023 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:43,023 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 20:23:43,023 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-11-07 20:23:43,023 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:43,039 [http-nio-8090-exec-8] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-07 20:23:43,039 [http-nio-8090-exec-8] ==> Parameters: admin(String), 9(Long)
2018-11-07 20:23:43,039 [http-nio-8090-exec-8] <==      Total: 29
2018-11-07 20:23:43,258 [http-nio-8090-exec-8] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-07 20:23:43,274 [http-nio-8090-exec-8] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541600623252,"id":1,"loginTime":1541593423252,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"352e86dd-39e8-42fd-9f92-f8f58f1f39a0","updateTime":1499304019000,"username":"admin"}(String), 2018-11-07 22:23:43.252(Timestamp), 2018-11-07 20:23:43.252(Timestamp), 2018-11-07 20:23:43.252(Timestamp)
2018-11-07 20:23:43,289 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-07 20:23:43,402 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:43,403 [http-nio-8090-exec-3] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:43,404 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 20:23:43,543 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:43,543 [http-nio-8090-exec-8] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:43,545 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:43,703 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:43,703 [http-nio-8090-exec-3] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:43,705 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 20:23:43,711 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 20:23:43,713 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-07 20:23:43,714 [http-nio-8090-exec-3] <==      Total: 2
2018-11-07 20:23:43,715 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 20:23:43,716 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-07 20:23:43,717 [http-nio-8090-exec-3] <==      Total: 1
2018-11-07 20:23:45,797 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:45,798 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:45,800 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:23:45,868 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:23:45,869 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-07 20:23:45,870 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:23:45,872 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 20:23:45,874 [http-nio-8090-exec-9] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 20:23:45,876 [http-nio-8090-exec-9] <==      Total: 2
2018-11-07 20:23:49,575 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:49,576 [http-nio-8090-exec-10] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:49,577 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:23:49,582 [http-nio-8090-exec-10] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 20:23:49,584 [http-nio-8090-exec-10] ==> Parameters: 11(Long), LtePlan(String)
2018-11-07 20:23:49,609 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:23:49,925 [http-nio-8090-exec-10] ==>  Preparing: delete from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 20:23:49,925 [http-nio-8090-exec-10] ==> Parameters: 11(Long), LtePlan(String)
2018-11-07 20:23:49,941 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-07 20:23:49,941 [http-nio-8090-exec-10] ==>  Preparing: delete from lte_plane where id in ( ? ) 
2018-11-07 20:23:49,941 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-07 20:23:49,941 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-07 20:23:49,964 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:49,965 [http-nio-8090-exec-8] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:49,967 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:49,972 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:23:49,973 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-07 20:23:49,974 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:49,975 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 20:23:49,975 [http-nio-8090-exec-8] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 20:23:49,976 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:23:51,919 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:51,919 [http-nio-8090-exec-4] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:51,921 [http-nio-8090-exec-4] <==      Total: 1
2018-11-07 20:23:51,924 [http-nio-8090-exec-4] ==>  Preparing: select distinct act_piid from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 20:23:51,925 [http-nio-8090-exec-4] ==> Parameters: 2(Long), LtePlan(String)
2018-11-07 20:23:52,222 [http-nio-8090-exec-4] <==      Total: 0
2018-11-07 20:23:52,223 [http-nio-8090-exec-4] ==>  Preparing: delete from business_activiti_relation where buss_id=? and buss_type=? 
2018-11-07 20:23:52,224 [http-nio-8090-exec-4] ==> Parameters: 2(Long), LtePlan(String)
2018-11-07 20:23:52,225 [http-nio-8090-exec-4] <==    Updates: 0
2018-11-07 20:23:52,227 [http-nio-8090-exec-4] ==>  Preparing: delete from lte_plane where id in ( ? ) 
2018-11-07 20:23:52,227 [http-nio-8090-exec-4] ==> Parameters: 2(Long)
2018-11-07 20:23:52,233 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-07 20:23:52,251 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:23:52,251 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:23:52,252 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:23:52,256 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:23:52,257 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-07 20:23:52,259 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:24:45,283 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:24:45,283 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:24:45,284 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:24:45,302 [http-nio-8090-exec-9] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 20:24:45,303 [http-nio-8090-exec-9] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 2018-11-07(String), 2018-11-07 20:24:45.3(Timestamp), 1(Long), 9(Long)
2018-11-07 20:24:45,306 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 20:24:45,308 [http-nio-8090-exec-9] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%1%' 
2018-11-07 20:24:45,309 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String)
2018-11-07 20:24:45,310 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:24:45,360 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-07 20:24:45,362 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String), 2018-11-07 20:24:45.36(Timestamp), 12(Long), 9(Long), 62501(String), (String), LtePlan_1_12(String)
2018-11-07 20:24:45,363 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 20:24:45,374 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-07 20:24:45,375 [http-nio-8090-exec-9] ==> Parameters: null, null, null, null, null, null, null, null, null, null
2018-11-07 20:25:46,410 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:25:46,410 [http-nio-8090-exec-6] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:25:46,412 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 20:25:46,416 [http-nio-8090-exec-6] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 20:25:46,418 [http-nio-8090-exec-6] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 2018-11-07(String), 2018-11-07 20:25:46.416(Timestamp), 1(Long), 9(Long)
2018-11-07 20:25:46,421 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-07 20:25:46,423 [http-nio-8090-exec-6] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%1%' 
2018-11-07 20:25:46,423 [http-nio-8090-exec-6] ==> Parameters: LtePlan(String)
2018-11-07 20:25:46,425 [http-nio-8090-exec-6] <==      Total: 1
2018-11-07 20:25:46,440 [http-nio-8090-exec-6] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-07 20:25:46,441 [http-nio-8090-exec-6] ==> Parameters: LtePlan(String), 2018-11-07 20:25:46.44(Timestamp), 13(Long), 9(Long), 62509(String), (String), LtePlan_1_13(String)
2018-11-07 20:25:46,442 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-07 20:25:46,445 [http-nio-8090-exec-6] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-07 20:25:46,446 [http-nio-8090-exec-6] ==> Parameters: null, null, null, null, null, null, null, null, null, null
2018-11-07 20:28:36,340 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:28:36,346 [http-nio-8090-exec-10] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:28:36,354 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:28:36,486 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:28:36,487 [http-nio-8090-exec-1] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:28:36,489 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 20:28:36,641 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:28:36,642 [http-nio-8090-exec-10] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:28:36,643 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:28:36,652 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 20:28:36,656 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-07 20:28:36,658 [http-nio-8090-exec-10] <==      Total: 2
2018-11-07 20:28:36,660 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 20:28:36,664 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-07 20:28:36,665 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:28:38,300 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:28:38,301 [http-nio-8090-exec-1] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:28:38,302 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 20:28:38,404 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:28:38,406 [http-nio-8090-exec-1] ==> Parameters: 9(Long)
2018-11-07 20:28:38,409 [http-nio-8090-exec-1] <==      Total: 1
2018-11-07 20:29:11,154 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:29:11,156 [http-nio-8090-exec-2] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:29:11,158 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 20:29:51,561 [http-nio-8090-exec-2] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 20:29:51,763 [http-nio-8090-exec-2] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 2018-11-06(String), 2018-11-07 20:29:11.177(Timestamp), 1(Long), 9(Long)
2018-11-07 20:29:51,778 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-07 20:29:52,305 [http-nio-8090-exec-2] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%1%' 
2018-11-07 20:29:52,336 [http-nio-8090-exec-2] ==> Parameters: LtePlan(String)
2018-11-07 20:29:52,352 [http-nio-8090-exec-2] <==      Total: 1
2018-11-07 20:30:51,404 [http-nio-8090-exec-2] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-07 20:30:51,455 [http-nio-8090-exec-2] ==> Parameters: LtePlan(String), 2018-11-07 20:30:36.936(Timestamp), 14(Long), 9(Long), 65001(String), (String), LtePlan_1_14(String)
2018-11-07 20:30:51,471 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-07 20:32:49,571 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:32:49,580 [http-nio-8090-exec-8] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:32:49,587 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:32:49,717 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:32:49,718 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:32:49,719 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:32:49,851 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:32:49,852 [http-nio-8090-exec-8] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:32:49,854 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:32:49,864 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-07 20:32:49,868 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-11-07 20:32:49,871 [http-nio-8090-exec-8] <==      Total: 2
2018-11-07 20:32:49,872 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-07 20:32:49,879 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-11-07 20:32:49,881 [http-nio-8090-exec-8] <==      Total: 1
2018-11-07 20:32:57,453 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:32:57,454 [http-nio-8090-exec-5] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:32:57,455 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 20:32:57,528 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:32:57,530 [http-nio-8090-exec-5] ==> Parameters: 9(Long)
2018-11-07 20:32:57,531 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 20:32:57,533 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-07 20:32:57,535 [http-nio-8090-exec-5] ==> Parameters: 9(Long), 3(Integer)
2018-11-07 20:32:57,538 [http-nio-8090-exec-5] <==      Total: 1
2018-11-07 20:32:57,840 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:32:57,840 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:32:57,842 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:32:57,858 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:32:57,860 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-07 20:32:57,861 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:33:08,362 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:33:08,363 [http-nio-8090-exec-9] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:33:08,367 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:33:08,389 [http-nio-8090-exec-9] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-07 20:33:08,401 [http-nio-8090-exec-9] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 1(String), 2018-11-07(String), 2018-11-07 20:33:08.388(Timestamp), 1(Long), 9(Long)
2018-11-07 20:33:08,407 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 20:33:08,412 [http-nio-8090-exec-9] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%1%' 
2018-11-07 20:33:08,414 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String)
2018-11-07 20:33:08,416 [http-nio-8090-exec-9] <==      Total: 1
2018-11-07 20:33:08,549 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-07 20:33:08,550 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String), 2018-11-07 20:33:08.548(Timestamp), 15(Long), 9(Long), 67501(String), (String), LtePlan_1_15(String)
2018-11-07 20:33:08,551 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 20:33:08,572 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-07 20:33:08,574 [http-nio-8090-exec-9] ==> Parameters: (String), LtePlan(String), 2018-11-07 20:33:08.572(Timestamp), 15(Long), (String), 9(Long), 测试计划(String), usertask1(String), 67501(String), LtePlan_1_15(String)
2018-11-07 20:33:08,575 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-07 20:33:08,628 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-07 20:33:08,629 [http-nio-8090-exec-10] ==> Parameters: 352e86dd-39e8-42fd-9f92-f8f58f1f39a0(String)
2018-11-07 20:33:08,631 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:33:08,638 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-07 20:33:08,639 [http-nio-8090-exec-10] ==> Parameters: 9(Long)
2018-11-07 20:33:08,643 [http-nio-8090-exec-10] <==      Total: 1
2018-11-07 20:33:08,644 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-07 20:33:08,646 [http-nio-8090-exec-10] ==> Parameters: 9(Long), 10(Integer)
2018-11-07 20:33:08,650 [http-nio-8090-exec-10] <==      Total: 1
