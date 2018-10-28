2018-10-28 00:05:43,330 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:43,349 [http-nio-8090-exec-10] ==> Parameters: f6316497-0945-41e7-a40d-d958c2d7ef99(String)
2018-10-28 00:05:43,349 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:05:43,458 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:43,458 [http-nio-8090-exec-2] ==> Parameters: f6316497-0945-41e7-a40d-d958c2d7ef99(String)
2018-10-28 00:05:43,458 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 00:05:43,552 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:43,552 [http-nio-8090-exec-8] ==> Parameters: f6316497-0945-41e7-a40d-d958c2d7ef99(String)
2018-10-28 00:05:43,552 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:05:43,567 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:05:43,567 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 00:05:43,583 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 00:05:43,583 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:05:43,583 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 00:05:43,583 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:05:46,723 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:46,739 [http-nio-8090-exec-9] ==> Parameters: f6316497-0945-41e7-a40d-d958c2d7ef99(String)
2018-10-28 00:05:46,741 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 00:05:46,756 [http-nio-8090-exec-9] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 00:05:46,756 [http-nio-8090-exec-9] ==> Parameters: f6316497-0945-41e7-a40d-d958c2d7ef99(String)
2018-10-28 00:05:46,756 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 00:05:50,818 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 00:05:50,829 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.id=? and p.id=? 
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] ==> Parameters: 1(Long), 54(Long)
2018-10-28 00:05:50,831 [http-nio-8090-exec-5] <==      Total: 4
2018-10-28 00:05:50,925 [http-nio-8090-exec-5] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 00:05:50,941 [http-nio-8090-exec-5] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540663550925,"id":1,"loginTime":1540656350925,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"fe5b0902-6db5-439d-a29a-9eb11c48fa96","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 02:05:50.925(Timestamp), 2018-10-28 00:05:50.925(Timestamp), 2018-10-28 00:05:50.925(Timestamp)
2018-10-28 00:05:50,941 [http-nio-8090-exec-5] <==    Updates: 1
2018-10-28 00:05:51,066 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:51,066 [http-nio-8090-exec-5] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:05:51,066 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:05:51,097 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:51,097 [http-nio-8090-exec-8] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:05:51,097 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:05:51,191 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:05:51,191 [http-nio-8090-exec-4] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:05:51,191 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:05:51,191 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:05:51,206 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 00:05:51,206 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 00:05:51,206 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:05:51,206 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 00:05:51,206 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:07:00,222 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:07:00,233 [http-nio-8090-exec-10] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:07:00,233 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:07:00,374 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:07:00,374 [http-nio-8090-exec-4] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:07:00,374 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:07:00,483 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:07:00,483 [http-nio-8090-exec-9] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:07:00,483 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 00:07:08,075 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:07:08,150 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 00:07:08,197 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 00:07:41,864 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:07:41,913 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 00:07:41,944 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 00:08:18,623 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:08:18,638 [http-nio-8090-exec-9] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:08:18,639 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 00:08:18,656 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:08:18,656 [http-nio-8090-exec-6] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:08:18,672 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 00:08:18,765 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:08:18,765 [http-nio-8090-exec-1] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:08:18,765 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:08:25,623 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:08:25,641 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 00:08:25,657 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 00:08:26,485 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:08:26,501 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 00:08:26,516 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:09:20,754 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:09:20,766 [http-nio-8090-exec-7] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:09:20,783 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 00:09:20,783 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 00:09:20,783 [http-nio-8090-exec-7] ==> Parameters: fe5b0902-6db5-439d-a29a-9eb11c48fa96(String)
2018-10-28 00:09:20,783 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 00:09:31,796 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 00:09:31,807 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 00:09:31,809 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:09:36,996 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:09:37,003 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 00:09:37,004 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:09:37,005 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.id=? and p.id=? 
2018-10-28 00:09:37,005 [http-nio-8090-exec-4] ==> Parameters: 1(Long), 54(Long)
2018-10-28 00:09:37,005 [http-nio-8090-exec-4] <==      Total: 4
2018-10-28 00:09:37,099 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 00:09:37,115 [http-nio-8090-exec-4] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540663777099,"id":1,"loginTime":1540656577099,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"e8866fa9-945c-4cbb-baf5-7630b39e6445","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 02:09:37.099(Timestamp), 2018-10-28 00:09:37.099(Timestamp), 2018-10-28 00:09:37.099(Timestamp)
2018-10-28 00:09:37,115 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 00:09:37,287 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:09:37,287 [http-nio-8090-exec-4] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String)
2018-10-28 00:09:37,287 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:09:37,318 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:09:37,318 [http-nio-8090-exec-9] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String)
2018-10-28 00:09:37,318 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 00:09:37,396 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:09:37,396 [http-nio-8090-exec-5] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String)
2018-10-28 00:09:37,396 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:09:48,784 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:09:48,792 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 00:09:48,839 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 00:09:50,448 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:09:50,462 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 00:09:50,462 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:11:17,694 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:11:17,694 [http-nio-8090-exec-7] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String)
2018-10-28 00:11:17,704 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 00:11:17,705 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 00:11:17,705 [http-nio-8090-exec-7] ==> Parameters: e8866fa9-945c-4cbb-baf5-7630b39e6445(String)
2018-10-28 00:11:17,705 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 00:11:21,564 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 00:11:21,575 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.id=? and p.id=? 
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] ==> Parameters: 1(Long), 54(Long)
2018-10-28 00:11:21,576 [http-nio-8090-exec-3] <==      Total: 4
2018-10-28 00:11:21,654 [http-nio-8090-exec-3] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 00:11:21,654 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540663881654,"id":1,"loginTime":1540656681654,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"1efa4b9f-67b7-4d71-b760-20c1b979a2d0","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 02:11:21.654(Timestamp), 2018-10-28 00:11:21.654(Timestamp), 2018-10-28 00:11:21.654(Timestamp)
2018-10-28 00:11:21,670 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 00:11:21,779 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:11:21,779 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:11:21,779 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 00:11:21,810 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:11:21,810 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:11:21,810 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 00:11:21,904 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:11:21,904 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:11:21,904 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:11:27,653 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:11:27,673 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 00:11:27,689 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 00:11:27,923 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:11:27,939 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 00:11:27,955 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:12:22,440 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:12:22,449 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:12:22,450 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 00:12:22,466 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:12:22,466 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:12:22,482 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 00:12:22,544 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:12:22,544 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:12:22,544 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:12:55,193 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:12:55,193 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 00:12:55,199 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 00:12:55,528 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:12:55,528 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 00:12:55,528 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:13:22,772 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:13:22,772 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:13:22,782 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:13:22,893 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:13:22,893 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:13:22,893 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 00:13:23,236 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:13:23,236 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:13:23,236 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:13:27,720 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:13:27,720 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 00:13:27,725 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 00:13:28,038 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:13:28,038 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 00:13:28,038 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:14:37,260 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:14:37,264 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:14:37,265 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 00:14:37,312 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:14:37,312 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:14:37,312 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:14:37,437 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:14:37,437 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:14:37,437 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:14:40,545 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:14:40,545 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 00:14:40,549 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 00:14:40,550 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:14:40,550 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 00:14:40,550 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 00:16:00,172 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:00,172 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:00,185 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:16:00,217 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:00,217 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:00,217 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 00:16:00,326 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 00:16:00,342 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:16:00,342 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 00:16:00,342 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 00:16:57,097 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:57,105 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:57,106 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 00:16:57,123 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:57,123 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:57,123 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 00:16:57,248 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 00:23:19,155 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:23:19,159 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:23:19,160 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 00:23:19,208 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:23:19,208 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:23:19,208 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 00:23:19,505 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:23:19,521 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:23:19,521 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 00:23:19,521 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 00:23:19,521 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 00:23:19,521 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 00:23:19,536 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 00:23:19,536 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 00:23:19,536 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 00:56:31,052 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 00:56:31,058 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 00:56:31,073 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:00:50,274 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:00:50,280 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:00:50,282 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:00:50,376 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:00:50,376 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:00:50,376 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:00:50,532 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:00:50,532 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:00:50,532 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:00:50,548 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:01:21,634 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:21,650 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:21,651 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:01:21,714 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:21,714 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:21,714 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:01:21,855 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:01:21,870 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:01:40,963 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:40,968 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:40,969 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:01:41,002 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:41,002 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:41,002 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:01:41,205 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:01:41,205 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:01:41,205 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:01:41,221 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:02:23,102 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:23,116 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:23,118 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:02:23,180 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:23,180 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:23,196 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:02:23,383 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:23,383 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:23,383 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:02:23,383 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:02:23,399 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:02:23,399 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:02:23,399 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:02:23,399 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:02:23,399 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:02:25,523 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:25,531 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:25,532 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:02:25,846 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:25,846 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:25,846 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:02:25,877 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:25,877 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:25,877 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:02:26,049 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 01:02:26,065 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:02:29,407 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:29,413 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:29,414 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:02:29,759 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:29,759 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:29,759 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:02:29,790 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:29,790 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:29,790 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:02:30,071 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:02:44,193 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:44,205 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:44,206 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:02:44,536 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:44,536 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:44,536 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:02:44,707 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:44,707 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:44,723 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:02:44,989 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:02:45,004 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:02:45,004 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:03:55,600 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:03:55,613 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:03:55,613 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:03:57,362 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:03:57,368 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:03:57,369 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:03:59,995 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:04:00,000 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:04:00,002 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:04:00,392 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:04:00,392 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:04:00,392 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:04:00,502 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:04:00,517 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:04:00,517 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:05:36,076 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:05:36,094 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:05:36,126 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:06:07,609 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:07,614 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:07,615 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:06:09,132 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:09,141 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:09,143 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:06:11,362 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:11,377 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:11,378 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:06:11,676 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:06:11,676 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:06:11,676 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:06:11,848 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:06:11,848 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:06:11,848 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:06:56,947 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:56,947 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:56,958 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:06:57,273 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:57,273 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:57,288 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:06:57,429 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:57,429 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:57,445 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:06:57,663 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:06:57,663 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:06:57,663 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:06:57,679 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:07:48,000 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:07:48,014 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:07:48,016 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:07:48,344 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:07:48,344 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:07:48,344 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:07:48,375 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:07:48,375 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:07:48,375 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:07:48,578 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:07:48,578 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:07:48,578 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:07:48,578 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:07:48,578 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 01:07:48,594 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 01:07:48,594 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:07:48,594 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 01:07:48,594 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:08:11,401 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:11,413 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:11,413 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:08:11,491 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:11,506 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:11,506 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:08:11,710 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:08:11,725 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:08:15,037 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:15,037 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:15,046 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:08:15,343 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:15,359 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:15,359 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:08:15,406 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:15,406 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:15,406 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:08:15,562 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:08:15,577 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:08:17,577 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:17,587 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:17,588 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:08:17,884 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:17,884 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:17,884 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:08:17,963 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:17,963 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:17,963 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:08:18,119 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:18,119 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:18,119 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 01:08:18,134 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:08:57,313 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:57,313 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:57,322 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:08:57,418 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:57,418 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:57,418 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:08:57,590 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 01:08:57,605 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:09:24,083 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:24,083 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:24,100 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:09:24,132 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:24,132 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:24,132 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:09:24,257 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:09:27,381 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:27,381 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:27,393 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:09:27,567 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:27,567 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:27,567 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:09:27,629 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:27,629 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:27,629 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:09:27,723 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:09:27,738 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:09:29,785 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:29,785 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:29,795 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:09:29,999 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:29,999 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:29,999 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:09:30,046 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:30,046 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:30,046 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:09:30,155 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:10:23,096 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:10:23,112 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:10:23,113 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:10:23,161 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:10:23,161 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:10:23,161 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:10:23,255 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:10:23,255 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:10:23,255 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:10:23,270 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:11:03,483 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:03,484 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:03,485 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:11:03,548 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:03,548 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:03,548 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:11:03,642 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:03,642 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:03,642 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:11:03,658 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:11:32,604 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:32,604 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:32,612 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:11:32,691 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:32,691 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:32,691 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:11:32,785 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:11:33,191 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:33,191 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:33,191 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:11:33,644 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:33,644 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:33,658 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:11:33,706 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:33,706 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:33,706 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:11:33,831 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:11:37,580 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:37,580 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:37,587 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:11:37,745 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:37,745 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:37,761 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:11:37,792 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:37,792 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:37,792 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:11:37,902 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:37,902 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:37,902 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:11:37,917 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:11:50,758 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:50,758 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:50,764 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:11:50,969 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:50,969 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:50,969 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:11:51,094 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:51,125 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:51,140 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:11:51,390 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:11:51,390 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:11:51,390 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:11:51,390 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:11:51,406 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:11:51,406 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:11:51,406 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:11:51,406 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:11:51,406 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:13:30,957 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:13:30,968 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:13:30,968 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:13:31,093 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:13:31,093 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:13:31,093 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:13:31,218 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:13:31,218 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:13:31,218 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:13:31,234 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:13:31,234 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:13:31,234 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:13:31,249 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:13:31,249 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:13:31,249 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:14:13,068 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:14:13,078 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:14:13,079 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:14:13,095 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:14:13,095 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:14:13,095 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:14:13,252 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:14:13,252 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:14:13,252 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:14:13,267 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:15:23,829 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:23,840 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:23,841 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:15:23,858 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:23,858 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:23,874 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:15:23,999 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:23,999 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:23,999 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:15:23,999 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:15:23,999 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:15:24,014 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:15:24,014 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:15:24,014 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:15:24,014 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:15:52,581 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:52,592 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:52,592 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:15:52,639 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:52,639 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:52,639 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:15:52,764 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:15:52,764 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:15:52,764 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 01:15:52,779 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:17:43,182 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:17:43,191 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:17:43,193 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:17:43,240 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:17:43,240 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:17:43,240 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:17:43,380 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:17:43,396 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:17:43,396 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:17:43,396 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:18:00,892 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:00,902 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:00,904 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:18:00,967 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:00,967 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:00,967 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:18:01,123 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:01,123 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:18:01,139 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:18:38,193 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:38,193 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:38,194 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:18:38,227 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:38,227 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:38,227 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:18:38,367 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:18:41,663 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:41,663 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:41,669 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:18:41,904 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:41,904 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:41,904 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:18:41,951 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:41,951 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:41,951 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:18:42,232 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:42,232 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:42,232 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:18:42,232 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:18:42,232 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 01:18:42,248 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 01:18:42,248 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:18:42,248 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 01:18:42,248 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:18:45,263 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:45,263 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:45,277 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:18:45,544 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:45,544 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:45,544 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:18:45,606 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:45,606 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:45,606 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:18:45,747 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:19:50,079 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:19:50,079 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:19:50,090 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:19:50,575 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:19:50,575 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:19:50,575 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:19:50,685 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:19:50,685 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:19:50,685 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:19:51,013 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:19:51,013 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:19:51,013 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:19:51,013 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:19:51,013 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:19:51,028 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:19:51,028 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:19:51,028 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:19:51,028 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:20:09,149 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:09,149 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:09,163 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:20:09,430 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:09,430 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:09,430 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:20:09,539 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:09,539 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:09,539 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:20:09,820 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:20:09,836 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:20:24,536 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:24,540 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:24,541 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:20:24,620 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:24,620 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:24,620 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 01:20:24,886 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:20:40,085 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:40,085 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:40,094 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:20:46,235 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:46,246 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:46,247 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:20:46,372 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:46,372 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:46,372 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:20:46,856 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:20:46,856 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:20:46,856 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:20:46,872 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:22:33,550 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:33,554 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:33,555 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:22:33,728 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:33,728 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:33,728 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:22:34,025 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:34,025 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:34,025 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:22:34,040 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:22:43,088 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:43,088 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:43,097 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:22:43,441 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:43,441 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:43,441 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:22:43,612 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:43,612 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:43,612 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:22:43,940 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:22:52,064 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:52,064 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:52,080 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:22:52,096 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:52,096 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:52,112 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:22:52,206 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:22:52,221 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:22:52,221 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:22:52,221 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:23:32,524 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:23:32,524 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:23:32,528 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:23:32,561 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:23:32,561 [http-nio-8090-exec-4] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:23:32,561 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:23:32,764 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:23:32,764 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:23:32,764 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 01:23:32,779 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:23:41,996 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:23:41,996 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:23:42,007 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:24:41,385 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:24:41,385 [http-nio-8090-exec-2] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:24:41,398 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:24:41,446 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:24:41,446 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:24:41,446 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:24:42,664 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:24:42,664 [http-nio-8090-exec-8] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:24:42,680 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:24:42,681 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:25:19,922 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:19,922 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:19,932 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:25:20,011 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:20,011 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:20,011 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:25:20,964 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:20,964 [http-nio-8090-exec-6] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:20,968 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:25:20,970 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:25:29,156 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:29,156 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:29,159 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:25:32,095 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:32,095 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:32,104 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:25:32,292 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:32,292 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:32,292 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:25:35,010 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:25:35,026 [http-nio-8090-exec-5] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:25:35,026 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:25:35,028 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:26:51,279 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:26:51,279 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:51,284 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:26:51,379 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:26:51,379 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:51,379 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:26:51,660 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:26:58,002 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:26:58,018 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:26:58.002(Timestamp)
2018-10-28 01:26:58,018 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:26:58,018 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:26:58,018 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:58,018 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:58,034 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:26:58,050 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:26:58,081 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668418034,"id":1,"loginTime":1540661218034,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"1efa4b9f-67b7-4d71-b760-20c1b979a2d0","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:26:58.034(Timestamp), 2018-10-28 01:26:58.034(Timestamp), 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:26:58,096 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:27:02,377 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:02,386 [http-nio-8090-exec-1] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:27:02,387 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:27:02,513 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:02,513 [http-nio-8090-exec-3] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:27:02,513 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:27:02,731 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:27:14,729 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:14,729 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:27:14,732 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:27:14,733 [http-nio-8090-exec-9] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 01:27:14,734 [http-nio-8090-exec-9] ==> Parameters: 1efa4b9f-67b7-4d71-b760-20c1b979a2d0(String)
2018-10-28 01:27:14,734 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 01:27:18,780 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 01:27:18,793 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] ==> Parameters: admin(String), 54(Long)
2018-10-28 01:27:18,794 [http-nio-8090-exec-5] <==      Total: 4
2018-10-28 01:27:18,888 [http-nio-8090-exec-5] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 01:27:18,888 [http-nio-8090-exec-5] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668438888,"id":1,"loginTime":1540661238888,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"d1ab429c-ff0f-471e-a3f6-620da5217e27","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:27:18.888(Timestamp), 2018-10-28 01:27:18.888(Timestamp), 2018-10-28 01:27:18.888(Timestamp)
2018-10-28 01:27:18,888 [http-nio-8090-exec-5] <==    Updates: 1
2018-10-28 01:27:19,013 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:19,013 [http-nio-8090-exec-5] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:27:19,013 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:27:19,028 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:19,028 [http-nio-8090-exec-7] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:27:19,044 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:27:19,184 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:27:19,184 [http-nio-8090-exec-6] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:27:19,184 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:27:19,184 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:27:19,200 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:27:19,200 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:27:19,200 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:27:19,200 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:27:19,200 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:28:16,827 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:28:16,827 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:28:16,833 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:28:17,007 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:28:17,007 [http-nio-8090-exec-5] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:28:17,007 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:28:17,225 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:28:17,241 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:28:48,018 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:28:48,018 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:28:48,029 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:28:48,046 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:28:48,046 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:28:48,046 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:28:48,061 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 01:28:48,061 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 01:28:48,061 [http-nio-8090-exec-4] <==      Total: 16
2018-10-28 01:29:02,698 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:02,698 [http-nio-8090-exec-2] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:02,706 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:29:02,707 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 01:29:02,707 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:29:02,707 [http-nio-8090-exec-2] <==      Total: 6
2018-10-28 01:29:02,879 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:02,879 [http-nio-8090-exec-8] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:02,879 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:29:02,879 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 01:29:02,895 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-10-28 01:29:02,895 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] ==> Parameters: 71(Long)
2018-10-28 01:29:02,957 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:29:36,808 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:29:36,812 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:29:36.808(Timestamp)
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] <==      Total: 16
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668576814,"id":1,"loginTime":1540661376814,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"d1ab429c-ff0f-471e-a3f6-620da5217e27","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:29:36.814(Timestamp), 2018-10-28 01:29:36.814(Timestamp), d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:36,814 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 01:29:37,970 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:37,970 [http-nio-8090-exec-5] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:37,985 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:29:38,002 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:38,002 [http-nio-8090-exec-10] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:38,002 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:29:38,127 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:38,127 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:29:38,143 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:29:41,970 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:41,970 [http-nio-8090-exec-8] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:41,975 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:29:42,085 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 01:29:42,085 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:29:42,085 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:29:42,100 [http-nio-8090-exec-8] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 01:29:42,100 [http-nio-8090-exec-8] ==> Parameters: 3(Integer)
2018-10-28 01:29:42,100 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:29:50,786 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:29:50,791 [http-nio-8090-exec-9] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:29:50,794 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:29:50,809 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_project where id=? 
2018-10-28 01:29:50,809 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-10-28 01:29:50,809 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:30:34,112 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:30:34,116 [http-nio-8090-exec-1] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:30:34.112(Timestamp)
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] <==    Updates: 1
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] <==      Total: 16
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:30:34,118 [http-nio-8090-exec-1] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668634118,"id":1,"loginTime":1540661434118,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"d1ab429c-ff0f-471e-a3f6-620da5217e27","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:30:34.118(Timestamp), 2018-10-28 01:30:34.118(Timestamp), d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:34,134 [http-nio-8090-exec-1] <==    Updates: 1
2018-10-28 01:30:35,055 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:35,055 [http-nio-8090-exec-10] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:35,055 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:30:35,086 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:35,086 [http-nio-8090-exec-7] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:35,086 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:30:35,180 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:35,180 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:35,190 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:30:35,192 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:30:48,892 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:30:48,901 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:30:48.892(Timestamp)
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] <==      Total: 16
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:30:48,903 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668648903,"id":1,"loginTime":1540661448903,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"d1ab429c-ff0f-471e-a3f6-620da5217e27","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:30:48.903(Timestamp), 2018-10-28 01:30:48.903(Timestamp), d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:48,919 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 01:30:49,856 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:49,856 [http-nio-8090-exec-4] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:49,856 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:30:49,872 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:49,887 [http-nio-8090-exec-10] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:49,887 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:30:49,981 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:49,981 [http-nio-8090-exec-8] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:49,986 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:30:49,989 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:30:53,316 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:53,316 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:53,331 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:30:53,347 [http-nio-8090-exec-3] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 01:30:53,347 [http-nio-8090-exec-3] ==> Parameters: d1ab429c-ff0f-471e-a3f6-620da5217e27(String)
2018-10-28 01:30:53,347 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 01:30:57,284 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 01:30:57,284 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:30:57,299 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] ==> Parameters: admin(String), 54(Long)
2018-10-28 01:30:57,300 [http-nio-8090-exec-7] <==      Total: 4
2018-10-28 01:30:57,378 [http-nio-8090-exec-7] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 01:30:57,378 [http-nio-8090-exec-7] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668657378,"id":1,"loginTime":1540661457378,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"65da14a7-01eb-4497-bb49-5c619ee0c68a","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:30:57.378(Timestamp), 2018-10-28 01:30:57.378(Timestamp), 2018-10-28 01:30:57.378(Timestamp)
2018-10-28 01:30:57,378 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 01:30:57,519 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:57,519 [http-nio-8090-exec-6] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:30:57,519 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:30:57,550 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:57,550 [http-nio-8090-exec-8] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:30:57,550 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:30:57,644 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:30:57,644 [http-nio-8090-exec-9] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:30:57,644 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:30:57,659 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:31:02,221 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:31:02,235 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:31:02.221(Timestamp)
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:02,252 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:31:02,267 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:31:02,267 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668662252,"id":1,"loginTime":1540661462252,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"65da14a7-01eb-4497-bb49-5c619ee0c68a","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:31:02.252(Timestamp), 2018-10-28 01:31:02.252(Timestamp), 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:02,267 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:31:03,314 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:03,329 [http-nio-8090-exec-4] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:03,331 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:31:03,348 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:03,348 [http-nio-8090-exec-3] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:03,348 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 01:31:03,441 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:31:06,987 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:31:07,002 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:31:06.987(Timestamp)
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668667004,"id":1,"loginTime":1540661467004,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"65da14a7-01eb-4497-bb49-5c619ee0c68a","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:31:07.004(Timestamp), 2018-10-28 01:31:07.004(Timestamp), 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,004 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:31:07,629 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:07,629 [http-nio-8090-exec-5] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,629 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:31:07,660 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:07,660 [http-nio-8090-exec-1] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,660 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:31:07,738 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:07,738 [http-nio-8090-exec-9] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:31:07,754 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:31:11,565 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:11,565 [http-nio-8090-exec-2] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:11,571 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:31:11,572 [http-nio-8090-exec-2] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 01:31:11,573 [http-nio-8090-exec-2] ==> Parameters: 65da14a7-01eb-4497-bb49-5c619ee0c68a(String)
2018-10-28 01:31:11,573 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 01:31:16,868 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 01:31:16,868 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:31:16,879 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:31:16,880 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:31:16,880 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:31:16,881 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:31:16,881 [http-nio-8090-exec-8] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:31:16,881 [http-nio-8090-exec-8] ==> Parameters: admin(String), 54(Long)
2018-10-28 01:31:16,881 [http-nio-8090-exec-8] <==      Total: 4
2018-10-28 01:31:16,959 [http-nio-8090-exec-8] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 01:31:16,959 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668676959,"id":1,"loginTime":1540661476959,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"36299f4f-9fb6-4b3c-a3c4-90cc7b718306","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:31:16.959(Timestamp), 2018-10-28 01:31:16.959(Timestamp), 2018-10-28 01:31:16.959(Timestamp)
2018-10-28 01:31:16,959 [http-nio-8090-exec-8] <==    Updates: 1
2018-10-28 01:31:17,068 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:17,068 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:17,068 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:31:17,100 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:17,100 [http-nio-8090-exec-7] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:17,100 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 01:31:17,162 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:31:17,178 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:31:20,364 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:20,364 [http-nio-8090-exec-4] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:20,374 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:31:20,468 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:20,468 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:20,484 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:31:20,484 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 01:31:20,484 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:31:20,484 [http-nio-8090-exec-2] <==      Total: 16
2018-10-28 01:31:24,108 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:24,108 [http-nio-8090-exec-6] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:24,111 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:31:24,112 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 01:31:24,112 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:31:24,112 [http-nio-8090-exec-6] <==      Total: 6
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] ==> Parameters: menu(String)
2018-10-28 01:31:24,253 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] ==> Parameters: 78(Long)
2018-10-28 01:31:24,284 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:32:16,133 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:32:16,135 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:32:16.133(Timestamp)
2018-10-28 01:32:16,136 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:32:16,136 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:16,136 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,136 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540668736151,"id":1,"loginTime":1540661536151,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"36299f4f-9fb6-4b3c-a3c4-90cc7b718306","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:32:16.151(Timestamp), 2018-10-28 01:32:16.151(Timestamp), 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,151 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:32:16,729 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:16,729 [http-nio-8090-exec-1] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,745 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:32:16,776 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:16,776 [http-nio-8090-exec-5] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,776 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 01:32:16,870 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:32:17,651 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:17,651 [http-nio-8090-exec-6] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:17,656 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-10-28 01:32:17,674 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:32:22,017 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:32:22,017 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:32:22,018 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:32:22,020 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_project where id=? 
2018-10-28 01:32:22,020 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-10-28 01:32:22,020 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:35:45,237 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:35:45,253 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:35:45,269 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:35:45,410 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:35:45,410 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:35:45,410 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:35:45,519 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:35:45,519 [http-nio-8090-exec-9] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:35:45,519 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:36:00,811 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:36:00,887 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 01:36:00,934 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 01:36:12,119 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? limit 1 
2018-10-28 01:36:12,167 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 01:36:12,198 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:37:19,507 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:19,518 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:19,518 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:37:19,643 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:19,643 [http-nio-8090-exec-4] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:19,643 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:37:19,752 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:19,752 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:19,768 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:37:19,768 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:37:19,768 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 01:37:19,783 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 01:37:19,783 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 01:37:19,783 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 01:37:19,799 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:37:29,094 [http-nio-8090-exec-9] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:37:29,102 [http-nio-8090-exec-9] ==> Parameters: admin(String), 54(Long), 2018-10-28 01:37:29.094(Timestamp)
2018-10-28 01:37:29,102 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 01:37:29,102 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:29,102 [http-nio-8090-exec-9] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:29,102 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] ==> Parameters: admin(String), 54(Long)
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] <==      Total: 4
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:29,118 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:37:29,133 [http-nio-8090-exec-9] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:37:29,133 [http-nio-8090-exec-9] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540669049118,"id":1,"loginTime":1540661849118,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"36299f4f-9fb6-4b3c-a3c4-90cc7b718306","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:37:29.118(Timestamp), 2018-10-28 01:37:29.118(Timestamp), 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:29,133 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 01:37:30,117 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:30,131 [http-nio-8090-exec-8] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:30,133 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 01:37:30,180 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:30,180 [http-nio-8090-exec-1] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:30,180 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:37:30,258 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:30,258 [http-nio-8090-exec-6] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:30,258 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 01:37:30,274 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:37:33,773 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 01:37:33,781 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long), 2018-10-28 01:37:33.773(Timestamp)
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:33,782 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:33,797 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:37:33,797 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 01:37:33,797 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540669053782,"id":1,"loginTime":1540661853782,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"36299f4f-9fb6-4b3c-a3c4-90cc7b718306","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 03:37:33.782(Timestamp), 2018-10-28 01:37:33.797(Timestamp), 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:33,797 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 01:37:34,875 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:34,878 [http-nio-8090-exec-6] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:34,879 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 01:37:34,911 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:34,911 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:34,911 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:37:35,004 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:35,004 [http-nio-8090-exec-5] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:35,004 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 01:37:35,020 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 01:37:36,223 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:37:36,230 [http-nio-8090-exec-1] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:37:36,231 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:37:36,294 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 01:37:36,294 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 01:37:36,310 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 01:37:36,310 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 01:37:36,310 [http-nio-8090-exec-1] ==> Parameters: 3(Integer)
2018-10-28 01:37:36,310 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 01:58:44,936 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:58:44,950 [http-nio-8090-exec-2] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:58:44,950 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 01:58:45,060 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:58:45,060 [http-nio-8090-exec-4] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:58:45,075 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 01:58:45,153 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:58:45,153 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:58:45,153 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:58:45,153 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:58:45,169 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 01:58:45,169 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 01:58:45,169 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 01:58:45,169 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 01:58:45,169 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:59:02,852 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:59:02,858 [http-nio-8090-exec-10] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:59:02,860 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 01:59:02,922 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:59:02,922 [http-nio-8090-exec-9] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:59:02,922 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 01:59:03,032 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 01:59:03,032 [http-nio-8090-exec-3] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 01:59:03,032 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 01:59:03,032 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 01:59:03,032 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 01:59:03,047 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 01:59:03,047 [http-nio-8090-exec-3] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 01:59:03,047 [http-nio-8090-exec-3] ==> Parameters: admin(String)
2018-10-28 01:59:03,047 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 02:45:23,643 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:23,643 [http-nio-8090-exec-6] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 02:45:23,651 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 02:45:23,682 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:23,682 [http-nio-8090-exec-5] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 02:45:23,682 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] ==> Parameters: admin(String)
2018-10-28 02:45:23,776 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 02:45:27,431 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:27,444 [http-nio-8090-exec-1] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 02:45:27,445 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 02:45:27,446 [http-nio-8090-exec-1] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 02:45:27,446 [http-nio-8090-exec-1] ==> Parameters: 36299f4f-9fb6-4b3c-a3c4-90cc7b718306(String)
2018-10-28 02:45:27,446 [http-nio-8090-exec-1] <==    Updates: 1
2018-10-28 02:45:31,617 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 02:45:31,624 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 02:45:31,625 [http-nio-8090-exec-7] ==> Parameters: admin(String), 9(Long)
2018-10-28 02:45:31,641 [http-nio-8090-exec-7] <==      Total: 16
2018-10-28 02:45:31,735 [http-nio-8090-exec-7] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 02:45:31,735 [http-nio-8090-exec-7] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540673131719,"id":1,"loginTime":1540665931719,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"f7c09023-2d29-49dc-b011-c295c88bcdc4","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 04:45:31.719(Timestamp), 2018-10-28 02:45:31.719(Timestamp), 2018-10-28 02:45:31.719(Timestamp)
2018-10-28 02:45:31,735 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 02:45:31,844 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:31,844 [http-nio-8090-exec-7] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:31,844 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 02:45:31,875 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:31,875 [http-nio-8090-exec-10] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:31,875 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 02:45:31,984 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 02:45:33,765 [http-nio-8090-exec-9] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 02:45:33,778 [http-nio-8090-exec-9] ==> Parameters: admin(String), 54(Long), 2018-10-28 02:45:33.765(Timestamp)
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==> Parameters: admin(String), 54(Long)
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] <==      Total: 4
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 02:45:33,781 [http-nio-8090-exec-9] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540673133781,"id":1,"loginTime":1540665933781,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"f7c09023-2d29-49dc-b011-c295c88bcdc4","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 04:45:33.781(Timestamp), 2018-10-28 02:45:33.781(Timestamp), f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,796 [http-nio-8090-exec-9] <==    Updates: 1
2018-10-28 02:45:33,890 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:33,890 [http-nio-8090-exec-9] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,890 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 02:45:33,921 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:33,921 [http-nio-8090-exec-3] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,921 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 02:45:33,999 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 02:45:36,014 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:36,014 [http-nio-8090-exec-2] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:36,021 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 02:45:36,022 [http-nio-8090-exec-2] ==>  Preparing: delete from t_token where id = ? 
2018-10-28 02:45:36,022 [http-nio-8090-exec-2] ==> Parameters: f7c09023-2d29-49dc-b011-c295c88bcdc4(String)
2018-10-28 02:45:36,022 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 02:45:40,052 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 02:45:40,052 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] ==> Parameters: admin(String), 54(Long)
2018-10-28 02:45:40,086 [http-nio-8090-exec-10] <==      Total: 4
2018-10-28 02:45:40,164 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 02:45:40,164 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540673140164,"id":1,"loginTime":1540665940164,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 04:45:40.164(Timestamp), 2018-10-28 02:45:40.164(Timestamp), 2018-10-28 02:45:40.164(Timestamp)
2018-10-28 02:45:40,164 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 02:45:40,273 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:40,273 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 02:45:40,273 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 02:45:40,304 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:40,304 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 02:45:40,304 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 02:45:40,367 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 02:45:40,367 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 02:45:40,367 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 02:45:40,383 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 03:37:15,021 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:15,032 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:15,048 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 03:37:15,173 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:15,173 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:15,173 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 03:37:15,266 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:15,266 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:15,266 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 03:37:15,282 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 03:37:15,282 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 03:37:15,282 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 03:37:15,282 [http-nio-8090-exec-8] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 03:37:15,298 [http-nio-8090-exec-8] ==> Parameters: admin(String)
2018-10-28 03:37:15,298 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 03:37:18,549 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:18,561 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:18,563 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 03:37:18,580 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:18,580 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:18,580 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 03:37:18,658 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] ==> Parameters: admin(String)
2018-10-28 03:37:18,674 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 03:37:23,235 [http-nio-8090-exec-7] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 03:37:23,238 [http-nio-8090-exec-7] ==> Parameters: admin(String), 9(Long), 2018-10-28 03:37:23.235(Timestamp)
2018-10-28 03:37:23,238 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 03:37:23,238 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:23,238 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,238 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] ==> Parameters: admin(String), 9(Long)
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] <==      Total: 16
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,253 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 03:37:23,269 [http-nio-8090-exec-7] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 03:37:23,269 [http-nio-8090-exec-7] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540676243253,"id":1,"loginTime":1540669043253,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 05:37:23.253(Timestamp), 2018-10-28 03:37:23.253(Timestamp), dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,269 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 03:37:23,394 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:23,394 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,394 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 03:37:23,410 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:23,410 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,425 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 03:37:23,519 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 03:37:23,535 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 03:37:23,535 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 03:37:23,535 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 03:37:24,972 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:24,972 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:24,982 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 03:37:24,998 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:24,998 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:24,998 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 03:37:25,014 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 03:37:25,014 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 03:37:25,014 [http-nio-8090-exec-7] <==      Total: 16
2018-10-28 03:37:25,733 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:25,733 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:25,748 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 03:37:25,811 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 03:37:25,811 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 03:37:25,811 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 03:37:25,826 [http-nio-8090-exec-8] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 03:37:25,826 [http-nio-8090-exec-8] ==> Parameters: 3(Integer)
2018-10-28 03:37:25,826 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 03:37:26,279 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:26,285 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:26,286 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 03:37:26,303 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:26,303 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:26,303 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 03:37:26,303 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] ====> Parameters: 9(Integer)
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] <====      Total: 1
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] ====> Parameters: 54(Integer)
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] <====      Total: 1
2018-10-28 03:37:26,319 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 03:37:26,787 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:26,787 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:26,787 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 03:37:26,803 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 03:37:26,803 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 03:37:26,803 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 03:37:26,803 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 03:37:26,803 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 03:37:26,803 [http-nio-8090-exec-6] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 03:37:26,803 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 03:37:26,819 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-10-28 03:37:26,819 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:03:16,796 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:16,805 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:16,812 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:03:16,943 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:16,943 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:16,944 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:03:17,037 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:17,038 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:17,039 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:03:17,049 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:03:17,055 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 05:03:17,058 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 05:03:17,060 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:03:17,066 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 05:03:17,070 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:03:30,903 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 05:03:30,913 [http-nio-8090-exec-4] ==> Parameters: admin(String), 54(Long), 2018-10-28 05:03:30.903(Timestamp)
2018-10-28 05:03:30,913 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 05:03:30,913 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:30,913 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:30,913 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] ==> Parameters: admin(String), 54(Long)
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] <==      Total: 4
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:30,944 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:03:30,960 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 05:03:30,960 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540681410944,"id":1,"loginTime":1540674210944,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 07:03:30.944(Timestamp), 2018-10-28 05:03:30.944(Timestamp), dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:30,960 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 05:03:31,069 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:31,085 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:31,085 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:03:31,101 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:31,101 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:31,101 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] ==> Parameters: admin(String)
2018-10-28 05:03:31,210 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:03:40,224 [http-nio-8090-exec-3] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 05:03:40,237 [http-nio-8090-exec-3] ==> Parameters: admin(String), 9(Long), 2018-10-28 05:03:40.224(Timestamp)
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==> Parameters: admin(String), 9(Long)
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] <==      Total: 16
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,239 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:03:40,255 [http-nio-8090-exec-3] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 05:03:40,255 [http-nio-8090-exec-3] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540681420239,"id":1,"loginTime":1540674220239,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 07:03:40.239(Timestamp), 2018-10-28 05:03:40.239(Timestamp), dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,255 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 05:03:40,380 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:40,380 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,380 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:03:40,411 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:40,411 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,411 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 05:03:40,489 [http-nio-8090-exec-5] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:03:40,505 [http-nio-8090-exec-5] ==> Parameters: admin(String)
2018-10-28 05:03:40,505 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:03:41,864 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:41,871 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:41,872 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:03:41,888 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:41,888 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:41,888 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:03:41,904 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 05:03:41,904 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 05:03:41,904 [http-nio-8090-exec-9] <==      Total: 16
2018-10-28 05:03:44,528 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:44,528 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:44,540 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:03:44,540 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 05:03:44,540 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 05:03:44,540 [http-nio-8090-exec-8] <==      Total: 6
2018-10-28 05:03:44,571 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:44,571 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:44,571 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:03:44,586 [http-nio-8090-exec-10] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:03:44,586 [http-nio-8090-exec-10] ==> Parameters: menu(String)
2018-10-28 05:03:44,586 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 05:03:44,618 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:44,618 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:44,618 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:03:44,633 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 05:03:44,633 [http-nio-8090-exec-3] ==> Parameters: 71(Long)
2018-10-28 05:03:44,633 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:03:50,273 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:50,289 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:50,290 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:03:50,290 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 05:03:50,290 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 05:03:50,290 [http-nio-8090-exec-4] <==      Total: 6
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] ==> Parameters: menu(String)
2018-10-28 05:03:50,321 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] ==> Parameters: 71(Long)
2018-10-28 05:03:50,352 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:04:04,115 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:04,121 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:04,123 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:04,185 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:04:04,185 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 05:04:04,185 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:04,185 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:04:04,185 [http-nio-8090-exec-2] ==> Parameters: 3(Integer)
2018-10-28 05:04:04,201 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 05:04:09,481 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:09,481 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:09,494 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:09,495 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 05:04:09,495 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 05:04:09,495 [http-nio-8090-exec-2] <==      Total: 6
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] ==> Parameters: menu(String)
2018-10-28 05:04:09,526 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] ==> Parameters: 71(Long)
2018-10-28 05:04:09,542 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:04:51,894 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:51,910 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:51,912 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:04:51,928 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:51,928 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:51,943 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:04:52,021 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:52,021 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:52,021 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:52,021 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:04:52,021 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 05:04:52,037 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 05:04:52,037 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:04:52,037 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 05:04:52,037 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:53,255 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:53,255 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:53,258 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:04:53,259 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:53,259 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:53,275 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:04:53,275 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 05:04:53,275 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 05:04:53,275 [http-nio-8090-exec-5] <==      Total: 16
2018-10-28 05:04:55,555 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:55,559 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:55,561 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:04:55,561 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 05:04:55,561 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 05:04:55,561 [http-nio-8090-exec-8] <==      Total: 6
2018-10-28 05:04:55,577 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:04:55,577 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:04:55,577 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:04:55,577 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:04:55,577 [http-nio-8090-exec-2] ==> Parameters: menu(String)
2018-10-28 05:04:55,592 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 05:05:03,387 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:03,387 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:03,400 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] ==> Parameters: 3(Integer)
2018-10-28 05:05:03,401 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 05:05:04,745 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:04,745 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:04,755 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:05:04,756 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:04,756 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:04,772 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:04,772 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-10-28 05:05:04,772 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] ====> Parameters: 9(Integer)
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] <====      Total: 1
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] ====> Parameters: 54(Integer)
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] <====      Total: 1
2018-10-28 05:05:04,787 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 05:05:08,068 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:08,068 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:08,083 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:05:08,085 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_project sp order by sp.sort 
2018-10-28 05:05:08,085 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 05:05:08,085 [http-nio-8090-exec-3] <==      Total: 2
2018-10-28 05:05:08,101 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:08,101 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:08,101 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:05:08,101 [http-nio-8090-exec-2] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-10-28 05:05:08,117 [http-nio-8090-exec-2] ==> Parameters: null
2018-10-28 05:05:08,117 [http-nio-8090-exec-2] <==      Total: 0
2018-10-28 05:05:08,117 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 05:05:08,117 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 05:05:08,117 [http-nio-8090-exec-2] <==      Total: 16
2018-10-28 05:05:10,335 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:10,335 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:10,338 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:05:10,339 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:10,339 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:10,339 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:05:10,339 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] ====> Parameters: 9(Integer)
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] <====      Total: 1
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] ====> Parameters: 54(Integer)
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] <====      Total: 1
2018-10-28 05:05:10,355 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 05:05:11,823 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:11,836 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:11,837 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 05:05:11,838 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_project sp order by sp.sort 
2018-10-28 05:05:11,838 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 05:05:11,838 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==> Parameters: null
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] <==      Total: 0
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 05:05:11,854 [http-nio-8090-exec-6] <==      Total: 16
2018-10-28 05:05:15,337 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:15,337 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:15,341 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:15,342 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 05:05:15,342 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-10-28 05:05:15,342 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:05:15,342 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:16,311 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:16,311 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:16,311 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:05:16,311 [http-nio-8090-exec-5] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:05:16,326 [http-nio-8090-exec-5] ==> Parameters: sex(String)
2018-10-28 05:05:16,326 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 05:05:19,076 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:19,076 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:19,091 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:19,091 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 05:05:19,091 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 05:05:19,091 [http-nio-8090-exec-10] <==      Total: 6
2018-10-28 05:05:19,122 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:19,122 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:19,122 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:05:19,138 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 05:05:19,138 [http-nio-8090-exec-9] ==> Parameters: menu(String)
2018-10-28 05:05:19,138 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 05:05:30,338 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:30,338 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:30,347 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:30,348 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_project where id=? 
2018-10-28 05:05:30,348 [http-nio-8090-exec-10] ==> Parameters: 9(Long)
2018-10-28 05:05:30,348 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:40,455 [http-nio-8090-exec-6] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 05:05:40,461 [http-nio-8090-exec-6] ==> Parameters: admin(String), 54(Long), 2018-10-28 05:05:40.455(Timestamp)
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] <==    Updates: 1
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==> Parameters: admin(String), 54(Long)
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] <==      Total: 4
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:menu:del"},{"authority":"sys:sys:system"},{"authority":"sys:menu:list"},{"authority":"sys:menu:edit"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540681540463,"id":1,"loginTime":1540674340463,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 07:05:40.463(Timestamp), 2018-10-28 05:05:40.463(Timestamp), dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,463 [http-nio-8090-exec-6] <==    Updates: 1
2018-10-28 05:05:40,573 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:40,588 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,588 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:05:40,620 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:40,620 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,620 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:05:40,698 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:40,698 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:40,698 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:40,698 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:05:40,713 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 05:05:40,713 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 05:05:40,713 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:05:40,713 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 05:05:40,713 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:05:42,276 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-10-28 05:05:42,283 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long), 2018-10-28 05:05:42.276(Timestamp)
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==> Parameters: admin(String), 9(Long)
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] <==      Total: 16
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540681542285,"id":1,"loginTime":1540674342285,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"dcaa99aa-8df4-4545-8c58-a00b23831c1c","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 07:05:42.285(Timestamp), 2018-10-28 05:05:42.285(Timestamp), dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,285 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 05:05:42,395 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:42,395 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,395 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:05:42,426 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:42,426 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,426 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:05:42,520 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:42,520 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 05:05:42,535 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:05:50,315 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:50,330 [http-nio-8090-exec-9] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] ==> Parameters: 3(Integer)
2018-10-28 05:05:50,333 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 05:05:59,018 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:05:59,031 [http-nio-8090-exec-1] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-10-28 05:05:59,048 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 05:06:18,715 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:18,715 [http-nio-8090-exec-10] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:18,724 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:06:18,740 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.createTime BETWEEN str_to_date(?, '%Y-%m-%d %H:%i:%s') AND str_to_date(?, '%Y-%m-%d %H:%i:%s') GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:18,740 [http-nio-8090-exec-10] ==> Parameters: 2018-10-17 00:00:00(String), 2018-10-17 00:00:00(String)
2018-10-28 05:06:18,803 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 05:06:21,818 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:21,818 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:21,823 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-10-28 05:06:21,825 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 05:06:22,918 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:22,918 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:22,932 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-10-28 05:06:22,934 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 05:06:36,540 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:36,540 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:36,552 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:06:36,553 [http-nio-8090-exec-5] ==>  Preparing: insert into sys_project(proj_name,proj_code,proj_intro,sort,createTime) values(?,?,?,?,?) 
2018-10-28 05:06:36,553 [http-nio-8090-exec-5] ==> Parameters: 1(String), 1(String), 1(String), 1(String), 2018-10-28 05:06:36.553(Timestamp)
2018-10-28 05:06:36,553 [http-nio-8090-exec-5] <==    Updates: 1
2018-10-28 05:06:36,584 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:36,584 [http-nio-8090-exec-8] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:36,584 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:06:36,600 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:36,600 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 05:06:36,600 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 05:06:36,600 [http-nio-8090-exec-8] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:06:36,600 [http-nio-8090-exec-8] ==> Parameters: 10(Integer)
2018-10-28 05:06:36,615 [http-nio-8090-exec-8] <==      Total: 3
2018-10-28 05:06:42,817 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:42,817 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:42,823 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:06:42,825 [http-nio-8090-exec-3] ==>  Preparing: delete from sys_role_user where roleId in ( select role_id from proj_role_relation where proj_id in ( ( ? ) ) ) 
2018-10-28 05:06:42,825 [http-nio-8090-exec-3] ==> Parameters: 55(Long)
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] <==    Updates: 0
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==>  Preparing: delete from sys_role_permission where roleId in ( select role_id from proj_role_relation where proj_id in ( ( ? ) ) ) 
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==> Parameters: 55(Long)
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] <==    Updates: 0
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==>  Preparing: delete from proj_role_relation where proj_id in ( ? ) 
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==> Parameters: 55(Long)
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] <==    Updates: 0
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==>  Preparing: delete from sys_project where id in ( ? ) 
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] ==> Parameters: 55(Long)
2018-10-28 05:06:42,841 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 05:06:42,872 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:42,872 [http-nio-8090-exec-6] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:42,872 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:06:42,872 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:42,872 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 05:06:42,888 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 05:06:42,888 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:06:42,888 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-10-28 05:06:42,888 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 05:06:44,872 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:06:44,874 [http-nio-8090-exec-2] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:06:44,875 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] ==> Parameters: 3(Integer)
2018-10-28 05:06:44,876 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 05:07:11,640 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:07:11,640 [http-nio-8090-exec-5] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:07:11,651 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 05:07:11,667 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:07:11,667 [http-nio-8090-exec-3] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:07:11,667 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 05:07:11,838 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 05:07:11,838 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 05:07:11,838 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 05:07:11,838 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 05:07:11,854 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 05:07:11,854 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 05:07:11,854 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 05:07:11,854 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 05:07:11,854 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 08:59:14,861 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 08:59:14,861 [http-nio-8090-exec-7] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 08:59:14,874 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 08:59:14,922 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 08:59:14,922 [http-nio-8090-exec-4] ==> Parameters: dcaa99aa-8df4-4545-8c58-a00b23831c1c(String)
2018-10-28 08:59:14,922 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:03:58,055 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 12:03:58,058 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 12:03:58,058 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:03:58,074 [http-nio-8090-exec-10] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 12:03:58,074 [http-nio-8090-exec-10] ==> Parameters: admin(String)
2018-10-28 12:03:58,074 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:03:58,074 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 12:03:58,074 [http-nio-8090-exec-10] ==> Parameters: admin(String), 9(Long)
2018-10-28 12:03:58,090 [http-nio-8090-exec-10] <==      Total: 16
2018-10-28 12:03:58,168 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 12:03:58,183 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540706638168,"id":1,"loginTime":1540699438168,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","sex":0,"status":1,"telephone":"","token":"b9996e83-32d7-4257-b6d9-01f08c8788a5","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 14:03:58.168(Timestamp), 2018-10-28 12:03:58.168(Timestamp), 2018-10-28 12:03:58.168(Timestamp)
2018-10-28 12:03:58,183 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 12:03:58,605 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:03:58,605 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:03:58,605 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:03:58,668 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:03:58,668 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:03:58,668 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:03:58,761 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:03:58,761 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:03:58,761 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] ==> Parameters: admin(String)
2018-10-28 12:03:58,777 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:04:12,071 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:12,084 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:12,085 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:12,102 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:12,102 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:12,102 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:04:12,117 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:04:12,117 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 12:04:12,117 [http-nio-8090-exec-5] <==      Total: 16
2018-10-28 12:04:12,914 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:12,914 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:12,929 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:04:12,992 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-10-28 12:04:12,992 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:04:12,992 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:04:12,992 [http-nio-8090-exec-4] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-10-28 12:04:13,008 [http-nio-8090-exec-4] ==> Parameters: 3(Integer)
2018-10-28 12:04:13,008 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 12:04:13,726 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:13,739 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:13,741 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:04:13,757 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:13,757 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:13,757 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:13,757 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-10-28 12:04:13,757 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] ====> Parameters: 9(Integer)
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] <====      Total: 1
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] ====> Parameters: 54(Integer)
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] <====      Total: 1
2018-10-28 12:04:13,772 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 12:04:14,694 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:14,694 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:14,694 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:04:14,694 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 12:04:14,710 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 12:04:14,710 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:14,710 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:04:14,710 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:14,710 [http-nio-8090-exec-3] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 12:04:14,710 [http-nio-8090-exec-3] ==> Parameters: 3(Integer)
2018-10-28 12:04:14,710 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:04:14,710 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:04:15,944 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:15,951 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:15,952 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:04:15,968 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:15,968 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:15,968 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:04:15,968 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ====> Parameters: 9(Integer)
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] <====      Total: 1
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ====> Parameters: 54(Integer)
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] <====      Total: 1
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ==> Parameters: 1(Long)
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] ==> Parameters: 17(Long)
2018-10-28 12:04:15,984 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:04:27,731 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:27,742 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:27,745 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:27,745 [http-nio-8090-exec-8] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-10-28 12:04:27,745 [http-nio-8090-exec-8] ==> Parameters: 1(Long)
2018-10-28 12:04:27,745 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:27,885 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:27,901 [http-nio-8090-exec-8] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 12:04:27,916 [http-nio-8090-exec-8] ==> Parameters: 500(Integer)
2018-10-28 12:04:27,916 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:04:30,447 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:30,447 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:30,462 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:30,464 [http-nio-8090-exec-10] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-10-28 12:04:30,464 [http-nio-8090-exec-10] ==> Parameters: 17(Long)
2018-10-28 12:04:30,464 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:30,589 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:30,589 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:30,589 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] ==> Parameters: 500(Integer)
2018-10-28 12:04:30,605 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:04:44,538 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:04:44,538 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:04:44,548 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] ==>  Preparing: select su.id,su.username,su.nickname,su.phone ,su.telephone,su.email,su.birthday ,su.sex,su.status,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] ==> Parameters: 1000(Integer)
2018-10-28 12:04:44,549 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:06:16,155 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:06:16,171 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:06:16,172 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:06:16,173 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:06:16,173 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 12:06:16,173 [http-nio-8090-exec-9] <==      Total: 6
2018-10-28 12:06:16,188 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:06:16,204 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:06:16,204 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:06:16,204 [http-nio-8090-exec-10] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:06:16,204 [http-nio-8090-exec-10] ==> Parameters: menu(String)
2018-10-28 12:06:16,204 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 12:07:21,501 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:07:21,501 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:07:21,509 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:07:21,510 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:07:21,510 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:07:21,510 [http-nio-8090-exec-2] <==      Total: 6
2018-10-28 12:07:21,526 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:07:21,526 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:07:21,526 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:07:21,526 [http-nio-8090-exec-5] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:07:21,526 [http-nio-8090-exec-5] ==> Parameters: menu(String)
2018-10-28 12:07:21,541 [http-nio-8090-exec-5] <==      Total: 2
2018-10-28 12:08:05,718 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:05,727 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:05,728 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:08:05,729 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:08:05,729 [http-nio-8090-exec-2] ==> Parameters: 0(Long), LTE单验(String), fa-university(String), (String), 1(Integer), sys:lte:manage(String), 2(Integer)
2018-10-28 12:08:05,729 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 12:08:05,885 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:05,885 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:05,885 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:08:05,901 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:05,901 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:05,916 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:08:05,916 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:08:05,916 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:08:05,916 [http-nio-8090-exec-8] <==      Total: 17
2018-10-28 12:08:14,664 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:14,664 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:14,665 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:08:14,666 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:08:14,666 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 12:08:14,666 [http-nio-8090-exec-1] <==      Total: 7
2018-10-28 12:08:14,682 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:14,682 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:14,682 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:08:14,698 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:08:14,698 [http-nio-8090-exec-2] ==> Parameters: menu(String)
2018-10-28 12:08:14,698 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 12:08:14,713 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:14,713 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:14,713 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:08:14,713 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:08:14,729 [http-nio-8090-exec-10] ==> Parameters: 88(Long)
2018-10-28 12:08:14,729 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:08:55,707 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:55,707 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:55,712 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:08:55,712 [http-nio-8090-exec-6] ==>  Preparing: update sys_permission t set parentId = ? ,name = ? ,css = ? ,permission = ? ,type = ? ,sort = ? where t.id = ? 
2018-10-28 12:08:55,712 [http-nio-8090-exec-6] ==> Parameters: 0(Long), LTE单验(String), fa-university(String), sys:lte:manage(String), 1(Integer), 2(Integer), 88(Long)
2018-10-28 12:08:55,712 [http-nio-8090-exec-6] <==    Updates: 1
2018-10-28 12:08:55,884 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:55,884 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:55,884 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:08:55,900 [http-nio-8090-exec-4] <==      Total: 17
2018-10-28 12:09:18,957 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:09:18,957 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:09:18,964 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:09:18,964 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:09:18,964 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:09:18,964 [http-nio-8090-exec-2] <==      Total: 7
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-10-28 12:09:18,996 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 12:09:19,027 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:09:19,027 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:09:19,027 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:09:19,027 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:09:19,027 [http-nio-8090-exec-5] ==> Parameters: 88(Long)
2018-10-28 12:09:19,043 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:09:22,682 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:09:22,691 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:09:22,693 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:09:22,693 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:09:22,693 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 12:09:22,693 [http-nio-8090-exec-5] <==      Total: 7
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] ==> Parameters: menu(String)
2018-10-28 12:09:22,708 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 12:11:33,646 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:33,646 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:33,647 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:11:33,649 [http-nio-8090-exec-3] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:11:33,649 [http-nio-8090-exec-3] ==> Parameters: 88(Long), 规划表(String), fa-send-o(String), (String), 1(Integer), sys:plan:list(String), 3(Integer)
2018-10-28 12:11:33,649 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 12:11:33,868 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:33,868 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:33,883 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:11:33,899 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:33,899 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:33,899 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:11:33,915 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:11:33,915 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 12:11:33,915 [http-nio-8090-exec-1] <==      Total: 18
2018-10-28 12:11:36,961 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:36,961 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:36,976 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:11:36,976 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:11:36,976 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 12:11:36,976 [http-nio-8090-exec-7] <==      Total: 8
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] ==> Parameters: menu(String)
2018-10-28 12:11:36,991 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] ==> Parameters: 88(Long)
2018-10-28 12:11:37,022 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:11:39,491 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:39,491 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:39,494 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:11:39,495 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:11:39,495 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 12:11:39,495 [http-nio-8090-exec-10] <==      Total: 8
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] ==> Parameters: menu(String)
2018-10-28 12:11:39,511 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 12:12:30,143 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:30,143 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:30,156 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:12:30,156 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:12:30,156 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 12:12:30,156 [http-nio-8090-exec-6] <==      Total: 8
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] ==> Parameters: menu(String)
2018-10-28 12:12:30,187 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 12:12:30,203 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:30,203 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:30,203 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:12:30,218 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:12:30,218 [http-nio-8090-exec-8] ==> Parameters: 89(Long)
2018-10-28 12:12:30,218 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:12:47,105 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:47,105 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:47,120 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:12:47,122 [http-nio-8090-exec-2] ==>  Preparing: update sys_permission t set parentId = ? ,name = ? ,css = ? ,permission = ? ,type = ? ,sort = ? where t.id = ? 
2018-10-28 12:12:47,122 [http-nio-8090-exec-2] ==> Parameters: 88(Long), 规划表(String), fa-send-o(String), lte:plan:list(String), 1(Integer), 3(Integer), 89(Long)
2018-10-28 12:12:47,122 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 12:12:47,263 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:47,263 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:47,263 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] ==> Parameters: 
2018-10-28 12:12:47,294 [http-nio-8090-exec-9] <==      Total: 18
2018-10-28 12:12:49,325 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:49,325 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:49,337 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:12:49,337 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:12:49,337 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:12:49,337 [http-nio-8090-exec-8] <==      Total: 8
2018-10-28 12:12:49,368 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:12:49,368 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:12:49,368 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:12:49,368 [http-nio-8090-exec-1] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:12:49,384 [http-nio-8090-exec-1] ==> Parameters: menu(String)
2018-10-28 12:12:49,384 [http-nio-8090-exec-1] <==      Total: 2
2018-10-28 12:14:03,413 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:03,413 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:03,433 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:14:03,433 [http-nio-8090-exec-3] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:14:03,433 [http-nio-8090-exec-3] ==> Parameters: 88(Long), 工参表(String), fa-bookmark-o(String), (String), 1(Integer), lte:gcb:list(String), 4(Integer)
2018-10-28 12:14:03,433 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 12:14:03,683 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:03,683 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:03,683 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:14:03,698 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:03,698 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:03,698 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:14:03,714 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:14:03,714 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 12:14:03,714 [http-nio-8090-exec-6] <==      Total: 19
2018-10-28 12:14:10,150 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:10,162 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:10,163 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:14:10,164 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:14:10,164 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 12:14:10,164 [http-nio-8090-exec-3] <==      Total: 9
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] ==> Parameters: menu(String)
2018-10-28 12:14:10,179 [http-nio-8090-exec-2] <==      Total: 2
2018-10-28 12:14:30,518 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:30,518 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:30,535 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:14:30,535 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:14:30,535 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:14:30,535 [http-nio-8090-exec-8] <==      Total: 9
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] ==> Parameters: menu(String)
2018-10-28 12:14:30,566 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 12:16:30,905 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:16:30,914 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:16:30,915 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:16:30,915 [http-nio-8090-exec-7] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:16:30,915 [http-nio-8090-exec-7] ==> Parameters: 88(Long), 基站核查结果(String), fa-codepen(String), (String), 1(Integer), lte:stationcheck:list(String), 6(Integer)
2018-10-28 12:16:30,915 [http-nio-8090-exec-7] <==    Updates: 1
2018-10-28 12:16:31,134 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:16:31,134 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:16:31,134 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:16:31,149 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:16:31,149 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:16:31,149 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:16:31,149 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:16:31,149 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:16:31,165 [http-nio-8090-exec-2] <==      Total: 20
2018-10-28 12:16:34,164 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:16:34,164 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:16:34,171 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:16:34,174 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:16:34,174 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:16:34,174 [http-nio-8090-exec-4] <==      Total: 10
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] ==> Parameters: menu(String)
2018-10-28 12:16:34,189 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 12:17:33,004 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:17:33,004 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:17:33,010 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:17:33,010 [http-nio-8090-exec-6] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:17:33,010 [http-nio-8090-exec-6] ==> Parameters: 88(Long), 小区测试结果(String), fa-file-archive-o(String), (String), 1(Integer), lte:cellcheck:list(String), 7(Integer)
2018-10-28 12:17:33,010 [http-nio-8090-exec-6] <==    Updates: 1
2018-10-28 12:17:33,166 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:17:33,166 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:17:33,182 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:17:33,197 [http-nio-8090-exec-2] <==      Total: 21
2018-10-28 12:17:35,275 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:17:35,290 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:17:35,291 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:17:35,293 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:17:35,293 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:17:35,293 [http-nio-8090-exec-8] <==      Total: 11
2018-10-28 12:17:35,309 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:17:35,309 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:17:35,309 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:17:35,324 [http-nio-8090-exec-6] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:17:35,324 [http-nio-8090-exec-6] ==> Parameters: menu(String)
2018-10-28 12:17:35,324 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 12:18:28,251 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:28,251 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:28,280 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:18:28,280 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:18:28,280 [http-nio-8090-exec-10] ==> Parameters: 88(Long), 测试配置项(String), fa-cogs(String), (String), 1(Integer), lte:config:list(String), 6(Integer)
2018-10-28 12:18:28,280 [http-nio-8090-exec-10] <==    Updates: 1
2018-10-28 12:18:28,420 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:28,420 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:28,420 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:18:28,436 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:28,436 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:28,436 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:18:28,452 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:18:28,452 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:18:28,452 [http-nio-8090-exec-4] <==      Total: 22
2018-10-28 12:18:33,888 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:33,888 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:33,892 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:18:33,894 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:18:33,894 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:18:33,894 [http-nio-8090-exec-2] <==      Total: 12
2018-10-28 12:18:33,925 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:33,925 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:33,925 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:18:33,925 [http-nio-8090-exec-10] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:18:33,925 [http-nio-8090-exec-10] ==> Parameters: menu(String)
2018-10-28 12:18:33,941 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 12:18:33,941 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:33,941 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:33,941 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:18:33,956 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:18:33,956 [http-nio-8090-exec-8] ==> Parameters: 93(Long)
2018-10-28 12:18:33,956 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:18:39,065 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:39,078 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:39,079 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:18:39,079 [http-nio-8090-exec-3] ==>  Preparing: update sys_permission t set parentId = ? ,name = ? ,css = ? ,permission = ? ,type = ? ,sort = ? where t.id = ? 
2018-10-28 12:18:39,079 [http-nio-8090-exec-3] ==> Parameters: 88(Long), 测试配置项(String), fa-cogs(String), lte:config:list(String), 1(Integer), 5(Integer), 93(Long)
2018-10-28 12:18:39,079 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 12:18:39,219 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:39,219 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:39,219 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 12:18:39,235 [http-nio-8090-exec-7] <==      Total: 22
2018-10-28 12:19:01,933 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:01,933 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:01,935 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:19:01,936 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:19:01,936 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:19:01,936 [http-nio-8090-exec-8] <==      Total: 12
2018-10-28 12:19:01,968 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:01,968 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:01,968 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:19:01,983 [http-nio-8090-exec-10] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:19:01,983 [http-nio-8090-exec-10] ==> Parameters: menu(String)
2018-10-28 12:19:01,983 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 12:19:38,709 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:38,709 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:38,718 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:19:38,720 [http-nio-8090-exec-8] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:19:38,720 [http-nio-8090-exec-8] ==> Parameters: 88(Long), 路测信息(String), fa-taxi(String), (String), 1(Integer), lte:loadtest:list(String), 10(Integer)
2018-10-28 12:19:38,720 [http-nio-8090-exec-8] <==    Updates: 1
2018-10-28 12:19:38,876 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:38,876 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:38,876 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:19:38,891 [http-nio-8090-exec-4] <==      Total: 23
2018-10-28 12:19:42,234 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:42,234 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:42,237 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:19:42,237 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:19:42,237 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 12:19:42,237 [http-nio-8090-exec-1] <==      Total: 13
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-10-28 12:19:42,284 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] ==> Parameters: 94(Long)
2018-10-28 12:19:42,300 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:19:45,877 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:45,877 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:45,884 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:19:45,885 [http-nio-8090-exec-3] ==>  Preparing: update sys_permission t set parentId = ? ,name = ? ,css = ? ,permission = ? ,type = ? ,sort = ? where t.id = ? 
2018-10-28 12:19:45,885 [http-nio-8090-exec-3] ==> Parameters: 88(Long), 路测信息(String), fa-taxi(String), lte:loadtest:list(String), 1(Integer), 8(Integer), 94(Long)
2018-10-28 12:19:45,885 [http-nio-8090-exec-3] <==    Updates: 1
2018-10-28 12:19:46,026 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:46,026 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:46,026 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:19:46,041 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:46,041 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:46,057 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:19:46,057 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:19:46,057 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 12:19:46,057 [http-nio-8090-exec-7] <==      Total: 23
2018-10-28 12:19:57,742 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:57,742 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:57,743 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:19:57,744 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:19:57,744 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 12:19:57,744 [http-nio-8090-exec-10] <==      Total: 13
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] ==> Parameters: menu(String)
2018-10-28 12:19:57,791 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 12:20:21,879 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:21,879 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:21,888 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:20:21,890 [http-nio-8090-exec-8] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:20:21,890 [http-nio-8090-exec-8] ==> Parameters: 89(Long), 编辑(String), (String), (String), 2(Integer), lte:plan:edit(String), 100(Integer)
2018-10-28 12:20:21,890 [http-nio-8090-exec-8] <==    Updates: 1
2018-10-28 12:20:22,031 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:22,031 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:22,031 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:20:22,047 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:22,062 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:22,062 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:20:22,062 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:20:22,062 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:20:22,062 [http-nio-8090-exec-2] <==      Total: 24
2018-10-28 12:20:25,608 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:25,608 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:25,617 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:20:25,618 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:20:25,618 [http-nio-8090-exec-5] ==> Parameters: 
2018-10-28 12:20:25,618 [http-nio-8090-exec-5] <==      Total: 13
2018-10-28 12:20:25,649 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:25,649 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:25,649 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:20:25,665 [http-nio-8090-exec-7] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:20:25,665 [http-nio-8090-exec-7] ==> Parameters: menu(String)
2018-10-28 12:20:25,665 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 12:20:43,567 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:43,567 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:43,575 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:20:43,576 [http-nio-8090-exec-8] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:20:43,576 [http-nio-8090-exec-8] ==> Parameters: 89(Long), 删除(String), (String), (String), 2(Integer), lte:plan:del(String), 100(Integer)
2018-10-28 12:20:43,576 [http-nio-8090-exec-8] <==    Updates: 1
2018-10-28 12:20:43,717 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:43,717 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:43,717 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 12:20:43,732 [http-nio-8090-exec-3] <==      Total: 25
2018-10-28 12:20:59,560 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:59,560 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:59,563 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:20:59,564 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:20:59,564 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 12:20:59,564 [http-nio-8090-exec-1] <==      Total: 13
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] ==> Parameters: menu(String)
2018-10-28 12:20:59,611 [http-nio-8090-exec-7] <==      Total: 2
2018-10-28 12:21:15,123 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:15,123 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:15,134 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:21:15,137 [http-nio-8090-exec-5] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:21:15,137 [http-nio-8090-exec-5] ==> Parameters: 90(Long), 编辑(String), (String), (String), 2(Integer), lte:gcb:edit(String), 100(Integer)
2018-10-28 12:21:15,137 [http-nio-8090-exec-5] <==    Updates: 1
2018-10-28 12:21:15,277 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:15,277 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:15,277 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] ==> Parameters: 
2018-10-28 12:21:15,308 [http-nio-8090-exec-2] <==      Total: 26
2018-10-28 12:21:16,511 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:16,527 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:16,529 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:21:16,530 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:21:16,530 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:21:16,530 [http-nio-8090-exec-4] <==      Total: 13
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] ==> Parameters: menu(String)
2018-10-28 12:21:16,546 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 12:21:35,197 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:35,197 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:35,209 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:21:35,210 [http-nio-8090-exec-5] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:21:35,210 [http-nio-8090-exec-5] ==> Parameters: 90(Long), 删除(String), (String), (String), 2(Integer), lte:gcb:del(String), 100(Integer)
2018-10-28 12:21:35,210 [http-nio-8090-exec-5] <==    Updates: 1
2018-10-28 12:21:35,382 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:35,382 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:35,382 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 12:21:35,398 [http-nio-8090-exec-10] <==      Total: 27
2018-10-28 12:21:36,835 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:36,835 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:36,850 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:21:36,850 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:21:36,850 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 12:21:36,850 [http-nio-8090-exec-4] <==      Total: 13
2018-10-28 12:21:36,881 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:36,881 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:36,881 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:21:36,897 [http-nio-8090-exec-6] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:21:36,897 [http-nio-8090-exec-6] ==> Parameters: menu(String)
2018-10-28 12:21:36,897 [http-nio-8090-exec-6] <==      Total: 2
2018-10-28 12:21:57,611 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:57,611 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:57,625 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:21:57,627 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:21:57,627 [http-nio-8090-exec-8] ==> Parameters: 
2018-10-28 12:21:57,627 [http-nio-8090-exec-8] <==      Total: 13
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] ==> Parameters: menu(String)
2018-10-28 12:21:57,674 [http-nio-8090-exec-10] <==      Total: 2
2018-10-28 12:22:12,452 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:12,452 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:12,471 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:22:12,471 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:22:12,471 [http-nio-8090-exec-2] ==> Parameters: 93(Long), 编辑(String), (String), (String), 2(Integer), lte:config:edit(String), 100(Integer)
2018-10-28 12:22:12,471 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 12:22:12,612 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:12,627 [http-nio-8090-exec-5] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:12,627 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] ==> Parameters: 
2018-10-28 12:22:12,643 [http-nio-8090-exec-7] <==      Total: 28
2018-10-28 12:22:13,908 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:13,920 [http-nio-8090-exec-3] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:13,921 [http-nio-8090-exec-3] <==      Total: 1
2018-10-28 12:22:13,922 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:22:13,922 [http-nio-8090-exec-3] ==> Parameters: 
2018-10-28 12:22:13,922 [http-nio-8090-exec-3] <==      Total: 13
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] ==> Parameters: menu(String)
2018-10-28 12:22:13,938 [http-nio-8090-exec-9] <==      Total: 2
2018-10-28 12:22:26,700 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:26,700 [http-nio-8090-exec-4] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:26,702 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 12:22:26,704 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_permission(parentId, name, css, href, type, permission, sort) values(?, ?, ?, ?, ?, ?, ?) 
2018-10-28 12:22:26,704 [http-nio-8090-exec-4] ==> Parameters: 93(Long), 删除(String), (String), (String), 2(Integer), lte:config:del(String), 100(Integer)
2018-10-28 12:22:26,704 [http-nio-8090-exec-4] <==    Updates: 1
2018-10-28 12:22:26,876 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:26,876 [http-nio-8090-exec-7] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:26,876 [http-nio-8090-exec-7] <==      Total: 1
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] ==> Parameters: 
2018-10-28 12:22:26,891 [http-nio-8090-exec-6] <==      Total: 29
2018-10-28 12:23:53,824 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:53,824 [http-nio-8090-exec-10] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:53,832 [http-nio-8090-exec-10] <==      Total: 1
2018-10-28 12:23:53,834 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-10-28 12:23:53,834 [http-nio-8090-exec-10] ==> Parameters: 
2018-10-28 12:23:53,834 [http-nio-8090-exec-10] <==      Total: 13
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] <==      Total: 1
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-10-28 12:23:53,849 [http-nio-8090-exec-8] <==      Total: 2
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] ==> Parameters: 89(Long)
2018-10-28 12:23:53,896 [http-nio-8090-exec-9] <==      Total: 1
2018-10-28 12:23:57,226 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:57,226 [http-nio-8090-exec-2] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:57,231 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 12:23:57,233 [http-nio-8090-exec-2] ==>  Preparing: update sys_permission t set parentId = ? ,name = ? ,css = ? ,href = ? ,permission = ? ,type = ? ,sort = ? where t.id = ? 
2018-10-28 12:23:57,233 [http-nio-8090-exec-2] ==> Parameters: 88(Long), 规划表(String), fa-send-o(String), pages/lte/plane/list.html(String), lte:plan:list(String), 1(Integer), 3(Integer), 89(Long)
2018-10-28 12:23:57,233 [http-nio-8090-exec-2] <==    Updates: 1
2018-10-28 12:23:57,390 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:57,390 [http-nio-8090-exec-6] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:57,390 [http-nio-8090-exec-6] <==      Total: 1
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] ==> Parameters: b9996e83-32d7-4257-b6d9-01f08c8788a5(String)
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] ==> Parameters: 
2018-10-28 12:23:57,405 [http-nio-8090-exec-1] <==      Total: 29
2018-10-28 13:07:49,158 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-10-28 13:07:49,168 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 13:07:49,168 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 13:07:49,183 [http-nio-8090-exec-1] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 13:07:49,183 [http-nio-8090-exec-1] ==> Parameters: admin(String)
2018-10-28 13:07:49,183 [http-nio-8090-exec-1] <==      Total: 1
2018-10-28 13:07:49,183 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-10-28 13:07:49,183 [http-nio-8090-exec-1] ==> Parameters: admin(String), 9(Long)
2018-10-28 13:07:49,199 [http-nio-8090-exec-1] <==      Total: 16
2018-10-28 13:07:49,324 [http-nio-8090-exec-1] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-10-28 13:07:49,324 [http-nio-8090-exec-1] ==> Parameters: 89d357b6-3ae0-4510-a453-0f97f50176a8(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:role:del"},{"authority":"sys:user:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:menu:list"},{"authority":"sys:role:edit"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"sys:project:del"},{"authority":"sys:user:edit"},{"authority":"sys:distribute:edit"},{"authority":"sys:role:list"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"sys:diatribute:del"},{"authority":"sys:user:del"}],"birthday":899222400000,"createTime":1491808898000,"credentialsNonExpired":true,"email":"","enabled":true,"expireTime":1540710469277,"id":1,"loginTime":1540703269277,"nickname":"zhangsan","password":"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2}],"phone":"","projId":9,"sex":0,"status":1,"telephone":"","token":"89d357b6-3ae0-4510-a453-0f97f50176a8","updateTime":1499304019000,"username":"admin"}(String), 2018-10-28 15:07:49.277(Timestamp), 2018-10-28 13:07:49.277(Timestamp), 2018-10-28 13:07:49.277(Timestamp)
2018-10-28 13:07:49,324 [http-nio-8090-exec-1] <==    Updates: 1
2018-10-28 13:07:49,886 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 13:07:49,886 [http-nio-8090-exec-2] ==> Parameters: 89d357b6-3ae0-4510-a453-0f97f50176a8(String)
2018-10-28 13:07:49,886 [http-nio-8090-exec-2] <==      Total: 1
2018-10-28 13:07:49,951 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 13:07:49,951 [http-nio-8090-exec-5] ==> Parameters: 89d357b6-3ae0-4510-a453-0f97f50176a8(String)
2018-10-28 13:07:49,951 [http-nio-8090-exec-5] <==      Total: 1
2018-10-28 13:07:50,045 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-10-28 13:07:50,045 [http-nio-8090-exec-4] ==> Parameters: 89d357b6-3ae0-4510-a453-0f97f50176a8(String)
2018-10-28 13:07:50,045 [http-nio-8090-exec-4] <==      Total: 1
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId 
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] ==> Parameters: 
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] <==      Total: 2
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] ==>  Preparing: select proj from sys_login_service where username=? order by createTime desc limit 1 
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] ==> Parameters: admin(String)
2018-10-28 13:07:50,061 [http-nio-8090-exec-4] <==      Total: 1
