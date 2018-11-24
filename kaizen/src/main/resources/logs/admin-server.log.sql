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
