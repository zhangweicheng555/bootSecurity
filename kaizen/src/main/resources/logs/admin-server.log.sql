2018-11-01 12:21:18,857 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 12:21:18,888 [http-nio-8090-exec-1] ==> Parameters: 309a0c41-bd8a-4053-aebc-c1bba7f76274(String)
2018-11-01 12:21:18,897 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 12:21:18,969 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 12:21:18,970 [http-nio-8090-exec-2] ==> Parameters: 309a0c41-bd8a-4053-aebc-c1bba7f76274(String)
2018-11-01 12:21:18,971 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 12:21:26,661 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-01 12:21:26,663 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-01 12:21:26,664 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 12:21:26,675 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 12:21:26,678 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-11-01 12:21:26,680 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 12:21:26,686 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-01 12:21:26,689 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long)
2018-11-01 12:21:26,696 [http-nio-8090-exec-4] <==      Total: 29
2018-11-01 12:21:34,709 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-01 12:21:34,710 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 12:21:34,711 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 12:21:34,712 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 12:21:34,713 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 12:21:34,715 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 12:21:34,716 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-01 12:21:34,718 [http-nio-8090-exec-6] ==> Parameters: admin(String), 9(Long)
2018-11-01 12:21:34,723 [http-nio-8090-exec-6] <==      Total: 29
2018-11-01 12:21:34,824 [http-nio-8090-exec-6] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-01 12:21:34,824 [http-nio-8090-exec-6] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541053294809,"id":1,"loginTime":1541046094809,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"c02b54ad-f978-448d-8276-2b551e772eb4","updateTime":1499304019000,"username":"admin"}(String), 2018-11-01 14:21:34.809(Timestamp), 2018-11-01 12:21:34.809(Timestamp), 2018-11-01 12:21:34.809(Timestamp)
2018-11-01 12:21:34,824 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-01 13:51:11,260 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:11,270 [http-nio-8090-exec-3] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String)
2018-11-01 13:51:11,279 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 13:51:11,467 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:11,468 [http-nio-8090-exec-1] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String)
2018-11-01 13:51:11,469 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 13:51:11,724 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:11,725 [http-nio-8090-exec-2] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String)
2018-11-01 13:51:11,726 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 13:51:11,733 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 13:51:11,736 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 13:51:11,737 [http-nio-8090-exec-2] <==      Total: 2
2018-11-01 13:51:11,739 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 13:51:11,742 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 13:51:11,745 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 13:51:15,631 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:15,632 [http-nio-8090-exec-7] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String)
2018-11-01 13:51:15,633 [http-nio-8090-exec-7] <==      Total: 1
2018-11-01 13:51:15,635 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-11-01 13:51:15,637 [http-nio-8090-exec-7] ==> Parameters: c02b54ad-f978-448d-8276-2b551e772eb4(String)
2018-11-01 13:51:15,644 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-01 13:51:19,851 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-01 13:51:19,853 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 13:51:19,854 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 13:51:19,854 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 13:51:19,854 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 13:51:19,854 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 13:51:19,854 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-01 13:51:19,869 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-11-01 13:51:19,869 [http-nio-8090-exec-10] <==      Total: 29
2018-11-01 13:51:19,963 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-01 13:51:19,979 [http-nio-8090-exec-10] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541058679963,"id":1,"loginTime":1541051479963,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"53bdb8ff-936c-45c9-b0e0-6f89901e3d75","updateTime":1499304019000,"username":"admin"}(String), 2018-11-01 15:51:19.963(Timestamp), 2018-11-01 13:51:19.963(Timestamp), 2018-11-01 13:51:19.963(Timestamp)
2018-11-01 13:51:19,979 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-01 13:51:20,151 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:20,152 [http-nio-8090-exec-10] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:51:20,154 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 13:51:20,174 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:20,175 [http-nio-8090-exec-5] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:51:20,176 [http-nio-8090-exec-5] <==      Total: 1
2018-11-01 13:51:20,293 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:20,295 [http-nio-8090-exec-3] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:51:20,296 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 13:51:20,300 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 13:51:20,303 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-01 13:51:20,304 [http-nio-8090-exec-3] <==      Total: 2
2018-11-01 13:51:20,306 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 13:51:20,308 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-01 13:51:20,309 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 13:51:25,549 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:25,551 [http-nio-8090-exec-1] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:51:25,554 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 13:51:25,575 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:51:25,576 [http-nio-8090-exec-4] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:51:25,579 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 13:51:25,588 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 13:51:25,589 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-01 13:51:25,592 [http-nio-8090-exec-4] <==      Total: 33
2018-11-01 13:52:04,161 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:52:04,162 [http-nio-8090-exec-7] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:52:04,163 [http-nio-8090-exec-7] <==      Total: 1
2018-11-01 13:52:04,166 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-01 13:52:04,167 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-01 13:52:04,170 [http-nio-8090-exec-7] <==      Total: 13
2018-11-01 13:52:04,182 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:52:04,183 [http-nio-8090-exec-8] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:52:04,184 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 13:52:04,192 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-01 13:52:04,193 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-11-01 13:52:04,197 [http-nio-8090-exec-8] <==      Total: 2
2018-11-01 13:52:04,207 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:52:04,208 [http-nio-8090-exec-10] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:52:04,210 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 13:52:04,215 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-11-01 13:52:04,216 [http-nio-8090-exec-10] ==> Parameters: 71(Long)
2018-11-01 13:52:04,219 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 13:53:19,895 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 13:53:19,895 [http-nio-8090-exec-7] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:53:19,897 [http-nio-8090-exec-7] <==      Total: 1
2018-11-01 13:53:19,898 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-11-01 13:53:19,899 [http-nio-8090-exec-7] ==> Parameters: 53bdb8ff-936c-45c9-b0e0-6f89901e3d75(String)
2018-11-01 13:53:19,905 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-01 13:53:26,042 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-01 13:53:26,042 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 13:53:26,044 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 13:53:26,045 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 13:53:26,045 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 13:53:26,046 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 13:53:26,047 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-01 13:53:26,048 [http-nio-8090-exec-2] ==> Parameters: admin(String), 9(Long)
2018-11-01 13:53:26,050 [http-nio-8090-exec-2] <==      Total: 29
2018-11-01 13:53:26,142 [http-nio-8090-exec-2] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-01 13:53:26,142 [http-nio-8090-exec-2] ==> Parameters: b8eb2f7d-1928-4027-a51b-994a928cc480(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541058806126,"id":1,"loginTime":1541051606126,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"b8eb2f7d-1928-4027-a51b-994a928cc480","updateTime":1499304019000,"username":"admin"}(String), 2018-11-01 15:53:26.126(Timestamp), 2018-11-01 13:53:26.126(Timestamp), 2018-11-01 13:53:26.126(Timestamp)
2018-11-01 13:53:26,142 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-01 16:27:37,417 [pool-2-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:36:42,467 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:42,479 [http-nio-8090-exec-4] ==> Parameters: b8eb2f7d-1928-4027-a51b-994a928cc480(String)
2018-11-01 17:36:42,494 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 17:36:42,611 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:42,611 [http-nio-8090-exec-5] ==> Parameters: b8eb2f7d-1928-4027-a51b-994a928cc480(String)
2018-11-01 17:36:42,612 [http-nio-8090-exec-5] <==      Total: 1
2018-11-01 17:36:49,850 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-01 17:36:49,855 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 17:36:50,001 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:36:50,012 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:36:50,014 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 17:36:50,016 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:36:50,019 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-01 17:36:50,023 [http-nio-8090-exec-6] ==> Parameters: admin(String), 9(Long)
2018-11-01 17:36:50,029 [http-nio-8090-exec-6] <==      Total: 29
2018-11-01 17:36:50,129 [http-nio-8090-exec-6] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-01 17:36:50,413 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:menu:list"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1541072210121,"id":1,"loginTime":1541065010121,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"fe36594c-c2d2-45c6-bc77-c7e8fdd3b165","updateTime":1499304019000,"username":"admin"}(String), 2018-11-01 19:36:50.121(Timestamp), 2018-11-01 17:36:50.121(Timestamp), 2018-11-01 17:36:50.121(Timestamp)
2018-11-01 17:36:50,429 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-01 17:36:50,524 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:50,525 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:36:50,527 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:36:50,581 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:50,581 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:36:50,582 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 17:36:50,718 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:50,718 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:36:50,720 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:36:50,726 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 17:36:50,728 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 17:36:50,729 [http-nio-8090-exec-6] <==      Total: 2
2018-11-01 17:36:50,730 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:36:50,730 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-11-01 17:36:50,731 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:36:59,341 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:59,342 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:36:59,343 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:36:59,350 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:36:59,352 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:36:59,354 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:37:13,910 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:37:13,911 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:37:13,912 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 17:48:42,044 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:42,055 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:42,066 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:48:42,207 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:42,207 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:42,209 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 17:48:42,393 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:42,393 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:42,395 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:48:42,401 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 17:48:42,404 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-01 17:48:42,405 [http-nio-8090-exec-1] <==      Total: 2
2018-11-01 17:48:42,407 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:48:42,409 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-01 17:48:42,411 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:48:48,351 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:48,352 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:48,355 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 17:48:48,367 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:48,367 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:48,368 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 17:48:48,375 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-01 17:48:48,376 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-01 17:48:48,385 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 17:48:48,387 [http-nio-8090-exec-8] ====> Parameters: 9(Integer)
2018-11-01 17:48:48,390 [http-nio-8090-exec-8] <====      Total: 1
2018-11-01 17:48:48,391 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 17:48:48,392 [http-nio-8090-exec-8] ====> Parameters: 54(Integer)
2018-11-01 17:48:48,393 [http-nio-8090-exec-8] <====      Total: 1
2018-11-01 17:48:48,393 [http-nio-8090-exec-8] <==      Total: 2
2018-11-01 17:48:50,162 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:50,163 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:50,164 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 17:48:50,167 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:48:50,168 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:48:50,169 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 17:48:50,188 [pool-2-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:48:50,189 [pool-2-thread-2] ==> Parameters: 
2018-11-01 17:48:50,191 [pool-2-thread-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:48:50,192 [pool-2-thread-1] ==> Parameters: 
2018-11-01 17:48:50,195 [pool-2-thread-2] <==      Total: 33
2018-11-01 17:48:50,198 [pool-2-thread-1] <==      Total: 33
2018-11-01 17:51:30,597 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:30,605 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:30,615 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 17:51:30,744 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:30,744 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:30,745 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:51:30,837 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:30,837 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:30,839 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 17:51:30,847 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 17:51:30,849 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 17:51:30,851 [http-nio-8090-exec-10] <==      Total: 2
2018-11-01 17:51:30,852 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:51:30,855 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 17:51:30,856 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 17:51:31,620 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:31,620 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:31,622 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:51:31,640 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:31,640 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:31,641 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 17:51:31,703 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:31,704 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:31,706 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:51:31,709 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 17:51:31,710 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-01 17:51:31,712 [http-nio-8090-exec-1] <==      Total: 2
2018-11-01 17:51:31,713 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:51:31,714 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-11-01 17:51:31,715 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 17:51:33,168 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:33,168 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:33,170 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:51:33,173 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:51:33,173 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:51:33,174 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 17:51:48,872 [pool-2-thread-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:51:48,887 [pool-2-thread-1] ==> Parameters: 
2018-11-01 17:51:49,137 [pool-2-thread-1] <==      Total: 33
2018-11-01 17:52:52,636 [pool-2-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:52:52,656 [pool-2-thread-2] ==> Parameters: 
2018-11-01 17:52:52,782 [pool-2-thread-2] <==      Total: 33
2018-11-01 17:53:46,910 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:53:46,910 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:53:46,912 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 17:53:46,920 [pool-3-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:53:46,920 [pool-3-thread-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:53:46,921 [pool-3-thread-1] ==> Parameters: 
2018-11-01 17:53:46,921 [pool-3-thread-2] ==> Parameters: 
2018-11-01 17:53:46,922 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:53:46,923 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:53:46,924 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 17:53:46,927 [pool-3-thread-1] <==      Total: 33
2018-11-01 17:53:46,927 [pool-3-thread-2] <==      Total: 33
2018-11-01 17:56:01,102 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM t_token t WHERE t.id = ? 
2018-11-01 17:56:01,102 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM t_token t WHERE t.id = ? 
2018-11-01 17:56:01,104 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:56:01,104 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:56:01,105 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 17:56:01,105 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:56:01,107 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? LIMIT ? 
2018-11-01 17:56:01,107 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? LIMIT ? 
2018-11-01 17:56:01,108 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String), 3(Integer)
2018-11-01 17:56:01,108 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String), 3(Integer)
2018-11-01 17:56:01,110 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 17:56:01,110 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:56:01,115 [pool-4-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:56:01,115 [pool-4-thread-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:56:01,115 [pool-4-thread-2] ==> Parameters: 
2018-11-01 17:56:01,116 [pool-4-thread-1] ==> Parameters: 
2018-11-01 17:56:01,119 [pool-4-thread-1] <==      Total: 33
2018-11-01 17:56:01,119 [pool-4-thread-2] <==      Total: 33
2018-11-01 17:58:23,574 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:58:23,582 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:58:23,590 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:58:23,703 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:58:23,704 [http-nio-8090-exec-4] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:58:23,705 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 17:58:23,837 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:58:23,838 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:58:23,839 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:58:23,847 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 17:58:23,850 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-01 17:58:23,851 [http-nio-8090-exec-9] <==      Total: 2
2018-11-01 17:58:23,853 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 17:58:23,859 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-01 17:58:23,861 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:58:30,923 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:58:30,923 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:58:30,924 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 17:58:30,932 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 17:58:30,932 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 17:58:30,934 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 17:58:30,954 [pool-2-thread-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:58:30,955 [pool-2-thread-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 17:58:30,956 [pool-2-thread-1] ==> Parameters: 
2018-11-01 17:58:30,956 [pool-2-thread-2] ==> Parameters: 
2018-11-01 17:58:30,962 [pool-2-thread-2] <==      Total: 33
2018-11-01 17:58:30,962 [pool-2-thread-1] <==      Total: 33
2018-11-01 18:04:21,574 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:21,581 [http-nio-8090-exec-4] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:21,588 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 18:04:21,671 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:21,672 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:21,673 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:21,683 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-01 18:04:21,685 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-01 18:04:21,688 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:21,691 [http-nio-8090-exec-2] ====> Parameters: 9(Integer)
2018-11-01 18:04:21,692 [http-nio-8090-exec-2] <====      Total: 1
2018-11-01 18:04:21,693 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:21,694 [http-nio-8090-exec-2] ====> Parameters: 54(Integer)
2018-11-01 18:04:21,695 [http-nio-8090-exec-2] <====      Total: 1
2018-11-01 18:04:21,696 [http-nio-8090-exec-2] <==      Total: 2
2018-11-01 18:04:22,475 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:22,476 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:22,477 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:04:22,546 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-01 18:04:22,551 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-01 18:04:22,553 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:04:22,554 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-01 18:04:22,556 [http-nio-8090-exec-1] ==> Parameters: 3(Integer)
2018-11-01 18:04:22,559 [http-nio-8090-exec-1] <==      Total: 2
2018-11-01 18:04:28,594 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:28,594 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:28,595 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 18:04:28,598 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_project sp order by sp.sort 
2018-11-01 18:04:28,599 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-01 18:04:28,602 [http-nio-8090-exec-3] <==      Total: 2
2018-11-01 18:04:28,610 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:28,610 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:28,611 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:28,618 [http-nio-8090-exec-2] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-01 18:04:28,620 [http-nio-8090-exec-2] ==> Parameters: null
2018-11-01 18:04:28,629 [http-nio-8090-exec-2] <==      Total: 0
2018-11-01 18:04:28,632 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 18:04:28,635 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-01 18:04:28,640 [http-nio-8090-exec-2] <==      Total: 33
2018-11-01 18:04:39,637 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:39,637 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:39,639 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 18:04:39,650 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:39,650 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:39,651 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:04:39,654 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-01 18:04:39,655 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-01 18:04:39,657 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:39,657 [http-nio-8090-exec-1] ====> Parameters: 9(Integer)
2018-11-01 18:04:39,658 [http-nio-8090-exec-1] <====      Total: 1
2018-11-01 18:04:39,660 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:39,661 [http-nio-8090-exec-1] ====> Parameters: 54(Integer)
2018-11-01 18:04:39,662 [http-nio-8090-exec-1] <====      Total: 1
2018-11-01 18:04:39,662 [http-nio-8090-exec-1] <==      Total: 2
2018-11-01 18:04:41,995 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:41,996 [http-nio-8090-exec-4] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:41,997 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 18:04:42,000 [http-nio-8090-exec-4] ==>  Preparing: select sr.id,sr.name,sr.description ,sr.createTime,sr.updateTime ,sr.sort ,sp.id as projId from sys_role sr ,proj_role_relation prr ,sys_project sp where 1=1 and sr.id=prr.role_id and prr.proj_id=sp.id and sr.id=? order by sr.sort 
2018-11-01 18:04:42,002 [http-nio-8090-exec-4] ==> Parameters: 17(Long)
2018-11-01 18:04:42,004 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 18:04:42,013 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:42,013 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:42,014 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 18:04:42,017 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_project sp order by sp.sort 
2018-11-01 18:04:42,017 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-01 18:04:42,018 [http-nio-8090-exec-8] <==      Total: 2
2018-11-01 18:04:42,026 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:42,027 [http-nio-8090-exec-7] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:42,028 [http-nio-8090-exec-7] <==      Total: 1
2018-11-01 18:04:42,030 [http-nio-8090-exec-7] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-01 18:04:42,031 [http-nio-8090-exec-7] ==> Parameters: 17(Long)
2018-11-01 18:04:42,034 [http-nio-8090-exec-7] <==      Total: 4
2018-11-01 18:04:42,034 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-01 18:04:42,035 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-01 18:04:42,039 [http-nio-8090-exec-7] <==      Total: 33
2018-11-01 18:04:44,025 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:44,026 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:44,026 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 18:04:44,036 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:44,037 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:44,038 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 18:04:44,040 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-01 18:04:44,041 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-01 18:04:44,042 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:44,042 [http-nio-8090-exec-6] ====> Parameters: 9(Integer)
2018-11-01 18:04:44,043 [http-nio-8090-exec-6] <====      Total: 1
2018-11-01 18:04:44,044 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-01 18:04:44,044 [http-nio-8090-exec-6] ====> Parameters: 54(Integer)
2018-11-01 18:04:44,045 [http-nio-8090-exec-6] <====      Total: 1
2018-11-01 18:04:44,046 [http-nio-8090-exec-6] <==      Total: 2
2018-11-01 18:04:52,579 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:52,579 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:52,580 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 18:04:52,602 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:52,603 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:52,604 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:52,689 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:52,690 [http-nio-8090-exec-3] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:52,692 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 18:04:52,695 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 18:04:52,697 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-01 18:04:52,698 [http-nio-8090-exec-3] <==      Total: 2
2018-11-01 18:04:52,699 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 18:04:52,700 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-11-01 18:04:52,700 [http-nio-8090-exec-3] <==      Total: 1
2018-11-01 18:04:53,271 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:53,272 [http-nio-8090-exec-4] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:53,274 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 18:04:53,288 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:53,289 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:53,290 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 18:04:53,344 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:53,344 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:53,345 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:53,347 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 18:04:53,348 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 18:04:53,349 [http-nio-8090-exec-2] <==      Total: 2
2018-11-01 18:04:53,350 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 18:04:53,351 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-11-01 18:04:53,351 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:54,241 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:54,242 [http-nio-8090-exec-2] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:54,244 [http-nio-8090-exec-2] <==      Total: 1
2018-11-01 18:04:54,247 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:04:54,248 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:04:54,249 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:05:54,067 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:05:54,075 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:05:54,083 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 18:05:54,205 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:05:54,206 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:05:54,207 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:05:54,332 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:05:54,334 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:05:54,336 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:05:54,346 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 18:05:54,354 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-01 18:05:54,356 [http-nio-8090-exec-9] <==      Total: 2
2018-11-01 18:05:54,360 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 18:05:54,362 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-11-01 18:05:54,363 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:05:55,344 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:05:55,344 [http-nio-8090-exec-8] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:05:55,346 [http-nio-8090-exec-8] <==      Total: 1
2018-11-01 18:05:55,357 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:05:55,358 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:05:55,360 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:01,956 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:01,964 [http-nio-8090-exec-1] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:01,971 [http-nio-8090-exec-1] <==      Total: 1
2018-11-01 18:18:02,073 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:02,074 [http-nio-8090-exec-4] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:02,075 [http-nio-8090-exec-4] <==      Total: 1
2018-11-01 18:18:02,175 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:02,175 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:02,176 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 18:18:02,182 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-01 18:18:02,185 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 18:18:02,187 [http-nio-8090-exec-10] <==      Total: 2
2018-11-01 18:18:02,189 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-11-01 18:18:02,191 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-11-01 18:18:02,192 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 18:18:03,277 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:03,277 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:03,278 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:03,287 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:03,288 [http-nio-8090-exec-10] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:03,289 [http-nio-8090-exec-10] <==      Total: 1
2018-11-01 18:18:03,345 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-11-01 18:18:03,346 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-01 18:18:03,353 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:03,355 [http-nio-8090-exec-9] ==>  Preparing: select su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-11-01 18:18:03,356 [http-nio-8090-exec-9] ==> Parameters: 3(Integer)
2018-11-01 18:18:03,359 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:16,750 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:16,752 [http-nio-8090-exec-7] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:16,752 [http-nio-8090-exec-7] <==      Total: 1
2018-11-01 18:18:16,756 [http-nio-8090-exec-7] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-01 18:18:16,757 [http-nio-8090-exec-7] ==> Parameters: sex(String)
2018-11-01 18:18:16,769 [http-nio-8090-exec-7] <==      Total: 2
2018-11-01 18:18:16,783 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:16,784 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:16,786 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:16,791 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.id = ? 
2018-11-01 18:18:16,795 [http-nio-8090-exec-9] ==> Parameters: 1(Long)
2018-11-01 18:18:16,797 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:18,223 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:18,224 [http-nio-8090-exec-9] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:18,225 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:18,230 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-11-01 18:18:18,231 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-01 18:18:18,232 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:18:18,232 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:18:18,233 [http-nio-8090-exec-9] ==>  Preparing: select su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-11-01 18:18:18,233 [http-nio-8090-exec-6] ==> Parameters: fe36594c-c2d2-45c6-bc77-c7e8fdd3b165(String)
2018-11-01 18:18:18,234 [http-nio-8090-exec-9] ==> Parameters: 3(Integer)
2018-11-01 18:18:18,235 [http-nio-8090-exec-6] <==      Total: 1
2018-11-01 18:18:18,236 [http-nio-8090-exec-9] <==      Total: 1
2018-11-01 18:31:11,498 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-01 18:31:11,504 [http-nio-8090-exec-3] ==> Parameters: 309a0c41-bd8a-4053-aebc-c1bba7f76274(String)
2018-11-01 18:31:11,512 [http-nio-8090-exec-3] <==      Total: 1
