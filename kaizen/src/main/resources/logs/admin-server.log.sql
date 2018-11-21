2018-11-21 23:12:43,479 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:43,498 [http-nio-8090-exec-7] ==> Parameters: 1600d1da-2c4b-467b-be35-21a63052e852(String)
2018-11-21 23:12:43,514 [http-nio-8090-exec-7] <==      Total: 1
2018-11-21 23:12:50,778 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-21 23:12:50,792 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-21 23:12:50,794 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:12:50,794 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-21 23:12:50,825 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-21 23:12:50,856 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:12:50,856 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-21 23:12:50,856 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-21 23:12:50,872 [http-nio-8090-exec-9] <==      Total: 37
2018-11-21 23:12:50,981 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-21 23:12:50,997 [http-nio-8090-exec-9] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542820370966,"id":10,"loginTime":1542813170966,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7","username":"wuzhihua"}(String), 2018-11-22 01:12:50.966(Timestamp), 2018-11-21 23:12:50.966(Timestamp), 2018-11-21 23:12:50.966(Timestamp)
2018-11-21 23:12:50,997 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-21 23:12:51,200 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:51,200 [http-nio-8090-exec-1] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:51,200 [http-nio-8090-exec-1] <==      Total: 1
2018-11-21 23:12:51,309 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:51,309 [http-nio-8090-exec-2] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:51,309 [http-nio-8090-exec-2] <==      Total: 1
2018-11-21 23:12:51,450 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:51,450 [http-nio-8090-exec-10] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:51,450 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:12:51,450 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-21 23:12:51,465 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-21 23:12:51,465 [http-nio-8090-exec-10] <==      Total: 2
2018-11-21 23:12:51,465 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-21 23:12:51,465 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-21 23:12:51,465 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:12:53,309 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:53,309 [http-nio-8090-exec-6] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:53,323 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:12:53,324 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:53,324 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:53,324 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:12:53,433 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-21 23:12:53,433 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-21 23:12:53,449 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:12:53,449 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-21 23:12:53,449 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-21 23:12:53,449 [http-nio-8090-exec-6] <==      Total: 2
2018-11-21 23:12:54,730 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:54,730 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:54,743 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:12:54,744 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:54,744 [http-nio-8090-exec-6] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:54,744 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:12:54,744 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-21 23:12:54,744 [http-nio-8090-exec-8] ==> Parameters: 11(Long), LtePlan(String)
2018-11-21 23:12:54,744 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:12:54,744 [http-nio-8090-exec-6] ==> Parameters: 11(Long)
2018-11-21 23:12:54,760 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:12:54,760 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:12:54,760 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-21 23:12:54,760 [http-nio-8090-exec-6] <====      Total: 3
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] <====      Total: 1
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] <====      Total: 3
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:12:54,775 [http-nio-8090-exec-6] ====> Parameters: 234567(String)
2018-11-21 23:12:54,791 [http-nio-8090-exec-6] <====      Total: 3
2018-11-21 23:12:54,791 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:12:54,791 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-21 23:12:54,791 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-21 23:12:54,806 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:12:57,953 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:12:57,953 [http-nio-8090-exec-2] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:12:57,963 [http-nio-8090-exec-2] <==      Total: 1
2018-11-21 23:12:57,963 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:12:57,963 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] <====      Total: 3
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] <====      Total: 1
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] <====      Total: 1
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] <====      Total: 3
2018-11-21 23:12:57,979 [http-nio-8090-exec-2] <==      Total: 1
2018-11-21 23:13:23,567 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:13:23,567 [http-nio-8090-exec-6] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:13:23,576 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] <====      Total: 3
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] <====      Total: 1
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] <====      Total: 1
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] <====      Total: 3
2018-11-21 23:13:23,578 [http-nio-8090-exec-6] <==      Total: 1
2018-11-21 23:13:55,070 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:13:55,070 [http-nio-8090-exec-4] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ==> Parameters: 10(Long)
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:13:55,073 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:13:55,089 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:14:41,972 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:41,984 [http-nio-8090-exec-2] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:42,000 [http-nio-8090-exec-2] <==      Total: 1
2018-11-21 23:14:42,140 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:42,140 [http-nio-8090-exec-3] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:42,140 [http-nio-8090-exec-3] <==      Total: 1
2018-11-21 23:14:42,437 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:42,437 [http-nio-8090-exec-10] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:42,437 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:14:42,453 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-21 23:14:42,453 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-21 23:14:42,468 [http-nio-8090-exec-10] <==      Total: 2
2018-11-21 23:14:42,468 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-21 23:14:42,468 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-21 23:14:42,468 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:14:46,452 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:46,456 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:46,457 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:46,457 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:14:46,457 [http-nio-8090-exec-5] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:46,457 [http-nio-8090-exec-5] <==      Total: 1
2018-11-21 23:14:46,582 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-21 23:14:46,582 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-21 23:14:46,598 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:14:46,598 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-21 23:14:46,598 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-21 23:14:46,598 [http-nio-8090-exec-8] <==      Total: 2
2018-11-21 23:14:49,753 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:14:49,769 [http-nio-8090-exec-9] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:14:49,770 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:14:49,771 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:14:49,771 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-21 23:14:49,787 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:14:49,787 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-21 23:14:49,787 [http-nio-8090-exec-9] <====      Total: 3
2018-11-21 23:14:49,787 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] <====      Total: 1
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] <====      Total: 1
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] <====      Total: 3
2018-11-21 23:14:49,802 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:30:52,416 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:52,416 [http-nio-8090-exec-7] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:52,422 [http-nio-8090-exec-7] <==      Total: 1
2018-11-21 23:30:52,484 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:52,484 [http-nio-8090-exec-10] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:52,484 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:30:52,578 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:52,578 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:52,578 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:52,578 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-21 23:30:52,578 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-21 23:30:52,593 [http-nio-8090-exec-8] <==      Total: 2
2018-11-21 23:30:52,593 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-21 23:30:52,593 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-21 23:30:52,593 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:54,484 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:54,484 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:54,492 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:54,492 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-21 23:30:54,492 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:54,492 [http-nio-8090-exec-5] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:54,492 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-21 23:30:54,492 [http-nio-8090-exec-5] <==      Total: 1
2018-11-21 23:30:54,492 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:54,508 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-21 23:30:54,508 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-21 23:30:54,508 [http-nio-8090-exec-8] <==      Total: 2
2018-11-21 23:30:55,992 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:56,001 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:56,003 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:30:56,003 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:30:56,003 [http-nio-8090-exec-8] ==> Parameters: 10(Long), LtePlan(String)
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:30:56,003 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ==> Parameters: 10(Long)
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:30:56,003 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:30:56,018 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-21 23:30:56,034 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-21 23:30:56,050 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:31:00,018 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:31:00,032 [http-nio-8090-exec-4] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:31:00,034 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:31:00,034 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:31:00,034 [http-nio-8090-exec-4] ==> Parameters: 10(Long)
2018-11-21 23:31:00,034 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:31:00,034 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] <====      Total: 1
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] ====> Parameters: 123456(String)
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] <====      Total: 3
2018-11-21 23:31:00,050 [http-nio-8090-exec-4] <==      Total: 1
2018-11-21 23:31:58,290 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:31:58,304 [http-nio-8090-exec-10] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:31:58,320 [http-nio-8090-exec-10] <==      Total: 1
2018-11-21 23:31:58,460 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:31:58,460 [http-nio-8090-exec-3] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:31:58,460 [http-nio-8090-exec-3] <==      Total: 1
2018-11-21 23:31:58,585 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:31:58,585 [http-nio-8090-exec-9] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:31:58,585 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:31:58,601 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-21 23:31:58,601 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-21 23:31:58,601 [http-nio-8090-exec-9] <==      Total: 2
2018-11-21 23:31:58,601 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-21 23:31:58,616 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-21 23:31:58,616 [http-nio-8090-exec-9] <==      Total: 1
2018-11-21 23:32:02,990 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:32:02,990 [http-nio-8090-exec-8] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:32:02,998 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:32:02,998 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:32:02,998 [http-nio-8090-exec-7] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:32:02,998 [http-nio-8090-exec-7] <==      Total: 1
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] <==      Total: 1
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-21 23:32:03,123 [http-nio-8090-exec-8] <==      Total: 2
2018-11-21 23:32:06,528 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-21 23:32:06,540 [http-nio-8090-exec-1] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-21 23:32:06,541 [http-nio-8090-exec-1] <==      Total: 1
2018-11-21 23:32:06,541 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_plane where id=? 
2018-11-21 23:32:06,557 [http-nio-8090-exec-1] ==> Parameters: 10(Long)
2018-11-21 23:32:06,557 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-21 23:32:06,557 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-21 23:32:06,557 [http-nio-8090-exec-1] <====      Total: 3
2018-11-21 23:32:06,557 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] <====      Total: 1
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] <====      Total: 1
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] ====> Parameters: 123456(String)
2018-11-21 23:32:06,572 [http-nio-8090-exec-1] <====      Total: 3
2018-11-21 23:32:06,588 [http-nio-8090-exec-1] <==      Total: 1
