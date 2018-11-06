2018-11-06 09:55:16,340 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:16,349 [http-nio-8090-exec-5] ==> Parameters: 70113617-4f25-4dd6-b1e0-b6e987673259(String)
2018-11-06 09:55:16,357 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:16,910 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:16,911 [http-nio-8090-exec-3] ==> Parameters: 70113617-4f25-4dd6-b1e0-b6e987673259(String)
2018-11-06 09:55:16,912 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 09:55:21,714 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-06 09:55:21,716 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-11-06 09:55:21,737 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:21,751 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:55:21,760 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-11-06 09:55:21,770 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:21,774 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-06 09:55:21,777 [http-nio-8090-exec-5] ==> Parameters: admin(String), 9(Long)
2018-11-06 09:55:21,784 [http-nio-8090-exec-5] <==      Total: 29
2018-11-06 09:55:21,917 [http-nio-8090-exec-5] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-06 09:55:21,943 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541476521909,"id":1,"loginTime":1541469321909,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"9483bc62-f1e2-4d4f-9c63-39c1691cdc1e","updateTime":1499304019000,"username":"admin"}(String), 2018-11-06 11:55:21.909(Timestamp), 2018-11-06 09:55:21.909(Timestamp), 2018-11-06 09:55:21.909(Timestamp)
2018-11-06 09:55:21,948 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-06 09:55:22,025 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:22,025 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:22,026 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:22,086 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:22,087 [http-nio-8090-exec-3] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:22,088 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 09:55:22,190 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:22,190 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:22,191 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:22,197 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 09:55:22,199 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-11-06 09:55:22,201 [http-nio-8090-exec-5] <==      Total: 2
2018-11-06 09:55:22,203 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:55:22,203 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-11-06 09:55:22,204 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:41,728 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:41,729 [http-nio-8090-exec-1] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:41,730 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:55:41,749 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:41,749 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:41,750 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:41,897 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:41,897 [http-nio-8090-exec-1] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:41,899 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:55:41,902 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 09:55:41,903 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-06 09:55:41,904 [http-nio-8090-exec-1] <==      Total: 2
2018-11-06 09:55:41,905 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:55:41,906 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-06 09:55:41,907 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:55:45,743 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:45,744 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:45,745 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:55:45,747 [http-nio-8090-exec-5] ==>  Preparing: delete from t_token where id = ? 
2018-11-06 09:55:46,037 [http-nio-8090-exec-5] ==> Parameters: 9483bc62-f1e2-4d4f-9c63-39c1691cdc1e(String)
2018-11-06 09:55:46,043 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-06 09:55:50,577 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-06 09:55:50,578 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 09:55:50,579 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:55:50,580 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:55:50,580 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 09:55:50,581 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:55:50,582 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-06 09:55:50,582 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-06 09:55:50,585 [http-nio-8090-exec-2] <==      Total: 36
2018-11-06 09:55:50,690 [http-nio-8090-exec-2] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-06 09:55:50,691 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1541476550688,"id":10,"loginTime":1541469350688,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"de1dd146-bb69-48cb-8203-4c5bf6a5e092","username":"wuzhihua"}(String), 2018-11-06 11:55:50.688(Timestamp), 2018-11-06 09:55:50.688(Timestamp), 2018-11-06 09:55:50.688(Timestamp)
2018-11-06 09:55:50,697 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-06 09:55:50,766 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:50,767 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:50,768 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:55:50,782 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:50,783 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:50,784 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 09:55:50,839 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:50,840 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:50,840 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:55:50,843 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 09:55:50,843 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 09:55:50,844 [http-nio-8090-exec-2] <==      Total: 2
2018-11-06 09:55:50,845 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:55:50,846 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 09:55:50,846 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:55:53,410 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:53,410 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:53,411 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 09:55:58,493 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:58,493 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:58,495 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 09:55:58,551 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:58,552 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:58,553 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:55:58,556 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 09:55:58,557 [http-nio-8090-exec-1] ==> Parameters: 4(Long)
2018-11-06 09:55:58,559 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:55:58,846 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:55:58,846 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:55:58,848 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 09:55:58,854 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 09:55:58,855 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 09:55:58,857 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 09:58:43,593 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:43,602 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:43,610 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 09:58:43,734 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:43,734 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:43,735 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 09:58:43,825 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:43,825 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:43,827 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 09:58:43,835 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 09:58:43,838 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 09:58:43,840 [http-nio-8090-exec-10] <==      Total: 2
2018-11-06 09:58:43,841 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 09:58:43,845 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 09:58:43,846 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 09:58:45,268 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:45,269 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:45,270 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 09:58:46,708 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:46,709 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:46,710 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 09:58:46,770 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:46,771 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:46,772 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 09:58:46,776 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 09:58:46,778 [http-nio-8090-exec-4] ==> Parameters: 4(Long)
2018-11-06 09:58:46,780 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 09:58:46,794 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:58:46,795 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:58:46,797 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:58:46,804 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 09:58:46,805 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 09:58:46,806 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 09:59:08,370 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 09:59:08,371 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 09:59:08,372 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 10:03:45,513 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:45,523 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:45,530 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 10:03:45,672 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:45,673 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:45,675 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:03:45,838 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:45,839 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:45,840 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 10:03:45,846 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 10:03:45,850 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-06 10:03:45,851 [http-nio-8090-exec-8] <==      Total: 2
2018-11-06 10:03:45,853 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 10:03:45,857 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-06 10:03:45,858 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 10:03:48,045 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:48,046 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:48,048 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:03:49,842 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:49,842 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:49,843 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 10:03:49,892 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:49,892 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:49,894 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:03:49,898 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 10:03:49,900 [http-nio-8090-exec-1] ==> Parameters: 4(Long)
2018-11-06 10:03:49,902 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:03:49,912 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:03:49,912 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:03:49,914 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 10:03:49,923 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 10:03:49,924 [http-nio-8090-exec-4] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 10:03:49,927 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 10:05:57,987 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:05:57,988 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:05:57,989 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 10:05:58,013 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:05:58,014 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:05:58,015 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 10:05:58,158 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:05:58,158 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:05:58,159 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 10:05:58,162 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 10:05:58,162 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-06 10:05:58,163 [http-nio-8090-exec-4] <==      Total: 2
2018-11-06 10:05:58,165 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 10:05:58,166 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-06 10:05:58,167 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 10:05:59,828 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:05:59,829 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:05:59,831 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:06:01,323 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:06:01,324 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:06:01,325 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 10:06:01,360 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:06:01,360 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:06:01,361 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:06:01,363 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 10:06:01,364 [http-nio-8090-exec-9] ==> Parameters: 4(Long)
2018-11-06 10:06:01,365 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:06:01,376 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:06:01,377 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:06:01,380 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:06:01,384 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 10:06:01,385 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 10:06:01,386 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:08:02,154 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:02,155 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:02,157 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:08:02,185 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:02,185 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:02,187 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:08:02,355 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:02,355 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:02,356 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:08:02,358 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 10:08:02,359 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-06 10:08:02,359 [http-nio-8090-exec-9] <==      Total: 2
2018-11-06 10:08:02,360 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 10:08:02,361 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-06 10:08:02,361 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:08:04,141 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:04,141 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:04,142 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 10:08:06,840 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:06,840 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:06,841 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 10:08:06,886 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:06,887 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:06,888 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:08:06,890 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 10:08:06,890 [http-nio-8090-exec-1] ==> Parameters: 4(Long)
2018-11-06 10:08:06,891 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:08:06,909 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:06,910 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:06,911 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 10:08:06,915 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 10:08:06,918 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 10:08:06,919 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 10:08:13,946 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:08:13,946 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:08:13,947 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 10:12:00,229 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:00,240 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:00,248 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 10:12:00,362 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:00,363 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:00,364 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 10:12:00,556 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:00,556 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:00,557 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 10:12:00,566 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 10:12:00,569 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 10:12:00,571 [http-nio-8090-exec-2] <==      Total: 2
2018-11-06 10:12:00,572 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 10:12:00,577 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 10:12:00,579 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 10:12:01,874 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:01,875 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:01,876 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:12:03,164 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:03,166 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:03,167 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 10:12:03,212 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:03,214 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:03,216 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 10:12:03,221 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 10:12:03,222 [http-nio-8090-exec-3] ==> Parameters: 4(Long)
2018-11-06 10:12:03,224 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 10:12:03,238 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 10:12:03,238 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 10:12:03,239 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 10:12:03,244 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 10:12:03,247 [http-nio-8090-exec-7] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 10:12:03,251 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:21:18,495 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:18,522 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:18,531 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:21:18,729 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:18,730 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:18,731 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:21:18,900 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:18,900 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:18,902 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:21:18,908 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:21:18,911 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:21:18,913 [http-nio-8090-exec-1] <==      Total: 2
2018-11-06 11:21:18,914 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:21:18,919 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:21:18,920 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:21:28,554 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:28,554 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:28,556 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:21:30,497 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:30,498 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:30,499 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:21:30,567 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:30,568 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:30,569 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:21:30,573 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:21:30,574 [http-nio-8090-exec-9] ==> Parameters: 4(Long)
2018-11-06 11:21:30,576 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:21:30,587 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:30,587 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:30,589 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:21:30,596 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:21:30,598 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:21:30,599 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:21:40,980 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:21:40,981 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:21:40,982 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:23:30,230 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:30,238 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:30,246 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:23:30,350 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:30,350 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:30,351 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:23:30,425 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:30,426 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:30,427 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:23:30,434 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:23:30,437 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-06 11:23:30,440 [http-nio-8090-exec-9] <==      Total: 2
2018-11-06 11:23:30,441 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:23:30,446 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-06 11:23:30,447 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:23:31,964 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:31,965 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:31,966 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:23:33,630 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:33,631 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:33,632 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:23:33,672 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:33,673 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:33,675 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:23:33,678 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:23:33,679 [http-nio-8090-exec-4] ==> Parameters: 4(Long)
2018-11-06 11:23:33,681 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:23:33,693 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:33,693 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:33,694 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:23:33,698 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:23:33,700 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:23:33,701 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:23:42,778 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:23:42,779 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:23:42,780 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:23:42,925 [http-nio-8090-exec-9] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-06 11:23:42,926 [http-nio-8090-exec-9] ==> Parameters: 3(Long), 4(Long)
2018-11-06 11:23:42,928 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-06 11:23:42,928 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid) values(?,?,?,?,?,?,?,?,?) 
2018-11-06 11:23:42,930 [http-nio-8090-exec-9] ==> Parameters: null, null, null, null, null, null, null, null, null
2018-11-06 11:26:07,853 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:07,861 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:07,868 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:07,971 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:07,971 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:07,972 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:26:08,067 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:08,068 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:08,069 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:26:08,077 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:26:08,080 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:26:08,082 [http-nio-8090-exec-10] <==      Total: 2
2018-11-06 11:26:08,083 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:26:08,087 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:26:08,088 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:26:09,483 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:09,484 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:09,486 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:26:10,585 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:10,586 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:10,587 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:26:10,629 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:10,630 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:10,631 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:26:10,637 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:26:10,639 [http-nio-8090-exec-4] ==> Parameters: 4(Long)
2018-11-06 11:26:10,646 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:26:10,657 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:10,658 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:10,659 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:26:10,665 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:26:10,666 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:26:10,670 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:26:19,715 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:19,715 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:19,717 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:19,833 [http-nio-8090-exec-1] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-06 11:26:19,835 [http-nio-8090-exec-1] ==> Parameters: 3(Long), 4(Long)
2018-11-06 11:26:19,836 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-06 11:26:19,837 [http-nio-8090-exec-1] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid) values(?,?,?,?,?,?,?,?,?) 
2018-11-06 11:26:19,839 [http-nio-8090-exec-1] ==> Parameters: 212(String), LteConfig(String), 2018-11-06 11:26:19.832(Timestamp), 4(Long), 10(Long), 479(Long), 配置信息审核(String), 35016(String), 35008(String)
2018-11-06 11:26:19,840 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-06 11:26:19,861 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:19,862 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:19,864 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:26:27,091 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:27,092 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:27,093 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:27,169 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-06 11:26:27,170 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-06 11:26:27,171 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:29,324 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:29,325 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:29,326 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:26:29,407 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:26:29,407 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:26:29,409 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:29,412 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:26:29,413 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-06 11:26:29,414 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:26:29,416 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:26:29,416 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-11-06 11:26:29,418 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:31:43,289 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:43,296 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:43,303 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:31:43,430 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:43,442 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:43,443 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:31:43,617 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:43,617 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:43,618 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:31:43,626 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:31:43,628 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:31:43,630 [http-nio-8090-exec-1] <==      Total: 2
2018-11-06 11:31:43,631 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:31:43,635 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:31:43,636 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:31:45,945 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:45,945 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:45,946 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:31:51,523 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:51,525 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:51,526 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:31:51,608 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:51,609 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:51,611 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:31:51,646 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:31:51,648 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-06 11:31:51,650 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:31:51,652 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:31:51,654 [http-nio-8090-exec-2] ==> Parameters: 10(Integer)
2018-11-06 11:31:51,656 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:31:55,201 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:31:55,202 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:31:55,204 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:31:55,208 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:31:55,209 [http-nio-8090-exec-5] ==> Parameters: 4(Long)
2018-11-06 11:31:55,212 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:32:15,108 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:15,109 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:15,111 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:32:15,115 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:32:15,115 [http-nio-8090-exec-10] ==> Parameters: 4(Long)
2018-11-06 11:32:15,116 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:32:15,127 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:15,127 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:15,129 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:32:15,134 [http-nio-8090-exec-5] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC ) c group by c.id,c.result,c.create_time limit 1 
2018-11-06 11:32:15,138 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:15,456 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:32:15,466 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:15,466 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:15,467 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:32:15,473 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:32:15,475 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:15,477 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:32:24,494 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:24,495 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:24,496 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:32:24,499 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:32:24,501 [http-nio-8090-exec-5] ==> Parameters: 4(Long)
2018-11-06 11:32:24,504 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:32:24,513 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:24,513 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:24,514 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:24,514 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:24,515 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:32:24,515 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:32:24,522 [http-nio-8090-exec-10] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:32:24,522 [http-nio-8090-exec-8] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC ) c group by c.id,c.result,c.create_time limit 1 
2018-11-06 11:32:24,523 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:24,523 [http-nio-8090-exec-10] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:24,524 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:32:24,524 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:32:27,509 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:27,509 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:27,510 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:32:27,512 [http-nio-8090-exec-1] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:32:27,513 [http-nio-8090-exec-1] ==> Parameters: 4(Long)
2018-11-06 11:32:27,515 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:32:27,523 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:27,523 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:27,523 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:32:27,524 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:32:27,524 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:32:27,526 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:32:27,527 [http-nio-8090-exec-3] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC ) c group by c.id,c.result,c.create_time limit 1 
2018-11-06 11:32:27,528 [http-nio-8090-exec-3] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:27,529 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:32:27,533 [http-nio-8090-exec-2] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:32:27,534 [http-nio-8090-exec-2] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:32:27,536 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:37:28,497 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:28,504 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:28,511 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:28,636 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:28,637 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:28,638 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:37:28,820 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:28,820 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:28,821 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:28,828 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:37:28,830 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:37:28,832 [http-nio-8090-exec-1] <==      Total: 2
2018-11-06 11:37:28,834 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:37:28,837 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-06 11:37:28,839 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:31,056 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:31,056 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:31,057 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:31,147 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:31,147 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:31,148 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:31,193 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:37:31,194 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-06 11:37:31,198 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:31,201 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:37:31,202 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-11-06 11:37:31,205 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:37:35,784 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:35,785 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:35,786 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:37:35,791 [http-nio-8090-exec-5] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:37:35,792 [http-nio-8090-exec-5] ==> Parameters: 4(Long)
2018-11-06 11:37:35,795 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:37:35,806 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:35,806 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:35,807 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:37:35,811 [http-nio-8090-exec-6] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC limit 1 ) c group by c.id,c.result,c.create_time 
2018-11-06 11:37:35,818 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:37:35,820 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:37:35,829 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:35,830 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:35,833 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:37:35,837 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:37:35,839 [http-nio-8090-exec-9] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:37:35,840 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:37:50,602 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:50,603 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:50,605 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:37:50,609 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:37:50,610 [http-nio-8090-exec-7] ==> Parameters: 4(Long)
2018-11-06 11:37:50,611 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:37:50,622 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:50,622 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:50,623 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:37:50,626 [http-nio-8090-exec-5] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC limit 1 ) c group by c.id,c.result,c.create_time 
2018-11-06 11:37:50,628 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:37:50,629 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:37:50,638 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:37:50,639 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:37:50,640 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:37:50,643 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:37:50,644 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:37:50,645 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:40:45,794 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:45,801 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:45,809 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:40:45,910 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:45,911 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:45,912 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:40:46,055 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:46,056 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:46,057 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:46,064 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:40:46,067 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 11:40:46,068 [http-nio-8090-exec-2] <==      Total: 2
2018-11-06 11:40:46,070 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:40:46,074 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-06 11:40:46,075 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:51,044 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:51,044 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:51,045 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:51,140 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:51,140 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:51,142 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:51,184 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:40:51,186 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-06 11:40:51,188 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:51,190 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:40:51,192 [http-nio-8090-exec-2] ==> Parameters: 10(Integer)
2018-11-06 11:40:51,194 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:40:56,642 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:56,642 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:56,643 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:40:56,647 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:40:56,650 [http-nio-8090-exec-3] ==> Parameters: 4(Long)
2018-11-06 11:40:56,653 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:40:56,660 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:40:56,661 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:40:56,662 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:40:56,670 [http-nio-8090-exec-7] ==>  Preparing: select c.role_id as "roleId" ,c.role_name as "roleName" ,GROUP_CONCAT(c.user_id_name SEPARATOR ',') as "userList" from ( select r.id as role_id ,r.name as role_name ,concat_ws('_',u.id,u.nickname) as user_id_name from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and p.id=? ) c group by c.role_id,c.role_name 
2018-11-06 11:40:56,674 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-06 11:40:56,707 [http-nio-8090-exec-7] <==      Total: 3
2018-11-06 11:41:16,097 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:41:16,097 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:41:16,098 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:41:16,267 [http-nio-8090-exec-9] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-06 11:41:16,267 [http-nio-8090-exec-9] ==> Parameters: 1(Long), 4(Long)
2018-11-06 11:41:16,268 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-06 11:41:16,269 [http-nio-8090-exec-9] ==>  Preparing: insert into business_activiti_relation(buss_type,create_time,buss_id,proj_id,act_piid,check_persion_id) values(?,?,?,?,?,?) 
2018-11-06 11:41:16,271 [http-nio-8090-exec-9] ==> Parameters: LteConfig(String), 2018-11-06 11:41:16.269(Timestamp), 4(Long), 479(Long), 50001(String), 7,6,10(String)
2018-11-06 11:41:16,272 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-06 11:41:16,291 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:41:16,291 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:41:16,293 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:41:16,298 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:41:16,299 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-06 11:41:16,301 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:41:16,302 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:41:16,303 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-11-06 11:41:16,305 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:42:43,880 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:43,881 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:43,882 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:42:43,885 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:42:43,886 [http-nio-8090-exec-10] ==> Parameters: 4(Long)
2018-11-06 11:42:43,888 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:42:43,901 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:43,901 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:43,902 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:42:43,906 [http-nio-8090-exec-8] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC limit 1 ) c group by c.id,c.result,c.create_time 
2018-11-06 11:42:43,908 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:43,911 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:42:43,920 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:43,920 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:43,922 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:42:43,926 [http-nio-8090-exec-4] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:42:43,928 [http-nio-8090-exec-4] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:43,930 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:42:46,765 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:46,766 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:46,767 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:42:46,769 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:42:46,770 [http-nio-8090-exec-7] ==> Parameters: 4(Long)
2018-11-06 11:42:46,771 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:42:46,779 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:46,779 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:46,780 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:46,780 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:46,781 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:42:46,781 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:42:46,783 [http-nio-8090-exec-9] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:42:46,783 [http-nio-8090-exec-5] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC limit 1 ) c group by c.id,c.result,c.create_time 
2018-11-06 11:42:46,784 [http-nio-8090-exec-9] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:46,785 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:42:46,785 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:46,786 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:42:49,529 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:49,529 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:49,531 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:42:49,535 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:42:49,536 [http-nio-8090-exec-10] ==> Parameters: 4(Long)
2018-11-06 11:42:49,538 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:42:49,546 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:49,547 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:42:49,547 [http-nio-8090-exec-2] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:49,547 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:42:49,548 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:42:49,548 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:42:49,550 [http-nio-8090-exec-6] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:42:49,550 [http-nio-8090-exec-2] ==>  Preparing: select c.id as "id" ,c.result as "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') as "checkname" from ( select r.id as id ,r.check_result as result ,r.create_time as create_time ,u.id as uid ,u.nickname as nickname from business_activiti_relation r ,sys_user u where r.buss_id=? and r.buss_type=? and find_in_set(u.id, r.check_persion_id) order by r.create_time DESC limit 1 ) c group by c.id,c.result,c.create_time 
2018-11-06 11:42:49,551 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:49,551 [http-nio-8090-exec-2] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:42:49,551 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:42:49,551 [http-nio-8090-exec-2] <==      Total: 1
2018-11-06 11:50:21,763 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:21,770 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:21,778 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:21,827 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-06 11:50:21,828 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:50:21,830 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:21,863 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:50:21,869 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:50:21,870 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:21,873 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-06 11:50:21,875 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-06 11:50:21,884 [http-nio-8090-exec-10] <==      Total: 36
2018-11-06 11:50:21,886 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:21,886 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:21,887 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:21,903 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-06 11:50:21,907 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1541483421885,"id":10,"loginTime":1541476221885,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"de1dd146-bb69-48cb-8203-4c5bf6a5e092","username":"wuzhihua"}(String), 2018-11-06 13:50:21.885(Timestamp), 2018-11-06 11:50:21.888(Timestamp), de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:21,912 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-06 11:50:21,972 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:21,973 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:21,974 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:50:22,082 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:22,082 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:22,084 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:22,090 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-06 11:50:22,091 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:50:22,092 [http-nio-8090-exec-10] <==      Total: 2
2018-11-06 11:50:22,093 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-06 11:50:22,094 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-06 11:50:22,095 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:24,157 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:24,157 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:24,160 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:50:24,255 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:24,255 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:24,257 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:24,303 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:50:24,304 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-06 11:50:24,305 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:24,307 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:50:24,308 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-06 11:50:24,309 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:25,979 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:25,980 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:25,981 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:50:25,985 [http-nio-8090-exec-3] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:50:25,986 [http-nio-8090-exec-3] ==> Parameters: 4(Long)
2018-11-06 11:50:25,988 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:50:26,000 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:26,001 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:26,002 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:50:26,007 [http-nio-8090-exec-6] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-06 11:50:26,014 [http-nio-8090-exec-6] ==> Parameters: 4(Long), LteConfig(String), 4(Long), LteConfig(String)
2018-11-06 11:50:26,016 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:50:26,024 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:26,025 [http-nio-8090-exec-5] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:26,026 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:50:26,033 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:50:26,035 [http-nio-8090-exec-5] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:50:26,036 [http-nio-8090-exec-5] <==      Total: 1
2018-11-06 11:50:37,442 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:37,443 [http-nio-8090-exec-3] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:37,444 [http-nio-8090-exec-3] <==      Total: 1
2018-11-06 11:50:38,853 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:38,854 [http-nio-8090-exec-9] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:38,855 [http-nio-8090-exec-9] <==      Total: 1
2018-11-06 11:50:38,895 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:38,895 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:38,896 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:50:38,899 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:50:38,901 [http-nio-8090-exec-8] ==> Parameters: 4(Long)
2018-11-06 11:50:38,903 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:50:38,912 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:38,912 [http-nio-8090-exec-7] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:38,914 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:50:38,917 [http-nio-8090-exec-7] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:50:38,918 [http-nio-8090-exec-7] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:50:38,919 [http-nio-8090-exec-7] <==      Total: 1
2018-11-06 11:50:45,953 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:45,954 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:45,955 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:46,050 [http-nio-8090-exec-10] ==>  Preparing: update lte_config set status=? where id=? 
2018-11-06 11:50:46,051 [http-nio-8090-exec-10] ==> Parameters: 2(Long), 4(Long)
2018-11-06 11:50:46,052 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-06 11:50:46,053 [http-nio-8090-exec-10] ==>  Preparing: insert into business_activiti_relation(check_result,buss_type,create_time,buss_id,check_persion_id,proj_id,act_task_name,act_task_key,act_piid) values(?,?,?,?,?,?,?,?,?) 
2018-11-06 11:50:46,053 [http-nio-8090-exec-10] ==> Parameters: 1111(String), LteConfig(String), 2018-11-06 11:50:46.049(Timestamp), 4(Long), 10(Long), 479(Long), 配置信息审核(String), 50009(String), 50001(String)
2018-11-06 11:50:46,054 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-06 11:50:46,071 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:46,071 [http-nio-8090-exec-6] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:46,072 [http-nio-8090-exec-6] <==      Total: 1
2018-11-06 11:50:49,475 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:49,475 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:49,477 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:49,490 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-06 11:50:49,491 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-06 11:50:49,495 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:57,901 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:57,902 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:57,903 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:57,979 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:50:57,979 [http-nio-8090-exec-10] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:50:57,980 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:57,984 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-06 11:50:57,985 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-06 11:50:57,986 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:50:57,987 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-06 11:50:57,988 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-06 11:50:57,989 [http-nio-8090-exec-10] <==      Total: 1
2018-11-06 11:51:02,000 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:51:02,000 [http-nio-8090-exec-4] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:51:02,001 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:51:02,004 [http-nio-8090-exec-4] ==>  Preparing: select * from lte_config where id=? 
2018-11-06 11:51:02,004 [http-nio-8090-exec-4] ==> Parameters: 4(Long)
2018-11-06 11:51:02,005 [http-nio-8090-exec-4] <==      Total: 1
2018-11-06 11:51:02,015 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:51:02,015 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-06 11:51:02,015 [http-nio-8090-exec-1] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:51:02,015 [http-nio-8090-exec-8] ==> Parameters: de1dd146-bb69-48cb-8203-4c5bf6a5e092(String)
2018-11-06 11:51:02,016 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:51:02,016 [http-nio-8090-exec-1] <==      Total: 1
2018-11-06 11:51:02,018 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-06 11:51:02,018 [http-nio-8090-exec-1] ==>  Preparing: SELECT c.id AS "id" ,c.result AS "result" ,GROUP_CONCAT(c.nickname SEPARATOR ',') AS "checkname" FROM ( SELECT r.id AS id ,r.check_result AS result ,r.create_time AS create_time ,u.id AS uid ,u.nickname AS nickname FROM business_activiti_relation r ,sys_user u WHERE r.buss_id=? and r.buss_type=? AND FIND_IN_SET(u.id, r.check_persion_id) AND r.create_time =(SELECT MAX(create_time) FROM business_activiti_relation WHERE buss_id=? AND buss_type=?) ) c GROUP BY c.id,c.result,c.create_time 
2018-11-06 11:51:02,019 [http-nio-8090-exec-8] ==> Parameters: 4(Long), LteConfig(String)
2018-11-06 11:51:02,019 [http-nio-8090-exec-1] ==> Parameters: 4(Long), LteConfig(String), 4(Long), LteConfig(String)
2018-11-06 11:51:02,020 [http-nio-8090-exec-8] <==      Total: 1
2018-11-06 11:51:02,021 [http-nio-8090-exec-1] <==      Total: 1
