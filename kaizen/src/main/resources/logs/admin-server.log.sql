2018-11-16 11:24:11,562 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:11,571 [http-nio-8090-exec-5] ==> Parameters: a7126829-0246-405c-be4c-d64c6e65e85a(String)
2018-11-16 11:24:11,579 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 11:24:11,681 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:11,681 [http-nio-8090-exec-10] ==> Parameters: a7126829-0246-405c-be4c-d64c6e65e85a(String)
2018-11-16 11:24:11,683 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 11:24:22,710 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-16 11:24:22,712 [http-nio-8090-exec-3] ==> Parameters: mocun(String)
2018-11-16 11:24:22,715 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 11:24:22,715 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 11:24:22,730 [http-nio-8090-exec-3] ==> Parameters: mocun(String)
2018-11-16 11:24:22,730 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 11:24:22,730 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 11:24:22,730 [http-nio-8090-exec-3] ==> Parameters: mocun(String), 9(Long)
2018-11-16 11:24:22,746 [http-nio-8090-exec-3] <==      Total: 37
2018-11-16 11:24:22,946 [http-nio-8090-exec-3] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-16 11:24:22,946 [http-nio-8090-exec-3] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":601920000000,"createTime":1541995509000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542345862914,"id":8713,"loginTime":1542338662914,"nickname":"默存","password":"$2a$10$bqBsy/cdV0lpOGwBcwtaEuet5krQi7fUQUEYGEgAtWI3pP4O.2xpa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"2583fbdd-0505-41ac-8a6a-11e3f9df116a","username":"mocun"}(String), 2018-11-16 13:24:22.914(Timestamp), 2018-11-16 11:24:22.914(Timestamp), 2018-11-16 11:24:22.914(Timestamp)
2018-11-16 11:24:22,962 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-16 11:24:23,053 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:23,054 [http-nio-8090-exec-7] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:24:23,055 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 11:24:23,115 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:23,115 [http-nio-8090-exec-5] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:24:23,118 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 11:24:23,237 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:23,237 [http-nio-8090-exec-3] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:24:23,238 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 11:24:23,245 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 11:24:23,246 [http-nio-8090-exec-3] ==> Parameters: mocun(String)
2018-11-16 11:24:23,250 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 11:24:23,251 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 11:24:23,251 [http-nio-8090-exec-3] ==> Parameters: mocun(String)
2018-11-16 11:24:23,252 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 11:24:30,498 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:30,499 [http-nio-8090-exec-10] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:24:30,500 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 11:24:30,512 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:24:30,512 [http-nio-8090-exec-2] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:24:30,513 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 11:24:30,520 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-16 11:24:30,522 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-16 11:24:30,526 [http-nio-8090-exec-2] <==      Total: 37
2018-11-16 11:28:06,197 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:28:06,197 [http-nio-8090-exec-2] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:28:06,198 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 11:28:06,317 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-16 11:28:06,321 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-16 11:28:06,322 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 11:28:06,323 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-16 11:28:06,326 [http-nio-8090-exec-2] ==> Parameters: 3(Integer)
2018-11-16 11:28:06,328 [http-nio-8090-exec-2] <==      Total: 3
2018-11-16 11:37:15,766 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:15,768 [http-nio-8090-exec-4] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:15,769 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 11:37:15,780 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:15,780 [http-nio-8090-exec-1] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:15,782 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:15,789 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-16 11:37:15,790 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-16 11:37:15,793 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,794 [http-nio-8090-exec-1] ====> Parameters: 9(Integer)
2018-11-16 11:37:15,796 [http-nio-8090-exec-1] <====      Total: 2
2018-11-16 11:37:15,797 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,798 [http-nio-8090-exec-1] ====> Parameters: 439(Integer)
2018-11-16 11:37:15,799 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,800 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,800 [http-nio-8090-exec-1] ====> Parameters: 461(Integer)
2018-11-16 11:37:15,801 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,802 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,803 [http-nio-8090-exec-1] ====> Parameters: 465(Integer)
2018-11-16 11:37:15,804 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,804 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,805 [http-nio-8090-exec-1] ====> Parameters: 519(Integer)
2018-11-16 11:37:15,806 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,807 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,807 [http-nio-8090-exec-1] ====> Parameters: 481(Integer)
2018-11-16 11:37:15,808 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,809 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,810 [http-nio-8090-exec-1] ====> Parameters: 476(Integer)
2018-11-16 11:37:15,811 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,812 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,812 [http-nio-8090-exec-1] ====> Parameters: 516(Integer)
2018-11-16 11:37:15,814 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,814 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,815 [http-nio-8090-exec-1] ====> Parameters: 456(Integer)
2018-11-16 11:37:15,816 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,816 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,817 [http-nio-8090-exec-1] ====> Parameters: 512(Integer)
2018-11-16 11:37:15,818 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,819 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,819 [http-nio-8090-exec-1] ====> Parameters: 464(Integer)
2018-11-16 11:37:15,821 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,821 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,822 [http-nio-8090-exec-1] ====> Parameters: 492(Integer)
2018-11-16 11:37:15,823 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,825 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,825 [http-nio-8090-exec-1] ====> Parameters: 446(Integer)
2018-11-16 11:37:15,826 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,827 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,828 [http-nio-8090-exec-1] ====> Parameters: 450(Integer)
2018-11-16 11:37:15,829 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,830 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,831 [http-nio-8090-exec-1] ====> Parameters: 447(Integer)
2018-11-16 11:37:15,832 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,833 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,833 [http-nio-8090-exec-1] ====> Parameters: 500(Integer)
2018-11-16 11:37:15,834 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,835 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,836 [http-nio-8090-exec-1] ====> Parameters: 518(Integer)
2018-11-16 11:37:15,837 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,837 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,838 [http-nio-8090-exec-1] ====> Parameters: 463(Integer)
2018-11-16 11:37:15,839 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,840 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,841 [http-nio-8090-exec-1] ====> Parameters: 483(Integer)
2018-11-16 11:37:15,843 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,843 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,844 [http-nio-8090-exec-1] ====> Parameters: 487(Integer)
2018-11-16 11:37:15,845 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,846 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,846 [http-nio-8090-exec-1] ====> Parameters: 521(Integer)
2018-11-16 11:37:15,847 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,848 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,848 [http-nio-8090-exec-1] ====> Parameters: 486(Integer)
2018-11-16 11:37:15,849 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,850 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,850 [http-nio-8090-exec-1] ====> Parameters: 499(Integer)
2018-11-16 11:37:15,851 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,852 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,852 [http-nio-8090-exec-1] ====> Parameters: 514(Integer)
2018-11-16 11:37:15,853 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,854 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,854 [http-nio-8090-exec-1] ====> Parameters: 458(Integer)
2018-11-16 11:37:15,855 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,855 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,856 [http-nio-8090-exec-1] ====> Parameters: 468(Integer)
2018-11-16 11:37:15,857 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,858 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,859 [http-nio-8090-exec-1] ====> Parameters: 517(Integer)
2018-11-16 11:37:15,860 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,860 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,861 [http-nio-8090-exec-1] ====> Parameters: 462(Integer)
2018-11-16 11:37:15,862 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,862 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,863 [http-nio-8090-exec-1] ====> Parameters: 489(Integer)
2018-11-16 11:37:15,864 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,865 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,865 [http-nio-8090-exec-1] ====> Parameters: 490(Integer)
2018-11-16 11:37:15,866 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,867 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,867 [http-nio-8090-exec-1] ====> Parameters: 442(Integer)
2018-11-16 11:37:15,868 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,869 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,869 [http-nio-8090-exec-1] ====> Parameters: 457(Integer)
2018-11-16 11:37:15,871 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,871 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,872 [http-nio-8090-exec-1] ====> Parameters: 510(Integer)
2018-11-16 11:37:15,873 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,874 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,874 [http-nio-8090-exec-1] ====> Parameters: 513(Integer)
2018-11-16 11:37:15,876 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,876 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,877 [http-nio-8090-exec-1] ====> Parameters: 485(Integer)
2018-11-16 11:37:15,878 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,878 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,879 [http-nio-8090-exec-1] ====> Parameters: 496(Integer)
2018-11-16 11:37:15,880 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,881 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,881 [http-nio-8090-exec-1] ====> Parameters: 459(Integer)
2018-11-16 11:37:15,883 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,883 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,884 [http-nio-8090-exec-1] ====> Parameters: 451(Integer)
2018-11-16 11:37:15,885 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,886 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,887 [http-nio-8090-exec-1] ====> Parameters: 498(Integer)
2018-11-16 11:37:15,888 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,888 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,889 [http-nio-8090-exec-1] ====> Parameters: 515(Integer)
2018-11-16 11:37:15,890 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,891 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,891 [http-nio-8090-exec-1] ====> Parameters: 506(Integer)
2018-11-16 11:37:15,892 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,893 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,893 [http-nio-8090-exec-1] ====> Parameters: 488(Integer)
2018-11-16 11:37:15,894 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,895 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,895 [http-nio-8090-exec-1] ====> Parameters: 504(Integer)
2018-11-16 11:37:15,896 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,897 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,897 [http-nio-8090-exec-1] ====> Parameters: 448(Integer)
2018-11-16 11:37:15,898 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,899 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,899 [http-nio-8090-exec-1] ====> Parameters: 452(Integer)
2018-11-16 11:37:15,900 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,901 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,901 [http-nio-8090-exec-1] ====> Parameters: 511(Integer)
2018-11-16 11:37:15,903 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,903 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,904 [http-nio-8090-exec-1] ====> Parameters: 440(Integer)
2018-11-16 11:37:15,905 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,906 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,907 [http-nio-8090-exec-1] ====> Parameters: 470(Integer)
2018-11-16 11:37:15,908 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,909 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,910 [http-nio-8090-exec-1] ====> Parameters: 482(Integer)
2018-11-16 11:37:15,911 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,912 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,912 [http-nio-8090-exec-1] ====> Parameters: 494(Integer)
2018-11-16 11:37:15,914 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,915 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,915 [http-nio-8090-exec-1] ====> Parameters: 520(Integer)
2018-11-16 11:37:15,916 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,917 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,917 [http-nio-8090-exec-1] ====> Parameters: 449(Integer)
2018-11-16 11:37:15,919 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,919 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,920 [http-nio-8090-exec-1] ====> Parameters: 454(Integer)
2018-11-16 11:37:15,921 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,922 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,922 [http-nio-8090-exec-1] ====> Parameters: 466(Integer)
2018-11-16 11:37:15,924 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,925 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,925 [http-nio-8090-exec-1] ====> Parameters: 472(Integer)
2018-11-16 11:37:15,926 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,927 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,927 [http-nio-8090-exec-1] ====> Parameters: 460(Integer)
2018-11-16 11:37:15,928 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,929 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,929 [http-nio-8090-exec-1] ====> Parameters: 475(Integer)
2018-11-16 11:37:15,930 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,931 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,932 [http-nio-8090-exec-1] ====> Parameters: 491(Integer)
2018-11-16 11:37:15,933 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,934 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,934 [http-nio-8090-exec-1] ====> Parameters: 474(Integer)
2018-11-16 11:37:15,935 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,936 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,937 [http-nio-8090-exec-1] ====> Parameters: 477(Integer)
2018-11-16 11:37:15,938 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,939 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,940 [http-nio-8090-exec-1] ====> Parameters: 505(Integer)
2018-11-16 11:37:15,941 [http-nio-8090-exec-1] <====      Total: 2
2018-11-16 11:37:15,942 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,942 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-16 11:37:15,943 [http-nio-8090-exec-1] <====      Total: 3
2018-11-16 11:37:15,944 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,945 [http-nio-8090-exec-1] ====> Parameters: 503(Integer)
2018-11-16 11:37:15,947 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,948 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,948 [http-nio-8090-exec-1] ====> Parameters: 493(Integer)
2018-11-16 11:37:15,950 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,950 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,951 [http-nio-8090-exec-1] ====> Parameters: 507(Integer)
2018-11-16 11:37:15,952 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,953 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,954 [http-nio-8090-exec-1] ====> Parameters: 501(Integer)
2018-11-16 11:37:15,955 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,956 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,956 [http-nio-8090-exec-1] ====> Parameters: 444(Integer)
2018-11-16 11:37:15,957 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,958 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,959 [http-nio-8090-exec-1] ====> Parameters: 469(Integer)
2018-11-16 11:37:15,960 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,960 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,961 [http-nio-8090-exec-1] ====> Parameters: 467(Integer)
2018-11-16 11:37:15,962 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,963 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,963 [http-nio-8090-exec-1] ====> Parameters: 502(Integer)
2018-11-16 11:37:15,964 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,965 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,965 [http-nio-8090-exec-1] ====> Parameters: 443(Integer)
2018-11-16 11:37:15,966 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,966 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,967 [http-nio-8090-exec-1] ====> Parameters: 484(Integer)
2018-11-16 11:37:15,968 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,968 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,969 [http-nio-8090-exec-1] ====> Parameters: 480(Integer)
2018-11-16 11:37:15,970 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,970 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,970 [http-nio-8090-exec-1] ====> Parameters: 445(Integer)
2018-11-16 11:37:15,971 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,972 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,972 [http-nio-8090-exec-1] ====> Parameters: 473(Integer)
2018-11-16 11:37:15,973 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,974 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,975 [http-nio-8090-exec-1] ====> Parameters: 509(Integer)
2018-11-16 11:37:15,976 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,976 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,976 [http-nio-8090-exec-1] ====> Parameters: 497(Integer)
2018-11-16 11:37:15,977 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,978 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,978 [http-nio-8090-exec-1] ====> Parameters: 522(Integer)
2018-11-16 11:37:15,980 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,981 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,981 [http-nio-8090-exec-1] ====> Parameters: 441(Integer)
2018-11-16 11:37:15,982 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,982 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,982 [http-nio-8090-exec-1] ====> Parameters: 495(Integer)
2018-11-16 11:37:15,984 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,984 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,984 [http-nio-8090-exec-1] ====> Parameters: 478(Integer)
2018-11-16 11:37:15,985 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,985 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,987 [http-nio-8090-exec-1] ====> Parameters: 453(Integer)
2018-11-16 11:37:15,987 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,988 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:15,988 [http-nio-8090-exec-1] ====> Parameters: 471(Integer)
2018-11-16 11:37:15,989 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:15,989 [http-nio-8090-exec-1] <==      Total: 83
2018-11-16 11:37:18,159 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:18,159 [http-nio-8090-exec-5] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:18,161 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 11:37:18,163 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:18,163 [http-nio-8090-exec-9] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:18,164 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 11:37:18,168 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM sys_user su WHERE 1 = 1 
2018-11-16 11:37:18,169 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-16 11:37:18,171 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 11:37:18,172 [http-nio-8090-exec-5] ==>  Preparing: select su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su where 1=1 order by su.createTime desc LIMIT ? 
2018-11-16 11:37:18,173 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-16 11:37:18,176 [http-nio-8090-exec-5] <==      Total: 10
2018-11-16 11:37:20,026 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:20,027 [http-nio-8090-exec-4] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:20,028 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 11:37:20,037 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 11:37:20,037 [http-nio-8090-exec-1] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 11:37:20,038 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,043 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-16 11:37:20,044 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-16 11:37:20,045 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,045 [http-nio-8090-exec-1] ====> Parameters: 9(Integer)
2018-11-16 11:37:20,046 [http-nio-8090-exec-1] <====      Total: 2
2018-11-16 11:37:20,046 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,047 [http-nio-8090-exec-1] ====> Parameters: 439(Integer)
2018-11-16 11:37:20,047 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,048 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,048 [http-nio-8090-exec-1] ====> Parameters: 461(Integer)
2018-11-16 11:37:20,049 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,049 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,050 [http-nio-8090-exec-1] ====> Parameters: 465(Integer)
2018-11-16 11:37:20,050 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,051 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,051 [http-nio-8090-exec-1] ====> Parameters: 519(Integer)
2018-11-16 11:37:20,052 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,052 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,053 [http-nio-8090-exec-1] ====> Parameters: 481(Integer)
2018-11-16 11:37:20,053 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,054 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,054 [http-nio-8090-exec-1] ====> Parameters: 476(Integer)
2018-11-16 11:37:20,055 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,055 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,056 [http-nio-8090-exec-1] ====> Parameters: 516(Integer)
2018-11-16 11:37:20,056 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,057 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,058 [http-nio-8090-exec-1] ====> Parameters: 456(Integer)
2018-11-16 11:37:20,058 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,059 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,060 [http-nio-8090-exec-1] ====> Parameters: 512(Integer)
2018-11-16 11:37:20,061 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,061 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,062 [http-nio-8090-exec-1] ====> Parameters: 464(Integer)
2018-11-16 11:37:20,062 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,063 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,063 [http-nio-8090-exec-1] ====> Parameters: 492(Integer)
2018-11-16 11:37:20,064 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,065 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,065 [http-nio-8090-exec-1] ====> Parameters: 446(Integer)
2018-11-16 11:37:20,066 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,066 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,067 [http-nio-8090-exec-1] ====> Parameters: 450(Integer)
2018-11-16 11:37:20,067 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,068 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,068 [http-nio-8090-exec-1] ====> Parameters: 447(Integer)
2018-11-16 11:37:20,069 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,069 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,070 [http-nio-8090-exec-1] ====> Parameters: 500(Integer)
2018-11-16 11:37:20,070 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,071 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,071 [http-nio-8090-exec-1] ====> Parameters: 518(Integer)
2018-11-16 11:37:20,072 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,072 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,073 [http-nio-8090-exec-1] ====> Parameters: 463(Integer)
2018-11-16 11:37:20,073 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,073 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,074 [http-nio-8090-exec-1] ====> Parameters: 483(Integer)
2018-11-16 11:37:20,074 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,075 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,075 [http-nio-8090-exec-1] ====> Parameters: 487(Integer)
2018-11-16 11:37:20,076 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,076 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,076 [http-nio-8090-exec-1] ====> Parameters: 521(Integer)
2018-11-16 11:37:20,077 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,078 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,078 [http-nio-8090-exec-1] ====> Parameters: 486(Integer)
2018-11-16 11:37:20,079 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,079 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,080 [http-nio-8090-exec-1] ====> Parameters: 499(Integer)
2018-11-16 11:37:20,080 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,081 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,081 [http-nio-8090-exec-1] ====> Parameters: 514(Integer)
2018-11-16 11:37:20,082 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,082 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,083 [http-nio-8090-exec-1] ====> Parameters: 458(Integer)
2018-11-16 11:37:20,083 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,084 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,084 [http-nio-8090-exec-1] ====> Parameters: 468(Integer)
2018-11-16 11:37:20,085 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,086 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,086 [http-nio-8090-exec-1] ====> Parameters: 517(Integer)
2018-11-16 11:37:20,087 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,088 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,089 [http-nio-8090-exec-1] ====> Parameters: 462(Integer)
2018-11-16 11:37:20,089 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,090 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,091 [http-nio-8090-exec-1] ====> Parameters: 489(Integer)
2018-11-16 11:37:20,091 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,092 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,093 [http-nio-8090-exec-1] ====> Parameters: 490(Integer)
2018-11-16 11:37:20,093 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,094 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,094 [http-nio-8090-exec-1] ====> Parameters: 442(Integer)
2018-11-16 11:37:20,095 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,096 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,096 [http-nio-8090-exec-1] ====> Parameters: 457(Integer)
2018-11-16 11:37:20,096 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,097 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,097 [http-nio-8090-exec-1] ====> Parameters: 510(Integer)
2018-11-16 11:37:20,098 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,098 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,098 [http-nio-8090-exec-1] ====> Parameters: 513(Integer)
2018-11-16 11:37:20,100 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,100 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,100 [http-nio-8090-exec-1] ====> Parameters: 485(Integer)
2018-11-16 11:37:20,101 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,101 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,102 [http-nio-8090-exec-1] ====> Parameters: 496(Integer)
2018-11-16 11:37:20,102 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,104 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,104 [http-nio-8090-exec-1] ====> Parameters: 459(Integer)
2018-11-16 11:37:20,105 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,106 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,106 [http-nio-8090-exec-1] ====> Parameters: 451(Integer)
2018-11-16 11:37:20,106 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,107 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,108 [http-nio-8090-exec-1] ====> Parameters: 498(Integer)
2018-11-16 11:37:20,108 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,109 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,109 [http-nio-8090-exec-1] ====> Parameters: 515(Integer)
2018-11-16 11:37:20,110 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,110 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,110 [http-nio-8090-exec-1] ====> Parameters: 506(Integer)
2018-11-16 11:37:20,111 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,111 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,112 [http-nio-8090-exec-1] ====> Parameters: 488(Integer)
2018-11-16 11:37:20,112 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,113 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,113 [http-nio-8090-exec-1] ====> Parameters: 504(Integer)
2018-11-16 11:37:20,113 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,114 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,114 [http-nio-8090-exec-1] ====> Parameters: 448(Integer)
2018-11-16 11:37:20,115 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,115 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,115 [http-nio-8090-exec-1] ====> Parameters: 452(Integer)
2018-11-16 11:37:20,116 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,116 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,117 [http-nio-8090-exec-1] ====> Parameters: 511(Integer)
2018-11-16 11:37:20,117 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,118 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,118 [http-nio-8090-exec-1] ====> Parameters: 440(Integer)
2018-11-16 11:37:20,119 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,119 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,120 [http-nio-8090-exec-1] ====> Parameters: 470(Integer)
2018-11-16 11:37:20,121 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,122 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,122 [http-nio-8090-exec-1] ====> Parameters: 482(Integer)
2018-11-16 11:37:20,123 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,124 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,124 [http-nio-8090-exec-1] ====> Parameters: 494(Integer)
2018-11-16 11:37:20,125 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,126 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,126 [http-nio-8090-exec-1] ====> Parameters: 520(Integer)
2018-11-16 11:37:20,126 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,127 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,127 [http-nio-8090-exec-1] ====> Parameters: 449(Integer)
2018-11-16 11:37:20,128 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,128 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,129 [http-nio-8090-exec-1] ====> Parameters: 454(Integer)
2018-11-16 11:37:20,129 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,130 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,130 [http-nio-8090-exec-1] ====> Parameters: 466(Integer)
2018-11-16 11:37:20,131 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,131 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,132 [http-nio-8090-exec-1] ====> Parameters: 472(Integer)
2018-11-16 11:37:20,132 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,132 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,133 [http-nio-8090-exec-1] ====> Parameters: 460(Integer)
2018-11-16 11:37:20,133 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,134 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,134 [http-nio-8090-exec-1] ====> Parameters: 475(Integer)
2018-11-16 11:37:20,135 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,135 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,136 [http-nio-8090-exec-1] ====> Parameters: 491(Integer)
2018-11-16 11:37:20,137 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,137 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,138 [http-nio-8090-exec-1] ====> Parameters: 474(Integer)
2018-11-16 11:37:20,138 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,139 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,139 [http-nio-8090-exec-1] ====> Parameters: 477(Integer)
2018-11-16 11:37:20,140 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,140 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,140 [http-nio-8090-exec-1] ====> Parameters: 505(Integer)
2018-11-16 11:37:20,140 [http-nio-8090-exec-1] <====      Total: 2
2018-11-16 11:37:20,141 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,141 [http-nio-8090-exec-1] ====> Parameters: 479(Integer)
2018-11-16 11:37:20,142 [http-nio-8090-exec-1] <====      Total: 3
2018-11-16 11:37:20,142 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,143 [http-nio-8090-exec-1] ====> Parameters: 503(Integer)
2018-11-16 11:37:20,143 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,145 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,145 [http-nio-8090-exec-1] ====> Parameters: 493(Integer)
2018-11-16 11:37:20,145 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,145 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,145 [http-nio-8090-exec-1] ====> Parameters: 507(Integer)
2018-11-16 11:37:20,146 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,146 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,146 [http-nio-8090-exec-1] ====> Parameters: 501(Integer)
2018-11-16 11:37:20,147 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,147 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,148 [http-nio-8090-exec-1] ====> Parameters: 444(Integer)
2018-11-16 11:37:20,148 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,149 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,149 [http-nio-8090-exec-1] ====> Parameters: 469(Integer)
2018-11-16 11:37:20,149 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,150 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,150 [http-nio-8090-exec-1] ====> Parameters: 467(Integer)
2018-11-16 11:37:20,151 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,151 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,152 [http-nio-8090-exec-1] ====> Parameters: 502(Integer)
2018-11-16 11:37:20,153 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,153 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,154 [http-nio-8090-exec-1] ====> Parameters: 443(Integer)
2018-11-16 11:37:20,154 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,155 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,155 [http-nio-8090-exec-1] ====> Parameters: 484(Integer)
2018-11-16 11:37:20,155 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,156 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,156 [http-nio-8090-exec-1] ====> Parameters: 480(Integer)
2018-11-16 11:37:20,157 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,157 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,157 [http-nio-8090-exec-1] ====> Parameters: 445(Integer)
2018-11-16 11:37:20,158 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,158 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,159 [http-nio-8090-exec-1] ====> Parameters: 473(Integer)
2018-11-16 11:37:20,160 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,160 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,160 [http-nio-8090-exec-1] ====> Parameters: 509(Integer)
2018-11-16 11:37:20,161 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,161 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,161 [http-nio-8090-exec-1] ====> Parameters: 497(Integer)
2018-11-16 11:37:20,162 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,162 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,163 [http-nio-8090-exec-1] ====> Parameters: 522(Integer)
2018-11-16 11:37:20,163 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,163 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,164 [http-nio-8090-exec-1] ====> Parameters: 441(Integer)
2018-11-16 11:37:20,164 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,165 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,165 [http-nio-8090-exec-1] ====> Parameters: 495(Integer)
2018-11-16 11:37:20,166 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,166 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,166 [http-nio-8090-exec-1] ====> Parameters: 478(Integer)
2018-11-16 11:37:20,167 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,167 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,167 [http-nio-8090-exec-1] ====> Parameters: 453(Integer)
2018-11-16 11:37:20,168 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,168 [http-nio-8090-exec-1] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 11:37:20,169 [http-nio-8090-exec-1] ====> Parameters: 471(Integer)
2018-11-16 11:37:20,169 [http-nio-8090-exec-1] <====      Total: 1
2018-11-16 11:37:20,170 [http-nio-8090-exec-1] <==      Total: 83
2018-11-16 11:37:20,171 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,172 [http-nio-8090-exec-1] ==> Parameters: 20(Long)
2018-11-16 11:37:20,174 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,175 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,175 [http-nio-8090-exec-1] ==> Parameters: 1(Long)
2018-11-16 11:37:20,176 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,177 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,177 [http-nio-8090-exec-1] ==> Parameters: 21(Long)
2018-11-16 11:37:20,178 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,178 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,179 [http-nio-8090-exec-1] ==> Parameters: 22(Long)
2018-11-16 11:37:20,180 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,180 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,181 [http-nio-8090-exec-1] ==> Parameters: 23(Long)
2018-11-16 11:37:20,181 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,182 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,182 [http-nio-8090-exec-1] ==> Parameters: 24(Long)
2018-11-16 11:37:20,183 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,184 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,184 [http-nio-8090-exec-1] ==> Parameters: 25(Long)
2018-11-16 11:37:20,185 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,186 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,186 [http-nio-8090-exec-1] ==> Parameters: 27(Long)
2018-11-16 11:37:20,187 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,188 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,188 [http-nio-8090-exec-1] ==> Parameters: 26(Long)
2018-11-16 11:37:20,189 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,190 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,190 [http-nio-8090-exec-1] ==> Parameters: 28(Long)
2018-11-16 11:37:20,191 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,191 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,192 [http-nio-8090-exec-1] ==> Parameters: 31(Long)
2018-11-16 11:37:20,193 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,193 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,194 [http-nio-8090-exec-1] ==> Parameters: 32(Long)
2018-11-16 11:37:20,195 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,195 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,196 [http-nio-8090-exec-1] ==> Parameters: 33(Long)
2018-11-16 11:37:20,197 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,197 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,198 [http-nio-8090-exec-1] ==> Parameters: 34(Long)
2018-11-16 11:37:20,199 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,200 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,201 [http-nio-8090-exec-1] ==> Parameters: 35(Long)
2018-11-16 11:37:20,202 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,203 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,204 [http-nio-8090-exec-1] ==> Parameters: 37(Long)
2018-11-16 11:37:20,205 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,206 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,206 [http-nio-8090-exec-1] ==> Parameters: 38(Long)
2018-11-16 11:37:20,207 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,208 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,208 [http-nio-8090-exec-1] ==> Parameters: 36(Long)
2018-11-16 11:37:20,209 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,210 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,210 [http-nio-8090-exec-1] ==> Parameters: 40(Long)
2018-11-16 11:37:20,212 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,213 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,213 [http-nio-8090-exec-1] ==> Parameters: 41(Long)
2018-11-16 11:37:20,214 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,215 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,215 [http-nio-8090-exec-1] ==> Parameters: 42(Long)
2018-11-16 11:37:20,217 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,218 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,219 [http-nio-8090-exec-1] ==> Parameters: 43(Long)
2018-11-16 11:37:20,220 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,221 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,222 [http-nio-8090-exec-1] ==> Parameters: 44(Long)
2018-11-16 11:37:20,223 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,224 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,224 [http-nio-8090-exec-1] ==> Parameters: 45(Long)
2018-11-16 11:37:20,225 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,225 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,226 [http-nio-8090-exec-1] ==> Parameters: 102(Long)
2018-11-16 11:37:20,227 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,227 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,228 [http-nio-8090-exec-1] ==> Parameters: 59(Long)
2018-11-16 11:37:20,229 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,229 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,230 [http-nio-8090-exec-1] ==> Parameters: 66(Long)
2018-11-16 11:37:20,231 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,232 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,232 [http-nio-8090-exec-1] ==> Parameters: 105(Long)
2018-11-16 11:37:20,233 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,234 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,235 [http-nio-8090-exec-1] ==> Parameters: 63(Long)
2018-11-16 11:37:20,235 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,236 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,237 [http-nio-8090-exec-1] ==> Parameters: 81(Long)
2018-11-16 11:37:20,237 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,238 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,238 [http-nio-8090-exec-1] ==> Parameters: 83(Long)
2018-11-16 11:37:20,239 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,240 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,240 [http-nio-8090-exec-1] ==> Parameters: 48(Long)
2018-11-16 11:37:20,241 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,242 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,242 [http-nio-8090-exec-1] ==> Parameters: 58(Long)
2018-11-16 11:37:20,243 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,244 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,244 [http-nio-8090-exec-1] ==> Parameters: 99(Long)
2018-11-16 11:37:20,245 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,246 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,246 [http-nio-8090-exec-1] ==> Parameters: 101(Long)
2018-11-16 11:37:20,247 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,248 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,248 [http-nio-8090-exec-1] ==> Parameters: 80(Long)
2018-11-16 11:37:20,249 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,249 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,250 [http-nio-8090-exec-1] ==> Parameters: 88(Long)
2018-11-16 11:37:20,251 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,251 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,252 [http-nio-8090-exec-1] ==> Parameters: 60(Long)
2018-11-16 11:37:20,253 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,253 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,254 [http-nio-8090-exec-1] ==> Parameters: 54(Long)
2018-11-16 11:37:20,255 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,255 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,255 [http-nio-8090-exec-1] ==> Parameters: 89(Long)
2018-11-16 11:37:20,257 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,257 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,258 [http-nio-8090-exec-1] ==> Parameters: 103(Long)
2018-11-16 11:37:20,258 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,259 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,259 [http-nio-8090-exec-1] ==> Parameters: 95(Long)
2018-11-16 11:37:20,260 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,260 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,261 [http-nio-8090-exec-1] ==> Parameters: 82(Long)
2018-11-16 11:37:20,262 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,262 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,263 [http-nio-8090-exec-1] ==> Parameters: 93(Long)
2018-11-16 11:37:20,264 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,264 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,265 [http-nio-8090-exec-1] ==> Parameters: 52(Long)
2018-11-16 11:37:20,265 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,266 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,266 [http-nio-8090-exec-1] ==> Parameters: 55(Long)
2018-11-16 11:37:20,267 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,268 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,268 [http-nio-8090-exec-1] ==> Parameters: 100(Long)
2018-11-16 11:37:20,269 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,270 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,271 [http-nio-8090-exec-1] ==> Parameters: 46(Long)
2018-11-16 11:37:20,271 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,272 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,272 [http-nio-8090-exec-1] ==> Parameters: 68(Long)
2018-11-16 11:37:20,273 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,274 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,274 [http-nio-8090-exec-1] ==> Parameters: 76(Long)
2018-11-16 11:37:20,275 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,275 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,275 [http-nio-8090-exec-1] ==> Parameters: 86(Long)
2018-11-16 11:37:20,277 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,277 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,278 [http-nio-8090-exec-1] ==> Parameters: 104(Long)
2018-11-16 11:37:20,278 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,279 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,279 [http-nio-8090-exec-1] ==> Parameters: 53(Long)
2018-11-16 11:37:20,280 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,280 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,281 [http-nio-8090-exec-1] ==> Parameters: 57(Long)
2018-11-16 11:37:20,281 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,282 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,282 [http-nio-8090-exec-1] ==> Parameters: 64(Long)
2018-11-16 11:37:20,283 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,284 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,284 [http-nio-8090-exec-1] ==> Parameters: 70(Long)
2018-11-16 11:37:20,285 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,286 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,286 [http-nio-8090-exec-1] ==> Parameters: 61(Long)
2018-11-16 11:37:20,287 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,288 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,289 [http-nio-8090-exec-1] ==> Parameters: 73(Long)
2018-11-16 11:37:20,289 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,290 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,290 [http-nio-8090-exec-1] ==> Parameters: 84(Long)
2018-11-16 11:37:20,291 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,292 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,292 [http-nio-8090-exec-1] ==> Parameters: 72(Long)
2018-11-16 11:37:20,293 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,294 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,294 [http-nio-8090-exec-1] ==> Parameters: 74(Long)
2018-11-16 11:37:20,295 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,296 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,296 [http-nio-8090-exec-1] ==> Parameters: 18(Long)
2018-11-16 11:37:20,297 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,297 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,298 [http-nio-8090-exec-1] ==> Parameters: 19(Long)
2018-11-16 11:37:20,299 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,300 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,300 [http-nio-8090-exec-1] ==> Parameters: 107(Long)
2018-11-16 11:37:20,301 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,302 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,303 [http-nio-8090-exec-1] ==> Parameters: 75(Long)
2018-11-16 11:37:20,303 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,303 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,304 [http-nio-8090-exec-1] ==> Parameters: 108(Long)
2018-11-16 11:37:20,304 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,305 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,305 [http-nio-8090-exec-1] ==> Parameters: 94(Long)
2018-11-16 11:37:20,306 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,307 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,307 [http-nio-8090-exec-1] ==> Parameters: 85(Long)
2018-11-16 11:37:20,308 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,308 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,309 [http-nio-8090-exec-1] ==> Parameters: 96(Long)
2018-11-16 11:37:20,310 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,310 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,311 [http-nio-8090-exec-1] ==> Parameters: 91(Long)
2018-11-16 11:37:20,311 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,312 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,312 [http-nio-8090-exec-1] ==> Parameters: 50(Long)
2018-11-16 11:37:20,313 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,313 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,314 [http-nio-8090-exec-1] ==> Parameters: 67(Long)
2018-11-16 11:37:20,315 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,315 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,316 [http-nio-8090-exec-1] ==> Parameters: 65(Long)
2018-11-16 11:37:20,316 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,317 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,317 [http-nio-8090-exec-1] ==> Parameters: 92(Long)
2018-11-16 11:37:20,318 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,319 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,319 [http-nio-8090-exec-1] ==> Parameters: 49(Long)
2018-11-16 11:37:20,320 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,321 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,321 [http-nio-8090-exec-1] ==> Parameters: 79(Long)
2018-11-16 11:37:20,322 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,322 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,322 [http-nio-8090-exec-1] ==> Parameters: 78(Long)
2018-11-16 11:37:20,323 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,324 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,324 [http-nio-8090-exec-1] ==> Parameters: 51(Long)
2018-11-16 11:37:20,325 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,326 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,326 [http-nio-8090-exec-1] ==> Parameters: 71(Long)
2018-11-16 11:37:20,327 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,328 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,328 [http-nio-8090-exec-1] ==> Parameters: 98(Long)
2018-11-16 11:37:20,329 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,330 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,330 [http-nio-8090-exec-1] ==> Parameters: 90(Long)
2018-11-16 11:37:20,331 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,332 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,332 [http-nio-8090-exec-1] ==> Parameters: 106(Long)
2018-11-16 11:37:20,333 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,334 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,335 [http-nio-8090-exec-1] ==> Parameters: 47(Long)
2018-11-16 11:37:20,336 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,337 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,337 [http-nio-8090-exec-1] ==> Parameters: 87(Long)
2018-11-16 11:37:20,338 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,339 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,339 [http-nio-8090-exec-1] ==> Parameters: 77(Long)
2018-11-16 11:37:20,340 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,341 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,341 [http-nio-8090-exec-1] ==> Parameters: 56(Long)
2018-11-16 11:37:20,342 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 11:37:20,343 [http-nio-8090-exec-1] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 11:37:20,343 [http-nio-8090-exec-1] ==> Parameters: 69(Long)
2018-11-16 11:37:20,344 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 12:19:28,910 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:28,917 [http-nio-8090-exec-10] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 12:19:28,924 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:19:29,031 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:29,032 [http-nio-8090-exec-1] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 12:19:29,033 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 12:19:29,114 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:29,114 [http-nio-8090-exec-10] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 12:19:29,115 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:19:29,122 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:19:29,125 [http-nio-8090-exec-10] ==> Parameters: mocun(String)
2018-11-16 12:19:29,126 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:19:29,127 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:19:29,131 [http-nio-8090-exec-10] ==> Parameters: mocun(String)
2018-11-16 12:19:29,132 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:19:31,509 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:31,510 [http-nio-8090-exec-1] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 12:19:31,511 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 12:19:31,514 [http-nio-8090-exec-1] ==>  Preparing: delete from t_token where id = ? 
2018-11-16 12:19:31,516 [http-nio-8090-exec-1] ==> Parameters: 2583fbdd-0505-41ac-8a6a-11e3f9df116a(String)
2018-11-16 12:19:31,549 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-16 12:19:38,299 [http-nio-8090-exec-4] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-16 12:19:38,300 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-16 12:19:38,301 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:38,301 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:19:38,301 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-16 12:19:38,301 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:38,301 [http-nio-8090-exec-4] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 12:19:38,317 [http-nio-8090-exec-4] ==> Parameters: weicheng(String), 479(Long)
2018-11-16 12:19:38,317 [http-nio-8090-exec-4] <==      Total: 19
2018-11-16 12:19:38,411 [http-nio-8090-exec-4] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-16 12:19:38,411 [http-nio-8090-exec-4] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"sys:act:lteconfig"},{"authority":"lte:gcb:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"lte:loadtest:list"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"lte:cellcheck:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:plan:edit"},{"authority":"lte:cellcheck:del"}],"birthday":1541174400000,"createTime":1541212915000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542349178395,"id":6,"loginTime":1542341978395,"nickname":"张维程","password":"$2a$10$5KlkxohNda0w0rwRwQPJDeADgY/XxiXWCKXd4qchChifzqdbiZcni","permissions":[{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"08a4c29a-ab78-478c-a9d8-4adf1c53d668","username":"weicheng"}(String), 2018-11-16 14:19:38.395(Timestamp), 2018-11-16 12:19:38.395(Timestamp), 2018-11-16 12:19:38.395(Timestamp)
2018-11-16 12:19:38,411 [http-nio-8090-exec-4] <==    Updates: 1
2018-11-16 12:19:38,510 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:38,511 [http-nio-8090-exec-4] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:38,512 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:38,529 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:38,529 [http-nio-8090-exec-8] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:38,530 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 12:19:38,596 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:38,597 [http-nio-8090-exec-4] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:38,598 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:38,600 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:19:38,602 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-16 12:19:38,605 [http-nio-8090-exec-4] <==      Total: 2
2018-11-16 12:19:38,606 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:19:38,607 [http-nio-8090-exec-4] ==> Parameters: weicheng(String)
2018-11-16 12:19:38,608 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:40,252 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:40,252 [http-nio-8090-exec-7] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:40,253 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:19:40,258 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:40,260 [http-nio-8090-exec-4] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:40,261 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:19:40,320 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-16 12:19:40,322 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-16 12:19:40,335 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:19:40,335 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-16 12:19:40,335 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-16 12:19:40,335 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:19:42,100 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:42,100 [http-nio-8090-exec-2] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:42,102 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:19:43,010 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:43,010 [http-nio-8090-exec-2] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:43,011 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:19:43,021 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-16 12:19:43,023 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-16 12:19:43,024 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:19:43,025 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_cell_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-16 12:19:43,026 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-16 12:19:43,029 [http-nio-8090-exec-2] <==      Total: 3
2018-11-16 12:19:43,347 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:43,347 [http-nio-8090-exec-9] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:43,349 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:43,356 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-16 12:19:43,357 [http-nio-8090-exec-9] ==> Parameters: 479(Long)
2018-11-16 12:19:43,359 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:43,360 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_station_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-16 12:19:43,361 [http-nio-8090-exec-9] ==> Parameters: 479(Long), 10(Integer)
2018-11-16 12:19:43,363 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:43,706 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:43,707 [http-nio-8090-exec-8] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:43,708 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 12:19:43,784 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:43,784 [http-nio-8090-exec-9] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:43,785 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:43,792 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-16 12:19:43,793 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-16 12:19:43,794 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:43,794 [http-nio-8090-exec-9] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-16 12:19:43,795 [http-nio-8090-exec-9] ==> Parameters: 10(Integer)
2018-11-16 12:19:43,797 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:19:44,196 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:44,197 [http-nio-8090-exec-8] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:44,198 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 12:19:44,207 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-16 12:19:44,208 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-16 12:19:44,209 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 12:19:44,210 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-16 12:19:44,211 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 3(Integer)
2018-11-16 12:19:44,213 [http-nio-8090-exec-8] <==      Total: 3
2018-11-16 12:19:58,267 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:19:58,268 [http-nio-8090-exec-5] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:58,270 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:19:58,272 [http-nio-8090-exec-5] ==>  Preparing: delete from t_token where id = ? 
2018-11-16 12:19:58,272 [http-nio-8090-exec-5] ==> Parameters: 08a4c29a-ab78-478c-a9d8-4adf1c53d668(String)
2018-11-16 12:19:58,279 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-16 12:20:04,090 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-16 12:20:04,091 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 12:20:04,092 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:04,093 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:20:04,093 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 12:20:04,094 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:04,095 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 12:20:04,095 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-16 12:20:04,097 [http-nio-8090-exec-6] <==      Total: 37
2018-11-16 12:20:04,174 [http-nio-8090-exec-6] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-16 12:20:04,174 [http-nio-8090-exec-6] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542349204174,"id":10,"loginTime":1542342004174,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"07e7f4a2-67fb-4190-a5f9-946b562b804a","username":"wuzhihua"}(String), 2018-11-16 14:20:04.174(Timestamp), 2018-11-16 12:20:04.174(Timestamp), 2018-11-16 12:20:04.174(Timestamp)
2018-11-16 12:20:04,174 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-16 12:20:04,263 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:04,264 [http-nio-8090-exec-6] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:04,265 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:04,281 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:04,282 [http-nio-8090-exec-1] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:04,282 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 12:20:04,347 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:04,347 [http-nio-8090-exec-6] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:04,348 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:04,350 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:20:04,351 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 12:20:04,351 [http-nio-8090-exec-6] <==      Total: 2
2018-11-16 12:20:04,352 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:20:04,352 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 12:20:04,353 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:05,417 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:05,418 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:05,419 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:20:05,428 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:05,429 [http-nio-8090-exec-7] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:05,430 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:20:05,435 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-16 12:20:05,436 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-16 12:20:05,438 [http-nio-8090-exec-7] <==      Total: 37
2018-11-16 12:20:06,224 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:06,224 [http-nio-8090-exec-6] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:06,226 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:06,235 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-16 12:20:06,237 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-16 12:20:06,238 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:06,239 [http-nio-8090-exec-6] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-16 12:20:06,242 [http-nio-8090-exec-6] ==> Parameters: 3(Integer)
2018-11-16 12:20:06,270 [http-nio-8090-exec-6] <==      Total: 3
2018-11-16 12:20:06,918 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:06,918 [http-nio-8090-exec-9] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:06,919 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:20:06,929 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:06,929 [http-nio-8090-exec-8] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:06,930 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 12:20:06,937 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-16 12:20:06,938 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-16 12:20:06,941 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,942 [http-nio-8090-exec-8] ====> Parameters: 9(Integer)
2018-11-16 12:20:06,943 [http-nio-8090-exec-8] <====      Total: 2
2018-11-16 12:20:06,944 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,945 [http-nio-8090-exec-8] ====> Parameters: 439(Integer)
2018-11-16 12:20:06,945 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,946 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,946 [http-nio-8090-exec-8] ====> Parameters: 461(Integer)
2018-11-16 12:20:06,947 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,948 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,948 [http-nio-8090-exec-8] ====> Parameters: 465(Integer)
2018-11-16 12:20:06,949 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,950 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,950 [http-nio-8090-exec-8] ====> Parameters: 519(Integer)
2018-11-16 12:20:06,951 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,952 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,952 [http-nio-8090-exec-8] ====> Parameters: 481(Integer)
2018-11-16 12:20:06,953 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,953 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,954 [http-nio-8090-exec-8] ====> Parameters: 476(Integer)
2018-11-16 12:20:06,954 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,955 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,955 [http-nio-8090-exec-8] ====> Parameters: 516(Integer)
2018-11-16 12:20:06,956 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,957 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,957 [http-nio-8090-exec-8] ====> Parameters: 456(Integer)
2018-11-16 12:20:06,958 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,959 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,960 [http-nio-8090-exec-8] ====> Parameters: 492(Integer)
2018-11-16 12:20:06,961 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,962 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,962 [http-nio-8090-exec-8] ====> Parameters: 512(Integer)
2018-11-16 12:20:06,963 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,963 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,964 [http-nio-8090-exec-8] ====> Parameters: 464(Integer)
2018-11-16 12:20:06,965 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,966 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,966 [http-nio-8090-exec-8] ====> Parameters: 446(Integer)
2018-11-16 12:20:06,967 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,968 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,968 [http-nio-8090-exec-8] ====> Parameters: 450(Integer)
2018-11-16 12:20:06,969 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,969 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,970 [http-nio-8090-exec-8] ====> Parameters: 518(Integer)
2018-11-16 12:20:06,971 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,972 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,973 [http-nio-8090-exec-8] ====> Parameters: 500(Integer)
2018-11-16 12:20:06,974 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,975 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,975 [http-nio-8090-exec-8] ====> Parameters: 447(Integer)
2018-11-16 12:20:06,976 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,977 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,978 [http-nio-8090-exec-8] ====> Parameters: 463(Integer)
2018-11-16 12:20:06,978 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,979 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,979 [http-nio-8090-exec-8] ====> Parameters: 483(Integer)
2018-11-16 12:20:06,980 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,981 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,981 [http-nio-8090-exec-8] ====> Parameters: 487(Integer)
2018-11-16 12:20:06,982 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,982 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,983 [http-nio-8090-exec-8] ====> Parameters: 521(Integer)
2018-11-16 12:20:06,984 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,985 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,985 [http-nio-8090-exec-8] ====> Parameters: 486(Integer)
2018-11-16 12:20:06,986 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,986 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,987 [http-nio-8090-exec-8] ====> Parameters: 499(Integer)
2018-11-16 12:20:06,987 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,988 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,988 [http-nio-8090-exec-8] ====> Parameters: 514(Integer)
2018-11-16 12:20:06,989 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,989 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,990 [http-nio-8090-exec-8] ====> Parameters: 458(Integer)
2018-11-16 12:20:06,991 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,992 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,992 [http-nio-8090-exec-8] ====> Parameters: 468(Integer)
2018-11-16 12:20:06,993 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,994 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,994 [http-nio-8090-exec-8] ====> Parameters: 462(Integer)
2018-11-16 12:20:06,995 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,995 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,995 [http-nio-8090-exec-8] ====> Parameters: 517(Integer)
2018-11-16 12:20:06,996 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,997 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,997 [http-nio-8090-exec-8] ====> Parameters: 489(Integer)
2018-11-16 12:20:06,998 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:06,998 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:06,998 [http-nio-8090-exec-8] ====> Parameters: 490(Integer)
2018-11-16 12:20:06,999 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,000 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,001 [http-nio-8090-exec-8] ====> Parameters: 442(Integer)
2018-11-16 12:20:07,001 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,002 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,002 [http-nio-8090-exec-8] ====> Parameters: 457(Integer)
2018-11-16 12:20:07,003 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,003 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,004 [http-nio-8090-exec-8] ====> Parameters: 510(Integer)
2018-11-16 12:20:07,004 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,005 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,005 [http-nio-8090-exec-8] ====> Parameters: 513(Integer)
2018-11-16 12:20:07,006 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,006 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,007 [http-nio-8090-exec-8] ====> Parameters: 485(Integer)
2018-11-16 12:20:07,007 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,008 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,009 [http-nio-8090-exec-8] ====> Parameters: 496(Integer)
2018-11-16 12:20:07,009 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,010 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,010 [http-nio-8090-exec-8] ====> Parameters: 459(Integer)
2018-11-16 12:20:07,011 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,011 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,012 [http-nio-8090-exec-8] ====> Parameters: 451(Integer)
2018-11-16 12:20:07,012 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,013 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,014 [http-nio-8090-exec-8] ====> Parameters: 515(Integer)
2018-11-16 12:20:07,014 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,015 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,015 [http-nio-8090-exec-8] ====> Parameters: 506(Integer)
2018-11-16 12:20:07,016 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,017 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,017 [http-nio-8090-exec-8] ====> Parameters: 498(Integer)
2018-11-16 12:20:07,018 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,018 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,019 [http-nio-8090-exec-8] ====> Parameters: 488(Integer)
2018-11-16 12:20:07,019 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,020 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,020 [http-nio-8090-exec-8] ====> Parameters: 504(Integer)
2018-11-16 12:20:07,021 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,022 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,022 [http-nio-8090-exec-8] ====> Parameters: 448(Integer)
2018-11-16 12:20:07,023 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,024 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,024 [http-nio-8090-exec-8] ====> Parameters: 452(Integer)
2018-11-16 12:20:07,025 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,026 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,026 [http-nio-8090-exec-8] ====> Parameters: 511(Integer)
2018-11-16 12:20:07,027 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,027 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,027 [http-nio-8090-exec-8] ====> Parameters: 440(Integer)
2018-11-16 12:20:07,028 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,029 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,029 [http-nio-8090-exec-8] ====> Parameters: 470(Integer)
2018-11-16 12:20:07,030 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,030 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,031 [http-nio-8090-exec-8] ====> Parameters: 482(Integer)
2018-11-16 12:20:07,031 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,032 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,033 [http-nio-8090-exec-8] ====> Parameters: 494(Integer)
2018-11-16 12:20:07,033 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,034 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,034 [http-nio-8090-exec-8] ====> Parameters: 520(Integer)
2018-11-16 12:20:07,035 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,036 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,037 [http-nio-8090-exec-8] ====> Parameters: 449(Integer)
2018-11-16 12:20:07,038 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,038 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,039 [http-nio-8090-exec-8] ====> Parameters: 454(Integer)
2018-11-16 12:20:07,040 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,041 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,042 [http-nio-8090-exec-8] ====> Parameters: 466(Integer)
2018-11-16 12:20:07,043 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,043 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,044 [http-nio-8090-exec-8] ====> Parameters: 472(Integer)
2018-11-16 12:20:07,044 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,045 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,046 [http-nio-8090-exec-8] ====> Parameters: 460(Integer)
2018-11-16 12:20:07,046 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,047 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,048 [http-nio-8090-exec-8] ====> Parameters: 475(Integer)
2018-11-16 12:20:07,048 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,049 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,049 [http-nio-8090-exec-8] ====> Parameters: 491(Integer)
2018-11-16 12:20:07,050 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,051 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,051 [http-nio-8090-exec-8] ====> Parameters: 474(Integer)
2018-11-16 12:20:07,052 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,052 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,053 [http-nio-8090-exec-8] ====> Parameters: 477(Integer)
2018-11-16 12:20:07,053 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,054 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,054 [http-nio-8090-exec-8] ====> Parameters: 505(Integer)
2018-11-16 12:20:07,055 [http-nio-8090-exec-8] <====      Total: 2
2018-11-16 12:20:07,056 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,056 [http-nio-8090-exec-8] ====> Parameters: 479(Integer)
2018-11-16 12:20:07,057 [http-nio-8090-exec-8] <====      Total: 3
2018-11-16 12:20:07,058 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,058 [http-nio-8090-exec-8] ====> Parameters: 503(Integer)
2018-11-16 12:20:07,059 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,060 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,060 [http-nio-8090-exec-8] ====> Parameters: 493(Integer)
2018-11-16 12:20:07,060 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,061 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,061 [http-nio-8090-exec-8] ====> Parameters: 507(Integer)
2018-11-16 12:20:07,062 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,062 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,063 [http-nio-8090-exec-8] ====> Parameters: 501(Integer)
2018-11-16 12:20:07,063 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,064 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,064 [http-nio-8090-exec-8] ====> Parameters: 444(Integer)
2018-11-16 12:20:07,064 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,064 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,065 [http-nio-8090-exec-8] ====> Parameters: 469(Integer)
2018-11-16 12:20:07,066 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,066 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,068 [http-nio-8090-exec-8] ====> Parameters: 467(Integer)
2018-11-16 12:20:07,068 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,068 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,068 [http-nio-8090-exec-8] ====> Parameters: 502(Integer)
2018-11-16 12:20:07,068 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,069 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,069 [http-nio-8090-exec-8] ====> Parameters: 443(Integer)
2018-11-16 12:20:07,070 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,070 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,070 [http-nio-8090-exec-8] ====> Parameters: 484(Integer)
2018-11-16 12:20:07,071 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,072 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,072 [http-nio-8090-exec-8] ====> Parameters: 480(Integer)
2018-11-16 12:20:07,072 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,073 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,074 [http-nio-8090-exec-8] ====> Parameters: 445(Integer)
2018-11-16 12:20:07,074 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,075 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,076 [http-nio-8090-exec-8] ====> Parameters: 473(Integer)
2018-11-16 12:20:07,076 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,077 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,077 [http-nio-8090-exec-8] ====> Parameters: 509(Integer)
2018-11-16 12:20:07,078 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,079 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,079 [http-nio-8090-exec-8] ====> Parameters: 497(Integer)
2018-11-16 12:20:07,080 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,080 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,081 [http-nio-8090-exec-8] ====> Parameters: 522(Integer)
2018-11-16 12:20:07,081 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,082 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,082 [http-nio-8090-exec-8] ====> Parameters: 441(Integer)
2018-11-16 12:20:07,083 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,083 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,083 [http-nio-8090-exec-8] ====> Parameters: 478(Integer)
2018-11-16 12:20:07,084 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,084 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,085 [http-nio-8090-exec-8] ====> Parameters: 495(Integer)
2018-11-16 12:20:07,085 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,086 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,087 [http-nio-8090-exec-8] ====> Parameters: 453(Integer)
2018-11-16 12:20:07,087 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,088 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:07,088 [http-nio-8090-exec-8] ====> Parameters: 471(Integer)
2018-11-16 12:20:07,089 [http-nio-8090-exec-8] <====      Total: 1
2018-11-16 12:20:07,089 [http-nio-8090-exec-8] <==      Total: 83
2018-11-16 12:20:07,726 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:07,726 [http-nio-8090-exec-4] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:07,727 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:20:07,729 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:07,729 [http-nio-8090-exec-6] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:07,730 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 12:20:07,735 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 12:20:07,736 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-16 12:20:07,742 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:20:07,743 [http-nio-8090-exec-4] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 12:20:07,744 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-16 12:20:07,748 [http-nio-8090-exec-4] <==      Total: 10
2018-11-16 12:20:13,533 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:13,534 [http-nio-8090-exec-10] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:13,535 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:20:13,540 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 12:20:13,540 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-16 12:20:13,541 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:20:13,542 [http-nio-8090-exec-10] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 12:20:13,543 [http-nio-8090-exec-10] ==> Parameters: 500(Integer)
2018-11-16 12:20:13,556 [http-nio-8090-exec-10] <==      Total: 282
2018-11-16 12:20:24,028 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:24,028 [http-nio-8090-exec-7] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:24,029 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:20:24,038 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:20:24,038 [http-nio-8090-exec-5] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:20:24,039 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,044 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-16 12:20:24,045 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-16 12:20:24,046 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,046 [http-nio-8090-exec-5] ====> Parameters: 9(Integer)
2018-11-16 12:20:24,046 [http-nio-8090-exec-5] <====      Total: 2
2018-11-16 12:20:24,047 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,047 [http-nio-8090-exec-5] ====> Parameters: 439(Integer)
2018-11-16 12:20:24,048 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,048 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,049 [http-nio-8090-exec-5] ====> Parameters: 461(Integer)
2018-11-16 12:20:24,049 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,050 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,050 [http-nio-8090-exec-5] ====> Parameters: 465(Integer)
2018-11-16 12:20:24,050 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,051 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,051 [http-nio-8090-exec-5] ====> Parameters: 519(Integer)
2018-11-16 12:20:24,052 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,053 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,053 [http-nio-8090-exec-5] ====> Parameters: 481(Integer)
2018-11-16 12:20:24,054 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,054 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,054 [http-nio-8090-exec-5] ====> Parameters: 476(Integer)
2018-11-16 12:20:24,055 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,056 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,056 [http-nio-8090-exec-5] ====> Parameters: 516(Integer)
2018-11-16 12:20:24,056 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,057 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,057 [http-nio-8090-exec-5] ====> Parameters: 456(Integer)
2018-11-16 12:20:24,058 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,058 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,059 [http-nio-8090-exec-5] ====> Parameters: 492(Integer)
2018-11-16 12:20:24,059 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,060 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,060 [http-nio-8090-exec-5] ====> Parameters: 512(Integer)
2018-11-16 12:20:24,061 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,062 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,062 [http-nio-8090-exec-5] ====> Parameters: 464(Integer)
2018-11-16 12:20:24,063 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,063 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,064 [http-nio-8090-exec-5] ====> Parameters: 446(Integer)
2018-11-16 12:20:24,064 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,065 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,065 [http-nio-8090-exec-5] ====> Parameters: 450(Integer)
2018-11-16 12:20:24,066 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,067 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,067 [http-nio-8090-exec-5] ====> Parameters: 518(Integer)
2018-11-16 12:20:24,068 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,069 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,069 [http-nio-8090-exec-5] ====> Parameters: 500(Integer)
2018-11-16 12:20:24,070 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,070 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,070 [http-nio-8090-exec-5] ====> Parameters: 447(Integer)
2018-11-16 12:20:24,071 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,071 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,071 [http-nio-8090-exec-5] ====> Parameters: 463(Integer)
2018-11-16 12:20:24,072 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,072 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,073 [http-nio-8090-exec-5] ====> Parameters: 483(Integer)
2018-11-16 12:20:24,073 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,074 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,074 [http-nio-8090-exec-5] ====> Parameters: 487(Integer)
2018-11-16 12:20:24,075 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,075 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,076 [http-nio-8090-exec-5] ====> Parameters: 521(Integer)
2018-11-16 12:20:24,076 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,077 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,077 [http-nio-8090-exec-5] ====> Parameters: 486(Integer)
2018-11-16 12:20:24,078 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,078 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,078 [http-nio-8090-exec-5] ====> Parameters: 499(Integer)
2018-11-16 12:20:24,079 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,080 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,080 [http-nio-8090-exec-5] ====> Parameters: 514(Integer)
2018-11-16 12:20:24,080 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,081 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,082 [http-nio-8090-exec-5] ====> Parameters: 458(Integer)
2018-11-16 12:20:24,083 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,083 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,083 [http-nio-8090-exec-5] ====> Parameters: 468(Integer)
2018-11-16 12:20:24,084 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,085 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,085 [http-nio-8090-exec-5] ====> Parameters: 462(Integer)
2018-11-16 12:20:24,086 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,087 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,087 [http-nio-8090-exec-5] ====> Parameters: 517(Integer)
2018-11-16 12:20:24,087 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,088 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,088 [http-nio-8090-exec-5] ====> Parameters: 489(Integer)
2018-11-16 12:20:24,089 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,090 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,090 [http-nio-8090-exec-5] ====> Parameters: 490(Integer)
2018-11-16 12:20:24,091 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,092 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,092 [http-nio-8090-exec-5] ====> Parameters: 442(Integer)
2018-11-16 12:20:24,093 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,094 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,094 [http-nio-8090-exec-5] ====> Parameters: 457(Integer)
2018-11-16 12:20:24,095 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,095 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,096 [http-nio-8090-exec-5] ====> Parameters: 510(Integer)
2018-11-16 12:20:24,096 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,097 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,097 [http-nio-8090-exec-5] ====> Parameters: 513(Integer)
2018-11-16 12:20:24,098 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,098 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,099 [http-nio-8090-exec-5] ====> Parameters: 485(Integer)
2018-11-16 12:20:24,099 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,100 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,100 [http-nio-8090-exec-5] ====> Parameters: 496(Integer)
2018-11-16 12:20:24,101 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,101 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,101 [http-nio-8090-exec-5] ====> Parameters: 459(Integer)
2018-11-16 12:20:24,102 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,103 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,103 [http-nio-8090-exec-5] ====> Parameters: 451(Integer)
2018-11-16 12:20:24,103 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,104 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,104 [http-nio-8090-exec-5] ====> Parameters: 515(Integer)
2018-11-16 12:20:24,105 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,105 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,106 [http-nio-8090-exec-5] ====> Parameters: 506(Integer)
2018-11-16 12:20:24,106 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,107 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,107 [http-nio-8090-exec-5] ====> Parameters: 498(Integer)
2018-11-16 12:20:24,108 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,109 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,109 [http-nio-8090-exec-5] ====> Parameters: 488(Integer)
2018-11-16 12:20:24,109 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,110 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,110 [http-nio-8090-exec-5] ====> Parameters: 504(Integer)
2018-11-16 12:20:24,111 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,112 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,112 [http-nio-8090-exec-5] ====> Parameters: 448(Integer)
2018-11-16 12:20:24,112 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,113 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,113 [http-nio-8090-exec-5] ====> Parameters: 452(Integer)
2018-11-16 12:20:24,114 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,115 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,115 [http-nio-8090-exec-5] ====> Parameters: 511(Integer)
2018-11-16 12:20:24,116 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,116 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,116 [http-nio-8090-exec-5] ====> Parameters: 440(Integer)
2018-11-16 12:20:24,117 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,117 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,118 [http-nio-8090-exec-5] ====> Parameters: 470(Integer)
2018-11-16 12:20:24,118 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,119 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,119 [http-nio-8090-exec-5] ====> Parameters: 482(Integer)
2018-11-16 12:20:24,120 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,120 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,121 [http-nio-8090-exec-5] ====> Parameters: 494(Integer)
2018-11-16 12:20:24,121 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,122 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,122 [http-nio-8090-exec-5] ====> Parameters: 520(Integer)
2018-11-16 12:20:24,123 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,123 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,124 [http-nio-8090-exec-5] ====> Parameters: 449(Integer)
2018-11-16 12:20:24,124 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,125 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,125 [http-nio-8090-exec-5] ====> Parameters: 454(Integer)
2018-11-16 12:20:24,126 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,126 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,127 [http-nio-8090-exec-5] ====> Parameters: 466(Integer)
2018-11-16 12:20:24,127 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,128 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,128 [http-nio-8090-exec-5] ====> Parameters: 472(Integer)
2018-11-16 12:20:24,128 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,129 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,129 [http-nio-8090-exec-5] ====> Parameters: 460(Integer)
2018-11-16 12:20:24,130 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,130 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,130 [http-nio-8090-exec-5] ====> Parameters: 475(Integer)
2018-11-16 12:20:24,131 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,132 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,132 [http-nio-8090-exec-5] ====> Parameters: 491(Integer)
2018-11-16 12:20:24,132 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,133 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,133 [http-nio-8090-exec-5] ====> Parameters: 474(Integer)
2018-11-16 12:20:24,134 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,134 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,135 [http-nio-8090-exec-5] ====> Parameters: 477(Integer)
2018-11-16 12:20:24,135 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,135 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,136 [http-nio-8090-exec-5] ====> Parameters: 505(Integer)
2018-11-16 12:20:24,136 [http-nio-8090-exec-5] <====      Total: 2
2018-11-16 12:20:24,137 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,137 [http-nio-8090-exec-5] ====> Parameters: 479(Integer)
2018-11-16 12:20:24,137 [http-nio-8090-exec-5] <====      Total: 3
2018-11-16 12:20:24,138 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,138 [http-nio-8090-exec-5] ====> Parameters: 503(Integer)
2018-11-16 12:20:24,138 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,139 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,139 [http-nio-8090-exec-5] ====> Parameters: 493(Integer)
2018-11-16 12:20:24,140 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,140 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,141 [http-nio-8090-exec-5] ====> Parameters: 507(Integer)
2018-11-16 12:20:24,142 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,142 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,142 [http-nio-8090-exec-5] ====> Parameters: 501(Integer)
2018-11-16 12:20:24,143 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,143 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,144 [http-nio-8090-exec-5] ====> Parameters: 444(Integer)
2018-11-16 12:20:24,144 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,145 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,145 [http-nio-8090-exec-5] ====> Parameters: 469(Integer)
2018-11-16 12:20:24,145 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,146 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,146 [http-nio-8090-exec-5] ====> Parameters: 467(Integer)
2018-11-16 12:20:24,147 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,147 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,147 [http-nio-8090-exec-5] ====> Parameters: 502(Integer)
2018-11-16 12:20:24,148 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,149 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,149 [http-nio-8090-exec-5] ====> Parameters: 443(Integer)
2018-11-16 12:20:24,150 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,150 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,150 [http-nio-8090-exec-5] ====> Parameters: 484(Integer)
2018-11-16 12:20:24,151 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,151 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,152 [http-nio-8090-exec-5] ====> Parameters: 480(Integer)
2018-11-16 12:20:24,152 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,153 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,153 [http-nio-8090-exec-5] ====> Parameters: 445(Integer)
2018-11-16 12:20:24,154 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,154 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,154 [http-nio-8090-exec-5] ====> Parameters: 473(Integer)
2018-11-16 12:20:24,155 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,156 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,156 [http-nio-8090-exec-5] ====> Parameters: 509(Integer)
2018-11-16 12:20:24,157 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,157 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,158 [http-nio-8090-exec-5] ====> Parameters: 497(Integer)
2018-11-16 12:20:24,158 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,159 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,159 [http-nio-8090-exec-5] ====> Parameters: 522(Integer)
2018-11-16 12:20:24,160 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,160 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,161 [http-nio-8090-exec-5] ====> Parameters: 441(Integer)
2018-11-16 12:20:24,161 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,162 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,162 [http-nio-8090-exec-5] ====> Parameters: 478(Integer)
2018-11-16 12:20:24,163 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,163 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,164 [http-nio-8090-exec-5] ====> Parameters: 495(Integer)
2018-11-16 12:20:24,164 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,165 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,165 [http-nio-8090-exec-5] ====> Parameters: 453(Integer)
2018-11-16 12:20:24,166 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,166 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:20:24,166 [http-nio-8090-exec-5] ====> Parameters: 471(Integer)
2018-11-16 12:20:24,167 [http-nio-8090-exec-5] <====      Total: 1
2018-11-16 12:20:24,167 [http-nio-8090-exec-5] <==      Total: 83
2018-11-16 12:20:24,168 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,169 [http-nio-8090-exec-5] ==> Parameters: 20(Long)
2018-11-16 12:20:24,170 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,171 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,171 [http-nio-8090-exec-5] ==> Parameters: 1(Long)
2018-11-16 12:20:24,172 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,173 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,173 [http-nio-8090-exec-5] ==> Parameters: 21(Long)
2018-11-16 12:20:24,174 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,174 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,175 [http-nio-8090-exec-5] ==> Parameters: 22(Long)
2018-11-16 12:20:24,175 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,176 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,176 [http-nio-8090-exec-5] ==> Parameters: 23(Long)
2018-11-16 12:20:24,177 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,178 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,178 [http-nio-8090-exec-5] ==> Parameters: 24(Long)
2018-11-16 12:20:24,179 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,180 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,180 [http-nio-8090-exec-5] ==> Parameters: 25(Long)
2018-11-16 12:20:24,181 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,182 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,182 [http-nio-8090-exec-5] ==> Parameters: 27(Long)
2018-11-16 12:20:24,183 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,183 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,184 [http-nio-8090-exec-5] ==> Parameters: 26(Long)
2018-11-16 12:20:24,184 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,185 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,185 [http-nio-8090-exec-5] ==> Parameters: 28(Long)
2018-11-16 12:20:24,186 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,187 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,187 [http-nio-8090-exec-5] ==> Parameters: 33(Long)
2018-11-16 12:20:24,188 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,188 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,189 [http-nio-8090-exec-5] ==> Parameters: 31(Long)
2018-11-16 12:20:24,189 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,190 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,190 [http-nio-8090-exec-5] ==> Parameters: 32(Long)
2018-11-16 12:20:24,191 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,192 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,192 [http-nio-8090-exec-5] ==> Parameters: 34(Long)
2018-11-16 12:20:24,193 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,193 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,193 [http-nio-8090-exec-5] ==> Parameters: 35(Long)
2018-11-16 12:20:24,194 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,194 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,195 [http-nio-8090-exec-5] ==> Parameters: 36(Long)
2018-11-16 12:20:24,195 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,196 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,196 [http-nio-8090-exec-5] ==> Parameters: 38(Long)
2018-11-16 12:20:24,197 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,197 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,197 [http-nio-8090-exec-5] ==> Parameters: 37(Long)
2018-11-16 12:20:24,198 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,198 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,199 [http-nio-8090-exec-5] ==> Parameters: 40(Long)
2018-11-16 12:20:24,199 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,200 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,200 [http-nio-8090-exec-5] ==> Parameters: 41(Long)
2018-11-16 12:20:24,200 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,201 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,202 [http-nio-8090-exec-5] ==> Parameters: 42(Long)
2018-11-16 12:20:24,202 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,203 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,203 [http-nio-8090-exec-5] ==> Parameters: 43(Long)
2018-11-16 12:20:24,204 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,204 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,205 [http-nio-8090-exec-5] ==> Parameters: 44(Long)
2018-11-16 12:20:24,205 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,206 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,206 [http-nio-8090-exec-5] ==> Parameters: 45(Long)
2018-11-16 12:20:24,207 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,207 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,208 [http-nio-8090-exec-5] ==> Parameters: 102(Long)
2018-11-16 12:20:24,208 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,209 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,209 [http-nio-8090-exec-5] ==> Parameters: 59(Long)
2018-11-16 12:20:24,210 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,211 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,211 [http-nio-8090-exec-5] ==> Parameters: 66(Long)
2018-11-16 12:20:24,211 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,212 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,212 [http-nio-8090-exec-5] ==> Parameters: 63(Long)
2018-11-16 12:20:24,213 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,213 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,214 [http-nio-8090-exec-5] ==> Parameters: 105(Long)
2018-11-16 12:20:24,214 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,215 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,215 [http-nio-8090-exec-5] ==> Parameters: 81(Long)
2018-11-16 12:20:24,216 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,216 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,217 [http-nio-8090-exec-5] ==> Parameters: 83(Long)
2018-11-16 12:20:24,217 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,218 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,218 [http-nio-8090-exec-5] ==> Parameters: 48(Long)
2018-11-16 12:20:24,219 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,219 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,220 [http-nio-8090-exec-5] ==> Parameters: 58(Long)
2018-11-16 12:20:24,220 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,221 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,221 [http-nio-8090-exec-5] ==> Parameters: 99(Long)
2018-11-16 12:20:24,221 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,222 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,222 [http-nio-8090-exec-5] ==> Parameters: 101(Long)
2018-11-16 12:20:24,222 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,223 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,224 [http-nio-8090-exec-5] ==> Parameters: 80(Long)
2018-11-16 12:20:24,224 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,225 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,225 [http-nio-8090-exec-5] ==> Parameters: 88(Long)
2018-11-16 12:20:24,226 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,226 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,226 [http-nio-8090-exec-5] ==> Parameters: 60(Long)
2018-11-16 12:20:24,227 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,227 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,228 [http-nio-8090-exec-5] ==> Parameters: 54(Long)
2018-11-16 12:20:24,228 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,229 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,229 [http-nio-8090-exec-5] ==> Parameters: 103(Long)
2018-11-16 12:20:24,230 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,230 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,231 [http-nio-8090-exec-5] ==> Parameters: 95(Long)
2018-11-16 12:20:24,231 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,232 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,232 [http-nio-8090-exec-5] ==> Parameters: 89(Long)
2018-11-16 12:20:24,233 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,234 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,234 [http-nio-8090-exec-5] ==> Parameters: 82(Long)
2018-11-16 12:20:24,234 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,235 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,235 [http-nio-8090-exec-5] ==> Parameters: 93(Long)
2018-11-16 12:20:24,236 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,236 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,237 [http-nio-8090-exec-5] ==> Parameters: 52(Long)
2018-11-16 12:20:24,237 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,238 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,238 [http-nio-8090-exec-5] ==> Parameters: 55(Long)
2018-11-16 12:20:24,239 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,240 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,240 [http-nio-8090-exec-5] ==> Parameters: 100(Long)
2018-11-16 12:20:24,241 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,241 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,242 [http-nio-8090-exec-5] ==> Parameters: 46(Long)
2018-11-16 12:20:24,242 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,243 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,243 [http-nio-8090-exec-5] ==> Parameters: 68(Long)
2018-11-16 12:20:24,244 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,244 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,245 [http-nio-8090-exec-5] ==> Parameters: 76(Long)
2018-11-16 12:20:24,245 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,245 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,246 [http-nio-8090-exec-5] ==> Parameters: 86(Long)
2018-11-16 12:20:24,246 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,247 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,247 [http-nio-8090-exec-5] ==> Parameters: 104(Long)
2018-11-16 12:20:24,247 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,248 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,248 [http-nio-8090-exec-5] ==> Parameters: 53(Long)
2018-11-16 12:20:24,249 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,249 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,250 [http-nio-8090-exec-5] ==> Parameters: 57(Long)
2018-11-16 12:20:24,250 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,251 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,251 [http-nio-8090-exec-5] ==> Parameters: 64(Long)
2018-11-16 12:20:24,251 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,252 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,252 [http-nio-8090-exec-5] ==> Parameters: 70(Long)
2018-11-16 12:20:24,253 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,253 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,254 [http-nio-8090-exec-5] ==> Parameters: 61(Long)
2018-11-16 12:20:24,254 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,254 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,255 [http-nio-8090-exec-5] ==> Parameters: 73(Long)
2018-11-16 12:20:24,255 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,256 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,256 [http-nio-8090-exec-5] ==> Parameters: 84(Long)
2018-11-16 12:20:24,257 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,257 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,258 [http-nio-8090-exec-5] ==> Parameters: 72(Long)
2018-11-16 12:20:24,258 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,259 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,259 [http-nio-8090-exec-5] ==> Parameters: 74(Long)
2018-11-16 12:20:24,260 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,260 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,261 [http-nio-8090-exec-5] ==> Parameters: 18(Long)
2018-11-16 12:20:24,261 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,262 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,262 [http-nio-8090-exec-5] ==> Parameters: 19(Long)
2018-11-16 12:20:24,262 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,263 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,263 [http-nio-8090-exec-5] ==> Parameters: 107(Long)
2018-11-16 12:20:24,264 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,265 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,265 [http-nio-8090-exec-5] ==> Parameters: 75(Long)
2018-11-16 12:20:24,265 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,266 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,266 [http-nio-8090-exec-5] ==> Parameters: 108(Long)
2018-11-16 12:20:24,266 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,267 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,267 [http-nio-8090-exec-5] ==> Parameters: 94(Long)
2018-11-16 12:20:24,268 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,268 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,268 [http-nio-8090-exec-5] ==> Parameters: 85(Long)
2018-11-16 12:20:24,269 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,269 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,270 [http-nio-8090-exec-5] ==> Parameters: 96(Long)
2018-11-16 12:20:24,270 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,271 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,271 [http-nio-8090-exec-5] ==> Parameters: 91(Long)
2018-11-16 12:20:24,271 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,272 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,272 [http-nio-8090-exec-5] ==> Parameters: 50(Long)
2018-11-16 12:20:24,273 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,273 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,274 [http-nio-8090-exec-5] ==> Parameters: 67(Long)
2018-11-16 12:20:24,274 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,275 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,275 [http-nio-8090-exec-5] ==> Parameters: 65(Long)
2018-11-16 12:20:24,276 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,276 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,277 [http-nio-8090-exec-5] ==> Parameters: 92(Long)
2018-11-16 12:20:24,277 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,277 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,278 [http-nio-8090-exec-5] ==> Parameters: 49(Long)
2018-11-16 12:20:24,278 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,279 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,279 [http-nio-8090-exec-5] ==> Parameters: 79(Long)
2018-11-16 12:20:24,279 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,280 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,280 [http-nio-8090-exec-5] ==> Parameters: 78(Long)
2018-11-16 12:20:24,281 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,281 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,281 [http-nio-8090-exec-5] ==> Parameters: 51(Long)
2018-11-16 12:20:24,282 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,282 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,283 [http-nio-8090-exec-5] ==> Parameters: 71(Long)
2018-11-16 12:20:24,283 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,284 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,284 [http-nio-8090-exec-5] ==> Parameters: 98(Long)
2018-11-16 12:20:24,284 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,285 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,285 [http-nio-8090-exec-5] ==> Parameters: 90(Long)
2018-11-16 12:20:24,285 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,286 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,286 [http-nio-8090-exec-5] ==> Parameters: 106(Long)
2018-11-16 12:20:24,286 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,287 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,287 [http-nio-8090-exec-5] ==> Parameters: 47(Long)
2018-11-16 12:20:24,287 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,288 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,288 [http-nio-8090-exec-5] ==> Parameters: 77(Long)
2018-11-16 12:20:24,289 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,290 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,290 [http-nio-8090-exec-5] ==> Parameters: 87(Long)
2018-11-16 12:20:24,290 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,291 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,292 [http-nio-8090-exec-5] ==> Parameters: 56(Long)
2018-11-16 12:20:24,292 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:20:24,293 [http-nio-8090-exec-5] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-16 12:20:24,293 [http-nio-8090-exec-5] ==> Parameters: 69(Long)
2018-11-16 12:20:24,294 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:21:52,664 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:52,673 [http-nio-8090-exec-2] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:52,681 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:21:52,797 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:52,797 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:52,799 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:52,952 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:52,953 [http-nio-8090-exec-2] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:52,955 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:21:52,962 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:21:52,964 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:52,965 [http-nio-8090-exec-2] <==      Total: 2
2018-11-16 12:21:52,967 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:21:52,971 [http-nio-8090-exec-2] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:52,972 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:21:55,395 [http-nio-8090-exec-3] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-16 12:21:55,401 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-16 12:21:55.395(Timestamp)
2018-11-16 12:21:55,405 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-16 12:21:55,410 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:55,411 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,414 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:55,418 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 12:21:55,419 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-16 12:21:55,425 [http-nio-8090-exec-3] <==      Total: 37
2018-11-16 12:21:55,427 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:55,427 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,428 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:55,441 [http-nio-8090-exec-3] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-16 12:21:55,444 [http-nio-8090-exec-3] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542349315426,"id":10,"loginTime":1542342115426,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"07e7f4a2-67fb-4190-a5f9-946b562b804a","username":"wuzhihua"}(String), 2018-11-16 14:21:55.426(Timestamp), 2018-11-16 12:21:55.429(Timestamp), 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,448 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-16 12:21:55,523 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:55,523 [http-nio-8090-exec-10] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,525 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:21:55,539 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:55,540 [http-nio-8090-exec-7] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,541 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:21:55,602 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:55,602 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:55,603 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:55,606 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:21:55,607 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:55,608 [http-nio-8090-exec-3] <==      Total: 2
2018-11-16 12:21:55,609 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:21:55,610 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:55,612 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:58,218 [http-nio-8090-exec-5] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-16 12:21:58,219 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-16 12:21:58.217(Timestamp)
2018-11-16 12:21:58,503 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-16 12:21:58,512 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:58,513 [http-nio-8090-exec-5] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,516 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:21:58,520 [http-nio-8090-exec-5] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 12:21:58,520 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-16 12:21:58,526 [http-nio-8090-exec-5] <==      Total: 37
2018-11-16 12:21:58,528 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:58,528 [http-nio-8090-exec-5] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,530 [http-nio-8090-exec-5] <==      Total: 1
2018-11-16 12:21:58,533 [http-nio-8090-exec-5] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-16 12:21:58,535 [http-nio-8090-exec-5] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542349318527,"id":10,"loginTime":1542342118527,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"07e7f4a2-67fb-4190-a5f9-946b562b804a","username":"wuzhihua"}(String), 2018-11-16 14:21:58.527(Timestamp), 2018-11-16 12:21:58.532(Timestamp), 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,539 [http-nio-8090-exec-5] <==    Updates: 1
2018-11-16 12:21:58,612 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:58,613 [http-nio-8090-exec-7] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,615 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 12:21:58,630 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:58,631 [http-nio-8090-exec-9] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,632 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:21:58,679 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:21:58,680 [http-nio-8090-exec-3] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:21:58,681 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:21:58,684 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 12:21:58,685 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:58,686 [http-nio-8090-exec-3] <==      Total: 2
2018-11-16 12:21:58,687 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 12:21:58,687 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-16 12:21:58,689 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 12:22:03,083 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:22:03,084 [http-nio-8090-exec-10] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:22:03,085 [http-nio-8090-exec-10] <==      Total: 1
2018-11-16 12:22:03,096 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:22:03,097 [http-nio-8090-exec-9] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:22:03,098 [http-nio-8090-exec-9] <==      Total: 1
2018-11-16 12:22:03,114 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-16 12:22:03,115 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-16 12:22:03,117 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,119 [http-nio-8090-exec-9] ====> Parameters: 9(Integer)
2018-11-16 12:22:03,120 [http-nio-8090-exec-9] <====      Total: 2
2018-11-16 12:22:03,121 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,121 [http-nio-8090-exec-9] ====> Parameters: 439(Integer)
2018-11-16 12:22:03,123 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,123 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,124 [http-nio-8090-exec-9] ====> Parameters: 461(Integer)
2018-11-16 12:22:03,125 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,127 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,127 [http-nio-8090-exec-9] ====> Parameters: 465(Integer)
2018-11-16 12:22:03,128 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,129 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,129 [http-nio-8090-exec-9] ====> Parameters: 519(Integer)
2018-11-16 12:22:03,130 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,131 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,131 [http-nio-8090-exec-9] ====> Parameters: 481(Integer)
2018-11-16 12:22:03,132 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,132 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,133 [http-nio-8090-exec-9] ====> Parameters: 476(Integer)
2018-11-16 12:22:03,134 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,135 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,135 [http-nio-8090-exec-9] ====> Parameters: 516(Integer)
2018-11-16 12:22:03,136 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,137 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,137 [http-nio-8090-exec-9] ====> Parameters: 456(Integer)
2018-11-16 12:22:03,138 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,139 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,139 [http-nio-8090-exec-9] ====> Parameters: 492(Integer)
2018-11-16 12:22:03,140 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,141 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,141 [http-nio-8090-exec-9] ====> Parameters: 512(Integer)
2018-11-16 12:22:03,142 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,143 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,144 [http-nio-8090-exec-9] ====> Parameters: 464(Integer)
2018-11-16 12:22:03,144 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,145 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,145 [http-nio-8090-exec-9] ====> Parameters: 446(Integer)
2018-11-16 12:22:03,146 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,147 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,147 [http-nio-8090-exec-9] ====> Parameters: 450(Integer)
2018-11-16 12:22:03,148 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,149 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,149 [http-nio-8090-exec-9] ====> Parameters: 518(Integer)
2018-11-16 12:22:03,151 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,153 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,153 [http-nio-8090-exec-9] ====> Parameters: 500(Integer)
2018-11-16 12:22:03,154 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,155 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,156 [http-nio-8090-exec-9] ====> Parameters: 447(Integer)
2018-11-16 12:22:03,156 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,157 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,157 [http-nio-8090-exec-9] ====> Parameters: 463(Integer)
2018-11-16 12:22:03,158 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,159 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,159 [http-nio-8090-exec-9] ====> Parameters: 483(Integer)
2018-11-16 12:22:03,160 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,161 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,161 [http-nio-8090-exec-9] ====> Parameters: 487(Integer)
2018-11-16 12:22:03,162 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,163 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,164 [http-nio-8090-exec-9] ====> Parameters: 521(Integer)
2018-11-16 12:22:03,165 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,165 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,166 [http-nio-8090-exec-9] ====> Parameters: 486(Integer)
2018-11-16 12:22:03,166 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,167 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,167 [http-nio-8090-exec-9] ====> Parameters: 499(Integer)
2018-11-16 12:22:03,168 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,169 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,169 [http-nio-8090-exec-9] ====> Parameters: 514(Integer)
2018-11-16 12:22:03,170 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,170 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,171 [http-nio-8090-exec-9] ====> Parameters: 458(Integer)
2018-11-16 12:22:03,172 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,172 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,173 [http-nio-8090-exec-9] ====> Parameters: 468(Integer)
2018-11-16 12:22:03,173 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,174 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,175 [http-nio-8090-exec-9] ====> Parameters: 462(Integer)
2018-11-16 12:22:03,175 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,177 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,178 [http-nio-8090-exec-9] ====> Parameters: 517(Integer)
2018-11-16 12:22:03,179 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,180 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,180 [http-nio-8090-exec-9] ====> Parameters: 489(Integer)
2018-11-16 12:22:03,181 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,182 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,182 [http-nio-8090-exec-9] ====> Parameters: 490(Integer)
2018-11-16 12:22:03,183 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,184 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,184 [http-nio-8090-exec-9] ====> Parameters: 442(Integer)
2018-11-16 12:22:03,185 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,185 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,186 [http-nio-8090-exec-9] ====> Parameters: 457(Integer)
2018-11-16 12:22:03,186 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,187 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,187 [http-nio-8090-exec-9] ====> Parameters: 510(Integer)
2018-11-16 12:22:03,188 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,189 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,189 [http-nio-8090-exec-9] ====> Parameters: 513(Integer)
2018-11-16 12:22:03,190 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,191 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,191 [http-nio-8090-exec-9] ====> Parameters: 485(Integer)
2018-11-16 12:22:03,192 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,193 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,193 [http-nio-8090-exec-9] ====> Parameters: 496(Integer)
2018-11-16 12:22:03,194 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,195 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,196 [http-nio-8090-exec-9] ====> Parameters: 459(Integer)
2018-11-16 12:22:03,196 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,197 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,198 [http-nio-8090-exec-9] ====> Parameters: 451(Integer)
2018-11-16 12:22:03,199 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,199 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,199 [http-nio-8090-exec-9] ====> Parameters: 515(Integer)
2018-11-16 12:22:03,200 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,201 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,201 [http-nio-8090-exec-9] ====> Parameters: 506(Integer)
2018-11-16 12:22:03,202 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,203 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,203 [http-nio-8090-exec-9] ====> Parameters: 498(Integer)
2018-11-16 12:22:03,204 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,204 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,204 [http-nio-8090-exec-9] ====> Parameters: 488(Integer)
2018-11-16 12:22:03,205 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,206 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,206 [http-nio-8090-exec-9] ====> Parameters: 504(Integer)
2018-11-16 12:22:03,207 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,208 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,208 [http-nio-8090-exec-9] ====> Parameters: 448(Integer)
2018-11-16 12:22:03,209 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,210 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,210 [http-nio-8090-exec-9] ====> Parameters: 452(Integer)
2018-11-16 12:22:03,211 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,211 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,211 [http-nio-8090-exec-9] ====> Parameters: 511(Integer)
2018-11-16 12:22:03,212 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,213 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,213 [http-nio-8090-exec-9] ====> Parameters: 440(Integer)
2018-11-16 12:22:03,214 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,215 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,215 [http-nio-8090-exec-9] ====> Parameters: 470(Integer)
2018-11-16 12:22:03,216 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,217 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,217 [http-nio-8090-exec-9] ====> Parameters: 482(Integer)
2018-11-16 12:22:03,218 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,218 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,219 [http-nio-8090-exec-9] ====> Parameters: 494(Integer)
2018-11-16 12:22:03,220 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,220 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,221 [http-nio-8090-exec-9] ====> Parameters: 520(Integer)
2018-11-16 12:22:03,221 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,222 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,223 [http-nio-8090-exec-9] ====> Parameters: 449(Integer)
2018-11-16 12:22:03,223 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,224 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,224 [http-nio-8090-exec-9] ====> Parameters: 454(Integer)
2018-11-16 12:22:03,225 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,226 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,226 [http-nio-8090-exec-9] ====> Parameters: 466(Integer)
2018-11-16 12:22:03,227 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,227 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,228 [http-nio-8090-exec-9] ====> Parameters: 472(Integer)
2018-11-16 12:22:03,228 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,229 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,229 [http-nio-8090-exec-9] ====> Parameters: 460(Integer)
2018-11-16 12:22:03,230 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,230 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,231 [http-nio-8090-exec-9] ====> Parameters: 475(Integer)
2018-11-16 12:22:03,231 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,232 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,232 [http-nio-8090-exec-9] ====> Parameters: 491(Integer)
2018-11-16 12:22:03,233 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,234 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,234 [http-nio-8090-exec-9] ====> Parameters: 474(Integer)
2018-11-16 12:22:03,235 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,235 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,235 [http-nio-8090-exec-9] ====> Parameters: 477(Integer)
2018-11-16 12:22:03,236 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,237 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,237 [http-nio-8090-exec-9] ====> Parameters: 505(Integer)
2018-11-16 12:22:03,238 [http-nio-8090-exec-9] <====      Total: 2
2018-11-16 12:22:03,238 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,239 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-16 12:22:03,239 [http-nio-8090-exec-9] <====      Total: 3
2018-11-16 12:22:03,240 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,240 [http-nio-8090-exec-9] ====> Parameters: 503(Integer)
2018-11-16 12:22:03,241 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,242 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,242 [http-nio-8090-exec-9] ====> Parameters: 493(Integer)
2018-11-16 12:22:03,243 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,243 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,244 [http-nio-8090-exec-9] ====> Parameters: 507(Integer)
2018-11-16 12:22:03,244 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,245 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,245 [http-nio-8090-exec-9] ====> Parameters: 501(Integer)
2018-11-16 12:22:03,246 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,247 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,247 [http-nio-8090-exec-9] ====> Parameters: 444(Integer)
2018-11-16 12:22:03,248 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,248 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,249 [http-nio-8090-exec-9] ====> Parameters: 469(Integer)
2018-11-16 12:22:03,249 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,250 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,251 [http-nio-8090-exec-9] ====> Parameters: 467(Integer)
2018-11-16 12:22:03,251 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,252 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,252 [http-nio-8090-exec-9] ====> Parameters: 502(Integer)
2018-11-16 12:22:03,253 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,254 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,255 [http-nio-8090-exec-9] ====> Parameters: 443(Integer)
2018-11-16 12:22:03,255 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,256 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,256 [http-nio-8090-exec-9] ====> Parameters: 484(Integer)
2018-11-16 12:22:03,257 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,257 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,258 [http-nio-8090-exec-9] ====> Parameters: 480(Integer)
2018-11-16 12:22:03,258 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,259 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,260 [http-nio-8090-exec-9] ====> Parameters: 445(Integer)
2018-11-16 12:22:03,260 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,261 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,261 [http-nio-8090-exec-9] ====> Parameters: 473(Integer)
2018-11-16 12:22:03,262 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,262 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,263 [http-nio-8090-exec-9] ====> Parameters: 509(Integer)
2018-11-16 12:22:03,263 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,264 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,264 [http-nio-8090-exec-9] ====> Parameters: 497(Integer)
2018-11-16 12:22:03,265 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,266 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,266 [http-nio-8090-exec-9] ====> Parameters: 522(Integer)
2018-11-16 12:22:03,267 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,267 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,267 [http-nio-8090-exec-9] ====> Parameters: 441(Integer)
2018-11-16 12:22:03,268 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,269 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,269 [http-nio-8090-exec-9] ====> Parameters: 478(Integer)
2018-11-16 12:22:03,270 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,270 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,271 [http-nio-8090-exec-9] ====> Parameters: 495(Integer)
2018-11-16 12:22:03,271 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,272 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,272 [http-nio-8090-exec-9] ====> Parameters: 453(Integer)
2018-11-16 12:22:03,273 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,273 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-16 12:22:03,274 [http-nio-8090-exec-9] ====> Parameters: 471(Integer)
2018-11-16 12:22:03,274 [http-nio-8090-exec-9] <====      Total: 1
2018-11-16 12:22:03,275 [http-nio-8090-exec-9] <==      Total: 83
2018-11-16 12:22:04,101 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:22:04,101 [http-nio-8090-exec-4] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:22:04,103 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:22:04,105 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 12:22:04,105 [http-nio-8090-exec-2] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 12:22:04,106 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 12:22:04,154 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 12:22:04,156 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-16 12:22:04,157 [http-nio-8090-exec-4] <==      Total: 1
2018-11-16 12:22:04,160 [http-nio-8090-exec-4] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 12:22:04,163 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-16 12:22:04,164 [http-nio-8090-exec-4] <==      Total: 10
2018-11-16 20:17:17,712 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:17:17,719 [http-nio-8090-exec-2] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 20:17:17,728 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 20:17:17,808 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:17:17,809 [http-nio-8090-exec-1] ==> Parameters: 07e7f4a2-67fb-4190-a5f9-946b562b804a(String)
2018-11-16 20:17:17,809 [http-nio-8090-exec-1] <==      Total: 1
2018-11-16 20:17:20,008 [http-nio-8090-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-16 20:17:20,021 [http-nio-8090-exec-5] ==> Parameters: 1(String)
2018-11-16 20:17:20,023 [http-nio-8090-exec-5] <==      Total: 0
2018-11-16 20:44:29,450 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-16 20:44:29,455 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 20:44:29,471 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:44:29,486 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 20:44:29,486 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 20:44:29,486 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:44:29,486 [http-nio-8090-exec-6] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-16 20:44:29,502 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-16 20:44:29,517 [http-nio-8090-exec-6] <==      Total: 37
2018-11-16 20:44:29,616 [http-nio-8090-exec-6] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-16 20:44:29,616 [http-nio-8090-exec-6] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542379469600,"id":10,"loginTime":1542372269600,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"602a2d44-6847-4dda-9ec3-a8cb488769f8","username":"wuzhihua"}(String), 2018-11-16 22:44:29.6(Timestamp), 2018-11-16 20:44:29.6(Timestamp), 2018-11-16 20:44:29.6(Timestamp)
2018-11-16 20:44:29,648 [http-nio-8090-exec-6] <==    Updates: 1
2018-11-16 20:44:29,904 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:44:29,905 [http-nio-8090-exec-6] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:44:29,908 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:44:29,972 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:44:29,973 [http-nio-8090-exec-8] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:44:29,974 [http-nio-8090-exec-8] <==      Total: 1
2018-11-16 20:44:30,079 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:44:30,079 [http-nio-8090-exec-6] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:44:30,081 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:44:30,087 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-16 20:44:30,089 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 20:44:30,091 [http-nio-8090-exec-6] <==      Total: 2
2018-11-16 20:44:30,092 [http-nio-8090-exec-6] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-16 20:44:30,092 [http-nio-8090-exec-6] ==> Parameters: wuzhihua(String)
2018-11-16 20:44:30,093 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:44:31,842 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:44:31,843 [http-nio-8090-exec-7] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:44:31,843 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 20:44:31,847 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:44:31,847 [http-nio-8090-exec-6] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:44:31,848 [http-nio-8090-exec-6] <==      Total: 1
2018-11-16 20:46:02,008 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 20:46:02,020 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-16 20:46:02,161 [http-nio-8090-exec-7] <==      Total: 1
2018-11-16 20:46:02,161 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 20:46:02,176 [http-nio-8090-exec-7] ==> Parameters: 10(Integer)
2018-11-16 20:46:02,176 [http-nio-8090-exec-7] <==      Total: 10
2018-11-16 20:47:21,459 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:47:21,460 [http-nio-8090-exec-3] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:47:21,462 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 20:47:21,490 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 20:47:21,490 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-16 20:47:21,491 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 20:47:21,492 [http-nio-8090-exec-3] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 20:47:21,493 [http-nio-8090-exec-3] ==> Parameters: 10(Integer)
2018-11-16 20:47:21,496 [http-nio-8090-exec-3] <==      Total: 10
2018-11-16 20:47:33,092 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:47:33,093 [http-nio-8090-exec-2] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:47:33,094 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 20:47:33,100 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:47:33,100 [http-nio-8090-exec-3] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:47:33,101 [http-nio-8090-exec-3] <==      Total: 1
2018-11-16 20:47:33,117 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-16 20:47:33,118 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-16 20:47:33,118 [http-nio-8090-exec-2] <==      Total: 1
2018-11-16 20:47:33,119 [http-nio-8090-exec-2] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-16 20:47:33,120 [http-nio-8090-exec-2] ==> Parameters: 10(Integer)
2018-11-16 20:47:33,121 [http-nio-8090-exec-2] <==      Total: 10
2018-11-16 20:47:50,556 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-16 20:47:50,557 [http-nio-8090-exec-1] ==> Parameters: 602a2d44-6847-4dda-9ec3-a8cb488769f8(String)
2018-11-16 20:47:50,558 [http-nio-8090-exec-1] <==      Total: 1
