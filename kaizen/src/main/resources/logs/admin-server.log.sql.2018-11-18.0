2018-11-18 06:46:07,224 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:46:07,238 [http-nio-8090-exec-7] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-18 06:46:07,264 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 06:50:40,548 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 06:50:40,555 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 06:50:40,559 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 06:50:40,580 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 06:50:40,598 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 06:50:40,611 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 06:50:40,614 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 06:50:40,614 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 06:50:40,636 [http-nio-8090-exec-7] <==      Total: 37
2018-11-18 06:50:40,901 [http-nio-8090-exec-7] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 06:50:40,916 [http-nio-8090-exec-7] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542502240868,"id":10,"loginTime":1542495040868,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"20d50e27-3105-493e-bedd-06e4b65c7164","username":"wuzhihua"}(String), 2018-11-18 08:50:40.868(Timestamp), 2018-11-18 06:50:40.868(Timestamp), 2018-11-18 06:50:40.868(Timestamp)
2018-11-18 06:50:40,928 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 06:50:41,273 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:50:41,273 [http-nio-8090-exec-1] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:50:41,280 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 06:50:41,472 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:50:41,473 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:50:41,474 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 06:50:41,637 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:50:41,637 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:50:41,638 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 06:50:41,645 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 06:50:41,648 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 06:50:41,650 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 06:50:41,651 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 06:50:41,651 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 06:50:41,652 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 06:51:09,071 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:51:09,071 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:51:09,074 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 06:51:09,131 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:51:09,131 [http-nio-8090-exec-7] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:51:09,132 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 06:51:09,222 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:51:09,223 [http-nio-8090-exec-3] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:51:09,225 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 06:51:09,228 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 06:51:09,229 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 06:51:09,230 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 06:51:09,232 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 06:51:09,233 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 06:51:09,234 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 06:55:04,477 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:55:04,482 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:55:04,485 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 06:55:04,513 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:55:04,513 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:55:04,521 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 06:55:04,729 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 06:55:04,745 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 06:55:04,746 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 06:55:04,749 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 06:55:04,749 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 06:55:04,749 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 06:58:20,025 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:58:20,029 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:58:20,030 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:58:20,037 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:58:20,038 [http-nio-8090-exec-6] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:58:20,040 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 06:58:20,041 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 06:58:20,044 [http-nio-8090-exec-5] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 06:58:20,048 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:58:20,048 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 06:58:20,051 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-18 06:58:20,057 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 06:58:20,060 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-18 06:58:20,069 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 06:58:20,070 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 06:58:20,074 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-18 06:58:20,081 [http-nio-8090-exec-6] <====      Total: 1
2018-11-18 06:58:20,082 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 06:58:20,082 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-18 06:58:20,082 [http-nio-8090-exec-6] <====      Total: 1
2018-11-18 06:58:20,090 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 06:58:20,094 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-18 06:58:20,101 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 06:58:20,101 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 06:58:20,118 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 06:58:20,123 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 06:58:20,129 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 06:58:43,203 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:58:43,203 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:58:43,205 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:58:43,378 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:58:43,379 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:58:43,380 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:58:43,386 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 06:58:43,387 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 06:58:43,387 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:58:43,387 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 06:58:43,387 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-18 06:58:43,387 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 06:59:31,186 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 06:59:31,187 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 06:59:31,188 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 06:59:31,193 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 06:59:31,197 [http-nio-8090-exec-2] ==> Parameters: 5(Long)
2018-11-18 06:59:31,199 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:00:00,468 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:00,468 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:00,470 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:00:00,512 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:00,513 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:00,515 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:00:00,630 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:00,631 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:00,632 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:00:00,641 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:00:00,643 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-18 07:00:00,644 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 07:00:00,645 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:00:00,647 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-18 07:00:00,648 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:00:04,836 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:04,837 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:04,838 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:00:05,010 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:05,011 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:05,012 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:00:05,015 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:00:05,016 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 07:00:05,017 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:00:05,019 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:00:05,020 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-18 07:00:05,021 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:00:56,458 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:56,458 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:56,459 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:00:56,467 [http-nio-8090-exec-10] ==>  Preparing: insert into lte_config ( mVoiceCount, mVoiceTarget, mFtpService, mFtpPort, mFtpUserName, mFtpPaw, mFtpFileDownPath, mFtpFileUpPath, mFtpUpRateTarget, mFtpDownRateTarget, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-18 07:00:56,470 [http-nio-8090-exec-10] ==> Parameters: 12(String), 13(String), 192.168.233.22(String), 8090(String), username(String), 123456(String), /static/pages(String), /static/pages(String), 23(String), 13(String), 2018-11-18 07:00:56.467(Timestamp), 10(Long), 479(Long)
2018-11-18 07:00:56,473 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 07:00:56,506 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:00:56,507 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:00:56,509 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:00:56,512 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:00:56,513 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 07:00:56,514 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:00:56,515 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:00:56,516 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-18 07:00:56,517 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 07:03:01,309 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:01,310 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:01,311 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:03:01,315 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:03:01,316 [http-nio-8090-exec-2] ==> Parameters: 5(Long)
2018-11-18 07:03:01,318 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:03:01,343 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:01,344 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:01,346 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:01,353 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:03:01,354 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:01,355 [http-nio-8090-exec-5] ==> Parameters: 5(Long), LteConfig(String)
2018-11-18 07:03:01,355 [http-nio-8090-exec-1] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:01,357 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:03:01,358 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:01,365 [http-nio-8090-exec-1] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:03:01,410 [http-nio-8090-exec-1] ==> Parameters: 5(Long), LteConfig(String), 5(Long), LteConfig(String)
2018-11-18 07:03:01,451 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:03:12,634 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:12,634 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:12,640 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:03:12,645 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:03:12,646 [http-nio-8090-exec-9] ==> Parameters: 6(Long)
2018-11-18 07:03:12,649 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:03:12,784 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:12,784 [http-nio-8090-exec-3] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:12,789 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:03:12,803 [http-nio-8090-exec-3] ==>  Preparing: select c.role_id as "roleId" ,c.role_name as "roleName" ,GROUP_CONCAT(c.user_id_name SEPARATOR ',') as "userList" from ( select r.id as role_id ,r.name as role_name ,concat_ws('_',u.id,u.nickname) as user_id_name from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? ) c group by c.role_id,c.role_name 
2018-11-18 07:03:12,807 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 07:03:12,814 [http-nio-8090-exec-3] <==      Total: 3
2018-11-18 07:03:17,673 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:17,674 [http-nio-8090-exec-8] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:17,675 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:03:17,678 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:03:17,680 [http-nio-8090-exec-8] ==> Parameters: 6(Long)
2018-11-18 07:03:17,682 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:03:17,829 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:17,831 [http-nio-8090-exec-2] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:17,834 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:03:17,843 [http-nio-8090-exec-2] ==>  Preparing: select c.role_id as "roleId" ,c.role_name as "roleName" ,GROUP_CONCAT(c.user_id_name SEPARATOR ',') as "userList" from ( select r.id as role_id ,r.name as role_name ,concat_ws('_',u.id,u.nickname) as user_id_name from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? ) c group by c.role_id,c.role_name 
2018-11-18 07:03:17,844 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 07:03:17,849 [http-nio-8090-exec-2] <==      Total: 3
2018-11-18 07:03:32,160 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:32,161 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:32,162 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:03:32,185 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:32,185 [http-nio-8090-exec-6] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:32,185 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:03:32,191 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 07:03:32,191 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:03:32,197 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 07:03:32,199 [http-nio-8090-exec-6] ====> Parameters: 479(Integer)
2018-11-18 07:03:32,200 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 07:03:32,200 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:03:46,186 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:46,186 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:46,187 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:46,205 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:46,206 [http-nio-8090-exec-3] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:46,208 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:03:46,216 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 07:03:46,216 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-18 07:03:46,227 [http-nio-8090-exec-3] <==      Total: 37
2018-11-18 07:03:53,206 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-18 07:03:53,208 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-18 07:03:53.205(Timestamp)
2018-11-18 07:03:53,213 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:03:53,215 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:53,215 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,217 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:03:53,219 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:03:53,219 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-18 07:03:53,221 [http-nio-8090-exec-4] <==      Total: 37
2018-11-18 07:03:53,222 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:53,223 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,225 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:03:53,226 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-18 07:03:53,327 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503033221,"id":10,"loginTime":1542495833221,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"20d50e27-3105-493e-bedd-06e4b65c7164","username":"wuzhihua"}(String), 2018-11-18 09:03:53.221(Timestamp), 2018-11-18 07:03:53.226(Timestamp), 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,339 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:03:53,584 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:53,584 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,586 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:03:53,648 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:53,649 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,650 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:03:53,758 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:53,758 [http-nio-8090-exec-7] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:53,760 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:03:53,762 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:03:53,763 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 07:03:53,764 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 07:03:53,765 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:03:53,766 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 07:03:53,769 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:03:55,152 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:55,153 [http-nio-8090-exec-6] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:55,154 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:03:55,168 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:55,168 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:55,169 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:03:55,174 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 07:03:55,175 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-18 07:03:55,178 [http-nio-8090-exec-10] <==      Total: 37
2018-11-18 07:03:57,002 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:57,003 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:57,004 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:57,012 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-18 07:03:57,014 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 07:03:57,016 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:57,017 [http-nio-8090-exec-5] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-18 07:03:57,019 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-18 07:03:57,024 [http-nio-8090-exec-5] <==      Total: 10
2018-11-18 07:03:59,716 [http-nio-8090-exec-9] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-18 07:03:59,716 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-18 07:03:59.715(Timestamp)
2018-11-18 07:03:59,721 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 07:03:59,723 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:59,723 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:59,724 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:03:59,725 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:03:59,725 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 07:03:59,728 [http-nio-8090-exec-9] <==      Total: 37
2018-11-18 07:03:59,729 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:59,730 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:59,730 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:03:59,730 [http-nio-8090-exec-9] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-18 07:03:59,730 [http-nio-8090-exec-9] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503039728,"id":10,"loginTime":1542495839728,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"20d50e27-3105-493e-bedd-06e4b65c7164","username":"wuzhihua"}(String), 2018-11-18 09:03:59.728(Timestamp), 2018-11-18 07:03:59.73(Timestamp), 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:59,743 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 07:03:59,842 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:59,843 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:59,845 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:03:59,897 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:03:59,898 [http-nio-8090-exec-1] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:03:59,899 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:04:00,019 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:04:00,020 [http-nio-8090-exec-3] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:04:00,021 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:04:00,024 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:04:00,025 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 07:04:00,026 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 07:04:00,027 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:04:00,028 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 07:04:00,031 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:04:04,468 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:04:04,468 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:04:04,469 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:04:04,588 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:04:04,588 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:04:04,589 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:04:04,593 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:04:04,593 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 07:04:04,594 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:04:04,597 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:04:04,598 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-18 07:04:04,600 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 07:06:58,466 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:06:58,470 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:06:58,473 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:06:58,481 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:06:58,482 [http-nio-8090-exec-10] ==> Parameters: 6(Long)
2018-11-18 07:06:58,483 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:06:58,637 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:06:58,637 [http-nio-8090-exec-7] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:06:58,640 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:06:58,640 [http-nio-8090-exec-7] ==>  Preparing: select c.role_id as "roleId" ,c.role_name as "roleName" ,GROUP_CONCAT(c.user_id_name SEPARATOR ',') as "userList" from ( select r.id as role_id ,r.name as role_name ,concat_ws('_',u.id,u.nickname) as user_id_name from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? ) c group by c.role_id,c.role_name 
2018-11-18 07:06:58,640 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 07:06:58,645 [http-nio-8090-exec-7] <==      Total: 3
2018-11-18 07:08:48,659 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:08:48,659 [http-nio-8090-exec-10] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:08:48,661 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] ==> Parameters: 1(Long), 6(Long)
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] ==> Parameters: LteConfig(String), 2018-11-18 07:08:48.873(Timestamp), 6(Long), 479(Long), 90001(String), 6(String), LteConfig_6(String)
2018-11-18 07:08:48,873 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 07:08:48,919 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:08:48,920 [http-nio-8090-exec-7] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:08:48,921 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:08:48,924 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:08:48,925 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-18 07:08:48,926 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:08:48,927 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:08:48,928 [http-nio-8090-exec-7] ==> Parameters: 10(Integer)
2018-11-18 07:08:48,930 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 07:09:06,920 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:09:06,920 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:09:06,923 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:09:06,925 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:09:06,929 [http-nio-8090-exec-4] ==> Parameters: 6(Long)
2018-11-18 07:09:06,931 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:09:06,960 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:09:06,961 [http-nio-8090-exec-5] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:09:06,964 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:09:06,971 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:09:06,973 [http-nio-8090-exec-5] ==> Parameters: 6(Long), LteConfig(String)
2018-11-18 07:09:06,975 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:09:07,043 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:09:07,045 [http-nio-8090-exec-8] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:09:07,048 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:09:07,056 [http-nio-8090-exec-8] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:09:07,057 [http-nio-8090-exec-8] ==> Parameters: 6(Long), LteConfig(String), 6(Long), LteConfig(String)
2018-11-18 07:09:07,063 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:10:01,065 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:01,065 [http-nio-8090-exec-9] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:10:01,067 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:01,075 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:10:01,075 [http-nio-8090-exec-9] ==> Parameters: 6(Long)
2018-11-18 07:10:01,075 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:01,121 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:01,122 [http-nio-8090-exec-6] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:10:01,126 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:10:01,130 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:10:01,131 [http-nio-8090-exec-6] ==> Parameters: 6(Long), LteConfig(String)
2018-11-18 07:10:01,133 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:10:01,219 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:01,220 [http-nio-8090-exec-1] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:10:01,226 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:10:01,231 [http-nio-8090-exec-1] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:10:01,232 [http-nio-8090-exec-1] ==> Parameters: 6(Long), LteConfig(String), 6(Long), LteConfig(String)
2018-11-18 07:10:01,236 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:10:24,925 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:24,925 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:10:24,926 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:10:24,928 [http-nio-8090-exec-4] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:10:24,930 [http-nio-8090-exec-4] ==> Parameters: 20d50e27-3105-493e-bedd-06e4b65c7164(String)
2018-11-18 07:10:24,934 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:10:30,575 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:10:30,577 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-18 07:10:30,578 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:30,579 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:10:30,580 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-18 07:10:30,581 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:30,581 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:10:30,581 [http-nio-8090-exec-9] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:10:30,581 [http-nio-8090-exec-9] <==      Total: 19
2018-11-18 07:10:30,781 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:10:30,781 [http-nio-8090-exec-9] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503430781,"id":6,"loginTime":1542496230781,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"774b7e67-0d2b-4754-aa41-2ab083225020","username":"weicheng"}(String), 2018-11-18 09:10:30.781(Timestamp), 2018-11-18 07:10:30.781(Timestamp), 2018-11-18 07:10:30.781(Timestamp)
2018-11-18 07:10:30,798 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 07:10:30,900 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:30,902 [http-nio-8090-exec-1] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:30,902 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:10:30,930 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:30,930 [http-nio-8090-exec-6] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:30,931 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:10:31,026 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:31,027 [http-nio-8090-exec-5] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:31,028 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:10:31,031 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:10:31,033 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:10:31,037 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 07:10:31,038 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:10:31,039 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:10:31,039 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:10:33,824 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:33,825 [http-nio-8090-exec-8] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:33,826 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:10:34,003 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:34,004 [http-nio-8090-exec-8] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:34,005 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:10:34,007 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:10:34,009 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-18 07:10:34,009 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:10:34,011 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:10:34,012 [http-nio-8090-exec-8] ==> Parameters: 10(Integer)
2018-11-18 07:10:34,013 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 07:10:44,270 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:44,270 [http-nio-8090-exec-2] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:44,271 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:10:44,271 [http-nio-8090-exec-2] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:10:44,272 [http-nio-8090-exec-2] ==> Parameters: 774b7e67-0d2b-4754-aa41-2ab083225020(String)
2018-11-18 07:10:44,276 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:10:49,117 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:10:49,117 [http-nio-8090-exec-9] ==> Parameters: weipeng(String)
2018-11-18 07:10:49,118 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:49,120 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:10:49,120 [http-nio-8090-exec-9] ==> Parameters: weipeng(String)
2018-11-18 07:10:49,121 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:10:49,121 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:10:49,124 [http-nio-8090-exec-9] ==> Parameters: weipeng(String), 479(Long)
2018-11-18 07:10:49,125 [http-nio-8090-exec-9] <==      Total: 19
2018-11-18 07:10:49,328 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:10:49,328 [http-nio-8090-exec-9] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":878140800000,"createTime":1541212875000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503449328,"id":5,"loginTime":1542496249328,"nickname":"张伟鹏","password":"$2a$10$0of8PA.3EqVaz.gcYf6iy.67NVRtt3V6orOZSXTIaTl4XL/zY6Oxi","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"13563648495","projId":479,"sex":0,"status":1,"telephone":"05364640385","token":"2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58","username":"weipeng"}(String), 2018-11-18 09:10:49.328(Timestamp), 2018-11-18 07:10:49.328(Timestamp), 2018-11-18 07:10:49.328(Timestamp)
2018-11-18 07:10:49,336 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 07:10:49,464 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:49,465 [http-nio-8090-exec-8] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:10:49,466 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:10:49,498 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:49,499 [http-nio-8090-exec-2] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:10:49,499 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:10:49,579 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:49,579 [http-nio-8090-exec-4] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:10:49,580 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:10:49,582 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:10:49,583 [http-nio-8090-exec-4] ==> Parameters: weipeng(String)
2018-11-18 07:10:49,585 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:10:49,585 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:10:49,586 [http-nio-8090-exec-4] ==> Parameters: weipeng(String)
2018-11-18 07:10:49,589 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:10:50,926 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:50,927 [http-nio-8090-exec-10] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:10:50,929 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:10:51,082 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:10:51,082 [http-nio-8090-exec-10] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:10:51,083 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:10:51,086 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:10:51,086 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-18 07:10:51,088 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:10:51,089 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:10:51,089 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-18 07:10:51,090 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 07:11:19,476 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:19,476 [http-nio-8090-exec-3] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:11:19,481 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:11:19,485 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:11:19,487 [http-nio-8090-exec-3] ==> Parameters: 5(Long)
2018-11-18 07:11:19,489 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:11:19,518 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:19,519 [http-nio-8090-exec-5] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:11:19,523 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:11:19,531 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:11:19,532 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:19,532 [http-nio-8090-exec-5] ==> Parameters: 5(Long), LteConfig(String)
2018-11-18 07:11:19,533 [http-nio-8090-exec-1] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:11:19,535 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:11:19,535 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:11:19,545 [http-nio-8090-exec-1] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:11:19,548 [http-nio-8090-exec-1] ==> Parameters: 5(Long), LteConfig(String), 5(Long), LteConfig(String)
2018-11-18 07:11:19,555 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:11:25,328 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:25,328 [http-nio-8090-exec-2] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:11:25,329 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:11:25,330 [http-nio-8090-exec-2] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:11:25,330 [http-nio-8090-exec-2] ==> Parameters: 2eadfb33-c36c-4283-8c3c-2ae6b9a3ef58(String)
2018-11-18 07:11:25,334 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:11:30,558 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:11:30,558 [http-nio-8090-exec-3] ==> Parameters: weicheng(String)
2018-11-18 07:11:30,560 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:11:30,562 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:11:30,562 [http-nio-8090-exec-3] ==> Parameters: weicheng(String)
2018-11-18 07:11:30,563 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:11:30,563 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:11:30,564 [http-nio-8090-exec-3] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:11:30,565 [http-nio-8090-exec-3] <==      Total: 19
2018-11-18 07:11:34,007 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:11:34,007 [http-nio-8090-exec-1] ==> Parameters: weicheng(String)
2018-11-18 07:11:34,008 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:11:34,009 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:11:34,009 [http-nio-8090-exec-1] ==> Parameters: weicheng(String)
2018-11-18 07:11:34,011 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:11:34,011 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:11:34,012 [http-nio-8090-exec-1] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:11:34,013 [http-nio-8090-exec-1] <==      Total: 19
2018-11-18 07:11:38,450 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:11:38,451 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:11:38,451 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:11:38,453 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:11:38,453 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:11:38,453 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:11:38,454 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:11:38,455 [http-nio-8090-exec-5] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:11:38,456 [http-nio-8090-exec-5] <==      Total: 19
2018-11-18 07:11:38,650 [http-nio-8090-exec-5] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:11:38,650 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503498650,"id":6,"loginTime":1542496298650,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3","username":"weicheng"}(String), 2018-11-18 09:11:38.65(Timestamp), 2018-11-18 07:11:38.65(Timestamp), 2018-11-18 07:11:38.65(Timestamp)
2018-11-18 07:11:38,663 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-18 07:11:38,766 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:38,767 [http-nio-8090-exec-1] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:11:38,768 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:11:38,806 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:38,807 [http-nio-8090-exec-10] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:11:38,807 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:11:38,901 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:11:38,902 [http-nio-8090-exec-4] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:11:38,902 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:11:38,904 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:11:38,905 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-18 07:11:38,906 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 07:11:38,907 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:11:38,907 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-18 07:11:38,909 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:12:26,141 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:26,142 [http-nio-8090-exec-4] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:26,143 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:12:26,255 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:26,255 [http-nio-8090-exec-4] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:26,256 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:12:26,261 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:12:26,261 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 07:12:26,262 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:12:26,264 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:12:26,264 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-18 07:12:26,266 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 07:12:35,998 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:35,999 [http-nio-8090-exec-9] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:36,000 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:12:36,002 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:12:36,003 [http-nio-8090-exec-9] ==> Parameters: 5(Long)
2018-11-18 07:12:36,004 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:12:36,020 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:36,021 [http-nio-8090-exec-6] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:36,024 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:12:36,027 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:36,027 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:36,028 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:12:36,028 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:12:36,029 [http-nio-8090-exec-6] ==> Parameters: 5(Long), LteConfig(String)
2018-11-18 07:12:36,030 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:12:36,031 [http-nio-8090-exec-3] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:12:36,031 [http-nio-8090-exec-3] ==> Parameters: 5(Long), LteConfig(String), 5(Long), LteConfig(String)
2018-11-18 07:12:36,032 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:12:39,264 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:39,265 [http-nio-8090-exec-10] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:39,266 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:12:39,269 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:12:39,269 [http-nio-8090-exec-10] ==> Parameters: 6(Long)
2018-11-18 07:12:39,274 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:12:39,297 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:39,297 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:39,298 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:12:39,301 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:12:39,302 [http-nio-8090-exec-3] ==> Parameters: 6(Long), LteConfig(String)
2018-11-18 07:12:39,303 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:12:39,304 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:12:39,304 [http-nio-8090-exec-7] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:12:39,307 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:12:39,313 [http-nio-8090-exec-7] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:12:39,314 [http-nio-8090-exec-7] ==> Parameters: 6(Long), LteConfig(String), 6(Long), LteConfig(String)
2018-11-18 07:12:39,315 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:13:02,381 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-18 07:13:02,383 [http-nio-8090-exec-2] ==> Parameters: weicheng(String), 468(Long), 2018-11-18 07:13:02.381(Timestamp)
2018-11-18 07:13:02,387 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:13:02,388 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:02,388 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,391 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:13:02,392 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:13:02,392 [http-nio-8090-exec-2] ==> Parameters: weicheng(String), 468(Long)
2018-11-18 07:13:02,392 [http-nio-8090-exec-2] <==      Total: 17
2018-11-18 07:13:02,397 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:02,397 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,398 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:13:02,400 [http-nio-8090-exec-2] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-18 07:13:02,401 [http-nio-8090-exec-2] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503582392,"id":6,"loginTime":1542496382392,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"18301601124","projId":468,"sex":0,"status":1,"telephone":"18301601124","token":"b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3","username":"weicheng"}(String), 2018-11-18 09:13:02.392(Timestamp), 2018-11-18 07:13:02.398(Timestamp), b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,404 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:13:02,508 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:02,509 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,511 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:13:02,546 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:02,547 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,548 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:13:02,658 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:02,658 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:02,659 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:13:02,661 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:13:02,662 [http-nio-8090-exec-3] ==> Parameters: weicheng(String)
2018-11-18 07:13:02,663 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 07:13:02,663 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:13:02,664 [http-nio-8090-exec-3] ==> Parameters: weicheng(String)
2018-11-18 07:13:02,666 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:13:04,164 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:04,165 [http-nio-8090-exec-7] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:04,166 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:13:04,169 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:13:04,169 [http-nio-8090-exec-7] ==> Parameters: 468(Long)
2018-11-18 07:13:04,171 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:13:04,179 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:04,179 [http-nio-8090-exec-4] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:04,180 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:13:05,080 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:05,080 [http-nio-8090-exec-10] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:05,082 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:13:05,090 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:13:05,092 [http-nio-8090-exec-10] ==> Parameters: 468(Long)
2018-11-18 07:13:05,093 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:13:05,652 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:05,652 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:05,654 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:13:05,775 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:05,775 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:05,776 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:13:05,778 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-18 07:13:05,779 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 07:13:05,780 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:13:05,781 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-18 07:13:05,782 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-18 07:13:05,783 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 07:13:06,348 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:06,349 [http-nio-8090-exec-8] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:06,350 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:13:06,356 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:13:06,357 [http-nio-8090-exec-8] ==> Parameters: 468(Long)
2018-11-18 07:13:06,358 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:13:07,325 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:13:07,326 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:13:07,327 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:13:07,339 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:13:07,341 [http-nio-8090-exec-2] ==> Parameters: 468(Long)
2018-11-18 07:13:07,343 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:15:11,154 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:11,166 [http-nio-8090-exec-10] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:11,176 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:15:11,311 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:11,312 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:11,313 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:15:11,418 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:11,420 [http-nio-8090-exec-8] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:11,421 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:15:11,432 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:15:11,435 [http-nio-8090-exec-8] ==> Parameters: weicheng(String)
2018-11-18 07:15:11,437 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 07:15:11,438 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:15:11,445 [http-nio-8090-exec-8] ==> Parameters: weicheng(String)
2018-11-18 07:15:11,446 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:15:13,468 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-18 07:15:13,475 [http-nio-8090-exec-2] ==> Parameters: weicheng(String), 479(Long), 2018-11-18 07:15:13.467(Timestamp)
2018-11-18 07:15:13,480 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:15:13,487 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:13,487 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,489 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:15:13,491 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:15:13,495 [http-nio-8090-exec-2] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:15:13,500 [http-nio-8090-exec-2] <==      Total: 19
2018-11-18 07:15:13,502 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:13,502 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,503 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:15:13,522 [http-nio-8090-exec-2] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-18 07:15:13,526 [http-nio-8090-exec-2] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503713501,"id":6,"loginTime":1542496513501,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3","username":"weicheng"}(String), 2018-11-18 09:15:13.501(Timestamp), 2018-11-18 07:15:13.504(Timestamp), b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,529 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:15:13,645 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:13,645 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,647 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:15:13,676 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:13,676 [http-nio-8090-exec-10] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,677 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:15:13,785 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:13,786 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:13,787 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:15:13,792 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:15:13,794 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:15:13,795 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 07:15:13,797 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:15:13,799 [http-nio-8090-exec-5] ==> Parameters: weicheng(String)
2018-11-18 07:15:13,803 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:15:15,971 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:15,973 [http-nio-8090-exec-9] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:15,976 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:15:16,133 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:16,133 [http-nio-8090-exec-9] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:16,135 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:15:16,244 [http-nio-8090-exec-9] ==>  Preparing: select count(0) from (select lp.* from lte_config lp and lp.projId = ? order by lp.createTime desc) tmp_count 
2018-11-18 07:15:36,889 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:36,889 [http-nio-8090-exec-6] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:36,892 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:15:37,382 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:15:37,383 [http-nio-8090-exec-6] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:15:37,386 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:15:37,391 [http-nio-8090-exec-6] ==>  Preparing: select count(0) from (select lp.* from lte_config lp and lp.projId = ? order by lp.createTime desc) tmp_count 
2018-11-18 07:16:17,174 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:17,180 [http-nio-8090-exec-2] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:17,189 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:16:17,314 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:17,314 [http-nio-8090-exec-4] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:17,315 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:16:17,433 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:17,434 [http-nio-8090-exec-9] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:17,435 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:16:17,443 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:16:17,451 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-18 07:16:17,453 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 07:16:17,454 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:16:17,459 [http-nio-8090-exec-9] ==> Parameters: weicheng(String)
2018-11-18 07:16:17,462 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:16:23,515 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:23,515 [http-nio-8090-exec-8] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:23,517 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:16:23,627 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:16:23,627 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 07:16:23,643 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:16:23,645 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:16:23,645 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 3(Integer)
2018-11-18 07:16:23,645 [http-nio-8090-exec-8] <==      Total: 3
2018-11-18 07:16:24,852 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:24,852 [http-nio-8090-exec-6] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:24,854 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:16:25,060 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:25,061 [http-nio-8090-exec-6] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:25,064 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:16:25,078 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:16:25,080 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:16:25,080 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:16:25,080 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:16:25,080 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:16:25,093 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 07:16:36,328 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:36,330 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:36,332 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:16:36,495 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:36,497 [http-nio-8090-exec-5] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:36,499 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:16:36,508 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:16:36,510 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 07:16:36,513 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:16:36,514 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:16:36,517 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:16:36,520 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 07:16:45,063 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:45,064 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:45,065 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:16:45,066 [http-nio-8090-exec-3] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:16:45,073 [http-nio-8090-exec-3] ==> Parameters: b8dc8d0c-9004-4dcd-9c12-e3dfd5ededa3(String)
2018-11-18 07:16:45,076 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-18 07:16:50,660 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:16:50,662 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 07:16:50,663 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:50,682 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:16:50,682 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 07:16:50,682 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:50,682 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:16:50,700 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 07:16:50,700 [http-nio-8090-exec-1] <==      Total: 37
2018-11-18 07:16:50,923 [http-nio-8090-exec-1] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:16:50,923 [http-nio-8090-exec-1] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503810905,"id":10,"loginTime":1542496610905,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"a9cbfdbb-8b7b-4640-b481-8a237a650bb0","username":"wuzhihua"}(String), 2018-11-18 09:16:50.905(Timestamp), 2018-11-18 07:16:50.905(Timestamp), 2018-11-18 07:16:50.905(Timestamp)
2018-11-18 07:16:50,941 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:16:51,067 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:51,067 [http-nio-8090-exec-1] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:16:51,069 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:51,115 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:51,116 [http-nio-8090-exec-3] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:16:51,118 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:16:51,233 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:51,233 [http-nio-8090-exec-10] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:16:51,235 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:16:51,241 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:16:51,242 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 07:16:51,244 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 07:16:51,246 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:16:51,247 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 07:16:51,247 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:16:54,345 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:54,346 [http-nio-8090-exec-5] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:16:54,347 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:16:54,367 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:16:54,367 [http-nio-8090-exec-1] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:16:54,367 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:54,394 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 07:16:54,399 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 07:16:54,403 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 07:16:54,406 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-18 07:16:54,410 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 07:16:54,412 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:54,415 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 07:16:54,419 [http-nio-8090-exec-1] ==> Parameters: 107(Long)
2018-11-18 07:16:54,423 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:54,426 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 07:16:54,427 [http-nio-8090-exec-1] ==> Parameters: 75(Long)
2018-11-18 07:16:54,428 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:16:54,431 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 07:16:54,431 [http-nio-8090-exec-1] ==> Parameters: 108(Long)
2018-11-18 07:16:54,431 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:17:02,822 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:02,824 [http-nio-8090-exec-2] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:02,827 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:02,842 [http-nio-8090-exec-2] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 07:17:02,844 [http-nio-8090-exec-2] ==> Parameters: 75(Long)
2018-11-18 07:17:02,845 [http-nio-8090-exec-2] <==      Total: 6
2018-11-18 07:17:03,067 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:03,068 [http-nio-8090-exec-2] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:03,073 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:03,153 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-18 07:17:03,155 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 07:17:03,155 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:03,155 [http-nio-8090-exec-2] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-18 07:17:03,155 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 500(Integer)
2018-11-18 07:17:03,155 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 07:17:09,669 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:09,669 [http-nio-8090-exec-6] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:09,671 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:17:09,683 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-18 07:17:09,688 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:17:09,690 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:17:09,692 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-18 07:17:09,695 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:17:09,699 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:17:11,038 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:11,038 [http-nio-8090-exec-5] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:11,046 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:17:11,056 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-18 07:17:11,057 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 07:17:11,058 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:17:11,061 [http-nio-8090-exec-5] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-18 07:17:11,062 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:17:11,068 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:11,068 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 07:17:11,069 [http-nio-8090-exec-7] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:11,072 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:17:12,553 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:12,554 [http-nio-8090-exec-10] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:12,558 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:17:12,579 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:12,582 [http-nio-8090-exec-2] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:12,586 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:12,589 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 07:17:12,601 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 07:17:12,607 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 07:17:12,608 [http-nio-8090-exec-2] ====> Parameters: 479(Integer)
2018-11-18 07:17:12,608 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 07:17:12,608 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:24,844 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:24,845 [http-nio-8090-exec-10] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:24,847 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:17:24,854 [http-nio-8090-exec-10] ==>  Preparing: select sr.id,sr.name,sr.description ,sr.createTime,sr.updateTime ,sr.sort ,sp.id as projId from sys_role sr ,proj_role_relation prr ,sys_project sp where 1=1 and sr.id=prr.role_id and prr.proj_id=sp.id and sr.id=? order by sr.sort 
2018-11-18 07:17:24,855 [http-nio-8090-exec-10] ==> Parameters: 75(Long)
2018-11-18 07:17:24,855 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:17:24,889 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:24,889 [http-nio-8090-exec-2] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:24,889 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:17:24,894 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_project sp order by sp.sort 
2018-11-18 07:17:24,894 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-18 07:17:24,902 [http-nio-8090-exec-2] <==      Total: 85
2018-11-18 07:17:24,956 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:24,957 [http-nio-8090-exec-4] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:24,960 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:17:24,968 [http-nio-8090-exec-4] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-18 07:17:24,970 [http-nio-8090-exec-4] ==> Parameters: 75(Long)
2018-11-18 07:17:24,974 [http-nio-8090-exec-4] <==      Total: 19
2018-11-18 07:17:24,977 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 07:17:24,979 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 07:17:24,987 [http-nio-8090-exec-4] <==      Total: 37
2018-11-18 07:17:57,565 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:57,566 [http-nio-8090-exec-1] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:57,568 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:17:57,583 [http-nio-8090-exec-1] ==>  Preparing: update sys_role SET name=?, description=?, sort=?, updateTime=? where id=? 
2018-11-18 07:17:57,592 [http-nio-8090-exec-1] ==> Parameters: 审批人员(String), 审批人员(String), 100(String), 2018-11-18 07:17:57.583(Timestamp), 75(Long)
2018-11-18 07:17:57,599 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:17:57,601 [http-nio-8090-exec-1] ==>  Preparing: delete from proj_role_relation where role_id=? and role_id not in (1,20) 
2018-11-18 07:17:57,602 [http-nio-8090-exec-1] ==> Parameters: 75(Long)
2018-11-18 07:17:57,710 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:17:57,712 [http-nio-8090-exec-1] ==>  Preparing: delete from sys_role_permission where roleId=? and roleId not in (1,20) 
2018-11-18 07:17:57,712 [http-nio-8090-exec-1] ==> Parameters: 75(Long)
2018-11-18 07:17:57,726 [http-nio-8090-exec-1] <==    Updates: 19
2018-11-18 07:17:57,733 [http-nio-8090-exec-1] ==>  Preparing: insert into proj_role_relation (role_id,proj_id) values ( ?, ? ) 
2018-11-18 07:17:57,737 [http-nio-8090-exec-1] ==> Parameters: 75(Long), 479(Long)
2018-11-18 07:17:57,740 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:17:57,742 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_role_permission (roleId,permissionId) values ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) , ( ?, ? ) 
2018-11-18 07:17:57,742 [http-nio-8090-exec-1] ==> Parameters: 75(Long), 88(Long), 75(Long), 89(Long), 75(Long), 95(Long), 75(Long), 96(Long), 75(Long), 108(Long), 75(Long), 90(Long), 75(Long), 97(Long), 75(Long), 98(Long), 75(Long), 93(Long), 75(Long), 99(Long), 75(Long), 100(Long), 75(Long), 106(Long), 75(Long), 91(Long), 75(Long), 102(Long), 75(Long), 101(Long), 75(Long), 92(Long), 75(Long), 103(Long), 75(Long), 104(Long), 75(Long), 94(Long), 75(Long), 105(Long), 75(Long), 107(Long)
2018-11-18 07:17:57,750 [http-nio-8090-exec-1] <==    Updates: 21
2018-11-18 07:17:57,885 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:57,885 [http-nio-8090-exec-6] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:57,885 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:17:57,908 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:17:57,909 [http-nio-8090-exec-7] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:17:57,910 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:17:57,911 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 07:17:57,914 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 07:17:57,916 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 07:17:57,916 [http-nio-8090-exec-7] ====> Parameters: 479(Integer)
2018-11-18 07:17:57,918 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 07:17:57,918 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:18:01,900 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:01,901 [http-nio-8090-exec-10] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:18:01,902 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:18:04,094 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:04,094 [http-nio-8090-exec-4] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:18:04,096 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:18:04,097 [http-nio-8090-exec-4] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:18:04,098 [http-nio-8090-exec-4] ==> Parameters: a9cbfdbb-8b7b-4640-b481-8a237a650bb0(String)
2018-11-18 07:18:04,100 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:18:11,981 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:18:11,984 [http-nio-8090-exec-7] ==> Parameters: weicheng(String)
2018-11-18 07:18:11,987 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:18:11,988 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:18:11,988 [http-nio-8090-exec-7] ==> Parameters: weicheng(String)
2018-11-18 07:18:11,988 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:18:11,994 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:18:11,994 [http-nio-8090-exec-7] ==> Parameters: weicheng(String), 479(Long)
2018-11-18 07:18:11,996 [http-nio-8090-exec-7] <==      Total: 21
2018-11-18 07:18:12,188 [http-nio-8090-exec-7] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:18:12,193 [http-nio-8090-exec-7] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:config:send"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542503892188,"id":6,"loginTime":1542496692188,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"dbe7713a-7b74-48b6-b549-310615a2a084","username":"weicheng"}(String), 2018-11-18 09:18:12.188(Timestamp), 2018-11-18 07:18:12.188(Timestamp), 2018-11-18 07:18:12.188(Timestamp)
2018-11-18 07:18:12,198 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 07:18:12,334 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:12,334 [http-nio-8090-exec-9] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:18:12,336 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:18:12,374 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:12,375 [http-nio-8090-exec-4] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:18:12,376 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:18:12,494 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:12,494 [http-nio-8090-exec-2] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:18:12,495 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:18:12,497 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:18:12,498 [http-nio-8090-exec-2] ==> Parameters: weicheng(String)
2018-11-18 07:18:12,499 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 07:18:12,500 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:18:12,501 [http-nio-8090-exec-2] ==> Parameters: weicheng(String)
2018-11-18 07:18:12,502 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:18:15,248 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:18:15,249 [http-nio-8090-exec-1] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:18:15,250 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:19:10,339 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:19:10,339 [http-nio-8090-exec-10] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:19:10,344 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:19:10,520 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:19:10,521 [http-nio-8090-exec-5] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:19:10,523 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:19:10,529 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:19:10,530 [http-nio-8090-exec-5] ==> Parameters: 6(Long)
2018-11-18 07:19:10,533 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:19:10,563 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:19:10,564 [http-nio-8090-exec-1] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:19:10,565 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:19:10,570 [http-nio-8090-exec-1] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:19:10,572 [http-nio-8090-exec-1] ==> Parameters: 6(Long), LteConfig(String)
2018-11-18 07:19:10,572 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:20:01,510 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:01,511 [http-nio-8090-exec-8] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:01,513 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] ==> Parameters: 2(Long), 6(Long)
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] ==> Parameters: 通过(String), LteConfig(String), 2018-11-18 07:20:01.802(Timestamp), 6(Long), 6(Long), 479(Long), 配置信息审核(String), 90009(String), 90001(String), null
2018-11-18 07:20:01,803 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-18 07:20:01,850 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:01,850 [http-nio-8090-exec-7] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:01,851 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:20:10,214 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:10,215 [http-nio-8090-exec-5] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:10,216 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:20:10,223 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:20:10,224 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 07:20:10,225 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:20:10,225 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_station_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:20:10,225 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:20:10,231 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:20:12,706 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:12,708 [http-nio-8090-exec-9] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:12,709 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:20:12,717 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:20:12,718 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 07:20:12,719 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:20:12,719 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_cell_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:20:12,720 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:20:12,720 [http-nio-8090-exec-9] <==      Total: 3
2018-11-18 07:20:17,104 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:17,104 [http-nio-8090-exec-4] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:17,106 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:20:17,107 [http-nio-8090-exec-4] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 07:20:17,107 [http-nio-8090-exec-4] ==> Parameters: dbe7713a-7b74-48b6-b549-310615a2a084(String)
2018-11-18 07:20:17,112 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:20:22,329 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:20:22,331 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 07:20:22,332 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:20:22,333 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:20:22,333 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 07:20:22,333 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:20:22,339 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:20:22,339 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 07:20:22,340 [http-nio-8090-exec-3] <==      Total: 37
2018-11-18 07:20:22,532 [http-nio-8090-exec-3] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:20:22,532 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542504022532,"id":10,"loginTime":1542496822532,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27","username":"wuzhihua"}(String), 2018-11-18 09:20:22.532(Timestamp), 2018-11-18 07:20:22.532(Timestamp), 2018-11-18 07:20:22.532(Timestamp)
2018-11-18 07:20:22,549 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-18 07:20:22,683 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:22,684 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:20:22,687 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:20:22,720 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:22,721 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:20:22,722 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:20:22,836 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:20:22,836 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:20:22,837 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:20:22,839 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:20:22,840 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 07:20:22,840 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 07:20:22,844 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:20:22,844 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 07:20:22,845 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:21:02,778 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:02,779 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:02,780 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:21:02,981 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:02,981 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:02,982 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:21:02,985 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:21:02,986 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 07:21:02,988 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:21:02,989 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:21:02,990 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:21:02,991 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 07:21:08,191 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:08,193 [http-nio-8090-exec-5] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:08,196 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:21:08,197 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:21:08,197 [http-nio-8090-exec-5] ==> Parameters: 6(Long)
2018-11-18 07:21:08,197 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:21:08,234 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:08,234 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:08,235 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:21:08,239 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:21:08,240 [http-nio-8090-exec-7] ==> Parameters: 6(Long), LteConfig(String)
2018-11-18 07:21:08,241 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:21:08,291 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:08,292 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:08,293 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:21:08,296 [http-nio-8090-exec-1] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:21:08,303 [http-nio-8090-exec-1] ==> Parameters: 6(Long), LteConfig(String), 6(Long), LteConfig(String)
2018-11-18 07:21:08,307 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:21:12,836 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:12,837 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:12,842 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:21:12,843 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-18 07:21:12,843 [http-nio-8090-exec-10] ==> Parameters: 5(Long)
2018-11-18 07:21:12,848 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:21:12,875 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:12,876 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:12,878 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:21:12,883 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:21:12,884 [http-nio-8090-exec-9] ==> Parameters: 5(Long), LteConfig(String)
2018-11-18 07:21:12,886 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:21:12,910 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:12,910 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:12,915 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:21:12,922 [http-nio-8090-exec-8] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-18 07:21:12,924 [http-nio-8090-exec-8] ==> Parameters: 5(Long), LteConfig(String), 5(Long), LteConfig(String)
2018-11-18 07:21:12,935 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:21:21,623 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:21,623 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:21,626 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:21:21,639 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:21:21,642 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 07:21:21,643 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:21:21,644 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:21:21,644 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:21:21,644 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:21:21,644 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:21:21,648 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:21:21,650 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:23:23,709 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:23:23,711 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:23:23,714 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:23:23,720 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:23:23,722 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-18 07:23:23,723 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:25:13,316 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:25:13,317 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:25:13,318 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:25:13,321 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:25:13,323 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-18 07:25:13,326 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:26:29,648 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:26:29,649 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:26:29,652 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:26:29,697 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:26:29,698 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:26:29,699 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:26:29,822 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:26:29,822 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:26:29,823 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:26:29,826 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:26:29,827 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 07:26:29,828 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 07:26:29,829 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:26:29,830 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 07:26:29,831 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:26:31,610 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:26:31,610 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:26:31,611 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:26:31,615 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:26:31,615 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 07:26:31,616 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:26:31,617 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:26:31,618 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:26:31,619 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:26:31,621 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:26:31,621 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:26:31,623 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:27:41,451 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:41,452 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:41,453 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:27:41,474 [http-nio-8090-exec-1] ==>  Preparing: insert into lte_plane ( mENodeBID, mBaseStationName, mBaseStationType, mAltitude, mLongitude, mLatitude, mTac, testPerson, testPersonPhone, backPerson, backPersonPhone, testTime, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-18 07:27:41,476 [http-nio-8090-exec-1] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 12(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 2018-11-18 07:27:41.474(Timestamp), 10(Long), 479(Long)
2018-11-18 07:27:41,478 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:27:41,478 [http-nio-8090-exec-1] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' 
2018-11-18 07:27:41,478 [http-nio-8090-exec-1] ==> Parameters: LtePlan(String)
2018-11-18 07:27:41,585 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:27:41,663 [http-nio-8090-exec-1] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id,act_business_key) values(?,?,?,?,?,?,?) 
2018-11-18 07:27:41,663 [http-nio-8090-exec-1] ==> Parameters: LtePlan(String), 2018-11-18 07:27:41.663(Timestamp), 11(Long), 479(Long), 92503(String), (String), LtePlan_234567_11(String)
2018-11-18 07:27:41,676 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:27:41,680 [http-nio-8090-exec-1] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 07:27:41,681 [http-nio-8090-exec-1] ==> Parameters: (String), LtePlan(String), 2018-11-18 07:27:41.679(Timestamp), 11(Long), (String), 479(Long), 测试计划(String), usertask1(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 07:27:41,681 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 07:27:41,742 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:41,743 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:41,744 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:27:41,746 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:27:41,747 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 07:27:41,748 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:27:41,749 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:27:41,749 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:27:41,751 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 07:27:47,431 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:47,432 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:47,434 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:27:47,438 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:27:47,438 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:47,438 [http-nio-8090-exec-5] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:47,438 [http-nio-8090-exec-7] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:27:47,439 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:27:47,440 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:27:47,443 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:27:47,445 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 07:27:47,449 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:27:47,450 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 07:27:47,452 [http-nio-8090-exec-5] <====      Total: 0
2018-11-18 07:27:47,454 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:27:47,455 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 07:27:47,457 [http-nio-8090-exec-5] <====      Total: 0
2018-11-18 07:27:47,460 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:27:47,462 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 07:27:47,464 [http-nio-8090-exec-5] <====      Total: 0
2018-11-18 07:27:47,464 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:27:47,468 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 07:27:47,471 [http-nio-8090-exec-5] <====      Total: 0
2018-11-18 07:27:47,472 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:27:47,475 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:27:47,477 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 07:27:47,479 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:27:57,195 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:57,196 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:57,197 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:27:57,199 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:27:57,199 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:27:57,201 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:27:57,201 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:27:57,201 [http-nio-8090-exec-7] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 07:27:57,202 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:27:57,202 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:27:57,205 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-18 07:27:57,209 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:27:57,212 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 07:27:57,215 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 07:27:57,217 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:27:57,218 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 07:27:57,221 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 07:27:57,223 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:27:57,225 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 07:27:57,231 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 07:27:57,232 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:27:57,233 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 07:27:57,235 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 07:27:57,237 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:27:57,239 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:27:57,240 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 07:27:57,243 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:28:00,196 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:28:00,197 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:28:00,198 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:28:00,200 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:28:00,202 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:28:00,202 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:28:00,202 [http-nio-8090-exec-9] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:28:00,202 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:28:00,202 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:28:00,207 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:28:00,209 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 07:28:00,213 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:28:00,214 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:28:00,215 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:28:00,216 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:28:00,217 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:28:00,218 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:28:00,221 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:28:00,224 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:28:00,225 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:28:00,226 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:28:00,229 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:28:00,231 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:28:00,232 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:28:00,235 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:28:00,235 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 07:28:00,236 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:29:14,024 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:29:14,026 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:29:14,029 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:29:14,032 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:29:14,033 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:29:14,034 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:29:14,034 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:29:14,034 [http-nio-8090-exec-10] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:29:14,036 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:29:14,037 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:29:14,037 [http-nio-8090-exec-9] ==> Parameters: 11(Long)
2018-11-18 07:29:14,038 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:29:14,039 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:29:14,039 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:29:14,040 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:29:14,040 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:29:14,042 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:29:14,045 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:29:14,048 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:29:14,049 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:29:14,050 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:29:14,050 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:29:14,051 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:29:14,052 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:29:14,053 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:29:14,055 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 07:29:14,056 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:31:07,472 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:31:07,473 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:31:07,476 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:31:07,479 [http-nio-8090-exec-2] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:31:07,480 [http-nio-8090-exec-2] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:31:07,481 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:31:07,481 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:31:07,482 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:31:07,482 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:31:07,486 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:31:07,487 [http-nio-8090-exec-9] ==> Parameters: 11(Long)
2018-11-18 07:31:07,492 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:31:07,494 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:31:07,496 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:31:07,496 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:31:07,497 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:31:07,497 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:31:07,497 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:31:07,497 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:31:07,497 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:31:07,501 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:31:07,503 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 07:31:07,507 [http-nio-8090-exec-9] <====      Total: 0
2018-11-18 07:31:07,509 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:31:07,510 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:31:07,510 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 07:31:07,513 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:32:11,498 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:32:11,498 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:32:11,499 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:32:11,504 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:32:11,504 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 07:32:11,505 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:32:11,506 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:32:11,508 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 3(Integer)
2018-11-18 07:32:11,509 [http-nio-8090-exec-9] <==      Total: 3
2018-11-18 07:40:20,694 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:20,695 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:20,696 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:40:20,704 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 07:40:20,705 [http-nio-8090-exec-10] ==> Parameters: LtePlan(String)
2018-11-18 07:40:20,705 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:40:20,705 [http-nio-8090-exec-10] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 07:40:20,709 [http-nio-8090-exec-10] ==> Parameters: LteGcParameter(String), 工参信息(String), 92503(String)
2018-11-18 07:40:20,711 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:40:20,718 [http-nio-8090-exec-10] ==>  Preparing: insert into lte_gc ( mENodeBID, mBaseStationName, mCellID, mCellName, mFrequency, mPCI, mRsPower, mAntennaHangUp, mAzimuth, mMechanicalLowerInclination, mPresetElectricDip, mtotalLowerInclination, configName, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-18 07:40:20,718 [http-nio-8090-exec-10] ==> Parameters: 234567(String), 测试上海移动(String), 1(String), 小区1(String), 12.25(String), 23.235(String), 12(String), 12(String), 12(String), 12(String), 12(String), 12(String), 12(String), 2018-11-18 07:40:20.705(Timestamp), 10(Long), 479(Long)
2018-11-18 07:40:20,718 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 07:40:20,776 [http-nio-8090-exec-10] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 07:40:20,779 [http-nio-8090-exec-10] ==> Parameters: (String), LteGcParameter(String), 2018-11-18 07:40:20.776(Timestamp), 1(Long), (String), 479(Long), 工参信息(String), usertask2(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 07:40:20,781 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 07:40:20,817 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:20,818 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:20,819 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:40:20,822 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:40:20,823 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:40:20,824 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:40:20,825 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:40:20,825 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 3(Integer)
2018-11-18 07:40:20,827 [http-nio-8090-exec-6] <==      Total: 3
2018-11-18 07:40:26,885 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:26,886 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:26,886 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:40:26,889 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:40:26,890 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 07:40:26,891 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:40:26,891 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:40:26,892 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:40:26,896 [http-nio-8090-exec-4] <==      Total: 4
2018-11-18 07:40:39,781 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:39,782 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:39,783 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:40:39,821 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:39,822 [http-nio-8090-exec-5] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:39,824 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:40:39,953 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:39,954 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:39,955 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:40:39,957 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:40:39,958 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 07:40:39,959 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 07:40:39,960 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:40:39,961 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 07:40:39,962 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:40:41,207 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:40:41,207 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:40:41,208 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:40:41,213 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:40:41,214 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 07:40:41,214 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:40:41,215 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:40:41,215 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:40:41,217 [http-nio-8090-exec-10] <==      Total: 4
2018-11-18 07:41:03,562 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:03,562 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:03,563 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:41:03,567 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 07:41:03,568 [http-nio-8090-exec-3] ==> Parameters: LtePlan(String)
2018-11-18 07:41:03,569 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:41:03,570 [http-nio-8090-exec-3] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 07:41:03,572 [http-nio-8090-exec-3] ==> Parameters: LteGcParameter(String), 工参信息(String), 92503(String)
2018-11-18 07:41:03,572 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:41:03,577 [http-nio-8090-exec-3] ==>  Preparing: insert into lte_gc ( mENodeBID, mBaseStationName, mCellID, mCellName, mFrequency, mPCI, mRsPower, mAntennaHangUp, mAzimuth, mMechanicalLowerInclination, mPresetElectricDip, mtotalLowerInclination, configName, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-18 07:41:03,577 [http-nio-8090-exec-3] ==> Parameters: 234567(String), 测试上海移动(String), 2(String), 小区2(String), 12(String), 12(String), 1212(String), 121(String), 12(String), 21(String), 12(String), 212(String), 12(String), 2018-11-18 07:41:03.57(Timestamp), 10(Long), 479(Long)
2018-11-18 07:41:03,577 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-18 07:41:03,628 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:03,629 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:03,629 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:41:03,632 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:41:03,633 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 07:41:03,634 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:41:03,636 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:41:03,636 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:41:03,638 [http-nio-8090-exec-8] <==      Total: 5
2018-11-18 07:41:22,425 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:22,426 [http-nio-8090-exec-5] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:22,427 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:41:22,430 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 07:41:22,431 [http-nio-8090-exec-5] ==> Parameters: LtePlan(String)
2018-11-18 07:41:22,432 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:41:22,433 [http-nio-8090-exec-5] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 07:41:22,434 [http-nio-8090-exec-5] ==> Parameters: LteGcParameter(String), 工参信息(String), 92503(String)
2018-11-18 07:41:22,435 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:41:22,436 [http-nio-8090-exec-5] ==>  Preparing: insert into lte_gc ( mENodeBID, mBaseStationName, mCellID, mCellName, mFrequency, mPCI, mRsPower, mAntennaHangUp, mAzimuth, mMechanicalLowerInclination, mPresetElectricDip, mtotalLowerInclination, configName, createTime, createAt, projId ) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) 
2018-11-18 07:41:22,440 [http-nio-8090-exec-5] ==> Parameters: 234567(String), 测试上海移动(String), 3(String), 小区3(String), 323(String), 23(String), 3232(String), 232(String), 32(String), 23(String), 32(String), 232(String), 323(String), 2018-11-18 07:41:22.432(Timestamp), 10(Long), 479(Long)
2018-11-18 07:41:22,440 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-18 07:41:22,489 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:22,489 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:22,490 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:41:22,494 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:41:22,494 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 07:41:22,495 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:41:22,496 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:41:22,496 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:41:22,498 [http-nio-8090-exec-9] <==      Total: 6
2018-11-18 07:41:28,866 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:28,868 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:28,869 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:41:28,877 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:41:28,878 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 07:41:28,879 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:41:28,880 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:41:28,882 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:41:28,884 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 07:41:28,902 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:28,902 [http-nio-8090-exec-9] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:28,903 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:41:32,927 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:32,927 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:32,928 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:41:32,933 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:41:32,933 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:32,934 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:32,934 [http-nio-8090-exec-3] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:41:32,935 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:41:32,935 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:41:32,939 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:41:32,939 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 07:41:32,940 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:41:32,941 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 07:41:32,944 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 07:41:32,946 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:41:32,948 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 07:41:32,950 [http-nio-8090-exec-8] <====      Total: 0
2018-11-18 07:41:32,951 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:41:32,951 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 07:41:32,955 [http-nio-8090-exec-8] <====      Total: 0
2018-11-18 07:41:32,956 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:41:32,956 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 07:41:32,956 [http-nio-8090-exec-8] <====      Total: 0
2018-11-18 07:41:32,959 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:41:32,960 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:41:32,960 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 07:41:32,961 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:41:42,587 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:42,588 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:42,589 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:41:42,592 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_gc where id=? 
2018-11-18 07:41:42,593 [http-nio-8090-exec-6] ==> Parameters: 9(Long)
2018-11-18 07:41:42,596 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:41:50,843 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:50,844 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:50,845 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:41:50,846 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:41:50,846 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 07:41:50,850 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:41:50,851 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:41:50,851 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:41:50,852 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 07:41:50,857 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:50,857 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:50,858 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:41:52,966 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:41:52,967 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:41:52,968 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:41:52,971 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:41:52,971 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 07:41:52,973 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:42:48,496 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:48,497 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:48,498 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:42:48,541 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:48,542 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:48,543 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:42:48,652 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:48,653 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:48,654 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:42:48,656 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:42:48,657 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 07:42:48,658 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 07:42:48,659 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:42:48,660 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 07:42:48,662 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:42:50,602 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:50,603 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:50,604 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:42:50,608 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:42:50,608 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 07:42:50,609 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:42:50,610 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:42:50,611 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:42:50,612 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 07:42:50,618 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:50,619 [http-nio-8090-exec-5] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:50,621 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 07:42:51,795 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:42:51,795 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:42:51,797 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:42:51,806 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:42:51,806 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 07:42:51,808 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:43:07,288 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:07,289 [http-nio-8090-exec-8] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:07,290 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:43:07,296 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:43:07,298 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 07:43:07,303 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 07:43:10,816 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:10,817 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:10,818 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 07:43:10,823 [http-nio-8090-exec-2] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? where id=? 
2018-11-18 07:43:10,823 [http-nio-8090-exec-2] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-13(String), 12(String), 2018-11-18 07:43:10.822(Timestamp), 11(Long)
2018-11-18 07:43:10,826 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 07:43:10,900 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:10,900 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:10,901 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:43:10,904 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:43:10,904 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 07:43:10,905 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:43:10,906 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:43:10,906 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:43:10,912 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 07:43:13,470 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:13,470 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:13,471 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:43:13,473 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:43:13,473 [http-nio-8090-exec-1] ==> Parameters: 11(Long)
2018-11-18 07:43:13,477 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:43:17,102 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:17,103 [http-nio-8090-exec-7] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:17,104 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 07:43:17,108 [http-nio-8090-exec-7] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? where id=? 
2018-11-18 07:43:17,109 [http-nio-8090-exec-7] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 12(String), 2018-11-18 07:43:17.108(Timestamp), 11(Long)
2018-11-18 07:43:17,110 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 07:43:17,149 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:17,150 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:17,150 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:43:17,153 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:43:17,154 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:43:17,154 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:43:17,155 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 07:43:17,155 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:43:17,156 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 07:43:19,332 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:19,333 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:19,334 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:43:19,336 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:43:19,336 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 07:43:19,338 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:43:29,819 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:43:29,819 [http-nio-8090-exec-6] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:43:29,823 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:43:29,830 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:43:29,831 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 07:43:29,832 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 07:43:29,834 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:43:29,835 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:43:29,836 [http-nio-8090-exec-6] <==      Total: 6
2018-11-18 07:44:49,812 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:44:49,813 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:44:49,814 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:44:49,954 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:44:49,954 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:44:49,955 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:44:49,958 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:44:49,959 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 07:44:49,960 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:44:49,961 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:44:49,961 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:44:49,965 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 07:44:50,836 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:44:50,836 [http-nio-8090-exec-3] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:44:50,837 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:44:50,840 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:44:50,841 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 07:44:50,842 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:44:50,842 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_station_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:44:50,843 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:44:50,844 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 07:44:51,811 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:44:51,812 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:44:51,813 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:44:51,815 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 07:44:51,816 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 07:44:51,816 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:44:51,817 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_cell_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 07:44:51,818 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 07:44:51,820 [http-nio-8090-exec-1] <==      Total: 3
2018-11-18 07:45:27,500 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:45:27,501 [http-nio-8090-exec-4] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:45:27,503 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:45:27,508 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:45:27,508 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 07:45:27,509 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:45:31,625 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:45:31,626 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:45:31,627 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:45:31,630 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:45:31,630 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 07:45:31,630 [http-nio-8090-exec-1] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 07:45:31,630 [http-nio-8090-exec-1] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 07:45:31,630 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:45:31,632 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 07:45:31,634 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 07:45:31,636 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 07:45:31,639 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 07:45:31,640 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:45:31,641 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 07:45:31,642 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 07:45:31,643 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:45:31,645 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:45:31,646 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 07:45:31,647 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:45:31,648 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:45:31,650 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 07:45:31,651 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 07:45:31,653 [http-nio-8090-exec-10] <====      Total: 0
2018-11-18 07:45:31,654 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:45:31,655 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 07:45:31,655 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 07:45:31,655 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 07:51:09,958 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 07:51:09,959 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 07:51:09,960 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:51:09,962 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 07:51:09,963 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 07:51:09,964 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 07:51:09,964 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 07:51:09,964 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 07:51:09,975 [http-nio-8090-exec-4] <==      Total: 37
2018-11-18 07:51:10,101 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 07:51:10,101 [http-nio-8090-exec-4] ==> Parameters: 35bb2c76-e8e7-4bd0-b56d-095a1c616325(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542505870101,"id":10,"loginTime":1542498670101,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"35bb2c76-e8e7-4bd0-b56d-095a1c616325","username":"wuzhihua"}(String), 2018-11-18 09:51:10.101(Timestamp), 2018-11-18 07:51:10.101(Timestamp), 2018-11-18 07:51:10.101(Timestamp)
2018-11-18 07:51:10,111 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 07:57:47,247 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 07:57:47,247 [http-nio-8090-exec-9] ==> Parameters: 35bb2c76-e8e7-4bd0-b56d-095a1c616325(String)
2018-11-18 07:57:47,249 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:57:47,253 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 07:57:47,254 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 07:57:47,255 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 07:57:47,257 [http-nio-8090-exec-9] ==>  Preparing: select u.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? and p.id=? order by p.createTime desc limit 1 
2018-11-18 07:57:47,259 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 07:57:47,265 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 07:57:47,267 [http-nio-8090-exec-9] ==>  Preparing: select u.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? and p.id=? order by p.createTime desc limit 1 
2018-11-18 07:57:47,267 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-18 07:57:47,269 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 08:02:55,670 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 08:02:55,670 [http-nio-8090-exec-6] ==> Parameters: 35bb2c76-e8e7-4bd0-b56d-095a1c616325(String)
2018-11-18 08:02:55,671 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 08:02:55,678 [http-nio-8090-exec-6] ==>  Preparing: select id as "planId", testTime as "testDate" from lte_plane lp where lp.testTime =? and dealPersonId =? and projId =? 
2018-11-18 08:02:55,679 [http-nio-8090-exec-6] ==> Parameters: 2018-11-18(String), 10(Long), 479(Long)
2018-11-18 08:02:55,696 [http-nio-8090-exec-6] <==      Total: 0
2018-11-18 08:04:59,647 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 08:04:59,647 [http-nio-8090-exec-1] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 08:04:59,649 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 08:04:59,671 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 08:04:59,672 [http-nio-8090-exec-10] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 08:04:59,674 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 08:04:59,679 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 08:04:59,679 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-18 08:04:59,682 [http-nio-8090-exec-10] <==      Total: 37
2018-11-18 08:07:20,716 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 08:07:20,717 [http-nio-8090-exec-2] ==> Parameters: ca64bea4-fc08-4f7f-a6e9-bd4c87f20c27(String)
2018-11-18 08:07:20,718 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 08:07:20,722 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 08:07:20,722 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 08:07:20,724 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:43:06,722 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 10:43:06,731 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 10:43:06,731 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:43:06,746 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:43:06,762 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 10:43:06,762 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:43:06,762 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 10:43:06,762 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 10:43:06,778 [http-nio-8090-exec-7] <==      Total: 37
2018-11-18 10:43:06,871 [http-nio-8090-exec-7] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 10:43:06,887 [http-nio-8090-exec-7] ==> Parameters: 86358cb3-8940-451e-9214-4b269da3138b(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542516186871,"id":10,"loginTime":1542508986871,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"86358cb3-8940-451e-9214-4b269da3138b","username":"wuzhihua"}(String), 2018-11-18 12:43:06.871(Timestamp), 2018-11-18 10:43:06.871(Timestamp), 2018-11-18 10:43:06.871(Timestamp)
2018-11-18 10:43:06,903 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 10:45:10,223 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 10:45:10,233 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:10,233 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:45:10,249 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:45:10,249 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:10,249 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:45:10,249 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 10:45:10,249 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 10:45:10,264 [http-nio-8090-exec-9] <==      Total: 37
2018-11-18 10:45:10,358 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 10:45:10,374 [http-nio-8090-exec-9] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542516310358,"id":10,"loginTime":1542509110358,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"c80db869-4d6f-428c-b392-ec59067d0d49","username":"wuzhihua"}(String), 2018-11-18 12:45:10.358(Timestamp), 2018-11-18 10:45:10.358(Timestamp), 2018-11-18 10:45:10.358(Timestamp)
2018-11-18 10:45:10,374 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 10:45:40,599 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:40,615 [http-nio-8090-exec-4] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String)
2018-11-18 10:45:40,615 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:45:40,771 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:40,771 [http-nio-8090-exec-6] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String)
2018-11-18 10:45:40,771 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:45:40,959 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:40,959 [http-nio-8090-exec-3] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String)
2018-11-18 10:45:40,959 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:45:40,959 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:45:40,974 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:40,974 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 10:45:40,974 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:45:40,974 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:40,974 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:45:43,800 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:43,800 [http-nio-8090-exec-7] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String)
2018-11-18 10:45:43,816 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:45:43,817 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 10:45:43,911 [http-nio-8090-exec-7] ==> Parameters: c80db869-4d6f-428c-b392-ec59067d0d49(String)
2018-11-18 10:45:43,911 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 10:45:50,471 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 10:45:50,471 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:50,476 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 10:45:50,477 [http-nio-8090-exec-1] <==      Total: 37
2018-11-18 10:45:50,555 [http-nio-8090-exec-1] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 10:45:50,571 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542516350555,"id":10,"loginTime":1542509150555,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"5b37d072-ca28-4b30-a963-84fda102f1ab","username":"wuzhihua"}(String), 2018-11-18 12:45:50.555(Timestamp), 2018-11-18 10:45:50.555(Timestamp), 2018-11-18 10:45:50.555(Timestamp)
2018-11-18 10:45:50,571 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 10:45:50,696 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:50,696 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:45:50,696 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:45:50,743 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:50,743 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:45:50,743 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:50,836 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 10:45:50,852 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:45:50,852 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 10:45:50,852 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:45:53,474 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:53,485 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:45:53,486 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:45:53,488 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:45:53,503 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:45:53,503 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:45:53,581 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 10:46:01,932 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:01,948 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:01,951 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:46:01,983 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:01,983 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:01,983 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:46:01,999 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:46:01,999 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 10:46:01,999 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:46:41,450 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:41,450 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:41,463 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:46:41,496 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:41,496 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:41,511 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:46:41,605 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:46:42,761 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:42,766 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:46:42,768 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 10:46:42,768 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:42,768 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:42,783 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:46:44,158 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:44,158 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:44,163 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:46:44,165 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:46:44,165 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 10:46:44,165 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 10:46:44,196 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:47:04,083 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:04,083 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:04,088 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:47:04,088 [http-nio-8090-exec-5] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:47:04,088 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 10:47:04,088 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] ==> Parameters: 11(Long)
2018-11-18 10:47:04,104 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:47:48,951 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:48,951 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:48,954 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:47:49,049 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:49,064 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:49,064 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 10:47:49,470 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:47:52,475 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:52,475 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:52,486 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:47:52,488 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 10:47:52,488 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:52,488 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:52,503 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:47:53,472 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:53,472 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:53,472 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:47:53,472 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:47:53,472 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:47:53,472 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:47:53,472 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:47:53,472 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 10:47:53,490 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:47:53,490 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:47:53,490 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 10:47:53,490 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 10:49:14,877 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:14,877 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:14,889 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:49:14,921 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:14,921 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:14,936 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:49:15,030 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 10:49:15,046 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:49:15,061 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 10:49:15,061 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:49:16,248 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:16,248 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:16,258 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:49:16,259 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 10:49:16,259 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:16,259 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:16,274 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:49:28,979 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:28,979 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:28,984 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:49:28,984 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:49:28,984 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 10:49:28,984 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 10:49:28,984 [http-nio-8090-exec-9] <==      Total: 7
2018-11-18 10:49:56,519 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:56,519 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:56,527 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:49:56,560 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:56,560 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:56,560 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:49:56,653 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:56,653 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:56,653 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:49:56,669 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:49:58,122 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:58,122 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:58,127 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:49:58,128 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 10:49:58,128 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:49:58,128 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:49:58,143 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:50:02,491 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:50:02,497 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:50:02,498 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:50:02,498 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:50:02,498 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 10:50:02,498 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:50:02,498 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:50:02,498 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:50:02,498 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:50:02,514 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:50:02,514 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 10:50:02,514 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 10:51:21,709 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:21,709 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:21,719 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:51:21,798 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:21,798 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:21,814 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 10:51:21,954 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:51:27,627 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:27,627 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:27,633 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:51:27,635 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 10:51:27,635 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:27,650 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:27,650 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:51:28,862 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:28,862 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:28,871 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:51:28,872 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:51:28,872 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:51:28,873 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:51:28,873 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:51:28,873 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 10:51:28,873 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:51:28,873 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 10:51:28,873 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:51:28,873 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 10:52:04,813 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:04,813 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:04,820 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:52:04,837 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:04,837 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:04,852 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:52:05,040 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:05,040 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:05,040 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 10:52:05,056 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:52:06,462 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:06,477 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:06,477 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:52:06,479 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 10:52:06,479 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:06,479 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:06,479 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:52:07,760 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:07,776 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:07,778 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:52:07,778 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:52:07,778 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 10:52:07,778 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:52:07,809 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:07,809 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:07,825 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:52:07,825 [http-nio-8090-exec-6] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:52:07,825 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 10:52:07,825 [http-nio-8090-exec-6] <==      Total: 7
2018-11-18 10:52:36,536 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:36,551 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:36,553 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:52:36,600 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:36,600 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:36,600 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:52:36,772 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:36,772 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:36,772 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 10:52:36,787 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:52:37,928 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:37,928 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:37,934 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:52:37,935 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 10:52:37,951 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:37,951 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:37,951 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:52:39,035 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:39,041 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:39,042 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:52:39,043 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:52:39,043 [http-nio-8090-exec-1] ==> Parameters: 11(Long)
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:52:39,043 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 10:52:39,043 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 10:54:54,451 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:54:54,466 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:54:54,466 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:54:54,606 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:54:54,606 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:54:54,606 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:54:54,731 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:54:54,731 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:54:54,731 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:54:54,747 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:54:54,747 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 10:54:54,762 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 10:54:54,778 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:54:54,778 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 10:54:54,778 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:55:34,642 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:34,642 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:34,645 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 10:55:34,677 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:34,677 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:34,692 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:55:34,784 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:34,784 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:34,784 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 10:55:34,800 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:55:36,643 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:36,655 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:36,657 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:55:36,689 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:36,689 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:36,689 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:55:36,798 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:36,798 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:36,798 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 10:55:36,814 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:55:38,907 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:38,920 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:38,921 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:55:38,921 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:38,921 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:38,921 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:55:38,999 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 10:55:40,149 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:40,151 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:40,152 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:55:40,154 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:55:40,154 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 10:55:40,154 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 10:55:40,232 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:55:48,580 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:55:48,590 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:55:48,591 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:55:48,592 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:55:48,592 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 10:55:48,592 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 10:57:27,547 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:27,561 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:27,562 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:57:27,593 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:27,656 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:27,656 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:57:27,781 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:27,781 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:27,781 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:57:27,781 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:57:27,781 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 10:57:27,797 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 10:57:27,797 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:57:27,797 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 10:57:27,797 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:57:29,296 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:29,296 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:29,307 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:57:29,308 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:29,308 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 10:57:29,308 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:29,308 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 10:57:30,159 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 10:57:30,174 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:30,174 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:30,174 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:57:30,190 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:57:30,190 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 10:57:30,190 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:57:36,363 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:57:36,373 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:57:36,375 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:57:36,375 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:57:36,375 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 10:57:36,375 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 10:58:52,902 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:52,902 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:52,916 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 10:58:52,979 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:52,979 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:52,979 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 10:58:53,089 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 10:58:54,513 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:54,513 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:54,528 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:54,528 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 10:58:54,531 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 10:58:54,531 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 10:58:55,859 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:55,874 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:55,876 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 10:58:55,876 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:58:55,876 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 10:58:55,876 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 10:58:55,891 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:58:55,891 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:58:55,891 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:58:55,907 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 10:58:55,907 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 10:58:55,907 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 10:59:01,860 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 10:59:01,876 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 10:59:01,877 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 10:59:01,877 [http-nio-8090-exec-4] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 10:59:01,877 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 10:59:01,877 [http-nio-8090-exec-4] <==      Total: 7
2018-11-18 11:00:25,767 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:25,767 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:25,774 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:00:25,852 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:25,852 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:25,852 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:00:26,009 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:26,009 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:26,009 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:00:26,009 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:00:26,024 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:00:26,024 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:00:26,024 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:00:26,024 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:00:26,024 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:00:27,211 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:27,211 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:27,218 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:00:27,220 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:00:27,220 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:27,220 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:27,220 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:00:27,939 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:00:27,939 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:00:27,939 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:00:27,939 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:00:27,939 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:00:27,954 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 11:02:41,114 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:41,114 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:41,129 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:02:41,177 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:41,177 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:41,177 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:02:41,302 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:02:42,973 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:42,973 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:02:42,990 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 11:02:42,990 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:42,990 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:42,990 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:02:43,755 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:04:47,880 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:47,881 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:47,882 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:04:47,953 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:47,954 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:47,955 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:04:48,083 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:48,083 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:48,084 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:04:48,086 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:04:48,087 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:04:48,089 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 11:04:48,090 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:04:48,090 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:04:48,091 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:04:49,240 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:49,240 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:49,247 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:04:49,253 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:49,253 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:49,254 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:04:49,256 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:04:49,256 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:04:49,258 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:04:49,259 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:04:49,260 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:04:49,263 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 11:04:50,480 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:04:50,482 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:04:50,484 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:04:50,487 [http-nio-8090-exec-5] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:04:50,488 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 11:04:50,492 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 11:06:34,321 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:34,321 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:34,330 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:06:34,392 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:34,392 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:34,392 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 11:06:34,549 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:06:35,986 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:35,986 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:35,992 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:06:35,993 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:35,993 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:35,993 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:06:35,993 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:06:36,977 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 11:07:33,227 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:07:33,227 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:07:33,242 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:07:33,304 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:07:33,304 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:07:33,304 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:07:33,585 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 11:07:33,601 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:07:34,816 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:07:34,824 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:07:34,825 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:07:34,825 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:07:34,825 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:07:34,825 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:08:23,861 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:08:23,877 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:08:23,880 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:08:23,927 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:08:23,927 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:08:23,927 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 11:08:24,221 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 11:08:24,236 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:08:24,236 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 11:08:24,236 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:08:25,314 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:08:25,314 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:08:25,322 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:08:25,324 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 11:08:25,340 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:08:25,340 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:08:25,340 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:09:00,803 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:00,803 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:00,816 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:00,818 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-18 11:09:00,849 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:09:00,865 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:00,865 [http-nio-8090-exec-3] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-18 11:09:00,865 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:09:00,865 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:06,379 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:06,379 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:06,387 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:09:06,402 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:06,402 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:06,402 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:09:06,418 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 11:09:06,418 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 11:09:06,418 [http-nio-8090-exec-4] <==      Total: 37
2018-11-18 11:09:07,714 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:07,714 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:07,725 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:09:07,725 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-18 11:09:07,725 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-18 11:09:07,725 [http-nio-8090-exec-1] <==      Total: 15
2018-11-18 11:09:07,788 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:07,788 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:07,788 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:07,788 [http-nio-8090-exec-3] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-18 11:09:07,803 [http-nio-8090-exec-3] ==> Parameters: menu(String)
2018-11-18 11:09:07,803 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:09:09,959 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:09,959 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:09,961 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:09:09,977 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:09,977 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:09,977 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] ====> Parameters: 479(Integer)
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 11:09:09,992 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:09:11,474 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:11,474 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:11,475 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:09:11,477 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:11,477 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:11,477 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:09:11,493 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-18 11:09:11,508 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:09:11,508 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:09:11,508 [http-nio-8090-exec-9] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-18 11:09:11,508 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:09:11,508 [http-nio-8090-exec-9] <==      Total: 7
2018-11-18 11:09:12,539 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:12,539 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:12,546 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:09:12,548 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-18 11:09:12,548 [http-nio-8090-exec-2] ==> Parameters: sex(String)
2018-11-18 11:09:12,548 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 11:09:19,802 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:19,802 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:19,805 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:09:19,806 [http-nio-8090-exec-6] <==      Total: 7
2018-11-18 11:09:19,822 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:19,822 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:19,822 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:09:20,709 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:20,709 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:20,709 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:09:20,724 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:20,724 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:20,724 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] ====> Parameters: 479(Integer)
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:20,740 [http-nio-8090-exec-3] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] ==> Parameters: 107(Long)
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] ==> Parameters: 75(Long)
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] ==> Parameters: 108(Long)
2018-11-18 11:09:20,755 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:22,802 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:22,802 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:22,814 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:09:22,815 [http-nio-8090-exec-9] <==      Total: 6
2018-11-18 11:09:23,518 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:23,518 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:23,518 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:23,643 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:23,643 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:23,643 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:23,643 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:09:23,643 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:09:23,658 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:09:23,658 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 11:09:23,658 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:09:23,658 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:09:34,348 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:09:34,348 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:09:34,353 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:09:34,355 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-18 11:09:34,355 [http-nio-8090-exec-2] ==> Parameters: sex(String)
2018-11-18 11:09:34,355 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 11:10:32,823 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:32,823 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:32,832 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:10:32,865 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:32,880 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:32,880 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 11:10:32,974 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:10:34,443 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:34,443 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:10:34,447 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 11:10:34,447 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:34,447 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:34,447 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:10:39,711 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:10:39,711 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:10:39,716 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:10:39,717 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:10:39,717 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:10:39,717 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:12:08,387 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:08,387 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:08,394 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:12:08,426 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:08,426 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:08,426 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 11:12:08,551 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:12:09,567 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:09,567 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:12:09,581 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:12:09,581 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:09,581 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:09,581 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:12:10,502 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:12:10,502 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:12:10,502 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:12:10,502 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:12:10,518 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:12:10,518 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 11:13:23,969 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:23,969 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:23,971 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:13:24,019 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:24,019 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:24,019 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:13:24,128 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:13:25,269 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:25,269 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:25,284 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:13:25,285 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:13:25,285 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:25,285 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:25,301 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:13:26,098 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:26,098 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:26,098 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:13:26,113 [http-nio-8090-exec-3] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:13:26,113 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:13:26,113 [http-nio-8090-exec-3] <==      Total: 7
2018-11-18 11:13:28,746 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:28,746 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:28,761 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:13:28,762 [http-nio-8090-exec-6] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:13:28,762 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 11:13:28,762 [http-nio-8090-exec-6] <==      Total: 7
2018-11-18 11:13:46,223 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:46,223 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:46,230 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:13:46,262 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:46,262 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:46,262 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:13:46,356 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:46,356 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:46,356 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:13:46,372 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:13:47,465 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:47,465 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:47,474 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:13:47,476 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:13:47,476 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:47,476 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:47,476 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 11:13:48,304 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 11:14:17,333 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:17,333 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:17,346 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:14:17,378 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:17,378 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:17,378 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:14:17,503 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:14:18,755 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:18,755 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:14:18,761 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:14:18,761 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:18,761 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:18,761 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:14:19,956 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:19,956 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:19,968 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:14:19,969 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:14:19,969 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:14:19,969 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 11:14:57,848 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:57,848 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:57,860 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:14:57,891 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:57,891 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:57,891 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:14:58,000 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:58,000 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 11:14:58,016 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:14:58,985 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:58,985 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:58,993 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:14:58,995 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:14:58,995 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:58,995 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:58,995 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:14:59,635 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 11:16:06,228 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:06,228 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:06,238 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:16:06,278 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:06,278 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:06,278 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:16:06,398 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:06,398 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:06,398 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:16:06,398 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:16:06,398 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:16:06,408 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:16:06,408 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:16:06,408 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:16:06,408 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:16:07,784 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:07,784 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:07,798 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:16:07,800 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 11:16:07,800 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:07,800 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:07,800 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:16:09,294 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:09,309 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:09,312 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:16:09,312 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:16:09,312 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:16:09,312 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 11:16:12,941 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:12,941 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:12,950 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:16:12,951 [http-nio-8090-exec-3] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:16:12,951 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:16:12,951 [http-nio-8090-exec-3] <==      Total: 7
2018-11-18 11:16:17,273 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:17,273 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:17,282 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:16:17,284 [http-nio-8090-exec-9] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:16:17,284 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:16:17,284 [http-nio-8090-exec-9] <==      Total: 7
2018-11-18 11:16:39,020 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:39,020 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:39,036 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:16:39,069 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:39,069 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:39,069 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:16:39,178 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:16:40,084 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:40,084 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:16:40,099 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 11:16:40,099 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:40,099 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:40,099 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:16:41,176 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:41,176 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:41,181 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:16:41,182 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:16:41,182 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 11:16:41,182 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:16:41,229 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:41,229 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:41,229 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:16:41,229 [http-nio-8090-exec-3] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:16:41,229 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:16:41,245 [http-nio-8090-exec-3] <==      Total: 7
2018-11-18 11:16:44,838 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:44,838 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:44,839 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:16:44,840 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:16:44,840 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-18 11:16:44,840 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:16:44,871 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:16:44,871 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:16:44,871 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:16:44,871 [http-nio-8090-exec-5] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:16:44,871 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 11:16:44,887 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 11:17:06,315 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:06,315 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:06,330 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:17:06,330 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:17:06,330 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 11:17:06,330 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:17:06,502 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:06,502 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:06,502 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:17:06,517 [http-nio-8090-exec-6] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:17:06,517 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 11:17:06,517 [http-nio-8090-exec-6] <==      Total: 7
2018-11-18 11:17:35,010 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:35,010 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:35,015 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:17:35,064 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:35,064 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:35,064 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:17:35,220 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 11:17:35,236 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:17:36,282 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:36,282 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:36,293 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:17:36,294 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 11:17:36,309 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:36,309 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:36,309 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:17:37,840 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:37,840 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:37,857 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:17:37,860 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:17:37,860 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:17:37,860 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:17:37,860 [http-nio-8090-exec-9] ==> Parameters: 11(Long)
2018-11-18 11:17:37,860 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:17:37,860 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:17:37,860 [http-nio-8090-exec-4] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:17:37,875 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:17:37,875 [http-nio-8090-exec-4] <==      Total: 7
2018-11-18 11:18:07,257 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:07,257 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:07,265 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:18:07,328 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:07,328 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:07,328 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 11:18:07,484 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:18:08,546 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:08,546 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:08,553 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:18:08,554 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 11:18:08,554 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:08,554 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:08,554 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:18:09,910 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:09,910 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:09,925 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:09,926 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:18:09,926 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 11:18:09,926 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:18:09,926 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 11:18:32,507 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:32,507 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:32,518 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:18:32,583 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:32,583 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:32,583 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:18:32,723 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:32,723 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:32,723 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 11:18:32,739 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:18:34,585 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:34,585 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:34,589 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:18:34,592 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 11:18:34,592 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:34,592 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:34,592 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:18:35,280 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:18:38,748 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:38,748 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:38,750 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:18:38,752 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:18:38,752 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 11:18:38,752 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:18:38,768 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 11:19:18,744 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:18,744 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:18,760 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:19:18,901 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:18,901 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:18,901 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:19:19,323 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:19:21,635 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:21,635 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:21,644 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:19:21,646 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:19:21,646 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:21,646 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:21,646 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:19:23,100 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:23,100 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:23,104 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:19:23,104 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:19:23,104 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 11:19:23,104 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:19:23,136 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:23,136 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:23,136 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:19:23,136 [http-nio-8090-exec-7] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:19:23,136 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:19:23,151 [http-nio-8090-exec-7] <==      Total: 7
2018-11-18 11:19:27,431 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:27,431 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:27,442 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:19:27,444 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:19:27,444 [http-nio-8090-exec-9] ==> Parameters: 11(Long)
2018-11-18 11:19:27,444 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:19:27,538 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:27,538 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:27,538 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:19:27,538 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:19:27,554 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:19:27,554 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:19:38,556 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:38,556 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:38,561 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:19:38,563 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:19:38,563 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 11:19:38,563 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:19:38,594 [http-nio-8090-exec-8] <==      Total: 7
2018-11-18 11:19:42,078 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:42,078 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:42,091 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:19:57,502 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:19:57,502 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:19:57,513 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:20:08,084 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:20:08,084 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:20:08,105 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:21:12,088 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:21:12,088 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:21:12,098 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:21:24,106 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:21:24,106 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:21:24,114 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:23:13,645 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:13,650 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:13,650 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:23:13,791 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:13,791 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:13,806 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:23:13,947 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:13,947 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:13,963 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:23:13,994 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:23:13,994 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:23:13,994 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:23:13,994 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:23:14,009 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:23:14,009 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:23:15,407 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:15,409 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:15,411 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:23:15,411 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:15,411 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:15,411 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:23:15,489 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:23:15,489 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:23:15,489 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:23:15,489 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:23:15,489 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:23:15,505 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:23:16,817 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:16,818 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:16,819 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:23:16,819 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:23:16,819 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 11:23:16,819 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:23:16,851 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:16,851 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:16,866 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:23:16,866 [http-nio-8090-exec-4] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:23:16,866 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:23:16,866 [http-nio-8090-exec-4] <==      Total: 7
2018-11-18 11:23:21,188 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:21,188 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:21,197 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:23:21,213 [http-nio-8090-exec-2] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? ,dealPersonId=? where id=? 
2018-11-18 11:23:21,228 [http-nio-8090-exec-2] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 12(String), 2018-11-18 11:23:21.213(Timestamp), weicheng(String), 11(Long)
2018-11-18 11:23:21,228 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 11:23:21,275 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:21,275 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:23:21,291 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:23:21,306 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 11:23:23,806 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:23,806 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:23,817 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:23:23,818 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:23:23,818 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 11:23:23,818 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:23:23,849 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:23:23,849 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:23:23,849 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:23:23,865 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:23:23,865 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:23:23,865 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:28:09,091 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:09,091 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:09,108 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:28:09,139 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:09,139 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:09,139 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:28:09,264 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:09,264 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 11:28:09,280 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:28:10,686 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:10,695 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:28:10,697 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:10,697 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:28:10,697 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:10,697 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:28:12,465 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:12,478 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:12,479 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:28:12,479 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:28:12,479 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 11:28:12,479 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:28:12,526 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 11:28:18,233 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:18,238 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:18,239 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:28:18,240 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:28:18,240 [http-nio-8090-exec-6] ==> Parameters: 11(Long)
2018-11-18 11:28:18,240 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:28:18,287 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:18,287 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:18,287 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:28:18,302 [http-nio-8090-exec-8] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:28:18,302 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:28:18,302 [http-nio-8090-exec-8] <==      Total: 7
2018-11-18 11:28:21,826 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:21,843 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:21,844 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:28:21,844 [http-nio-8090-exec-9] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? ,dealPersonId=? where id=? 
2018-11-18 11:28:21,844 [http-nio-8090-exec-9] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 12(String), 2018-11-18 11:28:21.844(Timestamp), wuzhihua(String), 11(Long)
2018-11-18 11:28:21,844 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 11:28:21,875 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:28:21,891 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 11:28:23,172 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:23,172 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:23,179 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:28:23,179 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:28:23,179 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 11:28:23,179 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:28:23,225 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:23,225 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:23,225 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:28:23,225 [http-nio-8090-exec-10] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:28:23,225 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:28:23,241 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 11:28:26,500 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:28:26,500 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:28:26,505 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:28:26,506 [http-nio-8090-exec-2] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:28:26,506 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 11:28:26,506 [http-nio-8090-exec-2] <==      Total: 7
2018-11-18 11:30:05,431 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 11:30:05,432 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 11:30:05,434 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:30:05,442 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:30:05,443 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 11:30:05,444 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:30:05,447 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 11:30:05,449 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 11:30:05,453 [http-nio-8090-exec-10] <==      Total: 37
2018-11-18 11:30:05,561 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 11:30:05,566 [http-nio-8090-exec-10] ==> Parameters: 611baa2b-f7f4-436c-925c-a29f4ffa171b(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542519005545,"id":10,"loginTime":1542511805545,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"611baa2b-f7f4-436c-925c-a29f4ffa171b","username":"wuzhihua"}(String), 2018-11-18 13:30:05.545(Timestamp), 2018-11-18 11:30:05.545(Timestamp), 2018-11-18 11:30:05.545(Timestamp)
2018-11-18 11:30:05,569 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 11:34:58,207 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:34:58,211 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:34:58,211 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:34:58,355 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:34:58,355 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:34:58,355 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:34:58,473 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:34:58,473 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:34:58,473 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:34:58,489 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:34:58,489 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:34:58,504 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:34:58,504 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:34:58,504 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 11:34:58,504 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:34:59,941 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:34:59,946 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:34:59,947 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:34:59,948 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:34:59,948 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:34:59,948 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:35:00,039 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 11:35:01,503 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:01,503 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:01,516 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:01,516 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:35:01,516 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 11:35:01,535 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:01,556 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:01,556 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:01,572 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:35:01,572 [http-nio-8090-exec-3] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:35:01,572 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 11:35:01,587 [http-nio-8090-exec-3] <==      Total: 7
2018-11-18 11:35:19,102 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:19,108 [http-nio-8090-exec-3] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:19,111 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 11:35:19,146 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:19,146 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:19,146 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:35:19,257 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:19,258 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 11:35:19,262 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:28,570 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:28,578 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:28,579 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:28,611 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:28,611 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:28,611 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:35:28,723 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:28,723 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:28,723 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:35:28,741 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 11:35:28,742 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-18 11:35:28,744 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 11:35:28,746 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 11:35:28,747 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-18 11:35:28,753 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:35:29,809 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:29,821 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:35:29,822 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:35:29,838 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:29,838 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:29,838 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:35:31,262 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:31,275 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:31,276 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:35:31,276 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:35:31,292 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 11:35:31,292 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:35:31,323 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:31,323 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:31,323 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 11:35:31,323 [http-nio-8090-exec-8] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:35:31,323 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 11:35:31,339 [http-nio-8090-exec-8] <==      Total: 7
2018-11-18 11:35:34,488 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:34,488 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:34,492 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:35:34,493 [http-nio-8090-exec-10] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? ,dealPersonId=? where id=? 
2018-11-18 11:35:34,509 [http-nio-8090-exec-10] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 12(String), 2018-11-18 11:35:34.493(Timestamp), 5(String), 11(Long)
2018-11-18 11:35:34,509 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 11:35:34,539 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:34,539 [http-nio-8090-exec-4] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:34,539 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:35:34,554 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 11:35:36,004 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:36,004 [http-nio-8090-exec-5] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:36,012 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:35:36,013 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 11:35:36,013 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 11:35:36,013 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 11:35:36,039 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:36,039 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:36,055 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:35:36,055 [http-nio-8090-exec-1] ==>  Preparing: select distinct u.id as "id",u.username as "username" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? 
2018-11-18 11:35:36,055 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 11:35:36,055 [http-nio-8090-exec-1] <==      Total: 7
2018-11-18 11:35:46,504 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:46,504 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:46,509 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 11:35:46,510 [http-nio-8090-exec-2] ==>  Preparing: update lte_plane set mENodeBID=? ,mBaseStationName=? ,mBaseStationType=? ,mAltitude=? ,mLongitude=? ,mLatitude=? ,testPerson=? ,testPersonPhone=? ,backPerson=? ,backPersonPhone=? ,testTime=? ,mTac=? ,updateTime=? ,dealPersonId=? where id=? 
2018-11-18 11:35:46,510 [http-nio-8090-exec-2] ==> Parameters: 234567(String), 测试上海移动(String), 宏站(String), 123.2543(String), 133.235(String), 24.23(String), 张维程(String), 18001601122(String), 张维程(String), 18301601122(String), 2018-11-18(String), 12(String), 2018-11-18 11:35:46.51(Timestamp), 10(String), 11(Long)
2018-11-18 11:35:46,510 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 11:35:46,540 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:35:46,540 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 11:35:46,540 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 11:35:46,555 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 11:39:21,727 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:39:21,727 [http-nio-8090-exec-1] ==> Parameters: 611baa2b-f7f4-436c-925c-a29f4ffa171b(String)
2018-11-18 11:39:21,729 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:39:21,734 [http-nio-8090-exec-1] ==>  Preparing: select id as "planId", testTime as "testDate" from lte_plane lp where lp.testTime =? and dealPersonId =? and projId =? 
2018-11-18 11:39:21,736 [http-nio-8090-exec-1] ==> Parameters: 2018-11-18(String), 10(Long), 479(Long)
2018-11-18 11:39:21,739 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 11:44:42,907 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:44:42,908 [http-nio-8090-exec-7] ==> Parameters: 611baa2b-f7f4-436c-925c-a29f4ffa171b(String)
2018-11-18 11:44:42,909 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:44:42,914 [http-nio-8090-exec-7] ==>  Preparing: select mENodeBID as mENodeBID ,mAltitude as mAltitude ,mBaseStationName as mBaseStationName ,mBaseStationType as mBaseStationType ,mLongitude as mLongitude ,mLatitude as mLatitude ,mTac as mTac from lte_plane lp where dealPersonId =? and testTime =? and projId =? 
2018-11-18 11:44:42,915 [http-nio-8090-exec-7] ==> Parameters: 10(Long), 2018-11-18(String), 479(Long)
2018-11-18 11:44:42,918 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 11:44:42,925 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 11:44:42,926 [http-nio-8090-exec-7] ==> Parameters: 234567(String)
2018-11-18 11:44:42,929 [http-nio-8090-exec-7] <==      Total: 3
2018-11-18 11:47:36,792 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:47:36,793 [http-nio-8090-exec-10] ==> Parameters: 611baa2b-f7f4-436c-925c-a29f4ffa171b(String)
2018-11-18 11:47:36,795 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:47:36,821 [http-nio-8090-exec-10] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_123456%' 
2018-11-18 11:47:36,823 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-18 11:47:36,824 [http-nio-8090-exec-10] <==      Total: 7
2018-11-18 11:47:36,825 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_123456%' limit 1 
2018-11-18 11:47:36,827 [http-nio-8090-exec-10] ==> Parameters: LtePlan(String)
2018-11-18 11:47:36,827 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 11:48:03,114 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 11:48:03,114 [http-nio-8090-exec-6] ==> Parameters: 611baa2b-f7f4-436c-925c-a29f4ffa171b(String)
2018-11-18 11:48:03,116 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:48:03,120 [http-nio-8090-exec-6] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567%' 
2018-11-18 11:48:03,121 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-18 11:48:03,122 [http-nio-8090-exec-6] <==      Total: 3
2018-11-18 11:48:03,123 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567%' limit 1 
2018-11-18 11:48:03,124 [http-nio-8090-exec-6] ==> Parameters: LtePlan(String)
2018-11-18 11:48:03,126 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:48:03,131 [http-nio-8090-exec-6] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 11:48:03,133 [http-nio-8090-exec-6] ==> Parameters: LteStationCheck(String), 基站核查(String), 92503(String)
2018-11-18 11:48:03,135 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 11:48:03,148 [http-nio-8090-exec-6] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 11:48:03,154 [http-nio-8090-exec-6] ==> Parameters: (String), LteStationCheck(String), 2018-11-18 11:48:03.147(Timestamp), 0(Integer), (String), 479(Long), 基站核查(String), usertask5(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 11:48:03,155 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-18 11:48:03,327 [http-nio-8090-exec-6] ==>  Preparing: insert into lte_station_check (eNodeBID,userId,testDate,latitude,longitude,tac,createTime,projId) values ( ?,?,?,?,?,?,?,? ) 
2018-11-18 11:48:03,329 [http-nio-8090-exec-6] ==> Parameters: 234567(String), 10(Long), 2018-11-12(String), 21.22(String), 222(String), 21212(String), 2018-11-18 11:48:03.118(Timestamp), 479(Long)
2018-11-18 11:48:03,330 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-18 12:07:17,111 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:17,127 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:17,128 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:07:17,148 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:17,164 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:17,164 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 12:07:17,265 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:07:26,436 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:26,436 [http-nio-8090-exec-10] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:26,441 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:07:26,559 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:26,560 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:26,560 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:07:26,566 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-18 12:07:26,567 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-18 12:07:26,572 [http-nio-8090-exec-6] <==      Total: 37
2018-11-18 12:07:35,497 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:35,497 [http-nio-8090-exec-6] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:35,503 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:07:35,513 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-18 12:07:35,517 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 12:07:35,518 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:07:35,519 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-18 12:07:35,520 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:07:35,521 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:07:36,997 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:07:36,997 [http-nio-8090-exec-1] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:07:37,011 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:07:37,016 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-18 12:07:37,016 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 12:07:37,017 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:07:37,019 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-18 12:07:37,019 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:07:37,020 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:08:48,111 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:08:48,111 [http-nio-8090-exec-9] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:08:48,119 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:08:48,232 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:08:48,233 [http-nio-8090-exec-2] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:08:48,236 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:08:48,496 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:08:48,496 [http-nio-8090-exec-8] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:08:48,496 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:08:48,513 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:08:48,514 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 12:08:48,514 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 12:08:48,515 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:08:48,516 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 12:08:48,517 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:11:52,466 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:52,484 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:11:52,500 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:11:52,524 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-11-18 12:11:52,527 [http-nio-8090-exec-7] ==> Parameters: 5b37d072-ca28-4b30-a963-84fda102f1ab(String)
2018-11-18 12:11:52,530 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-18 12:11:57,496 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 12:11:57,505 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 12:11:57,508 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:11:57,519 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:11:57,525 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 12:11:57,526 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:11:57,533 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 12:11:57,536 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 12:11:57,544 [http-nio-8090-exec-4] <==      Total: 37
2018-11-18 12:11:57,650 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 12:11:57,650 [http-nio-8090-exec-4] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542521517635,"id":10,"loginTime":1542514317635,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"bf519c3c-c32f-447e-b350-0f39e4e7f250","username":"wuzhihua"}(String), 2018-11-18 14:11:57.635(Timestamp), 2018-11-18 12:11:57.635(Timestamp), 2018-11-18 12:11:57.635(Timestamp)
2018-11-18 12:11:57,650 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 12:11:57,813 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:57,813 [http-nio-8090-exec-4] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:11:57,813 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:11:57,902 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:57,903 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:11:57,905 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:11:58,014 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:58,016 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:11:58,020 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:11:58,028 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:11:58,032 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 12:11:58,033 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 12:11:58,035 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:11:58,035 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 12:11:58,036 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:11:59,685 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:59,686 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:11:59,687 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:11:59,699 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:11:59,699 [http-nio-8090-exec-1] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:11:59,700 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:11:59,797 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 12:12:07,965 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:12:07,979 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:12:07,995 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:12:08,013 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 12:12:50,950 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:12:50,951 [http-nio-8090-exec-2] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:12:50,952 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:12:50,980 [http-nio-8090-exec-2] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_null_%' 
2018-11-18 12:12:50,982 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-18 12:12:50,984 [http-nio-8090-exec-2] <==      Total: 0
2018-11-18 12:13:51,290 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:13:51,291 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:13:51,293 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:13:51,302 [http-nio-8090-exec-5] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:13:51,304 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 12:13:51,306 [http-nio-8090-exec-5] <==      Total: 4
2018-11-18 12:13:51,307 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:13:51,308 [http-nio-8090-exec-5] ==> Parameters: LtePlan(String)
2018-11-18 12:13:51,310 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:13:51,340 [http-nio-8090-exec-5] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:13:51,343 [http-nio-8090-exec-5] ==> Parameters: LteCellCheck(String), 小区核查(String), 92503(String)
2018-11-18 12:13:51,344 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:13:51,376 [http-nio-8090-exec-5] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 12:13:51,378 [http-nio-8090-exec-5] ==> Parameters: (String), LteCellCheck(String), 2018-11-18 12:13:51.375(Timestamp), 0(Integer), (String), 479(Long), 小区核查(String), usertask3(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 12:13:51,379 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-18 12:13:51,553 [http-nio-8090-exec-5] ==>  Preparing: insert into lte_cell_check ( userId ,eNodeBID ,communityName ,testDate ,csfbTestCount ,csfbFallSuccessCount ,csfbFallRate ,goodFtpUpAverageRsrp ,goodFtpUpAverageSinr ,goodFtpUpRate ,generalFtpUpAverageRsrp ,generalFtpUpAverageSinr ,generalFtpUpRate ,poorFtpUpAverageRsrp ,poorFtpUpAverageSinr ,poorFtpUpRate ,goodFtpDownAverageRsrp ,goodFtpDownAverageSinr ,goodFtpDownRate ,generalFtpDownAverageRsrp ,generalFtpDownAverageSinr ,generalFtpDownRate ,poorFtpDownAverageRsrp ,poorFtpDownAverageSinr ,poorFtpDownRate ,pci ,tac ,cellId ,frequency ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:13:51,558 [http-nio-8090-exec-5] ==> Parameters: 10(Long), 234567(String), 1(String), 2018-11-18(String), null, null, null, 15(String), 16(String), 17(String), null, null, 20(String), null, null, 23(String), null, null, null, 27(String), null, 29(String), null, 31(String), 32(String), 33(String), 34(String), 35(String), 36(String), 479(Long), 2018-11-18 12:13:51.297(Timestamp)
2018-11-18 12:13:51,562 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-18 12:14:11,729 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:14:11,730 [http-nio-8090-exec-2] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:14:11,732 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:14:11,740 [http-nio-8090-exec-2] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:14:11,741 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-18 12:14:11,743 [http-nio-8090-exec-2] <==      Total: 5
2018-11-18 12:14:11,745 [http-nio-8090-exec-2] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:14:11,746 [http-nio-8090-exec-2] ==> Parameters: LtePlan(String)
2018-11-18 12:14:11,747 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:14:11,751 [http-nio-8090-exec-2] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:14:11,752 [http-nio-8090-exec-2] ==> Parameters: LteCellCheck(String), 小区核查(String), 92503(String)
2018-11-18 12:14:11,753 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:14:11,754 [http-nio-8090-exec-2] ==>  Preparing: insert into lte_cell_check ( userId ,eNodeBID ,communityName ,testDate ,csfbTestCount ,csfbFallSuccessCount ,csfbFallRate ,goodFtpUpAverageRsrp ,goodFtpUpAverageSinr ,goodFtpUpRate ,generalFtpUpAverageRsrp ,generalFtpUpAverageSinr ,generalFtpUpRate ,poorFtpUpAverageRsrp ,poorFtpUpAverageSinr ,poorFtpUpRate ,goodFtpDownAverageRsrp ,goodFtpDownAverageSinr ,goodFtpDownRate ,generalFtpDownAverageRsrp ,generalFtpDownAverageSinr ,generalFtpDownRate ,poorFtpDownAverageRsrp ,poorFtpDownAverageSinr ,poorFtpDownRate ,pci ,tac ,cellId ,frequency ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:14:11,756 [http-nio-8090-exec-2] ==> Parameters: 10(Long), 234567(String), 2(String), 2018-11-18(String), null, null, null, 15(String), 16(String), 17(String), null, null, 20(String), null, null, 23(String), null, null, null, 27(String), null, 29(String), null, 31(String), 32(String), 33(String), 34(String), 35(String), 36(String), 479(Long), 2018-11-18 12:14:11.736(Timestamp)
2018-11-18 12:14:11,757 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-18 12:14:17,043 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:14:17,044 [http-nio-8090-exec-9] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:14:17,046 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:14:17,053 [http-nio-8090-exec-9] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:14:17,053 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-18 12:14:17,069 [http-nio-8090-exec-9] <==      Total: 5
2018-11-18 12:14:17,070 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:14:17,070 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String)
2018-11-18 12:14:17,071 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:14:17,073 [http-nio-8090-exec-9] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:14:17,075 [http-nio-8090-exec-9] ==> Parameters: LteCellCheck(String), 小区核查(String), 92503(String)
2018-11-18 12:14:17,076 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:14:17,077 [http-nio-8090-exec-9] ==>  Preparing: insert into lte_cell_check ( userId ,eNodeBID ,communityName ,testDate ,csfbTestCount ,csfbFallSuccessCount ,csfbFallRate ,goodFtpUpAverageRsrp ,goodFtpUpAverageSinr ,goodFtpUpRate ,generalFtpUpAverageRsrp ,generalFtpUpAverageSinr ,generalFtpUpRate ,poorFtpUpAverageRsrp ,poorFtpUpAverageSinr ,poorFtpUpRate ,goodFtpDownAverageRsrp ,goodFtpDownAverageSinr ,goodFtpDownRate ,generalFtpDownAverageRsrp ,generalFtpDownAverageSinr ,generalFtpDownRate ,poorFtpDownAverageRsrp ,poorFtpDownAverageSinr ,poorFtpDownRate ,pci ,tac ,cellId ,frequency ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:14:17,078 [http-nio-8090-exec-9] ==> Parameters: 10(Long), 234567(String), 3(String), 2018-11-18(String), null, null, null, 15(String), 16(String), 17(String), null, null, 20(String), null, null, 23(String), null, null, null, 27(String), null, 29(String), null, 31(String), 32(String), 33(String), 34(String), 35(String), 36(String), 479(Long), 2018-11-18 12:14:17.048(Timestamp)
2018-11-18 12:14:17,079 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 12:16:40,383 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:16:40,384 [http-nio-8090-exec-1] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:16:40,385 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:16:40,398 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp where projId =? and status=2 limit 1 
2018-11-18 12:16:40,399 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 12:16:40,403 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 12:21:28,195 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:21:28,197 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:21:28,198 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:21:28,245 [http-nio-8090-exec-3] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:21:28,245 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-18 12:21:28,245 [http-nio-8090-exec-3] <==      Total: 5
2018-11-18 12:21:28,245 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] ==> Parameters: LtePlan(String)
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] ==> Parameters: LteLoadTest(String), 路测核查(String), 92503(String)
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] ==> Parameters: (String), LteLoadTest(String), 2018-11-18 12:21:28.261(Timestamp), 0(Integer), (String), 479(Long), 路测核查(String), usertask4(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 12:21:28,261 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-18 12:21:28,339 [http-nio-8090-exec-3] ==>  Preparing: insert into lte_load_test ( userId ,eNodeBID ,communityName ,testDate ,rsrpFtpUpImage ,sinrFtpUpImage ,upFtpRateImage ,rsrpFtpDownImage ,sinrFtpDownImage ,downFtpRateImage ,sinrThresholdImage ,rsrpThresholdImage ,ftpRateThresholdImage ,roadLogFile ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:21:28,339 [http-nio-8090-exec-3] ==> Parameters: 10(Long), 234567(String), 1(String), 2018-11-18(String), /lte/20181118122128_46972029-53ee-4b37-8d98-16150ce5bdae.png(String), /lte/20181118122128_e608a6b1-f822-470e-8dce-e4e251987973.png(String), /lte/20181118122128_3f576cfc-9393-4f29-9382-4fe8ec3f1942.png(String), /lte/20181118122128_82f23698-8257-4abc-9806-fc503fc9c04a.png(String), /lte/20181118122128_31a4b204-98fb-4105-9eab-efd8386e05f1.png(String), /lte/20181118122128_57f29d11-f364-44f1-8106-ea953b246147.png(String), /lte/20181118122128_db63cc6a-7d8d-4b5b-80e6-f619e1d0eeb6.png(String), /lte/20181118122128_620a374a-09b5-4af8-94e7-7ddded89db3e.png(String), /lte/20181118122128_842d7957-350a-4042-9e50-884bb415a321.png(String), /lte/20181118122128_b96140e6-9cce-4235-9422-36e85ce91af1.png(String), 479(Long), 2018-11-18 12:21:28.245(Timestamp)
2018-11-18 12:21:28,339 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-18 12:22:00,315 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:22:00,315 [http-nio-8090-exec-2] ==> Parameters: 31ac20b0-807a-494e-b47d-be0ae64e5937(String)
2018-11-18 12:22:00,329 [http-nio-8090-exec-2] <==      Total: 0
2018-11-18 12:22:26,128 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:22:26,128 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:22:26,132 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:22:58,630 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:22:58,635 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:22:58,636 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:23:39,383 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:23:39,383 [http-nio-8090-exec-4] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:23:39,390 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:24:57,727 [http-nio-8090-exec-4] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] <==      Total: 6
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] ==> Parameters: LtePlan(String)
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:24:57,744 [http-nio-8090-exec-4] ==> Parameters: LteLoadTest(String), 路测核查(String), 92503(String)
2018-11-18 12:24:57,760 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:24:57,760 [http-nio-8090-exec-4] ==>  Preparing: insert into lte_load_test ( userId ,eNodeBID ,communityName ,testDate ,rsrpFtpUpImage ,sinrFtpUpImage ,upFtpRateImage ,rsrpFtpDownImage ,sinrFtpDownImage ,downFtpRateImage ,sinrThresholdImage ,rsrpThresholdImage ,ftpRateThresholdImage ,roadLogFile ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:24:57,760 [http-nio-8090-exec-4] ==> Parameters: 10(Long), 234567(String), 2(String), 2018-11-11(String), (String), (String), (String), (String), (String), (String), (String), (String), (String), (String), 479(Long), 2018-11-18 12:24:57.727(Timestamp)
2018-11-18 12:24:57,760 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-18 12:25:32,502 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:25:32,502 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:25:32,504 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_123456_%' 
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] <==      Total: 7
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_123456_%' limit 1 
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] ==> Parameters: LtePlan(String)
2018-11-18 12:25:32,551 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:26:03,459 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:03,459 [http-nio-8090-exec-9] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:03,463 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==>  Preparing: select distinct a.act_task_name from business_activiti_relation a where a.act_business_key like '%LtePlan_234567_%' 
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] <==      Total: 6
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_%' limit 1 
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==> Parameters: LtePlan(String)
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==> Parameters: LteLoadTest(String), 路测核查(String), 92503(String)
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==>  Preparing: insert into lte_load_test ( userId ,eNodeBID ,communityName ,testDate ,rsrpFtpUpImage ,sinrFtpUpImage ,upFtpRateImage ,rsrpFtpDownImage ,sinrFtpDownImage ,downFtpRateImage ,sinrThresholdImage ,rsrpThresholdImage ,ftpRateThresholdImage ,roadLogFile ,projId ,createTime ) values ( ? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ) 
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] ==> Parameters: 10(Long), 234567(String), 1(String), 2018-11-18(String), /lte/20181118122603_07f83c66-1828-43ba-9620-5d8e4a96ce1f.png(String), /lte/20181118122603_f819128d-7ad9-4ac0-9a24-876022e8ed1e.png(String), /lte/20181118122603_a2eef561-1908-4c77-befd-f4eee941be33.png(String), /lte/20181118122603_ad5ee37a-ee32-4dc5-9bd1-6b243a39a53a.png(String), /lte/20181118122603_98a9624c-db72-4268-9f3e-0f5c04f6e2db.png(String), /lte/20181118122603_3e4aa151-2aad-42de-8acd-a86dce482efe.png(String), /lte/20181118122603_ad21b4bf-2b11-4a0c-ba54-f06229c542b4.png(String), /lte/20181118122603_e5a5b0cc-2151-446a-b579-809bdbbbcc93.png(String), /lte/20181118122603_30f0819d-fa24-40e1-a3a7-bd0a1270d8c8.png(String), /lte/20181118122603_62eed1a3-5100-4b1b-867a-251865d8ad49.png(String), 479(Long), 2018-11-18 12:26:03.605(Timestamp)
2018-11-18 12:26:03,605 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-18 12:26:36,166 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:36,175 [http-nio-8090-exec-2] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:36,177 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:26:36,443 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:36,443 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:36,443 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:26:36,536 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:36,536 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:36,536 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 12:26:36,771 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:26:39,426 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:39,426 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:39,435 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:26:39,436 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:39,436 [http-nio-8090-exec-6] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:39,436 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:26:39,436 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:26:39,436 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 12:26:39,451 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:26:39,451 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:26:39,451 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:26:39,451 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 12:26:43,914 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:43,929 [http-nio-8090-exec-6] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:43,931 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:26:43,932 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:26:43,932 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:26:43,932 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:26:43,932 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 12:26:43,932 [http-nio-8090-exec-6] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 12:26:43,932 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:26:43,932 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 12:26:43,932 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 12:26:43,947 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:26:43,947 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 12:26:43,947 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 12:26:43,947 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:26:43,947 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 12:26:43,963 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 12:26:43,963 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:26:43,963 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 12:26:43,963 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 12:26:43,979 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:27:07,313 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:27:07,313 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_type=? and act_business_key like '%LtePlan_234567_11%' limit 1 
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] ==> Parameters: LtePlan(String)
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:27:07,343 [http-nio-8090-exec-10] ==>  Preparing: select count(1) from business_activiti_relation where buss_type=? and act_task_name = ? and act_piid=? 
2018-11-18 12:27:07,358 [http-nio-8090-exec-10] ==> Parameters: LtePlan(String), 审核报告(String), 92503(String)
2018-11-18 12:27:07,358 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:27:07,358 [http-nio-8090-exec-10] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid,act_business_key) values(?,?,?,?,?,?,?,?,?,?) 
2018-11-18 12:27:07,358 [http-nio-8090-exec-10] ==> Parameters: (String), LtePlan(String), 2018-11-18 12:27:07.358(Timestamp), 11(Long), (String), 479(Long), 审核报告(String), usertask6(String), 92503(String), LtePlan_234567_11(String)
2018-11-18 12:27:07,358 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 12:27:07,546 [http-nio-8090-exec-10] ==>  Preparing: update lte_plane set status=? where id=? 
2018-11-18 12:27:07,546 [http-nio-8090-exec-10] ==> Parameters: 1(Long), 11(Long)
2018-11-18 12:27:07,546 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-18 12:27:07,577 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:27:07,577 [http-nio-8090-exec-5] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:27:07,577 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:27:07,593 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 12:27:10,567 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:27:10,567 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:27:10,583 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:27:10,584 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:27:10,584 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:27:10,600 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:31:53,474 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:53,489 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:53,489 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:31:53,630 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:53,630 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:53,630 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:31:53,771 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:53,771 [http-nio-8090-exec-9] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:53,771 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:31:53,786 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:31:53,786 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 12:31:53,786 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 12:31:53,802 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:31:53,802 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 12:31:53,802 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:31:55,489 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:55,496 [http-nio-8090-exec-8] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:55,498 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:31:55,498 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:55,498 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:55,498 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:31:55,576 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 12:31:56,779 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:56,779 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:56,786 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:31:56,787 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:31:56,787 [http-nio-8090-exec-8] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:31:56,787 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:31:56,787 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:31:56,787 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 12:31:56,787 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 12:31:56,787 [http-nio-8090-exec-7] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 12:31:56,787 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:31:56,787 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:31:56,802 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 12:31:56,802 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 12:31:56,802 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:31:56,802 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:31:56,818 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 12:31:56,834 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 12:31:56,834 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:31:56,834 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 12:31:56,849 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 12:31:56,849 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:36:02,133 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:02,140 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:02,149 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 12:36:02,279 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:02,280 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:02,282 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:36:02,412 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:02,414 [http-nio-8090-exec-9] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:02,417 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:36:02,427 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 12:36:02,432 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 12:36:02,438 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 12:36:02,439 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 12:36:02,443 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 12:36:02,445 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 12:36:04,354 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:04,355 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:04,362 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:36:04,372 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:04,373 [http-nio-8090-exec-8] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:04,374 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:36:04,453 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:36:04,455 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 12:36:04,457 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:36:04,459 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 12:36:04,461 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:36:04,468 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 12:36:06,524 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:06,524 [http-nio-8090-exec-8] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:06,526 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:36:06,529 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:06,532 [http-nio-8090-exec-7] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:06,534 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:36:06,538 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 12:36:06,540 [http-nio-8090-exec-8] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 12:36:06,541 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:36:06,542 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 12:36:06,542 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 12:36:06,547 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:36:06,551 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 12:36:06,554 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 12:36:06,555 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:36:06,557 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 12:36:06,559 [http-nio-8090-exec-7] <====      Total: 1
2018-11-18 12:36:06,560 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:36:06,561 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 12:36:06,570 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 12:36:06,571 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:36:06,572 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 12:36:06,575 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 12:36:06,576 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:36:06,588 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 12:36:06,590 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 12:36:06,592 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 12:36:09,833 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:36:09,834 [http-nio-8090-exec-3] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:36:09,836 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:36:09,845 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:36:09,853 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 12:36:09,855 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:36:09,856 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:36:09,858 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:36:09,859 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:36:09,860 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:36:09,861 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 12:36:09,864 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:36:09,865 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:36:09,870 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:36:09,871 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:36:09,871 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 12:36:09,873 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 12:36:09,874 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 12:47:03,722 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:47:03,732 [http-nio-8090-exec-2] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:47:03,744 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:47:03,880 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 12:47:03,884 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 12:47:03,886 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 12:47:03,887 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-18 12:47:03,888 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 12:47:03,892 [http-nio-8090-exec-2] <==      Total: 6
2018-11-18 12:47:05,457 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 12:47:05,457 [http-nio-8090-exec-4] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 12:47:05,463 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 12:47:05,493 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 12:47:05,494 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 12:47:05,496 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 12:47:05,498 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 12:47:05,505 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 12:47:05,510 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 12:47:05,512 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 12:47:05,514 [http-nio-8090-exec-4] <====      Total: 1
2018-11-18 12:47:05,515 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 12:47:05,518 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 12:47:05,523 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 12:47:05,524 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 12:47:05,525 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 12:47:05,528 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 12:47:05,528 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:35:38,314 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:38,321 [http-nio-8090-exec-10] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 16:35:38,321 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:35:38,430 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:38,430 [http-nio-8090-exec-4] ==> Parameters: bf519c3c-c32f-447e-b350-0f39e4e7f250(String)
2018-11-18 16:35:38,430 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:35:44,157 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-18 16:35:44,166 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 16:35:44,168 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:35:44,168 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:35:44,168 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 16:35:44,168 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:35:44,184 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-18 16:35:44,184 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-18 16:35:44,184 [http-nio-8090-exec-1] <==      Total: 37
2018-11-18 16:35:44,277 [http-nio-8090-exec-1] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-18 16:35:44,293 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542537344277,"id":10,"loginTime":1542530144277,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"1600d1da-2c4b-467b-be35-21a63052e852","username":"wuzhihua"}(String), 2018-11-18 18:35:44.277(Timestamp), 2018-11-18 16:35:44.277(Timestamp), 2018-11-18 16:35:44.277(Timestamp)
2018-11-18 16:35:44,293 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-18 16:35:44,434 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:44,434 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:44,434 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:35:44,527 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:44,527 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:44,527 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:35:44,637 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:44,637 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:44,637 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 16:35:44,652 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:35:46,355 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:46,355 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:46,365 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:35:46,368 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:46,368 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:46,368 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:35:46,446 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 16:35:56,750 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:56,758 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:56,760 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:35:56,760 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:35:56,760 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:35:56,760 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:35:56,760 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:35:56,760 [http-nio-8090-exec-6] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:35:56,760 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] ==> Parameters: 10(Long)
2018-11-18 16:35:56,776 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:35:56,776 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:35:56,792 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:35:56,807 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:35:56,807 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:35:56,807 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:35:56,807 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 16:35:56,823 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:41:23,455 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:23,465 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:23,466 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:41:23,500 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:23,500 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:23,500 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 16:41:23,625 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:41:25,875 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:25,875 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:25,878 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:41:25,879 [http-nio-8090-exec-2] <==      Total: 2
2018-11-18 16:41:25,895 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:25,895 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:25,895 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:41:28,519 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:28,528 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:28,529 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:41:28,529 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:28,529 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:28,529 [http-nio-8090-exec-2] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:41:28,529 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:41:28,529 [http-nio-8090-exec-2] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:41:28,529 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:41:28,529 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:41:28,529 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-18 16:41:28,545 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:41:28,545 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:41:28,545 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 16:41:28,545 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:41:28,545 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:41:28,561 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:41:28,576 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 16:41:28,576 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:41:28,576 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:41:28,576 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 16:41:28,576 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:41:39,628 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:39,628 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:39,640 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:41:39,673 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:39,673 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:39,673 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:41:39,782 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:39,782 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:39,782 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 16:41:39,798 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:41:41,766 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:41,766 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:41,772 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:41:41,773 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:41,773 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:41,773 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 16:41:41,773 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:41:42,992 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:43,000 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:43,001 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:41:43,002 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:41:43,002 [http-nio-8090-exec-5] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:41:43,002 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ==> Parameters: 11(Long)
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-18 16:41:43,002 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 16:41:43,018 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:41:43,018 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] <====      Total: 1
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] <====      Total: 3
2018-11-18 16:41:43,020 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:41:43,036 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:41:43,036 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 16:41:43,036 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:42:09,619 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:09,625 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:09,626 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:42:09,658 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:09,658 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:09,658 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:42:09,752 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:09,752 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:09,752 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 16:42:09,767 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:42:11,017 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:11,017 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:42:11,021 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 16:42:11,021 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:11,021 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:11,021 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:42:12,302 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:12,302 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:12,316 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:42:12,316 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:42:12,317 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:42:12,317 [http-nio-8090-exec-9] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:42:12,317 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ==> Parameters: 10(Long)
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:42:12,317 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 16:42:12,333 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:42:12,349 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:42:12,349 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 16:42:12,349 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:43:03,336 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:03,336 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:03,348 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:43:03,395 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:03,395 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:03,395 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 16:43:03,504 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 16:43:03,520 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:43:03,520 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 16:43:03,520 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:43:04,738 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:04,738 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:04,753 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:43:04,754 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 16:43:04,754 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:04,754 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:04,754 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:43:06,285 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:06,285 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:06,298 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:43:06,298 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:43:06,298 [http-nio-8090-exec-7] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:43:06,298 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 16:43:06,298 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 16:43:06,314 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:44:09,472 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:09,472 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:09,481 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:44:09,528 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:09,528 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:09,528 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:44:09,606 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:09,606 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:09,606 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 16:44:09,622 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:44:10,918 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:10,918 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:44:10,923 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:44:10,923 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:10,939 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:10,939 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:44:12,501 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:12,513 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:12,514 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:44:12,514 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:44:12,514 [http-nio-8090-exec-4] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:44:12,514 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:44:12,514 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:44:12,530 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:44:12,545 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:44:12,545 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:44:12,545 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:44:12,545 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 16:44:12,545 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:49:55,473 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:55,489 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:55,490 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:49:55,523 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:55,523 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:55,523 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 16:49:55,663 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:49:57,007 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:57,011 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:57,012 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:49:57,013 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 16:49:57,013 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:57,013 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:57,029 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:49:57,872 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:57,872 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:57,872 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:49:57,888 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:49:57,888 [http-nio-8090-exec-3] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:49:57,888 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ==> Parameters: 10(Long)
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 16:49:57,888 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 16:49:57,903 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:50:42,577 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:50:42,577 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:50:42,586 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:50:42,587 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:50:42,587 [http-nio-8090-exec-6] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:50:42,587 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 16:50:42,587 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 16:50:42,603 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:50:42,618 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:50:42,618 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 16:50:42,618 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:51:33,441 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:33,441 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:33,456 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:51:33,472 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:33,472 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:33,472 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:51:33,597 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:33,597 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:33,597 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:51:33,597 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:51:33,613 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 16:51:33,613 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 16:51:33,613 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:51:33,613 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-18 16:51:33,613 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:51:34,956 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:34,965 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:34,966 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:51:34,967 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:51:34,967 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:34,967 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:34,983 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:51:35,904 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:51:35,904 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:51:35,904 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:51:35,904 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 16:51:35,920 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 16:51:35,936 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:52:38,175 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:38,183 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:38,184 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:52:38,216 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:38,216 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:38,216 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:52:38,334 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:38,334 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:38,334 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:52:38,349 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:52:39,583 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:39,583 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:39,594 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:52:39,596 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 16:52:39,596 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:39,596 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:39,596 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:52:41,049 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:41,049 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:41,058 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:52:41,060 [http-nio-8090-exec-1] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:52:41,060 [http-nio-8090-exec-1] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:52:41,060 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] <====      Total: 1
2018-11-18 16:52:41,060 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 16:52:41,076 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:53:33,891 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:33,891 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:33,895 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:53:33,928 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:33,928 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:33,944 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:53:34,053 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:53:34,069 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:53:35,366 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:35,366 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:35,368 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:53:35,369 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 16:53:35,369 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:35,369 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:35,369 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:53:36,759 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:36,759 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:36,765 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:53:36,767 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:36,767 [http-nio-8090-exec-9] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:53:36,767 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 16:53:36,767 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:53:36,783 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 16:53:36,798 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:53:42,453 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:42,453 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:42,462 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:53:42,463 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:53:42,463 [http-nio-8090-exec-7] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:53:42,463 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 16:53:42,463 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-18 16:53:42,479 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 16:53:42,495 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:53:42,495 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:53:42,495 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 16:53:42,495 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 16:54:22,501 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:22,501 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:22,504 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 16:54:22,536 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:22,536 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:22,536 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 16:54:22,646 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:22,646 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:22,646 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-18 16:54:22,661 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:54:23,816 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:23,816 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:23,824 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:23,824 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:23,824 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:54:23,824 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:54:23,826 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 16:54:25,420 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:25,420 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:25,436 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:25,437 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:25,437 [http-nio-8090-exec-8] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:54:25,437 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ==> Parameters: 11(Long)
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] <====      Total: 1
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:54:25,437 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 16:54:25,453 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:54:33,190 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:33,190 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:33,202 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:54:33,203 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:54:33,203 [http-nio-8090-exec-7] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 16:54:33,203 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ==> Parameters: 10(Long)
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:54:33,203 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:54:33,218 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 16:54:33,234 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:58:35,638 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:35,638 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:35,655 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 16:58:35,751 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:35,751 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:35,751 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 16:58:35,860 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 16:58:37,375 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:37,375 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:37,380 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 16:58:37,383 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 16:58:37,383 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:37,383 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:37,383 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:58:39,056 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:39,057 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:39,057 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:58:39,059 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 16:58:39,059 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 16:58:39,059 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 16:58:39,061 [http-nio-8090-exec-5] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 16:58:39,061 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:58:39,063 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 16:58:39,066 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 16:58:39,067 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 16:58:39,069 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 16:58:39,070 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:58:39,077 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:58:39,079 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 16:58:39,081 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:58:39,083 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 16:58:39,084 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 16:58:39,086 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:58:39,087 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:58:39,088 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 16:58:39,089 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 16:58:39,090 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 16:58:39,090 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 16:58:39,091 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 16:58:39,091 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 16:58:39,092 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:01:46,582 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:46,582 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:46,597 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:01:46,645 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:46,645 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:46,645 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 17:01:46,739 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:01:47,911 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:47,911 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:47,917 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:01:47,918 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:01:47,918 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:47,918 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:47,918 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:01:48,855 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:48,855 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:48,855 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:01:48,855 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:01:48,871 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:01:48,871 [http-nio-8090-exec-4] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:01:48,871 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:01:48,871 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:01:48,886 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:01:48,902 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:06:13,210 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:06:13,210 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:06:13,215 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:06:13,215 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:06:13,216 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:06:13,216 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:06:13,217 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ==> Parameters: 10(Long)
2018-11-18 17:06:13,217 [http-nio-8090-exec-5] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 17:06:13,217 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 17:06:13,217 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] ====> Parameters: 123456(String)
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:06:13,233 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:06:40,034 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:06:40,034 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:06:40,047 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:06:40,049 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:06:40,049 [http-nio-8090-exec-6] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:06:40,049 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ==> Parameters: 10(Long)
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:06:40,049 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:06:40,065 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:04,587 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:04,587 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:04,601 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:11:04,633 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:04,633 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:04,649 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 17:11:04,758 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:11:06,086 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:06,086 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:11:06,095 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 17:11:06,095 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:06,095 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:06,095 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:11:07,470 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:07,470 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:07,486 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:07,487 [http-nio-8090-exec-1] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:11:07,487 [http-nio-8090-exec-1] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:11:07,487 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ==> Parameters: 11(Long)
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:11:07,487 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ====> Parameters: 234567(String)
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:11:07,503 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:24,901 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:24,912 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:24,913 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:11:24,945 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:24,945 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:24,945 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-18 17:11:25,086 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:11:26,429 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:26,429 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:26,435 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:11:26,437 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 17:11:26,437 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:26,437 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:26,437 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:11:27,297 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:27,297 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:27,297 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:11:27,297 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:11:27,297 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:11:27,312 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:11:27,312 [http-nio-8090-exec-6] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:11:27,312 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:11:27,312 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 17:11:27,328 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:12:17,684 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:17,684 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:17,687 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:12:17,719 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:17,735 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:17,735 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:12:17,828 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:12:19,281 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:19,281 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:19,284 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:12:19,285 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 17:12:19,285 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:19,285 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:19,285 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:12:20,519 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:20,519 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:20,524 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:12:20,525 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:12:20,525 [http-nio-8090-exec-10] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:12:20,525 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:12:20,525 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:20,525 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:20,525 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] <====      Total: 1
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:12:20,557 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 17:12:20,572 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:12:43,656 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:43,656 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:43,666 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:12:43,719 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:43,719 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:43,719 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:12:43,813 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:12:43,829 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:12:45,328 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:45,328 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:45,334 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:12:45,336 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:12:45,336 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:45,336 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:45,336 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:12:46,617 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:46,617 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:46,626 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:12:46,628 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:12:46,628 [http-nio-8090-exec-9] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:12:46,628 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:12:46,628 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:12:46,643 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:13:41,613 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:41,613 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:41,619 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:13:41,653 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:41,653 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:41,653 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:13:41,778 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:41,778 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:41,778 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:13:41,778 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:13:41,778 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 17:13:41,793 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 17:13:41,793 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:13:41,793 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 17:13:41,793 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:13:42,887 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:42,887 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:42,890 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:13:42,891 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:13:42,891 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:42,891 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:42,907 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:13:43,723 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:43,723 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:43,723 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:13:43,723 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:13:43,723 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:13:43,738 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:13:43,738 [http-nio-8090-exec-3] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:13:43,738 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:13:43,738 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:13:43,754 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:14:29,736 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:29,736 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:29,743 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:14:29,775 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:29,775 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:29,775 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:14:29,900 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:14:31,102 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:31,102 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:31,108 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:14:31,109 [http-nio-8090-exec-7] <==      Total: 2
2018-11-18 17:14:31,109 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:31,109 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:31,125 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:14:32,265 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:32,265 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:32,282 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:14:32,283 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:14:32,283 [http-nio-8090-exec-7] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:14:32,283 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:14:32,283 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:14:32,283 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:14:32,283 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ==> Parameters: 11(Long)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <====      Total: 1
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ====> Parameters: 234567(String)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <====      Total: 3
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 17:14:32,298 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:15:15,174 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:15,174 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:15,177 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:15:15,211 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:15,211 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:15,211 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:15:15,320 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:15,336 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:15:16,429 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:16,429 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:16,445 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:15:16,446 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 17:15:16,462 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:16,462 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:16,462 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:15:17,368 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:17,368 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:17,368 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:15:17,384 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:15:17,384 [http-nio-8090-exec-10] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:15:17,384 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:15:17,384 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 17:15:17,399 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:15:24,643 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:24,643 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:24,656 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:15:24,704 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:24,704 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:24,704 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:15:24,829 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:24,829 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:24,829 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] <==      Total: 2
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:24,845 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:15:26,142 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:26,142 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:15:26,146 [http-nio-8090-exec-9] <==      Total: 2
2018-11-18 17:15:26,146 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:26,146 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:26,162 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:15:27,052 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:27,052 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:27,052 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:27,052 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ==> Parameters: 11(Long)
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] <====      Total: 1
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:15:27,068 [http-nio-8090-exec-7] ====> Parameters: 234567(String)
2018-11-18 17:15:27,083 [http-nio-8090-exec-7] <====      Total: 3
2018-11-18 17:15:27,083 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:15:27,083 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:15:27,083 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-18 17:15:27,083 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:15:35,143 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:35,159 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:35,162 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:15:35,179 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:35,195 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:35,195 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-18 17:15:35,304 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:15:36,413 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:36,413 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:36,428 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:36,428 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:15:36,428 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:36,429 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:15:36,429 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 17:15:38,601 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:38,601 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:38,607 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:38,608 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:15:38,608 [http-nio-8090-exec-9] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:15:38,608 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:15:38,608 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:15:38,623 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:16:06,867 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:06,867 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:06,881 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:16:06,915 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:06,915 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:06,915 [http-nio-8090-exec-7] <==      Total: 1
2018-11-18 17:16:07,009 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:16:07,024 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:16:08,086 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:08,086 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:08,098 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:16:08,099 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:16:08,114 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:08,114 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:08,114 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:16:09,087 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:09,087 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:09,092 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:16:09,092 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:16:09,092 [http-nio-8090-exec-3] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:16:09,092 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:16:09,092 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:16:09,108 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:16:09,108 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 17:16:09,124 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:22:08,408 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:08,408 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:08,411 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:22:08,460 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:08,460 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:08,460 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:22:08,569 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-18 17:22:08,585 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:22:09,630 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:09,630 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:09,635 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:22:09,636 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:22:09,636 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:09,636 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:09,636 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:22:20,056 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:20,056 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:20,058 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:22:20,090 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:20,090 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:20,090 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:22:20,200 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:22:21,606 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:21,621 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:21,622 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:22:21,624 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 17:22:21,624 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:21,624 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:21,624 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:22:22,546 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:22,561 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:22,561 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:22:22,561 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:22:22,561 [http-nio-8090-exec-5] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:22:22,561 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:22:22,561 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:22:22,561 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:22:22,561 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:22:22,561 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:22:22,561 [http-nio-8090-exec-1] ==> Parameters: 11(Long)
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] <====      Total: 1
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:22:22,577 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 17:22:22,593 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:23:53,383 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:53,383 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:53,394 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:23:53,442 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:53,442 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:53,442 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] <==      Total: 2
2018-11-18 17:23:53,521 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:23:53,536 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-18 17:23:53,536 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:23:54,759 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:54,759 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:54,764 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:23:54,765 [http-nio-8090-exec-5] <==      Total: 2
2018-11-18 17:23:54,765 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:54,765 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:54,781 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:23:56,077 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:56,077 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:56,088 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:23:56,090 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:23:56,090 [http-nio-8090-exec-5] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:23:56,090 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ==> Parameters: 11(Long)
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] <====      Total: 1
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:23:56,090 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] ====> Parameters: 234567(String)
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] <====      Total: 3
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-18 17:23:56,105 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:24:22,826 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:22,826 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:22,840 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:24:22,887 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:22,887 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:22,887 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:24:22,997 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:22,997 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:22,997 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:24:23,012 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:24:24,233 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:24,233 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:24,245 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:24:24,245 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:24,245 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:24,246 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:24:24,246 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:24:25,215 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:25,215 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:25,215 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:24:25,230 [http-nio-8090-exec-1] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:24:25,230 [http-nio-8090-exec-1] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:24:25,230 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ==> Parameters: 11(Long)
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] <====      Total: 1
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:24:25,230 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:24:25,246 [http-nio-8090-exec-3] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:24:25,246 [http-nio-8090-exec-3] ====> Parameters: 234567(String)
2018-11-18 17:24:25,247 [http-nio-8090-exec-3] <====      Total: 3
2018-11-18 17:24:25,248 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:24:25,248 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:24:25,248 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:24:25,248 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:25:42,477 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:42,477 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:42,483 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:25:42,532 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:42,532 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:42,532 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:25:42,641 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:42,641 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] <==      Total: 2
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-18 17:25:42,657 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:25:43,782 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:43,782 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:43,786 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:25:43,787 [http-nio-8090-exec-6] <==      Total: 2
2018-11-18 17:25:43,787 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:43,787 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:43,787 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:25:44,602 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:44,617 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:44,617 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:25:44,617 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:25:44,617 [http-nio-8090-exec-6] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:25:44,617 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ==> Parameters: 11(Long)
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:25:44,617 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] <====      Total: 1
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ====> Parameters: 234567(String)
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] <====      Total: 3
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:25:44,633 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-18 17:25:44,649 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:28:23,384 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:28:23,384 [http-nio-8090-exec-8] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:28:23,389 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:28:23,390 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:28:23,390 [http-nio-8090-exec-8] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 17:28:23,390 [http-nio-8090-exec-8] <==      Total: 1
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ==> Parameters: 10(Long)
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-18 17:28:23,390 [http-nio-8090-exec-1] <====      Total: 1
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] <====      Total: 1
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 17:28:23,405 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:28:59,469 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:28:59,469 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:28:59,475 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:28:59,493 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:28:59,493 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:28:59,493 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] <==      Total: 2
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-18 17:28:59,617 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:29:00,680 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:00,680 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:00,690 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-18 17:29:00,692 [http-nio-8090-exec-3] <==      Total: 2
2018-11-18 17:29:00,692 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:00,692 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:00,692 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:29:01,614 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 17:29:01,614 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:01,614 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:01,614 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:29:01,614 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:29:01,614 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:29:01,629 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 17:29:01,645 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:29:10,707 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:10,707 [http-nio-8090-exec-6] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:10,709 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:29:10,711 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:29:10,711 [http-nio-8090-exec-6] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:29:10,711 [http-nio-8090-exec-6] <==      Total: 1
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ==> Parameters: 11(Long)
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:29:10,727 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] <====      Total: 1
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ====> Parameters: 234567(String)
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] <====      Total: 3
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-18 17:29:10,743 [http-nio-8090-exec-1] <==      Total: 1
2018-11-18 17:29:15,910 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:15,910 [http-nio-8090-exec-2] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:15,923 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:29:15,923 [http-nio-8090-exec-2] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:15,923 [http-nio-8090-exec-2] ==> Parameters: 10(Long), LtePlan(String)
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:15,923 [http-nio-8090-exec-2] <==      Total: 1
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ==> Parameters: 10(Long)
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:29:15,923 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] <====      Total: 1
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] <====      Total: 3
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-18 17:29:15,938 [http-nio-8090-exec-10] <==      Total: 1
2018-11-18 17:29:21,738 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:21,738 [http-nio-8090-exec-3] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:21,744 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:29:21,746 [http-nio-8090-exec-3] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:29:21,746 [http-nio-8090-exec-3] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:29:21,746 [http-nio-8090-exec-3] <==      Total: 1
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ==> Parameters: 11(Long)
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] <====      Total: 1
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:29:21,746 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] ====> Parameters: 234567(String)
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] <====      Total: 3
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:29:21,762 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-18 17:29:21,777 [http-nio-8090-exec-5] <==      Total: 1
2018-11-18 17:30:19,679 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:30:19,679 [http-nio-8090-exec-4] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:30:19,693 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-18 17:30:19,693 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-18 17:30:19,693 [http-nio-8090-exec-4] ==> Parameters: 11(Long), LtePlan(String)
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:30:19,693 [http-nio-8090-exec-4] <==      Total: 1
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ==> Parameters: 11(Long)
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-18 17:30:19,693 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] <====      Total: 1
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ====> Parameters: 234567(String)
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] <====      Total: 3
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] <==      Total: 1
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-18 17:30:19,708 [http-nio-8090-exec-9] <==      Total: 1
