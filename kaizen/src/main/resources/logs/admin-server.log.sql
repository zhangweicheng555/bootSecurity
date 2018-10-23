2018-10-23 16:07:48,544 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:07:48,551 [http-nio-8090-exec-2] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:07:48,559 [http-nio-8090-exec-2] <==      Total: 1
2018-10-23 16:07:48,688 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:07:48,688 [http-nio-8090-exec-1] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:07:48,689 [http-nio-8090-exec-1] <==      Total: 1
2018-10-23 16:07:49,874 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:07:49,880 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:07:49,881 [http-nio-8090-exec-4] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:07:49,881 [http-nio-8090-exec-9] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:07:49,882 [http-nio-8090-exec-4] <==      Total: 1
2018-10-23 16:07:49,882 [http-nio-8090-exec-9] <==      Total: 1
2018-10-23 16:07:49,957 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-23 16:07:49,961 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-23 16:07:49,963 [http-nio-8090-exec-4] <==      Total: 1
2018-10-23 16:07:49,964 [http-nio-8090-exec-4] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-23 16:07:49,965 [http-nio-8090-exec-4] ==> Parameters: 3(Integer)
2018-10-23 16:07:49,967 [http-nio-8090-exec-4] <==      Total: 2
2018-10-23 16:09:49,625 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:09:49,635 [http-nio-8090-exec-2] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:09:49,644 [http-nio-8090-exec-2] <==      Total: 1
2018-10-23 16:09:49,771 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:09:49,772 [http-nio-8090-exec-3] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:09:49,774 [http-nio-8090-exec-3] <==      Total: 1
2018-10-23 16:09:50,930 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:09:50,930 [http-nio-8090-exec-6] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:09:50,931 [http-nio-8090-exec-6] <==      Total: 1
2018-10-23 16:09:50,934 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:09:50,935 [http-nio-8090-exec-1] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:09:50,936 [http-nio-8090-exec-1] <==      Total: 1
2018-10-23 16:09:50,998 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-23 16:09:51,001 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-23 16:09:51,002 [http-nio-8090-exec-6] <==      Total: 1
2018-10-23 16:09:51,004 [http-nio-8090-exec-6] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-23 16:09:51,007 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-10-23 16:09:51,009 [http-nio-8090-exec-6] <==      Total: 2
2018-10-23 16:32:28,929 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:28,936 [http-nio-8090-exec-9] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:32:28,945 [http-nio-8090-exec-9] <==      Total: 1
2018-10-23 16:32:29,012 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:29,013 [http-nio-8090-exec-10] ==> Parameters: e2be4b3f-988e-4834-b007-f55595f74e64(String)
2018-10-23 16:32:29,014 [http-nio-8090-exec-10] <==      Total: 1
2018-10-23 16:32:33,240 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-23 16:32:33,251 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-23 16:32:33,253 [http-nio-8090-exec-10] <==      Total: 1
2018-10-23 16:32:33,253 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2018-10-23 16:32:33,253 [http-nio-8090-exec-10] ==> Parameters: 1(Long)
2018-10-23 16:32:33,268 [http-nio-8090-exec-10] <==      Total: 16
2018-10-23 16:32:33,362 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-23 16:32:33,362 [http-nio-8090-exec-10] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540290753347,"id":1,"loginTime":1540283553347,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1}],"phone":"","sex":0,"status":1,"telephone":"","token":"ad42ddb0-3713-4a3d-a925-a115ab939149","updateTime":1499304019000,"username":"admin"}(String), 2018-10-23 18:32:33.347(Timestamp), 2018-10-23 16:32:33.347(Timestamp), 2018-10-23 16:32:33.347(Timestamp)
2018-10-23 16:32:33,378 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-23 16:32:33,498 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:33,498 [http-nio-8090-exec-3] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 16:32:33,499 [http-nio-8090-exec-3] <==      Total: 1
2018-10-23 16:32:33,558 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:33,558 [http-nio-8090-exec-2] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 16:32:33,559 [http-nio-8090-exec-2] <==      Total: 1
2018-10-23 16:32:34,790 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:34,791 [http-nio-8090-exec-6] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 16:32:34,793 [http-nio-8090-exec-6] <==      Total: 1
2018-10-23 16:32:34,796 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 16:32:34,797 [http-nio-8090-exec-5] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 16:32:34,798 [http-nio-8090-exec-5] <==      Total: 1
2018-10-23 16:32:34,862 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-23 16:32:34,866 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-23 16:32:34,867 [http-nio-8090-exec-6] <==      Total: 1
2018-10-23 16:32:34,868 [http-nio-8090-exec-6] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-23 16:32:34,870 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-10-23 16:32:34,871 [http-nio-8090-exec-6] <==      Total: 2
2018-10-23 20:33:28,135 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 20:33:28,150 [http-nio-8090-exec-6] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 20:33:28,157 [http-nio-8090-exec-6] <==      Total: 1
2018-10-23 20:33:28,219 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 20:33:28,219 [http-nio-8090-exec-1] ==> Parameters: ad42ddb0-3713-4a3d-a925-a115ab939149(String)
2018-10-23 20:33:28,220 [http-nio-8090-exec-1] <==      Total: 1
2018-10-23 20:45:00,183 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 20:45:00,186 [http-nio-8090-exec-9] ==> Parameters: 25e8590f-cd6f-4c9b-9591-a14c8226c060(String)
2018-10-23 20:45:00,186 [http-nio-8090-exec-9] <==      Total: 0
2018-10-23 20:45:00,202 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-23 20:45:00,202 [http-nio-8090-exec-6] ==> Parameters: 25e8590f-cd6f-4c9b-9591-a14c8226c060(String)
2018-10-23 20:45:00,202 [http-nio-8090-exec-6] <==      Total: 0
