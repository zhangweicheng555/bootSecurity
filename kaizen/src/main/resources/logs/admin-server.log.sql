2018-11-24 19:43:08,868 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:08,899 [http-nio-8090-exec-3] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-24 19:43:08,899 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:09,071 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:09,071 [http-nio-8090-exec-4] ==> Parameters: ec9c7a00-6cbe-46c4-9f33-01b21fd58fb7(String)
2018-11-24 19:43:09,071 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 19:43:13,429 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-24 19:43:13,442 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:13,443 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:13,443 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 19:43:13,474 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:13,474 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:13,474 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 19:43:13,474 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 19:43:13,490 [http-nio-8090-exec-3] <==      Total: 37
2018-11-24 19:43:13,583 [http-nio-8090-exec-3] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-24 19:43:13,599 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543066993583,"id":10,"loginTime":1543059793583,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"b0eef96b-0ff3-46ba-aa9d-870803c01dc7","username":"wuzhihua"}(String), 2018-11-24 21:43:13.583(Timestamp), 2018-11-24 19:43:13.583(Timestamp), 2018-11-24 19:43:13.583(Timestamp)
2018-11-24 19:43:13,599 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-24 19:43:13,755 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:13,755 [http-nio-8090-exec-4] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:13,755 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 19:43:13,849 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:13,849 [http-nio-8090-exec-9] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:13,849 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:13,958 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:13,958 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:13,974 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 19:43:13,974 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 19:43:13,974 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:13,989 [http-nio-8090-exec-2] <==      Total: 2
2018-11-24 19:43:13,989 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 19:43:13,989 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:13,989 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 19:43:16,114 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:16,114 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:16,122 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:16,137 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:16,137 [http-nio-8090-exec-9] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:16,137 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:16,153 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 19:43:16,153 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 19:43:16,169 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:16,169 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-24 19:43:16,169 [http-nio-8090-exec-9] <====      Total: 3
2018-11-24 19:43:16,169 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:18,184 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:18,196 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:18,197 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:18,197 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 19:43:18,197 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-24 19:43:18,197 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:18,228 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:18,228 [http-nio-8090-exec-9] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:18,228 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:18,369 [http-nio-8090-exec-9] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 19:43:18,369 [http-nio-8090-exec-9] ==> Parameters: null
2018-11-24 19:43:18,369 [http-nio-8090-exec-9] <==      Total: 0
2018-11-24 19:43:18,369 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 19:43:18,369 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-24 19:43:18,385 [http-nio-8090-exec-9] <==      Total: 37
2018-11-24 19:43:22,056 [http-nio-8090-exec-6] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 19:43:22,064 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 19:43:22.056(Timestamp)
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] <==      Total: 37
2018-11-24 19:43:22,065 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:22,081 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,081 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 19:43:22,081 [http-nio-8090-exec-6] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 19:43:22,175 [http-nio-8090-exec-6] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543067002065,"id":10,"loginTime":1543059802065,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"b0eef96b-0ff3-46ba-aa9d-870803c01dc7","username":"wuzhihua"}(String), 2018-11-24 21:43:22.065(Timestamp), 2018-11-24 19:43:22.081(Timestamp), b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,190 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-24 19:43:22,315 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:22,315 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,315 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 19:43:22,362 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:22,362 [http-nio-8090-exec-4] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,362 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] <==      Total: 2
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 19:43:22,456 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:22,471 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 19:43:23,690 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:23,690 [http-nio-8090-exec-8] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:23,700 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 19:43:23,717 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:23,717 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:23,717 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 19:43:23,717 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-24 19:43:23,717 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-24 19:43:23,748 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,748 [http-nio-8090-exec-6] ====> Parameters: 9(Integer)
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] <====      Total: 2
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====> Parameters: 439(Integer)
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====> Parameters: 461(Integer)
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====> Parameters: 465(Integer)
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,764 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 519(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 481(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 476(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 516(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 456(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] ====> Parameters: 464(Integer)
2018-11-24 19:43:23,779 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====> Parameters: 492(Integer)
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====> Parameters: 512(Integer)
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====> Parameters: 446(Integer)
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====> Parameters: 450(Integer)
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,795 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] ====> Parameters: 518(Integer)
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] ====> Parameters: 500(Integer)
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,811 [http-nio-8090-exec-6] ====> Parameters: 447(Integer)
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====> Parameters: 463(Integer)
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====> Parameters: 483(Integer)
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====> Parameters: 487(Integer)
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====> Parameters: 486(Integer)
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,826 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 521(Integer)
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 499(Integer)
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 514(Integer)
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 458(Integer)
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 468(Integer)
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,842 [http-nio-8090-exec-6] ====> Parameters: 462(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====> Parameters: 517(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====> Parameters: 489(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====> Parameters: 490(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====> Parameters: 442(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====> Parameters: 457(Integer)
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,857 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 510(Integer)
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 485(Integer)
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 513(Integer)
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 496(Integer)
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 459(Integer)
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,873 [http-nio-8090-exec-6] ====> Parameters: 498(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 451(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 515(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 506(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 448(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 488(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] ====> Parameters: 504(Integer)
2018-11-24 19:43:23,889 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 511(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 452(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 440(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 470(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 482(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 494(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] ====> Parameters: 520(Integer)
2018-11-24 19:43:23,904 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 449(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 454(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 472(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 466(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 460(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 475(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 491(Integer)
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,920 [http-nio-8090-exec-6] ====> Parameters: 474(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 477(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 505(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 2
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 479(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 3
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 503(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 493(Integer)
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,936 [http-nio-8090-exec-6] ====> Parameters: 507(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 501(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 469(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 444(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 502(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 467(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 484(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 443(Integer)
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,967 [http-nio-8090-exec-6] ====> Parameters: 480(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 473(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 445(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 509(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 497(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 522(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 441(Integer)
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,982 [http-nio-8090-exec-6] ====> Parameters: 478(Integer)
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====> Parameters: 495(Integer)
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====> Parameters: 453(Integer)
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] ====> Parameters: 471(Integer)
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] <====      Total: 1
2018-11-24 19:43:23,998 [http-nio-8090-exec-6] <==      Total: 83
2018-11-24 19:43:25,201 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:25,201 [http-nio-8090-exec-10] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:25,212 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 19:43:25,215 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_project sp where 1=1 order by sp.sort 
2018-11-24 19:43:25,215 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-24 19:43:25,215 [http-nio-8090-exec-10] <==      Total: 85
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==> Parameters: null
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] <==      Total: 0
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 19:43:25,246 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-24 19:43:25,261 [http-nio-8090-exec-8] <==      Total: 37
2018-11-24 19:43:29,089 [http-nio-8090-exec-3] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 19:43:29,103 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 19:43:29.089(Timestamp)
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] <==      Total: 37
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:29,104 [http-nio-8090-exec-3] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 19:43:29,120 [http-nio-8090-exec-3] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543067009104,"id":10,"loginTime":1543059809104,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"b0eef96b-0ff3-46ba-aa9d-870803c01dc7","username":"wuzhihua"}(String), 2018-11-24 21:43:29.104(Timestamp), 2018-11-24 19:43:29.104(Timestamp), b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,120 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-24 19:43:29,229 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:29,229 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,229 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 19:43:29,276 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:29,276 [http-nio-8090-exec-9] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,276 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:29,370 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:29,370 [http-nio-8090-exec-4] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:29,370 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 19:43:29,370 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 19:43:29,370 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:29,386 [http-nio-8090-exec-4] <==      Total: 2
2018-11-24 19:43:29,386 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 19:43:29,386 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-24 19:43:29,386 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 19:43:31,041 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:31,041 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:31,053 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 19:43:31,068 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:31,068 [http-nio-8090-exec-9] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:31,068 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:31,068 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 19:43:31,068 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 19:43:31,084 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 19:43:31,084 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-24 19:43:31,084 [http-nio-8090-exec-9] <====      Total: 3
2018-11-24 19:43:31,084 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 19:43:44,159 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:44,159 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:44,172 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 19:43:44,174 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 19:43:44,174 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-24 19:43:44,174 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==> Parameters: null
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] <==      Total: 0
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-24 19:43:44,189 [http-nio-8090-exec-5] <==      Total: 37
2018-11-24 20:07:38,153 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:07:38,158 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:07:38,158 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:07:38,330 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:07:38,330 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:07:38,330 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:07:38,439 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:07:38,439 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:07:38,439 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:07:38,439 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:07:38,455 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:07:38,455 [http-nio-8090-exec-6] <==      Total: 2
2018-11-24 20:07:38,455 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:07:38,455 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:07:38,455 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:07:59,887 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:07:59,889 [http-nio-8090-exec-6] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:07:59,890 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:07:59,922 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:07:59,922 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:07:59,922 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:08:00,032 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:00,032 [http-nio-8090-exec-5] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:00,032 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] <==      Total: 2
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:00,047 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:08:05,733 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:05,743 [http-nio-8090-exec-7] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:05,745 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:08:05,745 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:05,745 [http-nio-8090-exec-8] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:05,761 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:08:05,902 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:05,902 [http-nio-8090-exec-1] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:05,902 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:08:05,917 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:05,917 [http-nio-8090-exec-2] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:05,917 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:08:05,933 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:08:05,933 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-24 20:08:05,933 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:08:05,933 [http-nio-8090-exec-2] ====> Parameters: 479(Integer)
2018-11-24 20:08:05,948 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 20:08:05,948 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:08:05,948 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-24 20:08:05,948 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:08:05,948 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:08:05,948 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-24 20:08:05,964 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:08:05,964 [http-nio-8090-exec-7] <==      Total: 7
2018-11-24 20:08:09,557 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:09,560 [http-nio-8090-exec-1] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:09,562 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] ====> Parameters: 479(Integer)
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] <====      Total: 3
2018-11-24 20:08:09,578 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:08:15,655 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:15,658 [http-nio-8090-exec-1] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:15,659 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] ====> Parameters: 479(Integer)
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] <====      Total: 3
2018-11-24 20:08:15,676 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:08:21,924 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:21,924 [http-nio-8090-exec-8] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:21,930 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:08:21,931 [http-nio-8090-exec-8] ==>  Preparing: delete from t_token where id = ? 
2018-11-24 20:08:21,931 [http-nio-8090-exec-8] ==> Parameters: b0eef96b-0ff3-46ba-aa9d-870803c01dc7(String)
2018-11-24 20:08:21,946 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-24 20:08:26,820 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-24 20:08:26,830 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:26,831 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:08:26,831 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:08:26,831 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:26,831 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:08:26,831 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:08:26,847 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 20:08:26,847 [http-nio-8090-exec-9] <==      Total: 37
2018-11-24 20:08:26,940 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-24 20:08:26,940 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543068506925,"id":10,"loginTime":1543061306925,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:08:26.925(Timestamp), 2018-11-24 20:08:26.925(Timestamp), 2018-11-24 20:08:26.925(Timestamp)
2018-11-24 20:08:26,940 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-24 20:08:27,050 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:27,050 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:27,065 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:08:27,097 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:27,097 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:27,097 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:08:27,190 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:27,190 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:27,190 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:08:27,190 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:08:27,206 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:27,206 [http-nio-8090-exec-2] <==      Total: 2
2018-11-24 20:08:27,206 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:08:27,206 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 20:08:27,206 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:08:29,705 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:29,705 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:29,722 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-24 20:08:29,738 [http-nio-8090-exec-9] <====      Total: 3
2018-11-24 20:08:29,754 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:08:57,279 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:57,279 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:57,281 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] <====      Total: 3
2018-11-24 20:08:57,328 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:09:40,102 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:40,118 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:40,119 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:09:40,151 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:40,151 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:40,151 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:09:40,479 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:40,479 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] <==      Total: 2
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-24 20:09:40,494 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:09:41,947 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:41,947 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:41,959 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] ====> Parameters: 479(Integer)
2018-11-24 20:09:41,975 [http-nio-8090-exec-8] <====      Total: 3
2018-11-24 20:09:41,991 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:09:43,131 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:43,131 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:43,137 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:09:43,138 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:09:43,138 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-24 20:09:43,138 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:09:43,154 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:43,154 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:43,154 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] ==> Parameters: null
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] <==      Total: 0
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-24 20:09:43,169 [http-nio-8090-exec-4] <==      Total: 37
2018-11-24 20:09:49,246 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:49,246 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:49,259 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] <====      Total: 3
2018-11-24 20:09:49,275 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:09:53,055 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:53,058 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:53,059 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:09:53,059 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:09:53,059 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:09:53,059 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:09:53,075 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] ==> Parameters: null
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] <==      Total: 0
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-24 20:09:53,090 [http-nio-8090-exec-6] <==      Total: 37
2018-11-24 20:10:55,513 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:10:55,519 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:10:55,520 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:10:55,521 [http-nio-8090-exec-7] ==>  Preparing: select count(1) from sys_role sr ,proj_role_relation prr ,sys_project sp where 1=1 and sr.id=prr.role_id and prr.proj_id=sp.id and sr.name=? and sp.id=? 
2018-11-24 20:10:55,521 [http-nio-8090-exec-7] ==> Parameters: 审批人员(String), 479(Long)
2018-11-24 20:10:55,521 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:11:03,551 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:03,551 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:03,565 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:11:03,566 [http-nio-8090-exec-6] ==>  Preparing: select count(1) from sys_role sr ,proj_role_relation prr ,sys_project sp where 1=1 and sr.id=prr.role_id and prr.proj_id=sp.id and sr.name=? and sp.id=? 
2018-11-24 20:11:03,566 [http-nio-8090-exec-6] ==> Parameters: 审批人员1(String), 479(Long)
2018-11-24 20:11:03,566 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:11:03,566 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:03,566 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:03,582 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:11:03,582 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_role(name,description,createTime,sort) values(?,?,?,?) 
2018-11-24 20:11:03,582 [http-nio-8090-exec-1] ==> Parameters: 审批人员1(String), 负责流程的管理(String), 2018-11-24 20:11:03.582(Timestamp), 50(String)
2018-11-24 20:11:03,598 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-24 20:11:03,598 [http-nio-8090-exec-1] ==>  Preparing: insert into proj_role_relation (role_id,proj_id) values ( ?, ? ) 
2018-11-24 20:11:03,598 [http-nio-8090-exec-1] ==> Parameters: 109(Long), 479(Long)
2018-11-24 20:11:03,613 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-24 20:11:03,613 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_role_permission (roleId,permissionId) values ( ?, ? ) , ( ?, ? ) 
2018-11-24 20:11:03,613 [http-nio-8090-exec-1] ==> Parameters: 109(Long), 105(Long), 109(Long), 107(Long)
2018-11-24 20:11:03,613 [http-nio-8090-exec-1] <==    Updates: 2
2018-11-24 20:11:03,754 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:03,754 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:03,754 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] ====> Parameters: 479(Integer)
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] <====      Total: 4
2018-11-24 20:11:03,770 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:11:08,206 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:08,206 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:08,216 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:11:08,218 [http-nio-8090-exec-5] ==>  Preparing: delete from proj_role_relation where role_id=? and role_id not in (1,20) 
2018-11-24 20:11:08,218 [http-nio-8090-exec-5] ==> Parameters: 109(Long)
2018-11-24 20:11:08,328 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-24 20:11:08,328 [http-nio-8090-exec-5] ==>  Preparing: delete from sys_role_permission where roleId=? and roleId not in (1,20) 
2018-11-24 20:11:08,328 [http-nio-8090-exec-5] ==> Parameters: 109(Long)
2018-11-24 20:11:08,343 [http-nio-8090-exec-5] <==    Updates: 2
2018-11-24 20:11:08,343 [http-nio-8090-exec-5] ==>  Preparing: delete from sys_role_user where roleId = ? 
2018-11-24 20:11:08,343 [http-nio-8090-exec-5] ==> Parameters: 109(Long)
2018-11-24 20:11:08,343 [http-nio-8090-exec-5] <==    Updates: 0
2018-11-24 20:11:08,343 [http-nio-8090-exec-5] ==>  Preparing: delete from sys_role where id=? and id not in (1,20) 
2018-11-24 20:11:08,359 [http-nio-8090-exec-5] ==> Parameters: 109(Long)
2018-11-24 20:11:08,359 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-24 20:11:08,468 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:08,468 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:08,468 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] ====> Parameters: 479(Integer)
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] <====      Total: 3
2018-11-24 20:11:08,484 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:11:11,858 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:11,858 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:11,869 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:11:11,871 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:11:11,871 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 20:11:11,871 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==> Parameters: null
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] <==      Total: 0
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-24 20:11:11,887 [http-nio-8090-exec-5] <==      Total: 37
2018-11-24 20:11:14,605 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:14,605 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:14,621 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-24 20:11:14,637 [http-nio-8090-exec-3] <==      Total: 37
2018-11-24 20:11:40,287 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:40,287 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:40,300 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:11:40,301 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-24 20:11:40,301 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-24 20:11:40,301 [http-nio-8090-exec-1] <==      Total: 15
2018-11-24 20:11:40,317 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:40,317 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:40,317 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:11:40,332 [http-nio-8090-exec-4] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-24 20:11:40,332 [http-nio-8090-exec-4] ==> Parameters: menu(String)
2018-11-24 20:11:40,332 [http-nio-8090-exec-4] <==      Total: 2
2018-11-24 20:11:54,954 [http-nio-8090-exec-10] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:11:54,968 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 20:11:54.954(Timestamp)
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] <==      Total: 37
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:11:54,970 [http-nio-8090-exec-10] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:11:54,985 [http-nio-8090-exec-10] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543068714970,"id":10,"loginTime":1543061514970,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:11:54.97(Timestamp), 2018-11-24 20:11:54.97(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:54,985 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-24 20:11:55,141 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:55,141 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:55,141 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:11:55,173 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:55,173 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:55,188 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:11:55,266 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:55,266 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:55,266 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:11:55,266 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:11:55,282 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:11:55,282 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 20:11:55,282 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:11:55,282 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:11:55,282 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:11:56,219 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:56,219 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:56,227 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-24 20:11:56,244 [http-nio-8090-exec-7] <==      Total: 37
2018-11-24 20:12:02,680 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:12:02,693 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 20:12:02.68(Timestamp)
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] <==      Total: 37
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:12:02,695 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543068722695,"id":10,"loginTime":1543061522695,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:12:02.695(Timestamp), 2018-11-24 20:12:02.695(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:02,945 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-24 20:12:03,086 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:03,086 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:03,086 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:12:03,117 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:03,117 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:03,117 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:12:03,242 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:12:03,820 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:03,820 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:03,821 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:12:03,822 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:03,822 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:03,837 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:12:03,837 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:12:03,837 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-24 20:12:03,837 [http-nio-8090-exec-3] <==      Total: 37
2018-11-24 20:12:39,973 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:39,973 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:39,976 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:12:39,977 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:12:39,977 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:12:39,977 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:12:39,977 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-24 20:12:39,977 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:12:40,008 [http-nio-8090-exec-7] <==      Total: 6
2018-11-24 20:12:41,039 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:41,039 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-24 20:12:41,056 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:12:41,056 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:12:41,056 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:12:41,072 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:12:41,072 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 20:18:13,558 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:13,575 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:13,591 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:18:13,716 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:13,716 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:13,732 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:18:13,825 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:13,825 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:13,825 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:18:13,841 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:18:13,841 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:13,841 [http-nio-8090-exec-5] <==      Total: 2
2018-11-24 20:18:13,841 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:18:13,857 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:13,857 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:18:15,872 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:15,886 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:15,887 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:18:15,904 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:15,904 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:15,904 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:18:18,107 [http-nio-8090-exec-7] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 20:18:18.107(Timestamp)
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:18:18,112 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:18:18,127 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 20:18:18,127 [http-nio-8090-exec-7] <==      Total: 37
2018-11-24 20:18:18,127 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:18,127 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,127 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:18:18,143 [http-nio-8090-exec-7] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:18:18,143 [http-nio-8090-exec-7] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069098127,"id":10,"loginTime":1543061898127,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:18:18.127(Timestamp), 2018-11-24 20:18:18.127(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,158 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-24 20:18:18,283 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:18,283 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,283 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:18:18,330 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:18,330 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,330 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:18:18,424 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:18,424 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] <==      Total: 2
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:18:18,440 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:18,455 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:18:19,096 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:19,096 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:19,096 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:18:19,111 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:19,111 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:19,126 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:18:19,127 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:18:19,127 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-24 20:18:19,127 [http-nio-8090-exec-10] <==      Total: 37
2018-11-24 20:18:25,907 [http-nio-8090-exec-8] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:18:25,910 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 20:18:25.907(Timestamp)
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] <==      Total: 37
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:18:25,912 [http-nio-8090-exec-8] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:18:25,927 [http-nio-8090-exec-8] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069105912,"id":10,"loginTime":1543061905912,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:18:25.912(Timestamp), 2018-11-24 20:18:25.912(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:25,927 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-24 20:18:26,037 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:26,037 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:26,037 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:18:26,083 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:26,083 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:26,083 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:18:26,193 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:26,193 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:26,193 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] <==      Total: 2
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 20:18:26,224 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:18:26,771 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:26,786 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:26,786 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:18:26,802 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:26,802 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:26,802 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:18:27,583 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:27,583 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:27,596 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:18:27,597 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-24 20:18:27,597 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-24 20:18:27,597 [http-nio-8090-exec-9] <==      Total: 15
2018-11-24 20:18:27,612 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:27,612 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:27,628 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:18:27,644 [http-nio-8090-exec-3] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-24 20:18:27,644 [http-nio-8090-exec-3] ==> Parameters: menu(String)
2018-11-24 20:18:27,644 [http-nio-8090-exec-3] <==      Total: 2
2018-11-24 20:18:31,221 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:31,221 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:31,235 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:18:31,236 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-24 20:18:31,236 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-24 20:18:31,236 [http-nio-8090-exec-7] <==      Total: 15
2018-11-24 20:18:31,283 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:18:31,283 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:18:31,283 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:18:31,298 [http-nio-8090-exec-8] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-24 20:18:31,298 [http-nio-8090-exec-8] ==> Parameters: menu(String)
2018-11-24 20:18:31,298 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 20:19:02,572 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:02,572 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:02,576 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:19:02,640 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:19:02,655 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:19:02,702 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:19:02,702 [http-nio-8090-exec-7] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:19:02,718 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:19:02,718 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:19:03,874 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:03,878 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:03,879 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:19:03,879 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:03,879 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] ====> Parameters: 479(Integer)
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] <====      Total: 3
2018-11-24 20:19:03,895 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:19:10,003 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:10,003 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:10,018 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:19:10,018 [http-nio-8090-exec-7] ==>  Preparing: select sr.id,sr.name,sr.description ,sr.createTime,sr.updateTime ,sr.sort ,sp.id as projId from sys_role sr ,proj_role_relation prr ,sys_project sp where 1=1 and sr.id=prr.role_id and prr.proj_id=sp.id and sr.id=? order by sr.sort 
2018-11-24 20:19:10,018 [http-nio-8090-exec-7] ==> Parameters: 108(Long)
2018-11-24 20:19:10,018 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-24 20:19:10,049 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:19:10,065 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:10,065 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:10,065 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:19:10,065 [http-nio-8090-exec-10] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:19:10,080 [http-nio-8090-exec-10] ==> Parameters: 108(Long)
2018-11-24 20:19:10,080 [http-nio-8090-exec-10] <==      Total: 9
2018-11-24 20:19:10,080 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:19:10,080 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-24 20:19:10,080 [http-nio-8090-exec-10] <==      Total: 37
2018-11-24 20:19:12,236 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:12,236 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:12,237 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:19:12,239 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] ====> Parameters: 479(Integer)
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 20:19:12,254 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:19:51,667 [http-nio-8090-exec-4] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:19:51,672 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 20:19:51.667(Timestamp)
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] <==      Total: 37
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:19:51,690 [http-nio-8090-exec-4] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:19:51,705 [http-nio-8090-exec-4] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069191690,"id":10,"loginTime":1543061991690,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:19:51.69(Timestamp), 2018-11-24 20:19:51.69(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,705 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-24 20:19:51,830 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:51,830 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,846 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:19:51,893 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:51,893 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,893 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] <==      Total: 2
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:19:51,986 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-24 20:19:52,002 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:19:52,518 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:52,518 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:52,518 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:19:52,533 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:52,549 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:52,549 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:19:52,549 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:19:52,549 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-24 20:19:52,549 [http-nio-8090-exec-3] <==      Total: 37
2018-11-24 20:19:55,407 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:19:55,407 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:19:55,415 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:19:55,417 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:19:55,417 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-24 20:19:55,432 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:19:55,432 [http-nio-8090-exec-9] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:19:55,432 [http-nio-8090-exec-9] ==> Parameters: 10(Integer)
2018-11-24 20:19:55,432 [http-nio-8090-exec-9] <==      Total: 10
2018-11-24 20:20:07,430 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:07,430 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:07,452 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:20:07,452 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:07,452 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-24 20:20:07,468 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:20:07,468 [http-nio-8090-exec-5] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:20:07,468 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-24 20:20:07,468 [http-nio-8090-exec-5] <==      Total: 10
2018-11-24 20:20:12,857 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:12,857 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:12,865 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] ==> Parameters: 10(Integer)
2018-11-24 20:20:12,867 [http-nio-8090-exec-2] <==      Total: 10
2018-11-24 20:20:15,710 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:15,710 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:15,716 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] ==> Parameters: 10(Integer)
2018-11-24 20:20:15,717 [http-nio-8090-exec-7] <==      Total: 10
2018-11-24 20:20:19,357 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:19,357 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:19,360 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:20:19,362 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:19,362 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-24 20:20:19,362 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:20:19,362 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-24 20:20:19,362 [http-nio-8090-exec-1] ==> Parameters: 10(Integer), 10(Integer)
2018-11-24 20:20:19,378 [http-nio-8090-exec-1] <==      Total: 10
2018-11-24 20:20:20,034 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:20,034 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:20,034 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:20:20,050 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:20,050 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-24 20:20:20,050 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:20:20,050 [http-nio-8090-exec-10] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-24 20:20:20,050 [http-nio-8090-exec-10] ==> Parameters: 20(Integer), 10(Integer)
2018-11-24 20:20:20,065 [http-nio-8090-exec-10] <==      Total: 10
2018-11-24 20:20:20,565 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:20,565 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:20,567 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:20:20,569 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:20,569 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-24 20:20:20,569 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:20:20,569 [http-nio-8090-exec-4] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-24 20:20:20,569 [http-nio-8090-exec-4] ==> Parameters: 30(Integer), 10(Integer)
2018-11-24 20:20:20,585 [http-nio-8090-exec-4] <==      Total: 10
2018-11-24 20:20:22,069 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:22,069 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:22,079 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] ==> Parameters: 20(Integer), 10(Integer)
2018-11-24 20:20:22,080 [http-nio-8090-exec-6] <==      Total: 10
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] ==> Parameters: 10(Integer), 10(Integer)
2018-11-24 20:20:22,501 [http-nio-8090-exec-3] <==      Total: 10
2018-11-24 20:20:54,681 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:20:54,681 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:20:54,687 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%nokia%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%nokia%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-24 20:20:54,689 [http-nio-8090-exec-5] <==      Total: 10
2018-11-24 20:21:01,156 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:21:01,156 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:21:01,171 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:21:01,172 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%系统%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:21:01,172 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-24 20:21:01,172 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:21:01,172 [http-nio-8090-exec-10] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%系统%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:21:01,172 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-24 20:21:01,187 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:21:03,687 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:21:03,687 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:21:03,698 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:21:03,698 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_project where id=? 
2018-11-24 20:21:03,698 [http-nio-8090-exec-6] ==> Parameters: 9(Long)
2018-11-24 20:21:03,698 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:21:10,496 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:21:10,496 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:21:10,505 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.proj_name LIKE '%系统%' GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.proj_name like '%系统%' group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] ==> Parameters: 20(Integer)
2018-11-24 20:21:10,506 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:26:24,316 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:24,316 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:24,321 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,337 [http-nio-8090-exec-4] ====> Parameters: 9(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 2
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 461(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 439(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 465(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 519(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 481(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] ====> Parameters: 476(Integer)
2018-11-24 20:26:24,352 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====> Parameters: 516(Integer)
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====> Parameters: 456(Integer)
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====> Parameters: 512(Integer)
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====> Parameters: 464(Integer)
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,368 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====> Parameters: 492(Integer)
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====> Parameters: 446(Integer)
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====> Parameters: 450(Integer)
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====> Parameters: 518(Integer)
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,383 [http-nio-8090-exec-4] ====> Parameters: 447(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 500(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 463(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 483(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 487(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 521(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====> Parameters: 486(Integer)
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,399 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 499(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 514(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 458(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 468(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 462(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 517(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====> Parameters: 489(Integer)
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,415 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 490(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 442(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 457(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 485(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 513(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] ====> Parameters: 510(Integer)
2018-11-24 20:26:24,430 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 496(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 459(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 451(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 515(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 506(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 498(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 488(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 504(Integer)
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,446 [http-nio-8090-exec-4] ====> Parameters: 448(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 511(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 452(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 440(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 470(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 482(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 494(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 520(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 449(Integer)
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,462 [http-nio-8090-exec-4] ====> Parameters: 454(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 466(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 472(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 460(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 475(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 491(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 474(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 477(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====> Parameters: 505(Integer)
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] <====      Total: 2
2018-11-24 20:26:24,477 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 479(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 3
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 503(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 493(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 507(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 501(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 444(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 469(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 502(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] ====> Parameters: 467(Integer)
2018-11-24 20:26:24,493 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 443(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 484(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 480(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 473(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 445(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 509(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 497(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 522(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 441(Integer)
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,508 [http-nio-8090-exec-4] ====> Parameters: 478(Integer)
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====> Parameters: 495(Integer)
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====> Parameters: 453(Integer)
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] ====> Parameters: 471(Integer)
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] <====      Total: 1
2018-11-24 20:26:24,524 [http-nio-8090-exec-4] <==      Total: 83
2018-11-24 20:26:31,288 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:26:31,295 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 20:26:31.288(Timestamp)
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] <==      Total: 37
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:26:31,297 [http-nio-8090-exec-2] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069591297,"id":10,"loginTime":1543062391297,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:26:31.297(Timestamp), 2018-11-24 20:26:31.297(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,313 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-24 20:26:31,438 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:31,438 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,438 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:26:31,469 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:31,469 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,469 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:31,579 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:26:32,610 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:32,610 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:32,624 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:32,625 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:26:32,625 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-24 20:26:32,625 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:32,625 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:26:32,625 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:26:32,641 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:34,969 [http-nio-8090-exec-9] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:26:34,973 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 20:26:34.969(Timestamp)
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] <==      Total: 37
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069594991,"id":10,"loginTime":1543062394991,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:26:34.991(Timestamp), 2018-11-24 20:26:34.991(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:34,991 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-24 20:26:35,100 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:35,100 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:35,100 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:26:35,132 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:35,147 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:35,147 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:26:35,241 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:35,241 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:35,241 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] <==      Total: 2
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:35,257 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:36,600 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:36,600 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:36,606 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:26:36,607 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:26:36,607 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-24 20:26:36,607 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:26:36,622 [http-nio-8090-exec-4] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:26:36,622 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-24 20:26:36,622 [http-nio-8090-exec-4] <==      Total: 10
2018-11-24 20:26:38,169 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:38,183 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:38,184 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:26:38,184 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:38,184 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:38,184 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 9(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 2
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 461(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 439(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 465(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 519(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 481(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 476(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====> Parameters: 516(Integer)
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,200 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 456(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 512(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 464(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 492(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 446(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 450(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 518(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 447(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 500(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 463(Integer)
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,215 [http-nio-8090-exec-7] ====> Parameters: 483(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 487(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 521(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 486(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 499(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 514(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 458(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 468(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 462(Integer)
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,231 [http-nio-8090-exec-7] ====> Parameters: 517(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 489(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 490(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 442(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 457(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 485(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 513(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 510(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 496(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] ====> Parameters: 459(Integer)
2018-11-24 20:26:38,247 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 451(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 515(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 506(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 498(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 488(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 504(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 448(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 511(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 452(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====> Parameters: 440(Integer)
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,262 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 470(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 482(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 494(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 520(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 449(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 454(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 466(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 472(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 460(Integer)
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,278 [http-nio-8090-exec-7] ====> Parameters: 475(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 491(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 474(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 477(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 505(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 2
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 479(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 3
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 503(Integer)
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,294 [http-nio-8090-exec-7] ====> Parameters: 493(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 507(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 501(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 444(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 469(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 502(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 467(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 443(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 484(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 480(Integer)
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,309 [http-nio-8090-exec-7] ====> Parameters: 473(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 445(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 509(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 497(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 522(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 441(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 478(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 495(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 453(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] ====> Parameters: 471(Integer)
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 20:26:38,325 [http-nio-8090-exec-7] <==      Total: 83
2018-11-24 20:26:42,027 [http-nio-8090-exec-5] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:26:42,037 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 20:26:42.027(Timestamp)
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] <==      Total: 37
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543069602039,"id":10,"loginTime":1543062402039,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:26:42.039(Timestamp), 2018-11-24 20:26:42.039(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,039 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-24 20:26:42,164 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:42,164 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,164 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:26:42,211 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:42,211 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,211 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:26:42,320 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:42,320 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:42,320 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] <==      Total: 2
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-24 20:26:42,336 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:43,039 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:43,039 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:43,046 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:26:43,047 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:26:44,843 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:44,859 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:44,861 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] <====      Total: 3
2018-11-24 20:26:44,877 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:26:47,282 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:47,282 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:47,286 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:26:47,286 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:26:47,286 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-24 20:26:47,286 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==> Parameters: null
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] <==      Total: 0
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:26:47,301 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-24 20:26:47,317 [http-nio-8090-exec-1] <==      Total: 37
2018-11-24 20:26:49,160 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:49,160 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:49,162 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:26:49,164 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:49,164 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:49,164 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] ====> Parameters: 479(Integer)
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] <====      Total: 3
2018-11-24 20:26:49,180 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:26:55,882 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:55,882 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:55,892 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:26:55,892 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_project sp where 1=1 and sp.id =? order by sp.sort 
2018-11-24 20:26:55,892 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-24 20:26:55,892 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==>  Preparing: select sp.id from sys_role sr ,sys_role_permission srp ,sys_permission sp where 1=1 and sr.id=srp.roleId and srp.permissionId=sp.id and sr.id=? 
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==> Parameters: null
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] <==      Total: 0
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-24 20:26:55,908 [http-nio-8090-exec-7] <==      Total: 37
2018-11-24 20:27:08,280 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:08,280 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:08,285 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:08,286 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:08,286 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:08,286 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:27:08,302 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-24 20:27:08,302 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:27:08,302 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:08,302 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-24 20:27:08,317 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:27:08,317 [http-nio-8090-exec-7] <==      Total: 7
2018-11-24 20:27:13,413 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:13,413 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:13,423 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:27:13,423 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:13,423 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ====> Parameters: 479(Integer)
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==> Parameters: 107(Long)
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] ==> Parameters: 75(Long)
2018-11-24 20:27:13,438 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:27:13,454 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-24 20:27:13,454 [http-nio-8090-exec-2] ==> Parameters: 108(Long)
2018-11-24 20:27:13,454 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:27:17,359 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:17,359 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:17,372 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:17,372 [http-nio-8090-exec-7] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-24 20:27:17,372 [http-nio-8090-exec-7] ==> Parameters: 107(Long)
2018-11-24 20:27:17,372 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:17,528 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:27:17,528 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 500(Integer)
2018-11-24 20:27:17,544 [http-nio-8090-exec-7] <==      Total: 7
2018-11-24 20:50:09,750 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:09,760 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:09,768 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:50:09,905 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:09,906 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:09,908 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:50:10,038 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:10,039 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:10,041 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:50:10,051 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:50:10,061 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 20:50:10,063 [http-nio-8090-exec-1] <==      Total: 2
2018-11-24 20:50:10,065 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:50:10,071 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 20:50:10,075 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:50:11,392 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:11,392 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:11,393 [http-nio-8090-exec-7] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:11,393 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:11,395 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 20:50:11,396 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:50:11,479 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:50:11,481 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 20:50:11,482 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:50:11,485 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-24 20:50:11,486 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:50:11,492 [http-nio-8090-exec-9] <==      Total: 2
2018-11-24 20:50:15,324 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:50:15,324 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:50:15,326 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:50:15,335 [http-nio-8090-exec-10] ==>  Preparing: select * from lte_plane where id=? 
2018-11-24 20:50:15,337 [http-nio-8090-exec-10] ==> Parameters: 10(Long)
2018-11-24 20:50:15,347 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-24 20:50:15,348 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-24 20:50:15,352 [http-nio-8090-exec-10] <====      Total: 3
2018-11-24 20:50:15,356 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-24 20:50:15,362 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-24 20:50:15,364 [http-nio-8090-exec-10] <====      Total: 1
2018-11-24 20:50:15,365 [http-nio-8090-exec-10] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-24 20:50:15,366 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-24 20:50:15,369 [http-nio-8090-exec-10] <====      Total: 1
2018-11-24 20:50:15,372 [http-nio-8090-exec-10] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-24 20:50:15,378 [http-nio-8090-exec-10] ====> Parameters: 123456(String)
2018-11-24 20:50:15,385 [http-nio-8090-exec-10] <====      Total: 3
2018-11-24 20:50:15,386 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:51:10,999 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:11,000 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:11,002 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:11,018 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:51:11,019 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 20:51:11,020 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:11,022 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-24 20:51:11,023 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:51:11,026 [http-nio-8090-exec-9] <==      Total: 6
2018-11-24 20:51:12,768 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:12,769 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:12,771 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:51:12,776 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:51:12,777 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-24 20:51:12,778 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:51:12,779 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-24 20:51:12,780 [http-nio-8090-exec-10] ==> Parameters: 479(Long), 20(Integer)
2018-11-24 20:51:12,785 [http-nio-8090-exec-10] <==      Total: 6
2018-11-24 20:51:21,394 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:21,395 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:21,398 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:21,513 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:21,514 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:21,515 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:21,525 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_config lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 20:51:21,527 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-24 20:51:21,528 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:21,529 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-24 20:51:21,530 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:51:21,532 [http-nio-8090-exec-9] <==      Total: 2
2018-11-24 20:51:22,480 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:22,480 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:22,481 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:22,481 [http-nio-8090-exec-3] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:22,482 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:51:22,482 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 20:51:22,521 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-24 20:51:22,523 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-24 20:51:22,525 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:51:22,526 [http-nio-8090-exec-8] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-24 20:51:22,527 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:51:22,529 [http-nio-8090-exec-8] <==      Total: 7
2018-11-24 20:51:23,031 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:23,032 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:23,033 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:23,053 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:23,054 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:23,055 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:23,069 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-24 20:51:23,070 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-24 20:51:23,072 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-24 20:51:23,074 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-24 20:51:23,076 [http-nio-8090-exec-1] <====      Total: 3
2018-11-24 20:51:23,077 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:37,977 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:37,978 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:37,982 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 20:51:38,012 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:38,013 [http-nio-8090-exec-9] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:38,017 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 20:51:39,095 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:39,095 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:39,097 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:39,107 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-24 20:51:39,110 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-24 20:51:39,111 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:39,112 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-24 20:51:39,113 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 20:51:39,114 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:40,592 [http-nio-8090-exec-6] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 20:51:40,597 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-24 20:51:40.591(Timestamp)
2018-11-24 20:51:40,602 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-24 20:51:40,607 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:40,607 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,608 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:51:40,612 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 20:51:40,614 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 20:51:40,617 [http-nio-8090-exec-6] <==      Total: 37
2018-11-24 20:51:40,619 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:40,619 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,622 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:51:40,632 [http-nio-8090-exec-6] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 20:51:40,636 [http-nio-8090-exec-6] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543071100618,"id":10,"loginTime":1543063900618,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"0d44cb33-ace1-47e3-adcc-5f5f2df3e223","username":"wuzhihua"}(String), 2018-11-24 22:51:40.618(Timestamp), 2018-11-24 20:51:40.623(Timestamp), 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,641 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-24 20:51:40,762 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:40,762 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,764 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:51:40,806 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:40,807 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,808 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 20:51:40,932 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:40,933 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:40,935 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:40,940 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 20:51:40,942 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 20:51:40,943 [http-nio-8090-exec-1] <==      Total: 2
2018-11-24 20:51:40,944 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 20:51:40,945 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 20:51:40,949 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:41,430 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:41,431 [http-nio-8090-exec-6] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:41,432 [http-nio-8090-exec-6] <==      Total: 1
2018-11-24 20:51:41,454 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:41,455 [http-nio-8090-exec-2] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:41,460 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 20:51:41,465 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-24 20:51:41,466 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-24 20:51:41,470 [http-nio-8090-exec-2] <==      Total: 37
2018-11-24 20:51:54,808 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:54,809 [http-nio-8090-exec-8] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:54,810 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 20:51:54,817 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_permission t where t.type = 1 order by t.sort 
2018-11-24 20:51:54,819 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-24 20:51:54,825 [http-nio-8090-exec-8] <==      Total: 15
2018-11-24 20:51:54,895 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:54,896 [http-nio-8090-exec-5] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:54,897 [http-nio-8090-exec-5] <==      Total: 1
2018-11-24 20:51:54,901 [http-nio-8090-exec-5] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-24 20:51:54,904 [http-nio-8090-exec-5] ==> Parameters: menu(String)
2018-11-24 20:51:54,908 [http-nio-8090-exec-5] <==      Total: 2
2018-11-24 20:51:54,932 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 20:51:54,933 [http-nio-8090-exec-1] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 20:51:54,936 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 20:51:54,946 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t where t.id = ? 
2018-11-24 20:51:54,946 [http-nio-8090-exec-1] ==> Parameters: 107(Long)
2018-11-24 20:51:54,948 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 23:11:19,531 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:19,545 [http-nio-8090-exec-10] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 23:11:19,561 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 23:11:19,655 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:19,655 [http-nio-8090-exec-4] ==> Parameters: 0d44cb33-ace1-47e3-adcc-5f5f2df3e223(String)
2018-11-24 23:11:19,655 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 23:11:25,315 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-24 23:11:25,326 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:25,327 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 23:11:25,327 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 23:11:25,327 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:25,327 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 23:11:25,343 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 23:11:25,343 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-24 23:11:25,343 [http-nio-8090-exec-1] <==      Total: 37
2018-11-24 23:11:25,436 [http-nio-8090-exec-1] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-24 23:11:25,452 [http-nio-8090-exec-1] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543079485436,"id":10,"loginTime":1543072285436,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"e7611fed-d1a2-487d-96a2-b4638d4c6a6d","username":"wuzhihua"}(String), 2018-11-25 01:11:25.436(Timestamp), 2018-11-24 23:11:25.436(Timestamp), 2018-11-24 23:11:25.436(Timestamp)
2018-11-24 23:11:25,452 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-24 23:11:25,624 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:25,624 [http-nio-8090-exec-1] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:25,624 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 23:11:25,702 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:25,702 [http-nio-8090-exec-3] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:25,702 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 23:11:25,811 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:25,811 [http-nio-8090-exec-2] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:25,811 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:11:25,827 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 23:11:25,827 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:25,843 [http-nio-8090-exec-2] <==      Total: 2
2018-11-24 23:11:25,843 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 23:11:25,843 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:25,843 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:11:27,389 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:27,400 [http-nio-8090-exec-8] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:27,401 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 23:11:27,418 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:27,418 [http-nio-8090-exec-9] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:27,418 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 23:11:27,481 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 23:11:27,481 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-24 23:11:27,481 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 23:11:30,136 [http-nio-8090-exec-2] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-24 23:11:30,139 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-24 23:11:30.136(Timestamp)
2018-11-24 23:11:30,140 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-24 23:11:30,140 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:30,140 [http-nio-8090-exec-2] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,140 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] <==      Total: 37
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-24 23:11:30,156 [http-nio-8090-exec-2] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1543079490156,"id":10,"loginTime":1543072290156,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"e7611fed-d1a2-487d-96a2-b4638d4c6a6d","username":"wuzhihua"}(String), 2018-11-25 01:11:30.156(Timestamp), 2018-11-24 23:11:30.156(Timestamp), e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,172 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-24 23:11:30,312 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:30,312 [http-nio-8090-exec-7] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,312 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:11:30,344 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:30,344 [http-nio-8090-exec-3] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,344 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:30,437 [http-nio-8090-exec-10] <==      Total: 2
2018-11-24 23:11:30,453 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 23:11:30,453 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-24 23:11:30,453 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 23:11:31,890 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:31,899 [http-nio-8090-exec-4] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:31,900 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] <==      Total: 1
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 23:11:31,901 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:31,901 [http-nio-8090-exec-4] <==      Total: 2
2018-11-24 23:11:31,901 [http-nio-8090-exec-10] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:31,901 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 23:11:34,620 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:11:34,625 [http-nio-8090-exec-2] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 23:11:34,627 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] <====      Total: 1
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] <====      Total: 1
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:11:34,643 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 23:11:34,658 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:23:15,033 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:15,044 [http-nio-8090-exec-1] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:15,044 [http-nio-8090-exec-1] <==      Total: 1
2018-11-24 23:23:15,184 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:15,184 [http-nio-8090-exec-3] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:15,184 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 23:23:15,294 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:15,294 [http-nio-8090-exec-7] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:15,294 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:23:15,309 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 23:23:15,309 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-24 23:23:15,309 [http-nio-8090-exec-7] <==      Total: 2
2018-11-24 23:23:15,309 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 23:23:15,325 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-24 23:23:15,325 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:23:16,840 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:16,840 [http-nio-8090-exec-8] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:16,851 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 23:23:16,852 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:16,852 [http-nio-8090-exec-9] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:16,852 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 23:23:16,930 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 23:23:16,930 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-24 23:23:16,930 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 23:23:16,930 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-24 23:23:16,930 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 23:23:16,946 [http-nio-8090-exec-8] <==      Total: 2
2018-11-24 23:23:18,800 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:23:18,800 [http-nio-8090-exec-7] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:23:18,812 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:23:18,813 [http-nio-8090-exec-7] ==>  Preparing: select * from lte_plane where id=? 
2018-11-24 23:23:18,813 [http-nio-8090-exec-7] ==> Parameters: 10(Long)
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] ====> Parameters: 123456(String)
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] <====      Total: 3
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] ====> Parameters: 123456(String)
2018-11-24 23:23:18,829 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] ====> Parameters: 123456(String)
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] <====      Total: 1
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] ====> Parameters: 123456(String)
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] <====      Total: 3
2018-11-24 23:23:18,844 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:28:06,027 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:06,030 [http-nio-8090-exec-10] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:06,046 [http-nio-8090-exec-10] <==      Total: 1
2018-11-24 23:28:06,186 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:06,233 [http-nio-8090-exec-3] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:06,233 [http-nio-8090-exec-3] <==      Total: 1
2018-11-24 23:28:06,343 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:06,343 [http-nio-8090-exec-9] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:06,343 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 23:28:06,358 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-24 23:28:06,374 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 23:28:06,374 [http-nio-8090-exec-9] <==      Total: 2
2018-11-24 23:28:06,374 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-24 23:28:06,374 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-24 23:28:06,374 [http-nio-8090-exec-9] <==      Total: 1
2018-11-24 23:28:07,561 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:07,578 [http-nio-8090-exec-7] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:07,579 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:28:07,580 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:07,580 [http-nio-8090-exec-8] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:07,595 [http-nio-8090-exec-8] <==      Total: 1
2018-11-24 23:28:07,658 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-24 23:28:07,658 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-24 23:28:07,658 [http-nio-8090-exec-7] <==      Total: 1
2018-11-24 23:28:07,658 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-24 23:28:07,658 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-24 23:28:07,673 [http-nio-8090-exec-7] <==      Total: 2
2018-11-24 23:28:09,204 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-24 23:28:09,214 [http-nio-8090-exec-2] ==> Parameters: e7611fed-d1a2-487d-96a2-b4638d4c6a6d(String)
2018-11-24 23:28:09,216 [http-nio-8090-exec-2] <==      Total: 1
2018-11-24 23:28:09,216 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-24 23:28:09,216 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] <====      Total: 1
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] <====      Total: 1
2018-11-24 23:28:09,232 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-24 23:28:09,248 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-24 23:28:09,248 [http-nio-8090-exec-2] <====      Total: 3
2018-11-24 23:28:09,248 [http-nio-8090-exec-2] <==      Total: 1
