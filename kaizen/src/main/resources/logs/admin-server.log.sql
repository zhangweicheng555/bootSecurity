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
2018-11-17 08:30:16,480 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:16,489 [http-nio-8090-exec-7] ==> Parameters: af28d0cf-c9fe-468a-a887-69c4c6bc260d(String)
2018-11-17 08:30:16,496 [http-nio-8090-exec-7] <==      Total: 0
2018-11-17 08:30:25,249 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-17 08:30:25,250 [http-nio-8090-exec-9] ==> Parameters: mocun(String)
2018-11-17 08:30:25,254 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:30:25,263 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:30:25,356 [http-nio-8090-exec-9] ==> Parameters: mocun(String)
2018-11-17 08:30:25,359 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:30:25,363 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:30:25,366 [http-nio-8090-exec-9] ==> Parameters: mocun(String), 9(Long)
2018-11-17 08:30:25,376 [http-nio-8090-exec-9] <==      Total: 37
2018-11-17 08:30:25,480 [http-nio-8090-exec-9] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-17 08:30:25,482 [http-nio-8090-exec-9] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":601920000000,"createTime":1541995509000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542421825471,"id":8713,"loginTime":1542414625471,"nickname":"默存","password":"$2a$10$bqBsy/cdV0lpOGwBcwtaEuet5krQi7fUQUEYGEgAtWI3pP4O.2xpa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"799a441a-414c-4d62-89d9-62c19a91b29f","username":"mocun"}(String), 2018-11-17 10:30:25.471(Timestamp), 2018-11-17 08:30:25.471(Timestamp), 2018-11-17 08:30:25.471(Timestamp)
2018-11-17 08:30:25,485 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-17 08:30:26,055 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:26,057 [http-nio-8090-exec-9] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:26,063 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:30:26,188 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:26,189 [http-nio-8090-exec-4] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:26,190 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:30:26,310 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:26,311 [http-nio-8090-exec-2] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:26,312 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:30:26,326 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:30:26,328 [http-nio-8090-exec-2] ==> Parameters: mocun(String)
2018-11-17 08:30:26,332 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:30:26,334 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:30:26,336 [http-nio-8090-exec-2] ==> Parameters: mocun(String)
2018-11-17 08:30:26,338 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:30:35,234 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:35,235 [http-nio-8090-exec-3] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:35,236 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:30:35,263 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:35,263 [http-nio-8090-exec-6] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:35,264 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:30:35,273 [http-nio-8090-exec-6] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-17 08:30:35,273 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:30:35,277 [http-nio-8090-exec-6] <==      Total: 37
2018-11-17 08:30:37,998 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:37,999 [http-nio-8090-exec-5] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:38,001 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:30:38,011 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:38,012 [http-nio-8090-exec-7] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:38,013 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:30:38,095 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:30:38,097 [http-nio-8090-exec-5] ==> Parameters: 9(Long)
2018-11-17 08:30:38,098 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:30:39,458 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:39,459 [http-nio-8090-exec-1] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:39,461 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:30:39,472 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:30:39,473 [http-nio-8090-exec-1] ==> Parameters: 9(Long)
2018-11-17 08:30:39,474 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:30:40,258 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:40,260 [http-nio-8090-exec-6] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:40,261 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:30:40,375 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:40,376 [http-nio-8090-exec-6] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:40,377 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:30:40,384 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:30:40,385 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:30:40,387 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:30:40,388 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:30:40,389 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-17 08:30:40,392 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:30:42,242 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:42,242 [http-nio-8090-exec-9] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:42,243 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:30:42,257 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:30:42,258 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-17 08:30:42,259 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:30:42,913 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:42,913 [http-nio-8090-exec-2] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:42,915 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:30:42,922 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:30:42,923 [http-nio-8090-exec-2] ==> Parameters: 9(Long)
2018-11-17 08:30:42,925 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:30:44,634 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:30:44,636 [http-nio-8090-exec-3] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:30:44,636 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:31:58,746 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:31:58,746 [http-nio-8090-exec-1] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:31:58,748 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:31:58,749 [http-nio-8090-exec-1] ==>  Preparing: delete from t_token where id = ? 
2018-11-17 08:31:58,753 [http-nio-8090-exec-1] ==> Parameters: 799a441a-414c-4d62-89d9-62c19a91b29f(String)
2018-11-17 08:31:58,853 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-17 08:32:03,736 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-17 08:32:03,736 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-17 08:32:03,738 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:32:03,740 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:32:03,740 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String)
2018-11-17 08:32:03,742 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:32:03,743 [http-nio-8090-exec-10] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:32:03,744 [http-nio-8090-exec-10] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-17 08:32:03,747 [http-nio-8090-exec-10] <==      Total: 37
2018-11-17 08:32:03,835 [http-nio-8090-exec-10] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-17 08:32:03,837 [http-nio-8090-exec-10] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542421923834,"id":10,"loginTime":1542414723834,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"09c17bdc-bdc9-458e-b911-f87f541ee4ce","username":"wuzhihua"}(String), 2018-11-17 10:32:03.834(Timestamp), 2018-11-17 08:32:03.834(Timestamp), 2018-11-17 08:32:03.834(Timestamp)
2018-11-17 08:32:03,841 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-17 08:32:03,981 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:03,981 [http-nio-8090-exec-6] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:03,983 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:04,024 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:04,024 [http-nio-8090-exec-1] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:04,026 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:04,114 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:04,114 [http-nio-8090-exec-8] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:04,115 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:32:04,119 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:32:04,120 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 08:32:04,122 [http-nio-8090-exec-8] <==      Total: 2
2018-11-17 08:32:04,124 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:32:04,125 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 08:32:04,128 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:32:06,281 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:06,281 [http-nio-8090-exec-7] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:06,283 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:32:06,292 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:32:06,295 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:32:06,307 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:32:06,308 [http-nio-8090-exec-7] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-17 08:32:06,309 [http-nio-8090-exec-7] ==> Parameters: 3(Integer)
2018-11-17 08:32:06,319 [http-nio-8090-exec-7] <==      Total: 3
2018-11-17 08:32:06,685 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:06,686 [http-nio-8090-exec-8] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:06,689 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:32:06,710 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:06,710 [http-nio-8090-exec-9] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:06,711 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:32:06,720 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:32:06,721 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-17 08:32:06,724 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,725 [http-nio-8090-exec-9] ====> Parameters: 9(Integer)
2018-11-17 08:32:06,727 [http-nio-8090-exec-9] <====      Total: 2
2018-11-17 08:32:06,727 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,728 [http-nio-8090-exec-9] ====> Parameters: 439(Integer)
2018-11-17 08:32:06,729 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,730 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,730 [http-nio-8090-exec-9] ====> Parameters: 461(Integer)
2018-11-17 08:32:06,731 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,734 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,734 [http-nio-8090-exec-9] ====> Parameters: 465(Integer)
2018-11-17 08:32:06,736 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,737 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,738 [http-nio-8090-exec-9] ====> Parameters: 519(Integer)
2018-11-17 08:32:06,739 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,740 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,740 [http-nio-8090-exec-9] ====> Parameters: 481(Integer)
2018-11-17 08:32:06,742 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,743 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,743 [http-nio-8090-exec-9] ====> Parameters: 516(Integer)
2018-11-17 08:32:06,744 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,745 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,746 [http-nio-8090-exec-9] ====> Parameters: 476(Integer)
2018-11-17 08:32:06,747 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,748 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,749 [http-nio-8090-exec-9] ====> Parameters: 456(Integer)
2018-11-17 08:32:06,752 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,753 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,753 [http-nio-8090-exec-9] ====> Parameters: 512(Integer)
2018-11-17 08:32:06,755 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,755 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,756 [http-nio-8090-exec-9] ====> Parameters: 464(Integer)
2018-11-17 08:32:06,757 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,758 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,759 [http-nio-8090-exec-9] ====> Parameters: 492(Integer)
2018-11-17 08:32:06,760 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,761 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,761 [http-nio-8090-exec-9] ====> Parameters: 446(Integer)
2018-11-17 08:32:06,762 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,763 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,764 [http-nio-8090-exec-9] ====> Parameters: 450(Integer)
2018-11-17 08:32:06,766 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,767 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,768 [http-nio-8090-exec-9] ====> Parameters: 518(Integer)
2018-11-17 08:32:06,770 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,771 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,771 [http-nio-8090-exec-9] ====> Parameters: 500(Integer)
2018-11-17 08:32:06,772 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,773 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,773 [http-nio-8090-exec-9] ====> Parameters: 447(Integer)
2018-11-17 08:32:06,774 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,775 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,776 [http-nio-8090-exec-9] ====> Parameters: 463(Integer)
2018-11-17 08:32:06,777 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,777 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,778 [http-nio-8090-exec-9] ====> Parameters: 483(Integer)
2018-11-17 08:32:06,779 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,780 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,780 [http-nio-8090-exec-9] ====> Parameters: 487(Integer)
2018-11-17 08:32:06,782 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,783 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,784 [http-nio-8090-exec-9] ====> Parameters: 521(Integer)
2018-11-17 08:32:06,786 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,786 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,787 [http-nio-8090-exec-9] ====> Parameters: 486(Integer)
2018-11-17 08:32:06,788 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,789 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,790 [http-nio-8090-exec-9] ====> Parameters: 499(Integer)
2018-11-17 08:32:06,791 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,791 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,792 [http-nio-8090-exec-9] ====> Parameters: 458(Integer)
2018-11-17 08:32:06,793 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,794 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,795 [http-nio-8090-exec-9] ====> Parameters: 514(Integer)
2018-11-17 08:32:06,796 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,796 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,797 [http-nio-8090-exec-9] ====> Parameters: 468(Integer)
2018-11-17 08:32:06,799 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,800 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,801 [http-nio-8090-exec-9] ====> Parameters: 517(Integer)
2018-11-17 08:32:06,802 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,803 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,803 [http-nio-8090-exec-9] ====> Parameters: 462(Integer)
2018-11-17 08:32:06,804 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,805 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,805 [http-nio-8090-exec-9] ====> Parameters: 489(Integer)
2018-11-17 08:32:06,807 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,807 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,807 [http-nio-8090-exec-9] ====> Parameters: 490(Integer)
2018-11-17 08:32:06,808 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,809 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,809 [http-nio-8090-exec-9] ====> Parameters: 457(Integer)
2018-11-17 08:32:06,810 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,811 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,811 [http-nio-8090-exec-9] ====> Parameters: 442(Integer)
2018-11-17 08:32:06,812 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,813 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,814 [http-nio-8090-exec-9] ====> Parameters: 510(Integer)
2018-11-17 08:32:06,815 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,818 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,820 [http-nio-8090-exec-9] ====> Parameters: 485(Integer)
2018-11-17 08:32:06,822 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,823 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,824 [http-nio-8090-exec-9] ====> Parameters: 513(Integer)
2018-11-17 08:32:06,825 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,825 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,826 [http-nio-8090-exec-9] ====> Parameters: 496(Integer)
2018-11-17 08:32:06,827 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,827 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,827 [http-nio-8090-exec-9] ====> Parameters: 459(Integer)
2018-11-17 08:32:06,828 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,829 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,829 [http-nio-8090-exec-9] ====> Parameters: 515(Integer)
2018-11-17 08:32:06,831 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,832 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,834 [http-nio-8090-exec-9] ====> Parameters: 506(Integer)
2018-11-17 08:32:06,836 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,836 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,837 [http-nio-8090-exec-9] ====> Parameters: 498(Integer)
2018-11-17 08:32:06,838 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,838 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,839 [http-nio-8090-exec-9] ====> Parameters: 451(Integer)
2018-11-17 08:32:06,840 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,840 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,841 [http-nio-8090-exec-9] ====> Parameters: 448(Integer)
2018-11-17 08:32:06,842 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,843 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,843 [http-nio-8090-exec-9] ====> Parameters: 488(Integer)
2018-11-17 08:32:06,845 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,845 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,846 [http-nio-8090-exec-9] ====> Parameters: 504(Integer)
2018-11-17 08:32:06,847 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,848 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,848 [http-nio-8090-exec-9] ====> Parameters: 511(Integer)
2018-11-17 08:32:06,851 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,852 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,853 [http-nio-8090-exec-9] ====> Parameters: 452(Integer)
2018-11-17 08:32:06,854 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,855 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,855 [http-nio-8090-exec-9] ====> Parameters: 470(Integer)
2018-11-17 08:32:06,856 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,857 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,858 [http-nio-8090-exec-9] ====> Parameters: 440(Integer)
2018-11-17 08:32:06,859 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,860 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,860 [http-nio-8090-exec-9] ====> Parameters: 482(Integer)
2018-11-17 08:32:06,861 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,862 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,862 [http-nio-8090-exec-9] ====> Parameters: 494(Integer)
2018-11-17 08:32:06,864 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,865 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,866 [http-nio-8090-exec-9] ====> Parameters: 520(Integer)
2018-11-17 08:32:06,868 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,869 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,870 [http-nio-8090-exec-9] ====> Parameters: 449(Integer)
2018-11-17 08:32:06,871 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,872 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,872 [http-nio-8090-exec-9] ====> Parameters: 454(Integer)
2018-11-17 08:32:06,873 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,873 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,874 [http-nio-8090-exec-9] ====> Parameters: 472(Integer)
2018-11-17 08:32:06,875 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,876 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,876 [http-nio-8090-exec-9] ====> Parameters: 466(Integer)
2018-11-17 08:32:06,877 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,878 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,878 [http-nio-8090-exec-9] ====> Parameters: 460(Integer)
2018-11-17 08:32:06,879 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,880 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,880 [http-nio-8090-exec-9] ====> Parameters: 475(Integer)
2018-11-17 08:32:06,881 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,881 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,882 [http-nio-8090-exec-9] ====> Parameters: 491(Integer)
2018-11-17 08:32:06,884 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,885 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,885 [http-nio-8090-exec-9] ====> Parameters: 474(Integer)
2018-11-17 08:32:06,899 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,900 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,901 [http-nio-8090-exec-9] ====> Parameters: 477(Integer)
2018-11-17 08:32:06,902 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,903 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,904 [http-nio-8090-exec-9] ====> Parameters: 505(Integer)
2018-11-17 08:32:06,905 [http-nio-8090-exec-9] <====      Total: 2
2018-11-17 08:32:06,906 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,906 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-17 08:32:06,908 [http-nio-8090-exec-9] <====      Total: 3
2018-11-17 08:32:06,908 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,909 [http-nio-8090-exec-9] ====> Parameters: 503(Integer)
2018-11-17 08:32:06,910 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,911 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,911 [http-nio-8090-exec-9] ====> Parameters: 493(Integer)
2018-11-17 08:32:06,912 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,913 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,913 [http-nio-8090-exec-9] ====> Parameters: 507(Integer)
2018-11-17 08:32:06,914 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,914 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,915 [http-nio-8090-exec-9] ====> Parameters: 469(Integer)
2018-11-17 08:32:06,916 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,917 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,918 [http-nio-8090-exec-9] ====> Parameters: 444(Integer)
2018-11-17 08:32:06,919 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,920 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,920 [http-nio-8090-exec-9] ====> Parameters: 501(Integer)
2018-11-17 08:32:06,922 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,923 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,923 [http-nio-8090-exec-9] ====> Parameters: 502(Integer)
2018-11-17 08:32:06,924 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,925 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,925 [http-nio-8090-exec-9] ====> Parameters: 467(Integer)
2018-11-17 08:32:06,927 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,927 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,928 [http-nio-8090-exec-9] ====> Parameters: 443(Integer)
2018-11-17 08:32:06,929 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,929 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,929 [http-nio-8090-exec-9] ====> Parameters: 484(Integer)
2018-11-17 08:32:06,930 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,931 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,931 [http-nio-8090-exec-9] ====> Parameters: 480(Integer)
2018-11-17 08:32:06,933 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,933 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,934 [http-nio-8090-exec-9] ====> Parameters: 445(Integer)
2018-11-17 08:32:06,935 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,935 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,935 [http-nio-8090-exec-9] ====> Parameters: 473(Integer)
2018-11-17 08:32:06,937 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,937 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,937 [http-nio-8090-exec-9] ====> Parameters: 509(Integer)
2018-11-17 08:32:06,938 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,939 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,939 [http-nio-8090-exec-9] ====> Parameters: 497(Integer)
2018-11-17 08:32:06,940 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,941 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,941 [http-nio-8090-exec-9] ====> Parameters: 522(Integer)
2018-11-17 08:32:06,942 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,943 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,943 [http-nio-8090-exec-9] ====> Parameters: 441(Integer)
2018-11-17 08:32:06,944 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,944 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,945 [http-nio-8090-exec-9] ====> Parameters: 478(Integer)
2018-11-17 08:32:06,946 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,946 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,946 [http-nio-8090-exec-9] ====> Parameters: 495(Integer)
2018-11-17 08:32:06,947 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,948 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,948 [http-nio-8090-exec-9] ====> Parameters: 453(Integer)
2018-11-17 08:32:06,949 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,950 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:06,950 [http-nio-8090-exec-9] ====> Parameters: 471(Integer)
2018-11-17 08:32:06,951 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:32:06,952 [http-nio-8090-exec-9] <==      Total: 83
2018-11-17 08:32:07,574 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:07,575 [http-nio-8090-exec-6] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:07,576 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:07,586 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:07,587 [http-nio-8090-exec-3] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:07,587 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:32:07,611 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:32:07,612 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:32:07,621 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:07,622 [http-nio-8090-exec-6] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:32:07,623 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-17 08:32:07,627 [http-nio-8090-exec-6] <==      Total: 10
2018-11-17 08:32:13,984 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:13,984 [http-nio-8090-exec-4] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:13,985 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:32:13,989 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:32:13,990 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-17 08:32:13,990 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:32:13,991 [http-nio-8090-exec-4] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-17 08:32:13,993 [http-nio-8090-exec-4] ==> Parameters: 6(Integer), 3(Integer)
2018-11-17 08:32:14,002 [http-nio-8090-exec-4] <==      Total: 3
2018-11-17 08:32:14,606 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:14,606 [http-nio-8090-exec-1] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:14,607 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:14,611 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:32:14,611 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-17 08:32:14,612 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:14,612 [http-nio-8090-exec-1] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ?, ? 
2018-11-17 08:32:14,613 [http-nio-8090-exec-1] ==> Parameters: 3(Integer), 3(Integer)
2018-11-17 08:32:14,622 [http-nio-8090-exec-1] <==      Total: 3
2018-11-17 08:32:17,641 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:17,643 [http-nio-8090-exec-2] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:17,644 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:32:17,668 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:17,669 [http-nio-8090-exec-9] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:17,669 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:32:17,676 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-17 08:32:17,676 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-17 08:32:17,678 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:32:17,678 [http-nio-8090-exec-9] ====> Parameters: 9(Integer)
2018-11-17 08:32:17,679 [http-nio-8090-exec-9] <====      Total: 2
2018-11-17 08:32:17,679 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:32:17,680 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:32:17,683 [http-nio-8090-exec-9] ==> Parameters: 1(Long)
2018-11-17 08:32:17,684 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:32:17,685 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:32:17,686 [http-nio-8090-exec-9] ==> Parameters: 20(Long)
2018-11-17 08:32:17,687 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:32:36,871 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:36,871 [http-nio-8090-exec-5] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:36,871 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:32:36,876 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:32:36,877 [http-nio-8090-exec-5] ==> Parameters: 9(Long)
2018-11-17 08:32:36,878 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:32:36,886 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:36,887 [http-nio-8090-exec-6] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:36,888 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:37,629 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:37,629 [http-nio-8090-exec-10] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:37,630 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:32:37,634 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:32:37,634 [http-nio-8090-exec-10] ==> Parameters: 9(Long)
2018-11-17 08:32:37,636 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:32:38,332 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:38,334 [http-nio-8090-exec-1] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:38,336 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:38,500 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:38,501 [http-nio-8090-exec-1] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:38,502 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:38,506 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:32:38,507 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-17 08:32:38,507 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:38,508 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:32:38,510 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-11-17 08:32:38,512 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:32:42,319 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:42,319 [http-nio-8090-exec-8] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:42,320 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:32:42,323 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:32:42,324 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-17 08:32:42,325 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:32:43,245 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:43,245 [http-nio-8090-exec-6] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:43,247 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:43,251 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:32:43,251 [http-nio-8090-exec-6] ==> Parameters: 9(Long)
2018-11-17 08:32:43,252 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:32:45,997 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:32:45,998 [http-nio-8090-exec-7] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:45,999 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:32:46,000 [http-nio-8090-exec-7] ==>  Preparing: delete from t_token where id = ? 
2018-11-17 08:32:46,000 [http-nio-8090-exec-7] ==> Parameters: 09c17bdc-bdc9-458e-b911-f87f541ee4ce(String)
2018-11-17 08:32:46,002 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-17 08:34:19,082 [http-nio-8090-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-17 08:34:19,083 [http-nio-8090-exec-2] ==> Parameters: mocun(String)
2018-11-17 08:34:19,084 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:34:19,085 [http-nio-8090-exec-2] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:34:19,085 [http-nio-8090-exec-2] ==> Parameters: mocun(String)
2018-11-17 08:34:19,086 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:34:19,087 [http-nio-8090-exec-2] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:34:19,087 [http-nio-8090-exec-2] ==> Parameters: mocun(String), 9(Long)
2018-11-17 08:34:19,089 [http-nio-8090-exec-2] <==      Total: 37
2018-11-17 08:34:19,179 [http-nio-8090-exec-2] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-17 08:34:19,180 [http-nio-8090-exec-2] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":601920000000,"createTime":1541995509000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542422059177,"id":8713,"loginTime":1542414859177,"nickname":"默存","password":"$2a$10$bqBsy/cdV0lpOGwBcwtaEuet5krQi7fUQUEYGEgAtWI3pP4O.2xpa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"aad0faa4-d983-4e1f-a651-31e749c5393f","username":"mocun"}(String), 2018-11-17 10:34:19.177(Timestamp), 2018-11-17 08:34:19.177(Timestamp), 2018-11-17 08:34:19.177(Timestamp)
2018-11-17 08:34:19,182 [http-nio-8090-exec-2] <==    Updates: 1
2018-11-17 08:34:19,353 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:19,354 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:19,355 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:34:19,393 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:19,394 [http-nio-8090-exec-5] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:19,395 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:34:19,487 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:19,488 [http-nio-8090-exec-8] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:19,490 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:19,494 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:34:19,495 [http-nio-8090-exec-8] ==> Parameters: mocun(String)
2018-11-17 08:34:19,497 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:19,498 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:34:19,498 [http-nio-8090-exec-8] ==> Parameters: mocun(String)
2018-11-17 08:34:19,499 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:21,519 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:21,519 [http-nio-8090-exec-7] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:21,520 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:34:21,524 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:34:21,525 [http-nio-8090-exec-7] ==> Parameters: 9(Long)
2018-11-17 08:34:21,526 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:34:21,534 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:21,535 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:21,536 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:34:21,992 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:21,992 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:21,994 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:34:21,998 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:34:22,000 [http-nio-8090-exec-3] ==> Parameters: 9(Long)
2018-11-17 08:34:22,001 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:34:22,515 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:22,515 [http-nio-8090-exec-4] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:22,516 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:34:22,648 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:22,649 [http-nio-8090-exec-4] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:22,650 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:34:22,654 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:34:22,654 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-17 08:34:22,655 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:34:22,657 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:34:22,658 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-17 08:34:22,658 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:34:23,050 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:23,051 [http-nio-8090-exec-2] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:23,052 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:34:23,069 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:23,069 [http-nio-8090-exec-8] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:23,070 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:23,074 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-17 08:34:23,075 [http-nio-8090-exec-8] ==> Parameters: 9(Long)
2018-11-17 08:34:23,076 [http-nio-8090-exec-8] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:23,077 [http-nio-8090-exec-8] ====> Parameters: 9(Integer)
2018-11-17 08:34:23,078 [http-nio-8090-exec-8] <====      Total: 2
2018-11-17 08:34:23,078 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:23,079 [http-nio-8090-exec-8] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:34:23,079 [http-nio-8090-exec-8] ==> Parameters: 1(Long)
2018-11-17 08:34:23,080 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:23,080 [http-nio-8090-exec-8] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:34:23,081 [http-nio-8090-exec-8] ==> Parameters: 20(Long)
2018-11-17 08:34:23,081 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:34:29,082 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:29,082 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:29,082 [http-nio-8090-exec-5] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:29,083 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:29,083 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:34:29,083 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:34:29,088 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:34:29,090 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-17 08:34:29,092 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:34:29,093 [http-nio-8090-exec-5] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:34:29,094 [http-nio-8090-exec-5] ==> Parameters: 10(Integer)
2018-11-17 08:34:29,096 [http-nio-8090-exec-5] <==      Total: 10
2018-11-17 08:34:31,701 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:31,702 [http-nio-8090-exec-4] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:31,703 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:34:31,721 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:31,722 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:31,726 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:34:31,731 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:34:31,732 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-17 08:34:31,733 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,733 [http-nio-8090-exec-3] ====> Parameters: 9(Integer)
2018-11-17 08:34:31,734 [http-nio-8090-exec-3] <====      Total: 2
2018-11-17 08:34:31,734 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,735 [http-nio-8090-exec-3] ====> Parameters: 439(Integer)
2018-11-17 08:34:31,736 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,736 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,737 [http-nio-8090-exec-3] ====> Parameters: 461(Integer)
2018-11-17 08:34:31,739 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,740 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,741 [http-nio-8090-exec-3] ====> Parameters: 465(Integer)
2018-11-17 08:34:31,742 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,743 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,743 [http-nio-8090-exec-3] ====> Parameters: 519(Integer)
2018-11-17 08:34:31,744 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,744 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,744 [http-nio-8090-exec-3] ====> Parameters: 481(Integer)
2018-11-17 08:34:31,745 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,745 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,745 [http-nio-8090-exec-3] ====> Parameters: 516(Integer)
2018-11-17 08:34:31,746 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,746 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,747 [http-nio-8090-exec-3] ====> Parameters: 476(Integer)
2018-11-17 08:34:31,747 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,748 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,748 [http-nio-8090-exec-3] ====> Parameters: 456(Integer)
2018-11-17 08:34:31,749 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,749 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,749 [http-nio-8090-exec-3] ====> Parameters: 512(Integer)
2018-11-17 08:34:31,750 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,750 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,750 [http-nio-8090-exec-3] ====> Parameters: 464(Integer)
2018-11-17 08:34:31,751 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,751 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,752 [http-nio-8090-exec-3] ====> Parameters: 492(Integer)
2018-11-17 08:34:31,752 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,753 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,755 [http-nio-8090-exec-3] ====> Parameters: 446(Integer)
2018-11-17 08:34:31,756 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,757 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,758 [http-nio-8090-exec-3] ====> Parameters: 450(Integer)
2018-11-17 08:34:31,759 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,760 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,760 [http-nio-8090-exec-3] ====> Parameters: 518(Integer)
2018-11-17 08:34:31,761 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,761 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,762 [http-nio-8090-exec-3] ====> Parameters: 500(Integer)
2018-11-17 08:34:31,763 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,763 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,764 [http-nio-8090-exec-3] ====> Parameters: 447(Integer)
2018-11-17 08:34:31,764 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,765 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,765 [http-nio-8090-exec-3] ====> Parameters: 463(Integer)
2018-11-17 08:34:31,766 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,766 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,766 [http-nio-8090-exec-3] ====> Parameters: 483(Integer)
2018-11-17 08:34:31,767 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,767 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,768 [http-nio-8090-exec-3] ====> Parameters: 487(Integer)
2018-11-17 08:34:31,768 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,769 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,769 [http-nio-8090-exec-3] ====> Parameters: 521(Integer)
2018-11-17 08:34:31,770 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,772 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,773 [http-nio-8090-exec-3] ====> Parameters: 486(Integer)
2018-11-17 08:34:31,774 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,774 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,775 [http-nio-8090-exec-3] ====> Parameters: 499(Integer)
2018-11-17 08:34:31,775 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,776 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,776 [http-nio-8090-exec-3] ====> Parameters: 458(Integer)
2018-11-17 08:34:31,777 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,777 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,777 [http-nio-8090-exec-3] ====> Parameters: 514(Integer)
2018-11-17 08:34:31,778 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,778 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,779 [http-nio-8090-exec-3] ====> Parameters: 468(Integer)
2018-11-17 08:34:31,779 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,780 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,780 [http-nio-8090-exec-3] ====> Parameters: 517(Integer)
2018-11-17 08:34:31,780 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,781 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,781 [http-nio-8090-exec-3] ====> Parameters: 462(Integer)
2018-11-17 08:34:31,782 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,782 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,782 [http-nio-8090-exec-3] ====> Parameters: 489(Integer)
2018-11-17 08:34:31,783 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,783 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,783 [http-nio-8090-exec-3] ====> Parameters: 490(Integer)
2018-11-17 08:34:31,784 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,784 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,785 [http-nio-8090-exec-3] ====> Parameters: 457(Integer)
2018-11-17 08:34:31,785 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,785 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,786 [http-nio-8090-exec-3] ====> Parameters: 442(Integer)
2018-11-17 08:34:31,787 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,788 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,789 [http-nio-8090-exec-3] ====> Parameters: 510(Integer)
2018-11-17 08:34:31,790 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,791 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,791 [http-nio-8090-exec-3] ====> Parameters: 485(Integer)
2018-11-17 08:34:31,792 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,792 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,792 [http-nio-8090-exec-3] ====> Parameters: 513(Integer)
2018-11-17 08:34:31,793 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,793 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,794 [http-nio-8090-exec-3] ====> Parameters: 496(Integer)
2018-11-17 08:34:31,794 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,795 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,795 [http-nio-8090-exec-3] ====> Parameters: 459(Integer)
2018-11-17 08:34:31,795 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,796 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,796 [http-nio-8090-exec-3] ====> Parameters: 515(Integer)
2018-11-17 08:34:31,797 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,797 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,797 [http-nio-8090-exec-3] ====> Parameters: 506(Integer)
2018-11-17 08:34:31,798 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,798 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,799 [http-nio-8090-exec-3] ====> Parameters: 498(Integer)
2018-11-17 08:34:31,799 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,799 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,800 [http-nio-8090-exec-3] ====> Parameters: 451(Integer)
2018-11-17 08:34:31,803 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,804 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,805 [http-nio-8090-exec-3] ====> Parameters: 448(Integer)
2018-11-17 08:34:31,809 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,811 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,811 [http-nio-8090-exec-3] ====> Parameters: 488(Integer)
2018-11-17 08:34:31,812 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,813 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,813 [http-nio-8090-exec-3] ====> Parameters: 504(Integer)
2018-11-17 08:34:31,814 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,815 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,815 [http-nio-8090-exec-3] ====> Parameters: 511(Integer)
2018-11-17 08:34:31,816 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,816 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,817 [http-nio-8090-exec-3] ====> Parameters: 452(Integer)
2018-11-17 08:34:31,818 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,818 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,818 [http-nio-8090-exec-3] ====> Parameters: 470(Integer)
2018-11-17 08:34:31,819 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,820 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,822 [http-nio-8090-exec-3] ====> Parameters: 440(Integer)
2018-11-17 08:34:31,824 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,824 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,825 [http-nio-8090-exec-3] ====> Parameters: 482(Integer)
2018-11-17 08:34:31,826 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,826 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,826 [http-nio-8090-exec-3] ====> Parameters: 494(Integer)
2018-11-17 08:34:31,827 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,828 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,828 [http-nio-8090-exec-3] ====> Parameters: 520(Integer)
2018-11-17 08:34:31,829 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,829 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,830 [http-nio-8090-exec-3] ====> Parameters: 449(Integer)
2018-11-17 08:34:31,830 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,831 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,831 [http-nio-8090-exec-3] ====> Parameters: 454(Integer)
2018-11-17 08:34:31,832 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,832 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,833 [http-nio-8090-exec-3] ====> Parameters: 472(Integer)
2018-11-17 08:34:31,833 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,834 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,834 [http-nio-8090-exec-3] ====> Parameters: 466(Integer)
2018-11-17 08:34:31,834 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,835 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,835 [http-nio-8090-exec-3] ====> Parameters: 460(Integer)
2018-11-17 08:34:31,836 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,836 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,836 [http-nio-8090-exec-3] ====> Parameters: 475(Integer)
2018-11-17 08:34:31,839 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,840 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,840 [http-nio-8090-exec-3] ====> Parameters: 491(Integer)
2018-11-17 08:34:31,841 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,841 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,842 [http-nio-8090-exec-3] ====> Parameters: 474(Integer)
2018-11-17 08:34:31,842 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,843 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,843 [http-nio-8090-exec-3] ====> Parameters: 477(Integer)
2018-11-17 08:34:31,844 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,844 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,844 [http-nio-8090-exec-3] ====> Parameters: 505(Integer)
2018-11-17 08:34:31,845 [http-nio-8090-exec-3] <====      Total: 2
2018-11-17 08:34:31,845 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,846 [http-nio-8090-exec-3] ====> Parameters: 479(Integer)
2018-11-17 08:34:31,846 [http-nio-8090-exec-3] <====      Total: 3
2018-11-17 08:34:31,847 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,847 [http-nio-8090-exec-3] ====> Parameters: 503(Integer)
2018-11-17 08:34:31,847 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,848 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,848 [http-nio-8090-exec-3] ====> Parameters: 493(Integer)
2018-11-17 08:34:31,849 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,849 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,849 [http-nio-8090-exec-3] ====> Parameters: 507(Integer)
2018-11-17 08:34:31,850 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,850 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,851 [http-nio-8090-exec-3] ====> Parameters: 469(Integer)
2018-11-17 08:34:31,851 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,851 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,852 [http-nio-8090-exec-3] ====> Parameters: 444(Integer)
2018-11-17 08:34:31,853 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,853 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,855 [http-nio-8090-exec-3] ====> Parameters: 501(Integer)
2018-11-17 08:34:31,856 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,857 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,858 [http-nio-8090-exec-3] ====> Parameters: 502(Integer)
2018-11-17 08:34:31,859 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,859 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,859 [http-nio-8090-exec-3] ====> Parameters: 467(Integer)
2018-11-17 08:34:31,860 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,860 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,860 [http-nio-8090-exec-3] ====> Parameters: 443(Integer)
2018-11-17 08:34:31,861 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,861 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,862 [http-nio-8090-exec-3] ====> Parameters: 484(Integer)
2018-11-17 08:34:31,862 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,863 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,863 [http-nio-8090-exec-3] ====> Parameters: 480(Integer)
2018-11-17 08:34:31,864 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,864 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,864 [http-nio-8090-exec-3] ====> Parameters: 445(Integer)
2018-11-17 08:34:31,865 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,866 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,866 [http-nio-8090-exec-3] ====> Parameters: 473(Integer)
2018-11-17 08:34:31,866 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,867 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,867 [http-nio-8090-exec-3] ====> Parameters: 509(Integer)
2018-11-17 08:34:31,868 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,868 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,868 [http-nio-8090-exec-3] ====> Parameters: 497(Integer)
2018-11-17 08:34:31,869 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,869 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,870 [http-nio-8090-exec-3] ====> Parameters: 522(Integer)
2018-11-17 08:34:31,871 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,872 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,872 [http-nio-8090-exec-3] ====> Parameters: 441(Integer)
2018-11-17 08:34:31,873 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,874 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,874 [http-nio-8090-exec-3] ====> Parameters: 478(Integer)
2018-11-17 08:34:31,875 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,875 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,875 [http-nio-8090-exec-3] ====> Parameters: 495(Integer)
2018-11-17 08:34:31,876 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,876 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,876 [http-nio-8090-exec-3] ====> Parameters: 453(Integer)
2018-11-17 08:34:31,877 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,878 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:34:31,878 [http-nio-8090-exec-3] ====> Parameters: 471(Integer)
2018-11-17 08:34:31,879 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:34:31,880 [http-nio-8090-exec-3] <==      Total: 83
2018-11-17 08:34:37,527 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:34:37,528 [http-nio-8090-exec-2] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:34:37,529 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:34:37,532 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:34:37,533 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-17 08:34:37,534 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:34:37,535 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-17 08:34:37,536 [http-nio-8090-exec-2] ==> Parameters: 3(Integer)
2018-11-17 08:34:37,537 [http-nio-8090-exec-2] <==      Total: 3
2018-11-17 08:37:47,100 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:47,102 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:47,103 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:37:47,146 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:47,147 [http-nio-8090-exec-8] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:47,148 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:37:47,259 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:47,259 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:47,260 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:37:47,263 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:37:47,265 [http-nio-8090-exec-10] ==> Parameters: mocun(String)
2018-11-17 08:37:47,266 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:37:47,267 [http-nio-8090-exec-10] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:37:47,271 [http-nio-8090-exec-10] ==> Parameters: mocun(String)
2018-11-17 08:37:47,272 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:37:48,040 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:48,041 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:48,042 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:37:48,057 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:48,058 [http-nio-8090-exec-9] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:48,058 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:37:48,061 [http-nio-8090-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-17 08:37:48,062 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-17 08:37:48,063 [http-nio-8090-exec-9] <==      Total: 37
2018-11-17 08:37:52,206 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:52,206 [http-nio-8090-exec-2] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:52,207 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:37:52,211 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:37:52,212 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-17 08:37:52,213 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:37:52,213 [http-nio-8090-exec-2] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-17 08:37:52,215 [http-nio-8090-exec-2] ==> Parameters: 10(Integer)
2018-11-17 08:37:52,224 [http-nio-8090-exec-2] <==      Total: 10
2018-11-17 08:37:54,619 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:54,620 [http-nio-8090-exec-5] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:54,623 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:37:54,643 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:54,643 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:54,643 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:37:54,645 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:37:54,646 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-17 08:37:54,646 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,647 [http-nio-8090-exec-3] ====> Parameters: 9(Integer)
2018-11-17 08:37:54,650 [http-nio-8090-exec-3] <====      Total: 2
2018-11-17 08:37:54,651 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,652 [http-nio-8090-exec-3] ====> Parameters: 439(Integer)
2018-11-17 08:37:54,653 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,653 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,654 [http-nio-8090-exec-3] ====> Parameters: 461(Integer)
2018-11-17 08:37:54,655 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,655 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,655 [http-nio-8090-exec-3] ====> Parameters: 465(Integer)
2018-11-17 08:37:54,656 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,656 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,656 [http-nio-8090-exec-3] ====> Parameters: 519(Integer)
2018-11-17 08:37:54,657 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,657 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,658 [http-nio-8090-exec-3] ====> Parameters: 481(Integer)
2018-11-17 08:37:54,658 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,659 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,659 [http-nio-8090-exec-3] ====> Parameters: 516(Integer)
2018-11-17 08:37:54,659 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,660 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,660 [http-nio-8090-exec-3] ====> Parameters: 476(Integer)
2018-11-17 08:37:54,661 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,661 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,661 [http-nio-8090-exec-3] ====> Parameters: 456(Integer)
2018-11-17 08:37:54,662 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,662 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,662 [http-nio-8090-exec-3] ====> Parameters: 512(Integer)
2018-11-17 08:37:54,663 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,664 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,666 [http-nio-8090-exec-3] ====> Parameters: 464(Integer)
2018-11-17 08:37:54,668 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,671 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,672 [http-nio-8090-exec-3] ====> Parameters: 492(Integer)
2018-11-17 08:37:54,673 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,673 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,674 [http-nio-8090-exec-3] ====> Parameters: 446(Integer)
2018-11-17 08:37:54,674 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,675 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,675 [http-nio-8090-exec-3] ====> Parameters: 450(Integer)
2018-11-17 08:37:54,676 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,676 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,677 [http-nio-8090-exec-3] ====> Parameters: 518(Integer)
2018-11-17 08:37:54,677 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,678 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,678 [http-nio-8090-exec-3] ====> Parameters: 500(Integer)
2018-11-17 08:37:54,678 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,679 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,679 [http-nio-8090-exec-3] ====> Parameters: 447(Integer)
2018-11-17 08:37:54,680 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,681 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,683 [http-nio-8090-exec-3] ====> Parameters: 463(Integer)
2018-11-17 08:37:54,684 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,685 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,685 [http-nio-8090-exec-3] ====> Parameters: 483(Integer)
2018-11-17 08:37:54,686 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,686 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,686 [http-nio-8090-exec-3] ====> Parameters: 487(Integer)
2018-11-17 08:37:54,687 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,687 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,688 [http-nio-8090-exec-3] ====> Parameters: 521(Integer)
2018-11-17 08:37:54,688 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,688 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,689 [http-nio-8090-exec-3] ====> Parameters: 486(Integer)
2018-11-17 08:37:54,689 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,690 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,690 [http-nio-8090-exec-3] ====> Parameters: 499(Integer)
2018-11-17 08:37:54,690 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,691 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,691 [http-nio-8090-exec-3] ====> Parameters: 458(Integer)
2018-11-17 08:37:54,692 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,692 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,692 [http-nio-8090-exec-3] ====> Parameters: 514(Integer)
2018-11-17 08:37:54,693 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,693 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,694 [http-nio-8090-exec-3] ====> Parameters: 468(Integer)
2018-11-17 08:37:54,694 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,694 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,695 [http-nio-8090-exec-3] ====> Parameters: 517(Integer)
2018-11-17 08:37:54,695 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,696 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,696 [http-nio-8090-exec-3] ====> Parameters: 462(Integer)
2018-11-17 08:37:54,696 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,697 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,699 [http-nio-8090-exec-3] ====> Parameters: 489(Integer)
2018-11-17 08:37:54,700 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,701 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,701 [http-nio-8090-exec-3] ====> Parameters: 490(Integer)
2018-11-17 08:37:54,702 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,702 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,703 [http-nio-8090-exec-3] ====> Parameters: 457(Integer)
2018-11-17 08:37:54,703 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,704 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,704 [http-nio-8090-exec-3] ====> Parameters: 442(Integer)
2018-11-17 08:37:54,705 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,705 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,705 [http-nio-8090-exec-3] ====> Parameters: 510(Integer)
2018-11-17 08:37:54,706 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,706 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,706 [http-nio-8090-exec-3] ====> Parameters: 485(Integer)
2018-11-17 08:37:54,707 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,707 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,708 [http-nio-8090-exec-3] ====> Parameters: 513(Integer)
2018-11-17 08:37:54,708 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,709 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,709 [http-nio-8090-exec-3] ====> Parameters: 496(Integer)
2018-11-17 08:37:54,709 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,710 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,710 [http-nio-8090-exec-3] ====> Parameters: 459(Integer)
2018-11-17 08:37:54,710 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,711 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,711 [http-nio-8090-exec-3] ====> Parameters: 515(Integer)
2018-11-17 08:37:54,712 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,712 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,712 [http-nio-8090-exec-3] ====> Parameters: 506(Integer)
2018-11-17 08:37:54,713 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,714 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,715 [http-nio-8090-exec-3] ====> Parameters: 498(Integer)
2018-11-17 08:37:54,717 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,717 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,718 [http-nio-8090-exec-3] ====> Parameters: 451(Integer)
2018-11-17 08:37:54,718 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,719 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,719 [http-nio-8090-exec-3] ====> Parameters: 448(Integer)
2018-11-17 08:37:54,720 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,720 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,720 [http-nio-8090-exec-3] ====> Parameters: 488(Integer)
2018-11-17 08:37:54,721 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,721 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,722 [http-nio-8090-exec-3] ====> Parameters: 504(Integer)
2018-11-17 08:37:54,722 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,722 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,723 [http-nio-8090-exec-3] ====> Parameters: 511(Integer)
2018-11-17 08:37:54,723 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,724 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,724 [http-nio-8090-exec-3] ====> Parameters: 452(Integer)
2018-11-17 08:37:54,724 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,725 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,725 [http-nio-8090-exec-3] ====> Parameters: 470(Integer)
2018-11-17 08:37:54,726 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,726 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,727 [http-nio-8090-exec-3] ====> Parameters: 440(Integer)
2018-11-17 08:37:54,727 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,728 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,728 [http-nio-8090-exec-3] ====> Parameters: 482(Integer)
2018-11-17 08:37:54,728 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,729 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,729 [http-nio-8090-exec-3] ====> Parameters: 494(Integer)
2018-11-17 08:37:54,730 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,731 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,732 [http-nio-8090-exec-3] ====> Parameters: 520(Integer)
2018-11-17 08:37:54,734 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,734 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,735 [http-nio-8090-exec-3] ====> Parameters: 449(Integer)
2018-11-17 08:37:54,735 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,736 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,736 [http-nio-8090-exec-3] ====> Parameters: 454(Integer)
2018-11-17 08:37:54,737 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,738 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,738 [http-nio-8090-exec-3] ====> Parameters: 472(Integer)
2018-11-17 08:37:54,739 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,739 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,739 [http-nio-8090-exec-3] ====> Parameters: 466(Integer)
2018-11-17 08:37:54,740 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,740 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,741 [http-nio-8090-exec-3] ====> Parameters: 460(Integer)
2018-11-17 08:37:54,741 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,742 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,742 [http-nio-8090-exec-3] ====> Parameters: 475(Integer)
2018-11-17 08:37:54,742 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,743 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,743 [http-nio-8090-exec-3] ====> Parameters: 491(Integer)
2018-11-17 08:37:54,744 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,744 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,744 [http-nio-8090-exec-3] ====> Parameters: 474(Integer)
2018-11-17 08:37:54,745 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,746 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,746 [http-nio-8090-exec-3] ====> Parameters: 477(Integer)
2018-11-17 08:37:54,747 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,748 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,749 [http-nio-8090-exec-3] ====> Parameters: 505(Integer)
2018-11-17 08:37:54,754 [http-nio-8090-exec-3] <====      Total: 2
2018-11-17 08:37:54,756 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,756 [http-nio-8090-exec-3] ====> Parameters: 479(Integer)
2018-11-17 08:37:54,758 [http-nio-8090-exec-3] <====      Total: 3
2018-11-17 08:37:54,758 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,759 [http-nio-8090-exec-3] ====> Parameters: 503(Integer)
2018-11-17 08:37:54,759 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,760 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,760 [http-nio-8090-exec-3] ====> Parameters: 493(Integer)
2018-11-17 08:37:54,761 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,761 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,761 [http-nio-8090-exec-3] ====> Parameters: 507(Integer)
2018-11-17 08:37:54,762 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,762 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,762 [http-nio-8090-exec-3] ====> Parameters: 469(Integer)
2018-11-17 08:37:54,763 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,763 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,764 [http-nio-8090-exec-3] ====> Parameters: 444(Integer)
2018-11-17 08:37:54,766 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,767 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,767 [http-nio-8090-exec-3] ====> Parameters: 501(Integer)
2018-11-17 08:37:54,768 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,768 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,769 [http-nio-8090-exec-3] ====> Parameters: 502(Integer)
2018-11-17 08:37:54,769 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,770 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,770 [http-nio-8090-exec-3] ====> Parameters: 467(Integer)
2018-11-17 08:37:54,770 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,771 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,771 [http-nio-8090-exec-3] ====> Parameters: 443(Integer)
2018-11-17 08:37:54,771 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,772 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,772 [http-nio-8090-exec-3] ====> Parameters: 484(Integer)
2018-11-17 08:37:54,773 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,773 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,773 [http-nio-8090-exec-3] ====> Parameters: 480(Integer)
2018-11-17 08:37:54,774 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,774 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,774 [http-nio-8090-exec-3] ====> Parameters: 445(Integer)
2018-11-17 08:37:54,775 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,775 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,775 [http-nio-8090-exec-3] ====> Parameters: 473(Integer)
2018-11-17 08:37:54,776 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,776 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,776 [http-nio-8090-exec-3] ====> Parameters: 509(Integer)
2018-11-17 08:37:54,777 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,777 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,778 [http-nio-8090-exec-3] ====> Parameters: 497(Integer)
2018-11-17 08:37:54,778 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,779 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,779 [http-nio-8090-exec-3] ====> Parameters: 522(Integer)
2018-11-17 08:37:54,779 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,780 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,780 [http-nio-8090-exec-3] ====> Parameters: 441(Integer)
2018-11-17 08:37:54,782 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,783 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,784 [http-nio-8090-exec-3] ====> Parameters: 478(Integer)
2018-11-17 08:37:54,785 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,785 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,785 [http-nio-8090-exec-3] ====> Parameters: 495(Integer)
2018-11-17 08:37:54,786 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,787 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,787 [http-nio-8090-exec-3] ====> Parameters: 453(Integer)
2018-11-17 08:37:54,788 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,788 [http-nio-8090-exec-3] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:54,788 [http-nio-8090-exec-3] ====> Parameters: 471(Integer)
2018-11-17 08:37:54,789 [http-nio-8090-exec-3] <====      Total: 1
2018-11-17 08:37:54,789 [http-nio-8090-exec-3] <==      Total: 83
2018-11-17 08:37:56,138 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:56,138 [http-nio-8090-exec-7] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:56,139 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:37:56,142 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:37:56,143 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:37:56,144 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:37:56,144 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:37:56,145 [http-nio-8090-exec-7] ==> Parameters: 10(Integer)
2018-11-17 08:37:56,146 [http-nio-8090-exec-7] <==      Total: 10
2018-11-17 08:37:56,149 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:56,150 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:56,151 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:37:58,451 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:58,452 [http-nio-8090-exec-8] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:58,454 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:37:58,473 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:37:58,474 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:37:58,474 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:37:58,476 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-17 08:37:58,476 [http-nio-8090-exec-6] ==> Parameters: 9(Long)
2018-11-17 08:37:58,477 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:37:58,477 [http-nio-8090-exec-6] ====> Parameters: 9(Integer)
2018-11-17 08:37:58,478 [http-nio-8090-exec-6] <====      Total: 2
2018-11-17 08:37:58,478 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:37:58,479 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:37:58,482 [http-nio-8090-exec-6] ==> Parameters: 1(Long)
2018-11-17 08:37:58,483 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:37:58,484 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:37:58,484 [http-nio-8090-exec-6] ==> Parameters: 20(Long)
2018-11-17 08:37:58,485 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:38:02,249 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:02,251 [http-nio-8090-exec-5] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:02,251 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:38:02,253 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:38:02,254 [http-nio-8090-exec-5] ==> Parameters: 9(Long)
2018-11-17 08:38:02,255 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:38:02,283 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:02,284 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:02,285 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:38:03,043 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:03,044 [http-nio-8090-exec-2] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:03,045 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:38:03,048 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:38:03,049 [http-nio-8090-exec-2] ==> Parameters: 9(Long)
2018-11-17 08:38:03,050 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:38:03,615 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:03,615 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:03,616 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:38:03,731 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:03,731 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:03,733 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:38:03,736 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:38:03,737 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:38:03,738 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:38:03,739 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:38:03,740 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-17 08:38:03,742 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:38:08,663 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:08,664 [http-nio-8090-exec-4] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:08,665 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:38:08,668 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:38:08,669 [http-nio-8090-exec-4] ==> Parameters: 9(Long)
2018-11-17 08:38:08,670 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:38:09,462 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:38:09,463 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:38:09,464 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:38:09,467 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:38:09,468 [http-nio-8090-exec-10] ==> Parameters: 9(Long)
2018-11-17 08:38:09,469 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:39:47,382 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:47,390 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:47,399 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:39:47,547 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:47,548 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:47,549 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:39:47,655 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:47,656 [http-nio-8090-exec-9] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:47,658 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:47,669 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:39:47,672 [http-nio-8090-exec-9] ==> Parameters: mocun(String)
2018-11-17 08:39:47,675 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:47,683 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:39:47,687 [http-nio-8090-exec-9] ==> Parameters: mocun(String)
2018-11-17 08:39:47,688 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:50,488 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:50,489 [http-nio-8090-exec-3] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:50,500 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:39:50,518 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:50,518 [http-nio-8090-exec-5] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:50,519 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:39:50,542 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:39:50,544 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-17 08:39:50,547 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,548 [http-nio-8090-exec-5] ====> Parameters: 9(Integer)
2018-11-17 08:39:50,550 [http-nio-8090-exec-5] <====      Total: 2
2018-11-17 08:39:50,552 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,553 [http-nio-8090-exec-5] ====> Parameters: 439(Integer)
2018-11-17 08:39:50,554 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,555 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,555 [http-nio-8090-exec-5] ====> Parameters: 461(Integer)
2018-11-17 08:39:50,556 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,558 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,559 [http-nio-8090-exec-5] ====> Parameters: 465(Integer)
2018-11-17 08:39:50,561 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,562 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,562 [http-nio-8090-exec-5] ====> Parameters: 519(Integer)
2018-11-17 08:39:50,564 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,564 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,565 [http-nio-8090-exec-5] ====> Parameters: 481(Integer)
2018-11-17 08:39:50,566 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,567 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,567 [http-nio-8090-exec-5] ====> Parameters: 516(Integer)
2018-11-17 08:39:50,568 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,569 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,570 [http-nio-8090-exec-5] ====> Parameters: 476(Integer)
2018-11-17 08:39:50,571 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,572 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,572 [http-nio-8090-exec-5] ====> Parameters: 456(Integer)
2018-11-17 08:39:50,574 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,576 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,577 [http-nio-8090-exec-5] ====> Parameters: 512(Integer)
2018-11-17 08:39:50,578 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,579 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,579 [http-nio-8090-exec-5] ====> Parameters: 464(Integer)
2018-11-17 08:39:50,580 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,581 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,581 [http-nio-8090-exec-5] ====> Parameters: 492(Integer)
2018-11-17 08:39:50,582 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,583 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,583 [http-nio-8090-exec-5] ====> Parameters: 446(Integer)
2018-11-17 08:39:50,584 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,584 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,585 [http-nio-8090-exec-5] ====> Parameters: 450(Integer)
2018-11-17 08:39:50,586 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,587 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,587 [http-nio-8090-exec-5] ====> Parameters: 518(Integer)
2018-11-17 08:39:50,588 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,590 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,591 [http-nio-8090-exec-5] ====> Parameters: 500(Integer)
2018-11-17 08:39:50,594 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,596 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,597 [http-nio-8090-exec-5] ====> Parameters: 447(Integer)
2018-11-17 08:39:50,599 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,600 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,600 [http-nio-8090-exec-5] ====> Parameters: 463(Integer)
2018-11-17 08:39:50,601 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,602 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,602 [http-nio-8090-exec-5] ====> Parameters: 483(Integer)
2018-11-17 08:39:50,603 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,604 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,604 [http-nio-8090-exec-5] ====> Parameters: 487(Integer)
2018-11-17 08:39:50,605 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,606 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,606 [http-nio-8090-exec-5] ====> Parameters: 521(Integer)
2018-11-17 08:39:50,608 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,611 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,613 [http-nio-8090-exec-5] ====> Parameters: 486(Integer)
2018-11-17 08:39:50,614 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,615 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,615 [http-nio-8090-exec-5] ====> Parameters: 499(Integer)
2018-11-17 08:39:50,616 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,617 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,617 [http-nio-8090-exec-5] ====> Parameters: 458(Integer)
2018-11-17 08:39:50,618 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,618 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,619 [http-nio-8090-exec-5] ====> Parameters: 514(Integer)
2018-11-17 08:39:50,620 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,620 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,621 [http-nio-8090-exec-5] ====> Parameters: 468(Integer)
2018-11-17 08:39:50,622 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,623 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,623 [http-nio-8090-exec-5] ====> Parameters: 517(Integer)
2018-11-17 08:39:50,625 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,627 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,627 [http-nio-8090-exec-5] ====> Parameters: 462(Integer)
2018-11-17 08:39:50,628 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,629 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,629 [http-nio-8090-exec-5] ====> Parameters: 489(Integer)
2018-11-17 08:39:50,630 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,630 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,631 [http-nio-8090-exec-5] ====> Parameters: 490(Integer)
2018-11-17 08:39:50,631 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,632 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,632 [http-nio-8090-exec-5] ====> Parameters: 457(Integer)
2018-11-17 08:39:50,633 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,634 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,634 [http-nio-8090-exec-5] ====> Parameters: 442(Integer)
2018-11-17 08:39:50,635 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,635 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,635 [http-nio-8090-exec-5] ====> Parameters: 510(Integer)
2018-11-17 08:39:50,637 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,637 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,638 [http-nio-8090-exec-5] ====> Parameters: 485(Integer)
2018-11-17 08:39:50,638 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,639 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,639 [http-nio-8090-exec-5] ====> Parameters: 513(Integer)
2018-11-17 08:39:50,640 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,642 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,643 [http-nio-8090-exec-5] ====> Parameters: 496(Integer)
2018-11-17 08:39:50,644 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,645 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,645 [http-nio-8090-exec-5] ====> Parameters: 459(Integer)
2018-11-17 08:39:50,646 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,647 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,647 [http-nio-8090-exec-5] ====> Parameters: 515(Integer)
2018-11-17 08:39:50,648 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,649 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,649 [http-nio-8090-exec-5] ====> Parameters: 506(Integer)
2018-11-17 08:39:50,650 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,651 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,652 [http-nio-8090-exec-5] ====> Parameters: 498(Integer)
2018-11-17 08:39:50,653 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,654 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,655 [http-nio-8090-exec-5] ====> Parameters: 451(Integer)
2018-11-17 08:39:50,656 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,657 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,659 [http-nio-8090-exec-5] ====> Parameters: 448(Integer)
2018-11-17 08:39:50,661 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,662 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,663 [http-nio-8090-exec-5] ====> Parameters: 488(Integer)
2018-11-17 08:39:50,664 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,665 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,665 [http-nio-8090-exec-5] ====> Parameters: 504(Integer)
2018-11-17 08:39:50,666 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,667 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,667 [http-nio-8090-exec-5] ====> Parameters: 511(Integer)
2018-11-17 08:39:50,668 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,669 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,670 [http-nio-8090-exec-5] ====> Parameters: 452(Integer)
2018-11-17 08:39:50,671 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,672 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,672 [http-nio-8090-exec-5] ====> Parameters: 470(Integer)
2018-11-17 08:39:50,673 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,675 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,676 [http-nio-8090-exec-5] ====> Parameters: 440(Integer)
2018-11-17 08:39:50,677 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,678 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,678 [http-nio-8090-exec-5] ====> Parameters: 482(Integer)
2018-11-17 08:39:50,679 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,680 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,680 [http-nio-8090-exec-5] ====> Parameters: 494(Integer)
2018-11-17 08:39:50,681 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,682 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,682 [http-nio-8090-exec-5] ====> Parameters: 520(Integer)
2018-11-17 08:39:50,683 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,684 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,684 [http-nio-8090-exec-5] ====> Parameters: 449(Integer)
2018-11-17 08:39:50,685 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,686 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,686 [http-nio-8090-exec-5] ====> Parameters: 454(Integer)
2018-11-17 08:39:50,687 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,688 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,689 [http-nio-8090-exec-5] ====> Parameters: 472(Integer)
2018-11-17 08:39:50,690 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,691 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,693 [http-nio-8090-exec-5] ====> Parameters: 466(Integer)
2018-11-17 08:39:50,694 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,695 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,695 [http-nio-8090-exec-5] ====> Parameters: 460(Integer)
2018-11-17 08:39:50,696 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,697 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,697 [http-nio-8090-exec-5] ====> Parameters: 475(Integer)
2018-11-17 08:39:50,699 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,699 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,700 [http-nio-8090-exec-5] ====> Parameters: 491(Integer)
2018-11-17 08:39:50,701 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,702 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,703 [http-nio-8090-exec-5] ====> Parameters: 474(Integer)
2018-11-17 08:39:50,704 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,704 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,705 [http-nio-8090-exec-5] ====> Parameters: 477(Integer)
2018-11-17 08:39:50,706 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,707 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,707 [http-nio-8090-exec-5] ====> Parameters: 505(Integer)
2018-11-17 08:39:50,709 [http-nio-8090-exec-5] <====      Total: 2
2018-11-17 08:39:50,711 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,711 [http-nio-8090-exec-5] ====> Parameters: 479(Integer)
2018-11-17 08:39:50,713 [http-nio-8090-exec-5] <====      Total: 3
2018-11-17 08:39:50,714 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,715 [http-nio-8090-exec-5] ====> Parameters: 503(Integer)
2018-11-17 08:39:50,716 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,718 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,719 [http-nio-8090-exec-5] ====> Parameters: 493(Integer)
2018-11-17 08:39:50,720 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,721 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,721 [http-nio-8090-exec-5] ====> Parameters: 507(Integer)
2018-11-17 08:39:50,722 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,723 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,724 [http-nio-8090-exec-5] ====> Parameters: 469(Integer)
2018-11-17 08:39:50,725 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,726 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,727 [http-nio-8090-exec-5] ====> Parameters: 444(Integer)
2018-11-17 08:39:50,728 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,729 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,729 [http-nio-8090-exec-5] ====> Parameters: 501(Integer)
2018-11-17 08:39:50,730 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,731 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,731 [http-nio-8090-exec-5] ====> Parameters: 502(Integer)
2018-11-17 08:39:50,732 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,733 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,733 [http-nio-8090-exec-5] ====> Parameters: 467(Integer)
2018-11-17 08:39:50,734 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,735 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,736 [http-nio-8090-exec-5] ====> Parameters: 443(Integer)
2018-11-17 08:39:50,737 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,737 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,738 [http-nio-8090-exec-5] ====> Parameters: 484(Integer)
2018-11-17 08:39:50,739 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,740 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,741 [http-nio-8090-exec-5] ====> Parameters: 480(Integer)
2018-11-17 08:39:50,742 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,742 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,743 [http-nio-8090-exec-5] ====> Parameters: 445(Integer)
2018-11-17 08:39:50,743 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,744 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,745 [http-nio-8090-exec-5] ====> Parameters: 473(Integer)
2018-11-17 08:39:50,745 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,746 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,746 [http-nio-8090-exec-5] ====> Parameters: 509(Integer)
2018-11-17 08:39:50,747 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,748 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,748 [http-nio-8090-exec-5] ====> Parameters: 497(Integer)
2018-11-17 08:39:50,749 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,750 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,750 [http-nio-8090-exec-5] ====> Parameters: 522(Integer)
2018-11-17 08:39:50,751 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,752 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,752 [http-nio-8090-exec-5] ====> Parameters: 441(Integer)
2018-11-17 08:39:50,753 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,753 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,754 [http-nio-8090-exec-5] ====> Parameters: 478(Integer)
2018-11-17 08:39:50,754 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,755 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,755 [http-nio-8090-exec-5] ====> Parameters: 495(Integer)
2018-11-17 08:39:50,756 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,756 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,757 [http-nio-8090-exec-5] ====> Parameters: 453(Integer)
2018-11-17 08:39:50,757 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,758 [http-nio-8090-exec-5] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:50,759 [http-nio-8090-exec-5] ====> Parameters: 471(Integer)
2018-11-17 08:39:50,760 [http-nio-8090-exec-5] <====      Total: 1
2018-11-17 08:39:50,760 [http-nio-8090-exec-5] <==      Total: 83
2018-11-17 08:39:51,811 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:51,812 [http-nio-8090-exec-6] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:51,813 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:39:51,824 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:51,825 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:51,829 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:39:51,894 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:39:51,897 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:39:51,898 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:39:51,900 [http-nio-8090-exec-6] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:39:51,901 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-17 08:39:51,903 [http-nio-8090-exec-6] <==      Total: 10
2018-11-17 08:39:52,626 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:52,627 [http-nio-8090-exec-4] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:52,630 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:39:52,650 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:39:52,650 [http-nio-8090-exec-9] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:39:52,651 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,663 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:39:52,664 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-17 08:39:52,665 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,665 [http-nio-8090-exec-9] ====> Parameters: 9(Integer)
2018-11-17 08:39:52,666 [http-nio-8090-exec-9] <====      Total: 2
2018-11-17 08:39:52,667 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,667 [http-nio-8090-exec-9] ====> Parameters: 439(Integer)
2018-11-17 08:39:52,668 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,668 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,668 [http-nio-8090-exec-9] ====> Parameters: 461(Integer)
2018-11-17 08:39:52,669 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,670 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,670 [http-nio-8090-exec-9] ====> Parameters: 465(Integer)
2018-11-17 08:39:52,671 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,671 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,672 [http-nio-8090-exec-9] ====> Parameters: 519(Integer)
2018-11-17 08:39:52,673 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,674 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,675 [http-nio-8090-exec-9] ====> Parameters: 481(Integer)
2018-11-17 08:39:52,676 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,677 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,677 [http-nio-8090-exec-9] ====> Parameters: 516(Integer)
2018-11-17 08:39:52,678 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,679 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,680 [http-nio-8090-exec-9] ====> Parameters: 476(Integer)
2018-11-17 08:39:52,680 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,681 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,681 [http-nio-8090-exec-9] ====> Parameters: 456(Integer)
2018-11-17 08:39:52,683 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,683 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,684 [http-nio-8090-exec-9] ====> Parameters: 512(Integer)
2018-11-17 08:39:52,685 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,685 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,686 [http-nio-8090-exec-9] ====> Parameters: 464(Integer)
2018-11-17 08:39:52,687 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,688 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,688 [http-nio-8090-exec-9] ====> Parameters: 492(Integer)
2018-11-17 08:39:52,689 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,690 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,691 [http-nio-8090-exec-9] ====> Parameters: 446(Integer)
2018-11-17 08:39:52,693 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,694 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,695 [http-nio-8090-exec-9] ====> Parameters: 450(Integer)
2018-11-17 08:39:52,696 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,696 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,697 [http-nio-8090-exec-9] ====> Parameters: 518(Integer)
2018-11-17 08:39:52,697 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,698 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,698 [http-nio-8090-exec-9] ====> Parameters: 500(Integer)
2018-11-17 08:39:52,699 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,700 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,700 [http-nio-8090-exec-9] ====> Parameters: 447(Integer)
2018-11-17 08:39:52,701 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,702 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,702 [http-nio-8090-exec-9] ====> Parameters: 463(Integer)
2018-11-17 08:39:52,703 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,704 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,704 [http-nio-8090-exec-9] ====> Parameters: 483(Integer)
2018-11-17 08:39:52,705 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,706 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,706 [http-nio-8090-exec-9] ====> Parameters: 487(Integer)
2018-11-17 08:39:52,708 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,710 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,711 [http-nio-8090-exec-9] ====> Parameters: 521(Integer)
2018-11-17 08:39:52,713 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,713 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,714 [http-nio-8090-exec-9] ====> Parameters: 486(Integer)
2018-11-17 08:39:52,715 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,716 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,716 [http-nio-8090-exec-9] ====> Parameters: 499(Integer)
2018-11-17 08:39:52,717 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,717 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,718 [http-nio-8090-exec-9] ====> Parameters: 458(Integer)
2018-11-17 08:39:52,718 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,719 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,720 [http-nio-8090-exec-9] ====> Parameters: 514(Integer)
2018-11-17 08:39:52,720 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,721 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,722 [http-nio-8090-exec-9] ====> Parameters: 468(Integer)
2018-11-17 08:39:52,722 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,723 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,724 [http-nio-8090-exec-9] ====> Parameters: 517(Integer)
2018-11-17 08:39:52,726 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,727 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,727 [http-nio-8090-exec-9] ====> Parameters: 462(Integer)
2018-11-17 08:39:52,728 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,729 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,730 [http-nio-8090-exec-9] ====> Parameters: 489(Integer)
2018-11-17 08:39:52,731 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,731 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,731 [http-nio-8090-exec-9] ====> Parameters: 490(Integer)
2018-11-17 08:39:52,733 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,733 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,734 [http-nio-8090-exec-9] ====> Parameters: 457(Integer)
2018-11-17 08:39:52,735 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,736 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,737 [http-nio-8090-exec-9] ====> Parameters: 442(Integer)
2018-11-17 08:39:52,738 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,739 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,739 [http-nio-8090-exec-9] ====> Parameters: 510(Integer)
2018-11-17 08:39:52,740 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,742 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,743 [http-nio-8090-exec-9] ====> Parameters: 485(Integer)
2018-11-17 08:39:52,751 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,752 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,752 [http-nio-8090-exec-9] ====> Parameters: 513(Integer)
2018-11-17 08:39:52,753 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,754 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,754 [http-nio-8090-exec-9] ====> Parameters: 496(Integer)
2018-11-17 08:39:52,755 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,756 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,756 [http-nio-8090-exec-9] ====> Parameters: 459(Integer)
2018-11-17 08:39:52,757 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,760 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,763 [http-nio-8090-exec-9] ====> Parameters: 515(Integer)
2018-11-17 08:39:52,764 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,764 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,765 [http-nio-8090-exec-9] ====> Parameters: 506(Integer)
2018-11-17 08:39:52,765 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,766 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,766 [http-nio-8090-exec-9] ====> Parameters: 498(Integer)
2018-11-17 08:39:52,767 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,767 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,767 [http-nio-8090-exec-9] ====> Parameters: 451(Integer)
2018-11-17 08:39:52,768 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,768 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,769 [http-nio-8090-exec-9] ====> Parameters: 448(Integer)
2018-11-17 08:39:52,769 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,770 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,770 [http-nio-8090-exec-9] ====> Parameters: 488(Integer)
2018-11-17 08:39:52,770 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,771 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,771 [http-nio-8090-exec-9] ====> Parameters: 504(Integer)
2018-11-17 08:39:52,772 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,772 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,772 [http-nio-8090-exec-9] ====> Parameters: 511(Integer)
2018-11-17 08:39:52,773 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,775 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,776 [http-nio-8090-exec-9] ====> Parameters: 452(Integer)
2018-11-17 08:39:52,777 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,778 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,778 [http-nio-8090-exec-9] ====> Parameters: 470(Integer)
2018-11-17 08:39:52,778 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,779 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,779 [http-nio-8090-exec-9] ====> Parameters: 440(Integer)
2018-11-17 08:39:52,780 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,780 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,780 [http-nio-8090-exec-9] ====> Parameters: 482(Integer)
2018-11-17 08:39:52,781 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,781 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,782 [http-nio-8090-exec-9] ====> Parameters: 494(Integer)
2018-11-17 08:39:52,783 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,783 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,783 [http-nio-8090-exec-9] ====> Parameters: 520(Integer)
2018-11-17 08:39:52,784 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,785 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,785 [http-nio-8090-exec-9] ====> Parameters: 449(Integer)
2018-11-17 08:39:52,786 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,786 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,787 [http-nio-8090-exec-9] ====> Parameters: 454(Integer)
2018-11-17 08:39:52,787 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,788 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,789 [http-nio-8090-exec-9] ====> Parameters: 472(Integer)
2018-11-17 08:39:52,790 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,792 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,792 [http-nio-8090-exec-9] ====> Parameters: 466(Integer)
2018-11-17 08:39:52,794 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,794 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,795 [http-nio-8090-exec-9] ====> Parameters: 460(Integer)
2018-11-17 08:39:52,795 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,796 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,796 [http-nio-8090-exec-9] ====> Parameters: 475(Integer)
2018-11-17 08:39:52,797 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,798 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,798 [http-nio-8090-exec-9] ====> Parameters: 491(Integer)
2018-11-17 08:39:52,799 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,799 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,800 [http-nio-8090-exec-9] ====> Parameters: 474(Integer)
2018-11-17 08:39:52,800 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,801 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,801 [http-nio-8090-exec-9] ====> Parameters: 477(Integer)
2018-11-17 08:39:52,802 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,802 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,802 [http-nio-8090-exec-9] ====> Parameters: 505(Integer)
2018-11-17 08:39:52,803 [http-nio-8090-exec-9] <====      Total: 2
2018-11-17 08:39:52,804 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,804 [http-nio-8090-exec-9] ====> Parameters: 479(Integer)
2018-11-17 08:39:52,805 [http-nio-8090-exec-9] <====      Total: 3
2018-11-17 08:39:52,805 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,805 [http-nio-8090-exec-9] ====> Parameters: 503(Integer)
2018-11-17 08:39:52,806 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,807 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,809 [http-nio-8090-exec-9] ====> Parameters: 493(Integer)
2018-11-17 08:39:52,810 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,811 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,811 [http-nio-8090-exec-9] ====> Parameters: 507(Integer)
2018-11-17 08:39:52,812 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,812 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,813 [http-nio-8090-exec-9] ====> Parameters: 469(Integer)
2018-11-17 08:39:52,813 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,814 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,814 [http-nio-8090-exec-9] ====> Parameters: 444(Integer)
2018-11-17 08:39:52,815 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,815 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,815 [http-nio-8090-exec-9] ====> Parameters: 501(Integer)
2018-11-17 08:39:52,816 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,816 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,817 [http-nio-8090-exec-9] ====> Parameters: 502(Integer)
2018-11-17 08:39:52,817 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,817 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,818 [http-nio-8090-exec-9] ====> Parameters: 467(Integer)
2018-11-17 08:39:52,818 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,819 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,819 [http-nio-8090-exec-9] ====> Parameters: 443(Integer)
2018-11-17 08:39:52,819 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,820 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,820 [http-nio-8090-exec-9] ====> Parameters: 484(Integer)
2018-11-17 08:39:52,820 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,821 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,821 [http-nio-8090-exec-9] ====> Parameters: 480(Integer)
2018-11-17 08:39:52,822 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,822 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,823 [http-nio-8090-exec-9] ====> Parameters: 445(Integer)
2018-11-17 08:39:52,823 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,824 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,825 [http-nio-8090-exec-9] ====> Parameters: 473(Integer)
2018-11-17 08:39:52,826 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,826 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,827 [http-nio-8090-exec-9] ====> Parameters: 509(Integer)
2018-11-17 08:39:52,827 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,828 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,828 [http-nio-8090-exec-9] ====> Parameters: 497(Integer)
2018-11-17 08:39:52,829 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,829 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,829 [http-nio-8090-exec-9] ====> Parameters: 522(Integer)
2018-11-17 08:39:52,830 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,830 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,831 [http-nio-8090-exec-9] ====> Parameters: 441(Integer)
2018-11-17 08:39:52,831 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,832 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,832 [http-nio-8090-exec-9] ====> Parameters: 478(Integer)
2018-11-17 08:39:52,833 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,833 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,833 [http-nio-8090-exec-9] ====> Parameters: 495(Integer)
2018-11-17 08:39:52,834 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,834 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,835 [http-nio-8090-exec-9] ====> Parameters: 453(Integer)
2018-11-17 08:39:52,835 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,836 [http-nio-8090-exec-9] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:39:52,836 [http-nio-8090-exec-9] ====> Parameters: 471(Integer)
2018-11-17 08:39:52,836 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 08:39:52,837 [http-nio-8090-exec-9] <==      Total: 83
2018-11-17 08:39:52,837 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,840 [http-nio-8090-exec-9] ==> Parameters: 1(Long)
2018-11-17 08:39:52,842 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,844 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,845 [http-nio-8090-exec-9] ==> Parameters: 20(Long)
2018-11-17 08:39:52,846 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,847 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,848 [http-nio-8090-exec-9] ==> Parameters: 21(Long)
2018-11-17 08:39:52,849 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,854 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,855 [http-nio-8090-exec-9] ==> Parameters: 22(Long)
2018-11-17 08:39:52,856 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,857 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,858 [http-nio-8090-exec-9] ==> Parameters: 23(Long)
2018-11-17 08:39:52,859 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,869 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,869 [http-nio-8090-exec-9] ==> Parameters: 24(Long)
2018-11-17 08:39:52,870 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,871 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,871 [http-nio-8090-exec-9] ==> Parameters: 25(Long)
2018-11-17 08:39:52,872 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,873 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,873 [http-nio-8090-exec-9] ==> Parameters: 26(Long)
2018-11-17 08:39:52,875 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,876 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,877 [http-nio-8090-exec-9] ==> Parameters: 27(Long)
2018-11-17 08:39:52,878 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,879 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,879 [http-nio-8090-exec-9] ==> Parameters: 28(Long)
2018-11-17 08:39:52,880 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,881 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,881 [http-nio-8090-exec-9] ==> Parameters: 31(Long)
2018-11-17 08:39:52,882 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,883 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,884 [http-nio-8090-exec-9] ==> Parameters: 32(Long)
2018-11-17 08:39:52,885 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,886 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,886 [http-nio-8090-exec-9] ==> Parameters: 33(Long)
2018-11-17 08:39:52,887 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,888 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,888 [http-nio-8090-exec-9] ==> Parameters: 34(Long)
2018-11-17 08:39:52,889 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,890 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,891 [http-nio-8090-exec-9] ==> Parameters: 35(Long)
2018-11-17 08:39:52,892 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,892 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,893 [http-nio-8090-exec-9] ==> Parameters: 36(Long)
2018-11-17 08:39:52,894 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,895 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,895 [http-nio-8090-exec-9] ==> Parameters: 38(Long)
2018-11-17 08:39:52,896 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,897 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,898 [http-nio-8090-exec-9] ==> Parameters: 37(Long)
2018-11-17 08:39:52,899 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,900 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,900 [http-nio-8090-exec-9] ==> Parameters: 40(Long)
2018-11-17 08:39:52,902 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,903 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,903 [http-nio-8090-exec-9] ==> Parameters: 41(Long)
2018-11-17 08:39:52,904 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,905 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,906 [http-nio-8090-exec-9] ==> Parameters: 42(Long)
2018-11-17 08:39:52,907 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,908 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,909 [http-nio-8090-exec-9] ==> Parameters: 43(Long)
2018-11-17 08:39:52,911 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,912 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,913 [http-nio-8090-exec-9] ==> Parameters: 44(Long)
2018-11-17 08:39:52,914 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,914 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,914 [http-nio-8090-exec-9] ==> Parameters: 45(Long)
2018-11-17 08:39:52,915 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,916 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,916 [http-nio-8090-exec-9] ==> Parameters: 59(Long)
2018-11-17 08:39:52,917 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,918 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,918 [http-nio-8090-exec-9] ==> Parameters: 102(Long)
2018-11-17 08:39:52,919 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,920 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,921 [http-nio-8090-exec-9] ==> Parameters: 66(Long)
2018-11-17 08:39:52,922 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,922 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,923 [http-nio-8090-exec-9] ==> Parameters: 105(Long)
2018-11-17 08:39:52,924 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,926 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,926 [http-nio-8090-exec-9] ==> Parameters: 63(Long)
2018-11-17 08:39:52,927 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,928 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,928 [http-nio-8090-exec-9] ==> Parameters: 81(Long)
2018-11-17 08:39:52,929 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,930 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,931 [http-nio-8090-exec-9] ==> Parameters: 83(Long)
2018-11-17 08:39:52,932 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,933 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,933 [http-nio-8090-exec-9] ==> Parameters: 58(Long)
2018-11-17 08:39:52,934 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,935 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,935 [http-nio-8090-exec-9] ==> Parameters: 48(Long)
2018-11-17 08:39:52,936 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,937 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,937 [http-nio-8090-exec-9] ==> Parameters: 99(Long)
2018-11-17 08:39:52,938 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,939 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,939 [http-nio-8090-exec-9] ==> Parameters: 80(Long)
2018-11-17 08:39:52,941 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,942 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,943 [http-nio-8090-exec-9] ==> Parameters: 101(Long)
2018-11-17 08:39:52,944 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,945 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,945 [http-nio-8090-exec-9] ==> Parameters: 88(Long)
2018-11-17 08:39:52,946 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,947 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,947 [http-nio-8090-exec-9] ==> Parameters: 60(Long)
2018-11-17 08:39:52,947 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,949 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,950 [http-nio-8090-exec-9] ==> Parameters: 103(Long)
2018-11-17 08:39:52,951 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,952 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,952 [http-nio-8090-exec-9] ==> Parameters: 95(Long)
2018-11-17 08:39:52,953 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,954 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,954 [http-nio-8090-exec-9] ==> Parameters: 89(Long)
2018-11-17 08:39:52,955 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,957 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,957 [http-nio-8090-exec-9] ==> Parameters: 54(Long)
2018-11-17 08:39:52,958 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,959 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,959 [http-nio-8090-exec-9] ==> Parameters: 52(Long)
2018-11-17 08:39:52,960 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,961 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,961 [http-nio-8090-exec-9] ==> Parameters: 82(Long)
2018-11-17 08:39:52,962 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,963 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,963 [http-nio-8090-exec-9] ==> Parameters: 93(Long)
2018-11-17 08:39:52,964 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,965 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,965 [http-nio-8090-exec-9] ==> Parameters: 100(Long)
2018-11-17 08:39:52,966 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,967 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,967 [http-nio-8090-exec-9] ==> Parameters: 55(Long)
2018-11-17 08:39:52,968 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,969 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,969 [http-nio-8090-exec-9] ==> Parameters: 68(Long)
2018-11-17 08:39:52,970 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,971 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,972 [http-nio-8090-exec-9] ==> Parameters: 46(Long)
2018-11-17 08:39:52,973 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,974 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,974 [http-nio-8090-exec-9] ==> Parameters: 76(Long)
2018-11-17 08:39:52,975 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,976 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,976 [http-nio-8090-exec-9] ==> Parameters: 86(Long)
2018-11-17 08:39:52,977 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,978 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,978 [http-nio-8090-exec-9] ==> Parameters: 104(Long)
2018-11-17 08:39:52,980 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,981 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,981 [http-nio-8090-exec-9] ==> Parameters: 53(Long)
2018-11-17 08:39:52,983 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,983 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,984 [http-nio-8090-exec-9] ==> Parameters: 57(Long)
2018-11-17 08:39:52,985 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,986 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,986 [http-nio-8090-exec-9] ==> Parameters: 70(Long)
2018-11-17 08:39:52,987 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,988 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,988 [http-nio-8090-exec-9] ==> Parameters: 64(Long)
2018-11-17 08:39:52,989 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,990 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,991 [http-nio-8090-exec-9] ==> Parameters: 61(Long)
2018-11-17 08:39:52,992 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,993 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,993 [http-nio-8090-exec-9] ==> Parameters: 73(Long)
2018-11-17 08:39:52,994 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,994 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,995 [http-nio-8090-exec-9] ==> Parameters: 84(Long)
2018-11-17 08:39:52,996 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,997 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,997 [http-nio-8090-exec-9] ==> Parameters: 72(Long)
2018-11-17 08:39:52,998 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:52,999 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:52,999 [http-nio-8090-exec-9] ==> Parameters: 74(Long)
2018-11-17 08:39:53,000 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,001 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,001 [http-nio-8090-exec-9] ==> Parameters: 18(Long)
2018-11-17 08:39:53,002 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,003 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,003 [http-nio-8090-exec-9] ==> Parameters: 19(Long)
2018-11-17 08:39:53,004 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,005 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,005 [http-nio-8090-exec-9] ==> Parameters: 107(Long)
2018-11-17 08:39:53,006 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,007 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,008 [http-nio-8090-exec-9] ==> Parameters: 75(Long)
2018-11-17 08:39:53,008 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,010 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,010 [http-nio-8090-exec-9] ==> Parameters: 108(Long)
2018-11-17 08:39:53,012 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,013 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,013 [http-nio-8090-exec-9] ==> Parameters: 94(Long)
2018-11-17 08:39:53,014 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,015 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,016 [http-nio-8090-exec-9] ==> Parameters: 85(Long)
2018-11-17 08:39:53,017 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,018 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,019 [http-nio-8090-exec-9] ==> Parameters: 96(Long)
2018-11-17 08:39:53,020 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,021 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,021 [http-nio-8090-exec-9] ==> Parameters: 67(Long)
2018-11-17 08:39:53,022 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,024 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,024 [http-nio-8090-exec-9] ==> Parameters: 50(Long)
2018-11-17 08:39:53,026 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,027 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,028 [http-nio-8090-exec-9] ==> Parameters: 91(Long)
2018-11-17 08:39:53,029 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,030 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,031 [http-nio-8090-exec-9] ==> Parameters: 92(Long)
2018-11-17 08:39:53,032 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,033 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,034 [http-nio-8090-exec-9] ==> Parameters: 65(Long)
2018-11-17 08:39:53,035 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,037 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,037 [http-nio-8090-exec-9] ==> Parameters: 49(Long)
2018-11-17 08:39:53,039 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,040 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,041 [http-nio-8090-exec-9] ==> Parameters: 79(Long)
2018-11-17 08:39:53,042 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,043 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,043 [http-nio-8090-exec-9] ==> Parameters: 78(Long)
2018-11-17 08:39:53,044 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,045 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,045 [http-nio-8090-exec-9] ==> Parameters: 51(Long)
2018-11-17 08:39:53,046 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,047 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,047 [http-nio-8090-exec-9] ==> Parameters: 71(Long)
2018-11-17 08:39:53,048 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,049 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,049 [http-nio-8090-exec-9] ==> Parameters: 98(Long)
2018-11-17 08:39:53,050 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,051 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,051 [http-nio-8090-exec-9] ==> Parameters: 90(Long)
2018-11-17 08:39:53,052 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,053 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,053 [http-nio-8090-exec-9] ==> Parameters: 106(Long)
2018-11-17 08:39:53,054 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,055 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,055 [http-nio-8090-exec-9] ==> Parameters: 47(Long)
2018-11-17 08:39:53,056 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,057 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,057 [http-nio-8090-exec-9] ==> Parameters: 77(Long)
2018-11-17 08:39:53,058 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,059 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,060 [http-nio-8090-exec-9] ==> Parameters: 87(Long)
2018-11-17 08:39:53,061 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,062 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,062 [http-nio-8090-exec-9] ==> Parameters: 56(Long)
2018-11-17 08:39:53,063 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:39:53,064 [http-nio-8090-exec-9] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:39:53,064 [http-nio-8090-exec-9] ==> Parameters: 69(Long)
2018-11-17 08:39:53,065 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:05,183 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:05,183 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:40:05,184 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:40:05,186 [http-nio-8090-exec-10] ==>  Preparing: delete from t_token where id = ? 
2018-11-17 08:40:05,189 [http-nio-8090-exec-10] ==> Parameters: aad0faa4-d983-4e1f-a651-31e749c5393f(String)
2018-11-17 08:40:05,193 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-17 08:40:14,197 [http-nio-8090-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-17 08:40:14,199 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-17 08:40:14,199 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:40:14,207 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:40:14,209 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-17 08:40:14,210 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:40:14,213 [http-nio-8090-exec-3] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:40:14,215 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-17 08:40:14,218 [http-nio-8090-exec-3] <==      Total: 37
2018-11-17 08:40:14,321 [http-nio-8090-exec-3] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-17 08:40:14,327 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542422414313,"id":10,"loginTime":1542415214313,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"c90a6064-4f8a-46ef-bf10-4d582b5ce4c2","username":"wuzhihua"}(String), 2018-11-17 10:40:14.313(Timestamp), 2018-11-17 08:40:14.313(Timestamp), 2018-11-17 08:40:14.313(Timestamp)
2018-11-17 08:40:14,331 [http-nio-8090-exec-3] <==    Updates: 1
2018-11-17 08:40:14,474 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:14,474 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:14,476 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:40:14,519 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:14,520 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:14,524 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:14,620 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:14,622 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:14,623 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:40:14,625 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:40:14,627 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 08:40:14,628 [http-nio-8090-exec-1] <==      Total: 2
2018-11-17 08:40:14,629 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:40:14,630 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 08:40:14,630 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:40:16,783 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:16,784 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:16,784 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:16,800 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:16,800 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:16,801 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,810 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:40:16,811 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:40:16,812 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,812 [http-nio-8090-exec-7] ====> Parameters: 9(Integer)
2018-11-17 08:40:16,812 [http-nio-8090-exec-7] <====      Total: 2
2018-11-17 08:40:16,813 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,813 [http-nio-8090-exec-7] ====> Parameters: 439(Integer)
2018-11-17 08:40:16,814 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,814 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,814 [http-nio-8090-exec-7] ====> Parameters: 461(Integer)
2018-11-17 08:40:16,815 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,815 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,816 [http-nio-8090-exec-7] ====> Parameters: 465(Integer)
2018-11-17 08:40:16,816 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,816 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,817 [http-nio-8090-exec-7] ====> Parameters: 519(Integer)
2018-11-17 08:40:16,817 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,817 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,818 [http-nio-8090-exec-7] ====> Parameters: 481(Integer)
2018-11-17 08:40:16,818 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,819 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,821 [http-nio-8090-exec-7] ====> Parameters: 516(Integer)
2018-11-17 08:40:16,822 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,823 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,823 [http-nio-8090-exec-7] ====> Parameters: 476(Integer)
2018-11-17 08:40:16,824 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,824 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,824 [http-nio-8090-exec-7] ====> Parameters: 456(Integer)
2018-11-17 08:40:16,825 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,825 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,825 [http-nio-8090-exec-7] ====> Parameters: 512(Integer)
2018-11-17 08:40:16,826 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,826 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,827 [http-nio-8090-exec-7] ====> Parameters: 464(Integer)
2018-11-17 08:40:16,827 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,827 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,828 [http-nio-8090-exec-7] ====> Parameters: 492(Integer)
2018-11-17 08:40:16,828 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,828 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,829 [http-nio-8090-exec-7] ====> Parameters: 446(Integer)
2018-11-17 08:40:16,829 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,829 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,830 [http-nio-8090-exec-7] ====> Parameters: 450(Integer)
2018-11-17 08:40:16,830 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,831 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,831 [http-nio-8090-exec-7] ====> Parameters: 518(Integer)
2018-11-17 08:40:16,831 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,832 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,832 [http-nio-8090-exec-7] ====> Parameters: 500(Integer)
2018-11-17 08:40:16,833 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,833 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,833 [http-nio-8090-exec-7] ====> Parameters: 447(Integer)
2018-11-17 08:40:16,834 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,834 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,835 [http-nio-8090-exec-7] ====> Parameters: 463(Integer)
2018-11-17 08:40:16,836 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,838 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,839 [http-nio-8090-exec-7] ====> Parameters: 483(Integer)
2018-11-17 08:40:16,840 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,841 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,841 [http-nio-8090-exec-7] ====> Parameters: 487(Integer)
2018-11-17 08:40:16,842 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,842 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,843 [http-nio-8090-exec-7] ====> Parameters: 521(Integer)
2018-11-17 08:40:16,843 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,844 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,844 [http-nio-8090-exec-7] ====> Parameters: 486(Integer)
2018-11-17 08:40:16,845 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,845 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,846 [http-nio-8090-exec-7] ====> Parameters: 499(Integer)
2018-11-17 08:40:16,846 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,847 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,847 [http-nio-8090-exec-7] ====> Parameters: 458(Integer)
2018-11-17 08:40:16,847 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,848 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,848 [http-nio-8090-exec-7] ====> Parameters: 514(Integer)
2018-11-17 08:40:16,849 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,849 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,849 [http-nio-8090-exec-7] ====> Parameters: 468(Integer)
2018-11-17 08:40:16,850 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,850 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,850 [http-nio-8090-exec-7] ====> Parameters: 517(Integer)
2018-11-17 08:40:16,851 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,851 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,852 [http-nio-8090-exec-7] ====> Parameters: 462(Integer)
2018-11-17 08:40:16,854 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,855 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,855 [http-nio-8090-exec-7] ====> Parameters: 489(Integer)
2018-11-17 08:40:16,856 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,857 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,857 [http-nio-8090-exec-7] ====> Parameters: 490(Integer)
2018-11-17 08:40:16,858 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,858 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,859 [http-nio-8090-exec-7] ====> Parameters: 457(Integer)
2018-11-17 08:40:16,859 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,859 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,860 [http-nio-8090-exec-7] ====> Parameters: 442(Integer)
2018-11-17 08:40:16,860 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,861 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,861 [http-nio-8090-exec-7] ====> Parameters: 510(Integer)
2018-11-17 08:40:16,862 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,862 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,863 [http-nio-8090-exec-7] ====> Parameters: 485(Integer)
2018-11-17 08:40:16,863 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,864 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,864 [http-nio-8090-exec-7] ====> Parameters: 513(Integer)
2018-11-17 08:40:16,864 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,865 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,865 [http-nio-8090-exec-7] ====> Parameters: 496(Integer)
2018-11-17 08:40:16,866 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,866 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,866 [http-nio-8090-exec-7] ====> Parameters: 459(Integer)
2018-11-17 08:40:16,867 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,867 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,867 [http-nio-8090-exec-7] ====> Parameters: 515(Integer)
2018-11-17 08:40:16,868 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,868 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,869 [http-nio-8090-exec-7] ====> Parameters: 506(Integer)
2018-11-17 08:40:16,870 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,871 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,872 [http-nio-8090-exec-7] ====> Parameters: 498(Integer)
2018-11-17 08:40:16,873 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,873 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,874 [http-nio-8090-exec-7] ====> Parameters: 451(Integer)
2018-11-17 08:40:16,874 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,875 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,875 [http-nio-8090-exec-7] ====> Parameters: 448(Integer)
2018-11-17 08:40:16,876 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,877 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,877 [http-nio-8090-exec-7] ====> Parameters: 488(Integer)
2018-11-17 08:40:16,878 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,878 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,879 [http-nio-8090-exec-7] ====> Parameters: 504(Integer)
2018-11-17 08:40:16,879 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,880 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,880 [http-nio-8090-exec-7] ====> Parameters: 511(Integer)
2018-11-17 08:40:16,881 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,881 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,881 [http-nio-8090-exec-7] ====> Parameters: 452(Integer)
2018-11-17 08:40:16,882 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,882 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,882 [http-nio-8090-exec-7] ====> Parameters: 470(Integer)
2018-11-17 08:40:16,883 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,883 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,884 [http-nio-8090-exec-7] ====> Parameters: 440(Integer)
2018-11-17 08:40:16,884 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,885 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,885 [http-nio-8090-exec-7] ====> Parameters: 482(Integer)
2018-11-17 08:40:16,886 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,887 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,888 [http-nio-8090-exec-7] ====> Parameters: 494(Integer)
2018-11-17 08:40:16,889 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,889 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,889 [http-nio-8090-exec-7] ====> Parameters: 520(Integer)
2018-11-17 08:40:16,890 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,891 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,891 [http-nio-8090-exec-7] ====> Parameters: 449(Integer)
2018-11-17 08:40:16,892 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,892 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,892 [http-nio-8090-exec-7] ====> Parameters: 454(Integer)
2018-11-17 08:40:16,893 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,893 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,894 [http-nio-8090-exec-7] ====> Parameters: 472(Integer)
2018-11-17 08:40:16,894 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,895 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,895 [http-nio-8090-exec-7] ====> Parameters: 466(Integer)
2018-11-17 08:40:16,896 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,896 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,897 [http-nio-8090-exec-7] ====> Parameters: 460(Integer)
2018-11-17 08:40:16,897 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,898 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,898 [http-nio-8090-exec-7] ====> Parameters: 475(Integer)
2018-11-17 08:40:16,899 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,899 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,900 [http-nio-8090-exec-7] ====> Parameters: 491(Integer)
2018-11-17 08:40:16,901 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,901 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,902 [http-nio-8090-exec-7] ====> Parameters: 474(Integer)
2018-11-17 08:40:16,903 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,906 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,908 [http-nio-8090-exec-7] ====> Parameters: 477(Integer)
2018-11-17 08:40:16,910 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,910 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,910 [http-nio-8090-exec-7] ====> Parameters: 505(Integer)
2018-11-17 08:40:16,911 [http-nio-8090-exec-7] <====      Total: 2
2018-11-17 08:40:16,911 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,912 [http-nio-8090-exec-7] ====> Parameters: 479(Integer)
2018-11-17 08:40:16,912 [http-nio-8090-exec-7] <====      Total: 3
2018-11-17 08:40:16,913 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,913 [http-nio-8090-exec-7] ====> Parameters: 503(Integer)
2018-11-17 08:40:16,914 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,915 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,915 [http-nio-8090-exec-7] ====> Parameters: 493(Integer)
2018-11-17 08:40:16,916 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,916 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,917 [http-nio-8090-exec-7] ====> Parameters: 507(Integer)
2018-11-17 08:40:16,917 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,918 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,918 [http-nio-8090-exec-7] ====> Parameters: 469(Integer)
2018-11-17 08:40:16,920 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,922 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,922 [http-nio-8090-exec-7] ====> Parameters: 444(Integer)
2018-11-17 08:40:16,923 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,923 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,924 [http-nio-8090-exec-7] ====> Parameters: 501(Integer)
2018-11-17 08:40:16,924 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,925 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,925 [http-nio-8090-exec-7] ====> Parameters: 502(Integer)
2018-11-17 08:40:16,925 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,926 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,926 [http-nio-8090-exec-7] ====> Parameters: 467(Integer)
2018-11-17 08:40:16,927 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,927 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,927 [http-nio-8090-exec-7] ====> Parameters: 443(Integer)
2018-11-17 08:40:16,928 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,928 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,928 [http-nio-8090-exec-7] ====> Parameters: 484(Integer)
2018-11-17 08:40:16,929 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,929 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,929 [http-nio-8090-exec-7] ====> Parameters: 480(Integer)
2018-11-17 08:40:16,930 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,930 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,931 [http-nio-8090-exec-7] ====> Parameters: 445(Integer)
2018-11-17 08:40:16,931 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,932 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,932 [http-nio-8090-exec-7] ====> Parameters: 473(Integer)
2018-11-17 08:40:16,933 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,933 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,933 [http-nio-8090-exec-7] ====> Parameters: 509(Integer)
2018-11-17 08:40:16,934 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,935 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,935 [http-nio-8090-exec-7] ====> Parameters: 497(Integer)
2018-11-17 08:40:16,935 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,937 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,938 [http-nio-8090-exec-7] ====> Parameters: 522(Integer)
2018-11-17 08:40:16,939 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,940 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,940 [http-nio-8090-exec-7] ====> Parameters: 441(Integer)
2018-11-17 08:40:16,941 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,941 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,941 [http-nio-8090-exec-7] ====> Parameters: 478(Integer)
2018-11-17 08:40:16,942 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,942 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,943 [http-nio-8090-exec-7] ====> Parameters: 495(Integer)
2018-11-17 08:40:16,943 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,944 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,944 [http-nio-8090-exec-7] ====> Parameters: 453(Integer)
2018-11-17 08:40:16,944 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,945 [http-nio-8090-exec-7] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:16,945 [http-nio-8090-exec-7] ====> Parameters: 471(Integer)
2018-11-17 08:40:16,945 [http-nio-8090-exec-7] <====      Total: 1
2018-11-17 08:40:16,946 [http-nio-8090-exec-7] <==      Total: 83
2018-11-17 08:40:16,946 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,947 [http-nio-8090-exec-7] ==> Parameters: 1(Long)
2018-11-17 08:40:16,947 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,948 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,948 [http-nio-8090-exec-7] ==> Parameters: 20(Long)
2018-11-17 08:40:16,949 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,949 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,950 [http-nio-8090-exec-7] ==> Parameters: 21(Long)
2018-11-17 08:40:16,950 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,951 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,951 [http-nio-8090-exec-7] ==> Parameters: 22(Long)
2018-11-17 08:40:16,952 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,954 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,955 [http-nio-8090-exec-7] ==> Parameters: 23(Long)
2018-11-17 08:40:16,956 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,957 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,958 [http-nio-8090-exec-7] ==> Parameters: 24(Long)
2018-11-17 08:40:16,958 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,959 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,960 [http-nio-8090-exec-7] ==> Parameters: 25(Long)
2018-11-17 08:40:16,960 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,961 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,962 [http-nio-8090-exec-7] ==> Parameters: 26(Long)
2018-11-17 08:40:16,962 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,963 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,963 [http-nio-8090-exec-7] ==> Parameters: 27(Long)
2018-11-17 08:40:16,964 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,965 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,965 [http-nio-8090-exec-7] ==> Parameters: 28(Long)
2018-11-17 08:40:16,966 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,967 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,967 [http-nio-8090-exec-7] ==> Parameters: 31(Long)
2018-11-17 08:40:16,967 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,968 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,968 [http-nio-8090-exec-7] ==> Parameters: 32(Long)
2018-11-17 08:40:16,969 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,970 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,971 [http-nio-8090-exec-7] ==> Parameters: 33(Long)
2018-11-17 08:40:16,972 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,973 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,973 [http-nio-8090-exec-7] ==> Parameters: 34(Long)
2018-11-17 08:40:16,973 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,974 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,974 [http-nio-8090-exec-7] ==> Parameters: 35(Long)
2018-11-17 08:40:16,975 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,975 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,975 [http-nio-8090-exec-7] ==> Parameters: 36(Long)
2018-11-17 08:40:16,976 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,976 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,977 [http-nio-8090-exec-7] ==> Parameters: 38(Long)
2018-11-17 08:40:16,977 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,978 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,978 [http-nio-8090-exec-7] ==> Parameters: 37(Long)
2018-11-17 08:40:16,978 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,979 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,979 [http-nio-8090-exec-7] ==> Parameters: 40(Long)
2018-11-17 08:40:16,980 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,980 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,981 [http-nio-8090-exec-7] ==> Parameters: 41(Long)
2018-11-17 08:40:16,981 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,982 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,982 [http-nio-8090-exec-7] ==> Parameters: 42(Long)
2018-11-17 08:40:16,983 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,984 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,984 [http-nio-8090-exec-7] ==> Parameters: 43(Long)
2018-11-17 08:40:16,984 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,985 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,985 [http-nio-8090-exec-7] ==> Parameters: 44(Long)
2018-11-17 08:40:16,986 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,987 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,988 [http-nio-8090-exec-7] ==> Parameters: 45(Long)
2018-11-17 08:40:16,988 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,989 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,989 [http-nio-8090-exec-7] ==> Parameters: 59(Long)
2018-11-17 08:40:16,989 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,989 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,991 [http-nio-8090-exec-7] ==> Parameters: 102(Long)
2018-11-17 08:40:16,991 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,991 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,991 [http-nio-8090-exec-7] ==> Parameters: 66(Long)
2018-11-17 08:40:16,991 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,993 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,993 [http-nio-8090-exec-7] ==> Parameters: 105(Long)
2018-11-17 08:40:16,993 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,993 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,993 [http-nio-8090-exec-7] ==> Parameters: 63(Long)
2018-11-17 08:40:16,994 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,995 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,995 [http-nio-8090-exec-7] ==> Parameters: 81(Long)
2018-11-17 08:40:16,995 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,996 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,997 [http-nio-8090-exec-7] ==> Parameters: 83(Long)
2018-11-17 08:40:16,997 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,998 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,998 [http-nio-8090-exec-7] ==> Parameters: 58(Long)
2018-11-17 08:40:16,998 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:16,999 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:16,999 [http-nio-8090-exec-7] ==> Parameters: 48(Long)
2018-11-17 08:40:17,000 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,000 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,000 [http-nio-8090-exec-7] ==> Parameters: 99(Long)
2018-11-17 08:40:17,001 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,002 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,003 [http-nio-8090-exec-7] ==> Parameters: 80(Long)
2018-11-17 08:40:17,009 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,010 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,011 [http-nio-8090-exec-7] ==> Parameters: 101(Long)
2018-11-17 08:40:17,011 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,012 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,013 [http-nio-8090-exec-7] ==> Parameters: 88(Long)
2018-11-17 08:40:17,013 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,014 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,014 [http-nio-8090-exec-7] ==> Parameters: 60(Long)
2018-11-17 08:40:17,015 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,016 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,016 [http-nio-8090-exec-7] ==> Parameters: 103(Long)
2018-11-17 08:40:17,016 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,017 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,017 [http-nio-8090-exec-7] ==> Parameters: 95(Long)
2018-11-17 08:40:17,018 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,019 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,019 [http-nio-8090-exec-7] ==> Parameters: 89(Long)
2018-11-17 08:40:17,020 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,021 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,021 [http-nio-8090-exec-7] ==> Parameters: 54(Long)
2018-11-17 08:40:17,021 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,025 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,025 [http-nio-8090-exec-7] ==> Parameters: 52(Long)
2018-11-17 08:40:17,025 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,026 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,026 [http-nio-8090-exec-7] ==> Parameters: 82(Long)
2018-11-17 08:40:17,027 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,027 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,027 [http-nio-8090-exec-7] ==> Parameters: 93(Long)
2018-11-17 08:40:17,028 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,029 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,029 [http-nio-8090-exec-7] ==> Parameters: 100(Long)
2018-11-17 08:40:17,030 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,030 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,030 [http-nio-8090-exec-7] ==> Parameters: 55(Long)
2018-11-17 08:40:17,031 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,031 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,032 [http-nio-8090-exec-7] ==> Parameters: 68(Long)
2018-11-17 08:40:17,032 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,032 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,033 [http-nio-8090-exec-7] ==> Parameters: 46(Long)
2018-11-17 08:40:17,033 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,034 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,034 [http-nio-8090-exec-7] ==> Parameters: 76(Long)
2018-11-17 08:40:17,035 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,036 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,037 [http-nio-8090-exec-7] ==> Parameters: 86(Long)
2018-11-17 08:40:17,037 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,038 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,038 [http-nio-8090-exec-7] ==> Parameters: 104(Long)
2018-11-17 08:40:17,039 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,039 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,040 [http-nio-8090-exec-7] ==> Parameters: 53(Long)
2018-11-17 08:40:17,040 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,041 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,041 [http-nio-8090-exec-7] ==> Parameters: 57(Long)
2018-11-17 08:40:17,041 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,042 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,042 [http-nio-8090-exec-7] ==> Parameters: 70(Long)
2018-11-17 08:40:17,042 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,044 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,044 [http-nio-8090-exec-7] ==> Parameters: 64(Long)
2018-11-17 08:40:17,045 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,045 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,046 [http-nio-8090-exec-7] ==> Parameters: 61(Long)
2018-11-17 08:40:17,046 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,047 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,047 [http-nio-8090-exec-7] ==> Parameters: 73(Long)
2018-11-17 08:40:17,047 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,048 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,048 [http-nio-8090-exec-7] ==> Parameters: 84(Long)
2018-11-17 08:40:17,049 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,049 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,049 [http-nio-8090-exec-7] ==> Parameters: 72(Long)
2018-11-17 08:40:17,050 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,050 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,051 [http-nio-8090-exec-7] ==> Parameters: 74(Long)
2018-11-17 08:40:17,051 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,052 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,053 [http-nio-8090-exec-7] ==> Parameters: 18(Long)
2018-11-17 08:40:17,053 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,054 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,054 [http-nio-8090-exec-7] ==> Parameters: 19(Long)
2018-11-17 08:40:17,055 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,055 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,056 [http-nio-8090-exec-7] ==> Parameters: 107(Long)
2018-11-17 08:40:17,056 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,057 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,057 [http-nio-8090-exec-7] ==> Parameters: 75(Long)
2018-11-17 08:40:17,058 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,058 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,059 [http-nio-8090-exec-7] ==> Parameters: 108(Long)
2018-11-17 08:40:17,059 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,060 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,061 [http-nio-8090-exec-7] ==> Parameters: 94(Long)
2018-11-17 08:40:17,061 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,062 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,062 [http-nio-8090-exec-7] ==> Parameters: 85(Long)
2018-11-17 08:40:17,063 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,064 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,064 [http-nio-8090-exec-7] ==> Parameters: 96(Long)
2018-11-17 08:40:17,064 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,065 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,065 [http-nio-8090-exec-7] ==> Parameters: 67(Long)
2018-11-17 08:40:17,066 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,067 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,067 [http-nio-8090-exec-7] ==> Parameters: 50(Long)
2018-11-17 08:40:17,068 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,069 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,070 [http-nio-8090-exec-7] ==> Parameters: 91(Long)
2018-11-17 08:40:17,070 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,071 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,071 [http-nio-8090-exec-7] ==> Parameters: 92(Long)
2018-11-17 08:40:17,072 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,072 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,073 [http-nio-8090-exec-7] ==> Parameters: 65(Long)
2018-11-17 08:40:17,073 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,073 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,074 [http-nio-8090-exec-7] ==> Parameters: 49(Long)
2018-11-17 08:40:17,074 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,075 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,075 [http-nio-8090-exec-7] ==> Parameters: 79(Long)
2018-11-17 08:40:17,075 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,076 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,076 [http-nio-8090-exec-7] ==> Parameters: 78(Long)
2018-11-17 08:40:17,077 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,078 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,078 [http-nio-8090-exec-7] ==> Parameters: 51(Long)
2018-11-17 08:40:17,078 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,079 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,079 [http-nio-8090-exec-7] ==> Parameters: 71(Long)
2018-11-17 08:40:17,080 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,080 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,080 [http-nio-8090-exec-7] ==> Parameters: 98(Long)
2018-11-17 08:40:17,081 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,082 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,082 [http-nio-8090-exec-7] ==> Parameters: 90(Long)
2018-11-17 08:40:17,082 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,083 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,083 [http-nio-8090-exec-7] ==> Parameters: 106(Long)
2018-11-17 08:40:17,084 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,085 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,085 [http-nio-8090-exec-7] ==> Parameters: 47(Long)
2018-11-17 08:40:17,086 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,087 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,087 [http-nio-8090-exec-7] ==> Parameters: 77(Long)
2018-11-17 08:40:17,088 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,088 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,088 [http-nio-8090-exec-7] ==> Parameters: 87(Long)
2018-11-17 08:40:17,089 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,089 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,090 [http-nio-8090-exec-7] ==> Parameters: 56(Long)
2018-11-17 08:40:17,090 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:17,091 [http-nio-8090-exec-7] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:17,091 [http-nio-8090-exec-7] ==> Parameters: 69(Long)
2018-11-17 08:40:17,091 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:22,357 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:22,358 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:22,360 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:22,366 [http-nio-8090-exec-9] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:22,368 [http-nio-8090-exec-9] ==> Parameters: 20(Long)
2018-11-17 08:40:22,371 [http-nio-8090-exec-9] <==      Total: 0
2018-11-17 08:40:22,519 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:22,520 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:22,522 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:22,531 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:40:22,531 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-17 08:40:22,532 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:22,533 [http-nio-8090-exec-9] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:40:22,533 [http-nio-8090-exec-9] ==> Parameters: 500(Integer)
2018-11-17 08:40:22,549 [http-nio-8090-exec-9] <==      Total: 282
2018-11-17 08:40:27,080 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:27,080 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:27,081 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:40:27,088 [http-nio-8090-exec-1] ==>  Preparing: delete from sys_role_user where roleId = ? 
2018-11-17 08:40:27,088 [http-nio-8090-exec-1] ==> Parameters: 20(Long)
2018-11-17 08:40:27,089 [http-nio-8090-exec-1] <==    Updates: 0
2018-11-17 08:40:27,093 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_role_user (roleId,userId) values ( ?, ? ) 
2018-11-17 08:40:27,094 [http-nio-8090-exec-1] ==> Parameters: 20(Long), 8713(Long)
2018-11-17 08:40:27,096 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-17 08:40:27,449 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:27,450 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:27,452 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:27,478 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:27,478 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:27,479 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,482 [http-nio-8090-exec-6] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:40:27,482 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:40:27,483 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,484 [http-nio-8090-exec-6] ====> Parameters: 9(Integer)
2018-11-17 08:40:27,486 [http-nio-8090-exec-6] <====      Total: 2
2018-11-17 08:40:27,487 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,487 [http-nio-8090-exec-6] ====> Parameters: 439(Integer)
2018-11-17 08:40:27,488 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,489 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,490 [http-nio-8090-exec-6] ====> Parameters: 461(Integer)
2018-11-17 08:40:27,491 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,491 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,492 [http-nio-8090-exec-6] ====> Parameters: 465(Integer)
2018-11-17 08:40:27,494 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,496 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,496 [http-nio-8090-exec-6] ====> Parameters: 519(Integer)
2018-11-17 08:40:27,498 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,499 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,499 [http-nio-8090-exec-6] ====> Parameters: 481(Integer)
2018-11-17 08:40:27,500 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,503 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,504 [http-nio-8090-exec-6] ====> Parameters: 516(Integer)
2018-11-17 08:40:27,506 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,507 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,508 [http-nio-8090-exec-6] ====> Parameters: 476(Integer)
2018-11-17 08:40:27,509 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,510 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,510 [http-nio-8090-exec-6] ====> Parameters: 456(Integer)
2018-11-17 08:40:27,511 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,512 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,512 [http-nio-8090-exec-6] ====> Parameters: 512(Integer)
2018-11-17 08:40:27,513 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,514 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,514 [http-nio-8090-exec-6] ====> Parameters: 464(Integer)
2018-11-17 08:40:27,515 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,515 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,516 [http-nio-8090-exec-6] ====> Parameters: 492(Integer)
2018-11-17 08:40:27,517 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,518 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,519 [http-nio-8090-exec-6] ====> Parameters: 446(Integer)
2018-11-17 08:40:27,520 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,520 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,521 [http-nio-8090-exec-6] ====> Parameters: 450(Integer)
2018-11-17 08:40:27,521 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,522 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,522 [http-nio-8090-exec-6] ====> Parameters: 518(Integer)
2018-11-17 08:40:27,525 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,525 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,525 [http-nio-8090-exec-6] ====> Parameters: 500(Integer)
2018-11-17 08:40:27,533 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,534 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,534 [http-nio-8090-exec-6] ====> Parameters: 447(Integer)
2018-11-17 08:40:27,535 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,535 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,536 [http-nio-8090-exec-6] ====> Parameters: 463(Integer)
2018-11-17 08:40:27,536 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,537 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,537 [http-nio-8090-exec-6] ====> Parameters: 483(Integer)
2018-11-17 08:40:27,538 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,538 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,538 [http-nio-8090-exec-6] ====> Parameters: 487(Integer)
2018-11-17 08:40:27,539 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,539 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,540 [http-nio-8090-exec-6] ====> Parameters: 521(Integer)
2018-11-17 08:40:27,540 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,541 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,541 [http-nio-8090-exec-6] ====> Parameters: 486(Integer)
2018-11-17 08:40:27,542 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,542 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,542 [http-nio-8090-exec-6] ====> Parameters: 499(Integer)
2018-11-17 08:40:27,543 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,544 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,544 [http-nio-8090-exec-6] ====> Parameters: 458(Integer)
2018-11-17 08:40:27,544 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,545 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,545 [http-nio-8090-exec-6] ====> Parameters: 514(Integer)
2018-11-17 08:40:27,546 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,546 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,546 [http-nio-8090-exec-6] ====> Parameters: 468(Integer)
2018-11-17 08:40:27,549 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,550 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,550 [http-nio-8090-exec-6] ====> Parameters: 517(Integer)
2018-11-17 08:40:27,551 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,551 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,551 [http-nio-8090-exec-6] ====> Parameters: 462(Integer)
2018-11-17 08:40:27,552 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,552 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,553 [http-nio-8090-exec-6] ====> Parameters: 489(Integer)
2018-11-17 08:40:27,553 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,554 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,554 [http-nio-8090-exec-6] ====> Parameters: 490(Integer)
2018-11-17 08:40:27,554 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,555 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,555 [http-nio-8090-exec-6] ====> Parameters: 457(Integer)
2018-11-17 08:40:27,555 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,556 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,556 [http-nio-8090-exec-6] ====> Parameters: 442(Integer)
2018-11-17 08:40:27,557 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,557 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,557 [http-nio-8090-exec-6] ====> Parameters: 510(Integer)
2018-11-17 08:40:27,558 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,558 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,559 [http-nio-8090-exec-6] ====> Parameters: 485(Integer)
2018-11-17 08:40:27,560 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,560 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,561 [http-nio-8090-exec-6] ====> Parameters: 513(Integer)
2018-11-17 08:40:27,562 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,563 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,563 [http-nio-8090-exec-6] ====> Parameters: 496(Integer)
2018-11-17 08:40:27,572 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,573 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,573 [http-nio-8090-exec-6] ====> Parameters: 459(Integer)
2018-11-17 08:40:27,574 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,575 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,575 [http-nio-8090-exec-6] ====> Parameters: 515(Integer)
2018-11-17 08:40:27,576 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,576 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,577 [http-nio-8090-exec-6] ====> Parameters: 506(Integer)
2018-11-17 08:40:27,577 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,578 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,578 [http-nio-8090-exec-6] ====> Parameters: 498(Integer)
2018-11-17 08:40:27,579 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,579 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,580 [http-nio-8090-exec-6] ====> Parameters: 451(Integer)
2018-11-17 08:40:27,580 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,580 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,581 [http-nio-8090-exec-6] ====> Parameters: 448(Integer)
2018-11-17 08:40:27,581 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,582 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,582 [http-nio-8090-exec-6] ====> Parameters: 488(Integer)
2018-11-17 08:40:27,583 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,583 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,584 [http-nio-8090-exec-6] ====> Parameters: 504(Integer)
2018-11-17 08:40:27,584 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,585 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,585 [http-nio-8090-exec-6] ====> Parameters: 511(Integer)
2018-11-17 08:40:27,586 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,586 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,586 [http-nio-8090-exec-6] ====> Parameters: 452(Integer)
2018-11-17 08:40:27,587 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,587 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,587 [http-nio-8090-exec-6] ====> Parameters: 470(Integer)
2018-11-17 08:40:27,588 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,588 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,588 [http-nio-8090-exec-6] ====> Parameters: 440(Integer)
2018-11-17 08:40:27,589 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,589 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,590 [http-nio-8090-exec-6] ====> Parameters: 482(Integer)
2018-11-17 08:40:27,590 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,590 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,591 [http-nio-8090-exec-6] ====> Parameters: 494(Integer)
2018-11-17 08:40:27,591 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,592 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,592 [http-nio-8090-exec-6] ====> Parameters: 520(Integer)
2018-11-17 08:40:27,592 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,593 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,593 [http-nio-8090-exec-6] ====> Parameters: 449(Integer)
2018-11-17 08:40:27,594 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,594 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,594 [http-nio-8090-exec-6] ====> Parameters: 454(Integer)
2018-11-17 08:40:27,595 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,595 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,595 [http-nio-8090-exec-6] ====> Parameters: 472(Integer)
2018-11-17 08:40:27,596 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,596 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,596 [http-nio-8090-exec-6] ====> Parameters: 466(Integer)
2018-11-17 08:40:27,597 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,597 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,598 [http-nio-8090-exec-6] ====> Parameters: 460(Integer)
2018-11-17 08:40:27,598 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,599 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,599 [http-nio-8090-exec-6] ====> Parameters: 475(Integer)
2018-11-17 08:40:27,599 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,600 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,601 [http-nio-8090-exec-6] ====> Parameters: 491(Integer)
2018-11-17 08:40:27,601 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,602 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,602 [http-nio-8090-exec-6] ====> Parameters: 474(Integer)
2018-11-17 08:40:27,603 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,603 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,604 [http-nio-8090-exec-6] ====> Parameters: 477(Integer)
2018-11-17 08:40:27,604 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,605 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,605 [http-nio-8090-exec-6] ====> Parameters: 505(Integer)
2018-11-17 08:40:27,606 [http-nio-8090-exec-6] <====      Total: 2
2018-11-17 08:40:27,606 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,607 [http-nio-8090-exec-6] ====> Parameters: 479(Integer)
2018-11-17 08:40:27,607 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 08:40:27,607 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,608 [http-nio-8090-exec-6] ====> Parameters: 503(Integer)
2018-11-17 08:40:27,608 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,609 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,609 [http-nio-8090-exec-6] ====> Parameters: 493(Integer)
2018-11-17 08:40:27,609 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,610 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,610 [http-nio-8090-exec-6] ====> Parameters: 507(Integer)
2018-11-17 08:40:27,610 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,611 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,611 [http-nio-8090-exec-6] ====> Parameters: 469(Integer)
2018-11-17 08:40:27,612 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,612 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,613 [http-nio-8090-exec-6] ====> Parameters: 444(Integer)
2018-11-17 08:40:27,613 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,614 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,614 [http-nio-8090-exec-6] ====> Parameters: 501(Integer)
2018-11-17 08:40:27,614 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,615 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,615 [http-nio-8090-exec-6] ====> Parameters: 502(Integer)
2018-11-17 08:40:27,616 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,617 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,617 [http-nio-8090-exec-6] ====> Parameters: 467(Integer)
2018-11-17 08:40:27,618 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,618 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,618 [http-nio-8090-exec-6] ====> Parameters: 443(Integer)
2018-11-17 08:40:27,619 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,620 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,620 [http-nio-8090-exec-6] ====> Parameters: 484(Integer)
2018-11-17 08:40:27,621 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,621 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,622 [http-nio-8090-exec-6] ====> Parameters: 480(Integer)
2018-11-17 08:40:27,622 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,623 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,623 [http-nio-8090-exec-6] ====> Parameters: 445(Integer)
2018-11-17 08:40:27,623 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,624 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,624 [http-nio-8090-exec-6] ====> Parameters: 473(Integer)
2018-11-17 08:40:27,625 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,625 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,626 [http-nio-8090-exec-6] ====> Parameters: 509(Integer)
2018-11-17 08:40:27,626 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,627 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,627 [http-nio-8090-exec-6] ====> Parameters: 497(Integer)
2018-11-17 08:40:27,627 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,628 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,628 [http-nio-8090-exec-6] ====> Parameters: 522(Integer)
2018-11-17 08:40:27,629 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,629 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,629 [http-nio-8090-exec-6] ====> Parameters: 441(Integer)
2018-11-17 08:40:27,630 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,630 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,631 [http-nio-8090-exec-6] ====> Parameters: 478(Integer)
2018-11-17 08:40:27,631 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,631 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,632 [http-nio-8090-exec-6] ====> Parameters: 495(Integer)
2018-11-17 08:40:27,632 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,633 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,633 [http-nio-8090-exec-6] ====> Parameters: 453(Integer)
2018-11-17 08:40:27,633 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,634 [http-nio-8090-exec-6] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:27,635 [http-nio-8090-exec-6] ====> Parameters: 471(Integer)
2018-11-17 08:40:27,635 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 08:40:27,636 [http-nio-8090-exec-6] <==      Total: 83
2018-11-17 08:40:27,637 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,637 [http-nio-8090-exec-6] ==> Parameters: 1(Long)
2018-11-17 08:40:27,638 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,639 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,639 [http-nio-8090-exec-6] ==> Parameters: 20(Long)
2018-11-17 08:40:27,640 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,641 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,642 [http-nio-8090-exec-6] ==> Parameters: 21(Long)
2018-11-17 08:40:27,643 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,644 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,644 [http-nio-8090-exec-6] ==> Parameters: 22(Long)
2018-11-17 08:40:27,645 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,646 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,646 [http-nio-8090-exec-6] ==> Parameters: 23(Long)
2018-11-17 08:40:27,647 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,648 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,648 [http-nio-8090-exec-6] ==> Parameters: 24(Long)
2018-11-17 08:40:27,649 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,649 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,650 [http-nio-8090-exec-6] ==> Parameters: 25(Long)
2018-11-17 08:40:27,651 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,652 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,652 [http-nio-8090-exec-6] ==> Parameters: 26(Long)
2018-11-17 08:40:27,653 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,654 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,654 [http-nio-8090-exec-6] ==> Parameters: 27(Long)
2018-11-17 08:40:27,655 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,656 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,656 [http-nio-8090-exec-6] ==> Parameters: 28(Long)
2018-11-17 08:40:27,657 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,658 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,658 [http-nio-8090-exec-6] ==> Parameters: 31(Long)
2018-11-17 08:40:27,659 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,659 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,660 [http-nio-8090-exec-6] ==> Parameters: 32(Long)
2018-11-17 08:40:27,661 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,661 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,662 [http-nio-8090-exec-6] ==> Parameters: 33(Long)
2018-11-17 08:40:27,663 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,663 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,664 [http-nio-8090-exec-6] ==> Parameters: 34(Long)
2018-11-17 08:40:27,664 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,665 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,665 [http-nio-8090-exec-6] ==> Parameters: 35(Long)
2018-11-17 08:40:27,667 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,668 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,668 [http-nio-8090-exec-6] ==> Parameters: 36(Long)
2018-11-17 08:40:27,669 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,670 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,670 [http-nio-8090-exec-6] ==> Parameters: 38(Long)
2018-11-17 08:40:27,671 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,672 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,673 [http-nio-8090-exec-6] ==> Parameters: 37(Long)
2018-11-17 08:40:27,674 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,675 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,675 [http-nio-8090-exec-6] ==> Parameters: 40(Long)
2018-11-17 08:40:27,676 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,677 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,678 [http-nio-8090-exec-6] ==> Parameters: 41(Long)
2018-11-17 08:40:27,679 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,680 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,680 [http-nio-8090-exec-6] ==> Parameters: 42(Long)
2018-11-17 08:40:27,681 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,682 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,682 [http-nio-8090-exec-6] ==> Parameters: 43(Long)
2018-11-17 08:40:27,684 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,685 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,686 [http-nio-8090-exec-6] ==> Parameters: 44(Long)
2018-11-17 08:40:27,687 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,688 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,689 [http-nio-8090-exec-6] ==> Parameters: 45(Long)
2018-11-17 08:40:27,690 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,690 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,691 [http-nio-8090-exec-6] ==> Parameters: 59(Long)
2018-11-17 08:40:27,692 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,692 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,693 [http-nio-8090-exec-6] ==> Parameters: 102(Long)
2018-11-17 08:40:27,694 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,694 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,695 [http-nio-8090-exec-6] ==> Parameters: 66(Long)
2018-11-17 08:40:27,695 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,696 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,696 [http-nio-8090-exec-6] ==> Parameters: 105(Long)
2018-11-17 08:40:27,697 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,698 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,698 [http-nio-8090-exec-6] ==> Parameters: 63(Long)
2018-11-17 08:40:27,699 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,700 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,701 [http-nio-8090-exec-6] ==> Parameters: 81(Long)
2018-11-17 08:40:27,702 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,703 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,703 [http-nio-8090-exec-6] ==> Parameters: 83(Long)
2018-11-17 08:40:27,704 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,705 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,705 [http-nio-8090-exec-6] ==> Parameters: 58(Long)
2018-11-17 08:40:27,706 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,707 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,707 [http-nio-8090-exec-6] ==> Parameters: 48(Long)
2018-11-17 08:40:27,708 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,709 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,709 [http-nio-8090-exec-6] ==> Parameters: 99(Long)
2018-11-17 08:40:27,710 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,711 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,712 [http-nio-8090-exec-6] ==> Parameters: 80(Long)
2018-11-17 08:40:27,713 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,713 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,714 [http-nio-8090-exec-6] ==> Parameters: 101(Long)
2018-11-17 08:40:27,714 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,715 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,715 [http-nio-8090-exec-6] ==> Parameters: 88(Long)
2018-11-17 08:40:27,715 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,716 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,717 [http-nio-8090-exec-6] ==> Parameters: 60(Long)
2018-11-17 08:40:27,719 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,719 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,719 [http-nio-8090-exec-6] ==> Parameters: 103(Long)
2018-11-17 08:40:27,721 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,721 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,721 [http-nio-8090-exec-6] ==> Parameters: 95(Long)
2018-11-17 08:40:27,722 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,723 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,723 [http-nio-8090-exec-6] ==> Parameters: 89(Long)
2018-11-17 08:40:27,725 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,726 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,726 [http-nio-8090-exec-6] ==> Parameters: 54(Long)
2018-11-17 08:40:27,728 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,728 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,728 [http-nio-8090-exec-6] ==> Parameters: 52(Long)
2018-11-17 08:40:27,729 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,730 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,730 [http-nio-8090-exec-6] ==> Parameters: 82(Long)
2018-11-17 08:40:27,731 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,733 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,733 [http-nio-8090-exec-6] ==> Parameters: 93(Long)
2018-11-17 08:40:27,734 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,735 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,736 [http-nio-8090-exec-6] ==> Parameters: 100(Long)
2018-11-17 08:40:27,737 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,738 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,738 [http-nio-8090-exec-6] ==> Parameters: 55(Long)
2018-11-17 08:40:27,739 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,741 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,741 [http-nio-8090-exec-6] ==> Parameters: 68(Long)
2018-11-17 08:40:27,742 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,743 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,744 [http-nio-8090-exec-6] ==> Parameters: 46(Long)
2018-11-17 08:40:27,745 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,745 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,746 [http-nio-8090-exec-6] ==> Parameters: 76(Long)
2018-11-17 08:40:27,759 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,760 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,761 [http-nio-8090-exec-6] ==> Parameters: 86(Long)
2018-11-17 08:40:27,761 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,762 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,763 [http-nio-8090-exec-6] ==> Parameters: 104(Long)
2018-11-17 08:40:27,763 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,764 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,765 [http-nio-8090-exec-6] ==> Parameters: 53(Long)
2018-11-17 08:40:27,766 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,767 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,768 [http-nio-8090-exec-6] ==> Parameters: 57(Long)
2018-11-17 08:40:27,768 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,769 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,769 [http-nio-8090-exec-6] ==> Parameters: 70(Long)
2018-11-17 08:40:27,770 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,771 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,771 [http-nio-8090-exec-6] ==> Parameters: 64(Long)
2018-11-17 08:40:27,772 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,773 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,773 [http-nio-8090-exec-6] ==> Parameters: 61(Long)
2018-11-17 08:40:27,774 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,775 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,775 [http-nio-8090-exec-6] ==> Parameters: 73(Long)
2018-11-17 08:40:27,776 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,777 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,777 [http-nio-8090-exec-6] ==> Parameters: 84(Long)
2018-11-17 08:40:27,779 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,780 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,780 [http-nio-8090-exec-6] ==> Parameters: 72(Long)
2018-11-17 08:40:27,782 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,784 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,784 [http-nio-8090-exec-6] ==> Parameters: 74(Long)
2018-11-17 08:40:27,786 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,787 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,787 [http-nio-8090-exec-6] ==> Parameters: 18(Long)
2018-11-17 08:40:27,788 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,789 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,790 [http-nio-8090-exec-6] ==> Parameters: 19(Long)
2018-11-17 08:40:27,791 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,792 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,792 [http-nio-8090-exec-6] ==> Parameters: 107(Long)
2018-11-17 08:40:27,793 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,794 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,794 [http-nio-8090-exec-6] ==> Parameters: 75(Long)
2018-11-17 08:40:27,795 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,796 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,796 [http-nio-8090-exec-6] ==> Parameters: 108(Long)
2018-11-17 08:40:27,797 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,798 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,798 [http-nio-8090-exec-6] ==> Parameters: 94(Long)
2018-11-17 08:40:27,799 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,800 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,800 [http-nio-8090-exec-6] ==> Parameters: 85(Long)
2018-11-17 08:40:27,801 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,802 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,802 [http-nio-8090-exec-6] ==> Parameters: 96(Long)
2018-11-17 08:40:27,803 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,804 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,804 [http-nio-8090-exec-6] ==> Parameters: 67(Long)
2018-11-17 08:40:27,805 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,806 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,806 [http-nio-8090-exec-6] ==> Parameters: 50(Long)
2018-11-17 08:40:27,807 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,807 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,808 [http-nio-8090-exec-6] ==> Parameters: 91(Long)
2018-11-17 08:40:27,809 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,810 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,810 [http-nio-8090-exec-6] ==> Parameters: 92(Long)
2018-11-17 08:40:27,811 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,811 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,812 [http-nio-8090-exec-6] ==> Parameters: 65(Long)
2018-11-17 08:40:27,813 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,814 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,814 [http-nio-8090-exec-6] ==> Parameters: 49(Long)
2018-11-17 08:40:27,815 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,815 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,816 [http-nio-8090-exec-6] ==> Parameters: 79(Long)
2018-11-17 08:40:27,817 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,818 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,818 [http-nio-8090-exec-6] ==> Parameters: 78(Long)
2018-11-17 08:40:27,819 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,820 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,821 [http-nio-8090-exec-6] ==> Parameters: 51(Long)
2018-11-17 08:40:27,822 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,822 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,823 [http-nio-8090-exec-6] ==> Parameters: 71(Long)
2018-11-17 08:40:27,824 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,825 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,825 [http-nio-8090-exec-6] ==> Parameters: 98(Long)
2018-11-17 08:40:27,826 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,827 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,828 [http-nio-8090-exec-6] ==> Parameters: 90(Long)
2018-11-17 08:40:27,829 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,830 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,830 [http-nio-8090-exec-6] ==> Parameters: 106(Long)
2018-11-17 08:40:27,831 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,831 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,832 [http-nio-8090-exec-6] ==> Parameters: 47(Long)
2018-11-17 08:40:27,833 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,834 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,835 [http-nio-8090-exec-6] ==> Parameters: 77(Long)
2018-11-17 08:40:27,836 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,837 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,838 [http-nio-8090-exec-6] ==> Parameters: 87(Long)
2018-11-17 08:40:27,839 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,840 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,840 [http-nio-8090-exec-6] ==> Parameters: 56(Long)
2018-11-17 08:40:27,841 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:27,842 [http-nio-8090-exec-6] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:27,842 [http-nio-8090-exec-6] ==> Parameters: 69(Long)
2018-11-17 08:40:27,843 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:30,074 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:30,075 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:30,076 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:40:30,080 [http-nio-8090-exec-5] ==>  Preparing: select u.id from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:30,080 [http-nio-8090-exec-5] ==> Parameters: 20(Long)
2018-11-17 08:40:30,081 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:40:30,215 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:30,216 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:30,217 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:40:30,230 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:40:30,231 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-17 08:40:30,238 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:40:30,240 [http-nio-8090-exec-5] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:40:30,241 [http-nio-8090-exec-5] ==> Parameters: 500(Integer)
2018-11-17 08:40:30,249 [http-nio-8090-exec-5] <==      Total: 282
2018-11-17 08:40:33,082 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:33,083 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:33,084 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:40:33,091 [http-nio-8090-exec-10] ==>  Preparing: delete from sys_role_user where roleId = ? 
2018-11-17 08:40:33,091 [http-nio-8090-exec-10] ==> Parameters: 20(Long)
2018-11-17 08:40:33,102 [http-nio-8090-exec-10] <==    Updates: 1
2018-11-17 08:40:33,388 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:33,388 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:33,389 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:40:33,403 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:33,403 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:33,404 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,406 [http-nio-8090-exec-2] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id order by p.sort asc 
2018-11-17 08:40:33,406 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-17 08:40:33,407 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,407 [http-nio-8090-exec-2] ====> Parameters: 9(Integer)
2018-11-17 08:40:33,408 [http-nio-8090-exec-2] <====      Total: 2
2018-11-17 08:40:33,408 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,408 [http-nio-8090-exec-2] ====> Parameters: 439(Integer)
2018-11-17 08:40:33,409 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,409 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,409 [http-nio-8090-exec-2] ====> Parameters: 461(Integer)
2018-11-17 08:40:33,410 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,410 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,410 [http-nio-8090-exec-2] ====> Parameters: 465(Integer)
2018-11-17 08:40:33,411 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,411 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,412 [http-nio-8090-exec-2] ====> Parameters: 519(Integer)
2018-11-17 08:40:33,412 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,412 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,413 [http-nio-8090-exec-2] ====> Parameters: 481(Integer)
2018-11-17 08:40:33,413 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,413 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,414 [http-nio-8090-exec-2] ====> Parameters: 516(Integer)
2018-11-17 08:40:33,414 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,414 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,415 [http-nio-8090-exec-2] ====> Parameters: 476(Integer)
2018-11-17 08:40:33,415 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,417 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,418 [http-nio-8090-exec-2] ====> Parameters: 456(Integer)
2018-11-17 08:40:33,418 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,419 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,419 [http-nio-8090-exec-2] ====> Parameters: 512(Integer)
2018-11-17 08:40:33,420 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,420 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,420 [http-nio-8090-exec-2] ====> Parameters: 464(Integer)
2018-11-17 08:40:33,421 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,421 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,421 [http-nio-8090-exec-2] ====> Parameters: 492(Integer)
2018-11-17 08:40:33,422 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,422 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,423 [http-nio-8090-exec-2] ====> Parameters: 446(Integer)
2018-11-17 08:40:33,423 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,423 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,424 [http-nio-8090-exec-2] ====> Parameters: 450(Integer)
2018-11-17 08:40:33,424 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,425 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,425 [http-nio-8090-exec-2] ====> Parameters: 518(Integer)
2018-11-17 08:40:33,425 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,426 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,426 [http-nio-8090-exec-2] ====> Parameters: 500(Integer)
2018-11-17 08:40:33,426 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,427 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,427 [http-nio-8090-exec-2] ====> Parameters: 447(Integer)
2018-11-17 08:40:33,428 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,428 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,428 [http-nio-8090-exec-2] ====> Parameters: 463(Integer)
2018-11-17 08:40:33,429 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,429 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,429 [http-nio-8090-exec-2] ====> Parameters: 483(Integer)
2018-11-17 08:40:33,430 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,430 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,430 [http-nio-8090-exec-2] ====> Parameters: 487(Integer)
2018-11-17 08:40:33,431 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,431 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,432 [http-nio-8090-exec-2] ====> Parameters: 521(Integer)
2018-11-17 08:40:33,432 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,433 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,433 [http-nio-8090-exec-2] ====> Parameters: 486(Integer)
2018-11-17 08:40:33,434 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,434 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,435 [http-nio-8090-exec-2] ====> Parameters: 499(Integer)
2018-11-17 08:40:33,435 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,436 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,436 [http-nio-8090-exec-2] ====> Parameters: 458(Integer)
2018-11-17 08:40:33,436 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,437 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,437 [http-nio-8090-exec-2] ====> Parameters: 514(Integer)
2018-11-17 08:40:33,438 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,438 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,438 [http-nio-8090-exec-2] ====> Parameters: 468(Integer)
2018-11-17 08:40:33,439 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,439 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,440 [http-nio-8090-exec-2] ====> Parameters: 517(Integer)
2018-11-17 08:40:33,440 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,440 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,441 [http-nio-8090-exec-2] ====> Parameters: 462(Integer)
2018-11-17 08:40:33,441 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,442 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,442 [http-nio-8090-exec-2] ====> Parameters: 489(Integer)
2018-11-17 08:40:33,443 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,443 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,443 [http-nio-8090-exec-2] ====> Parameters: 490(Integer)
2018-11-17 08:40:33,444 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,444 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,444 [http-nio-8090-exec-2] ====> Parameters: 457(Integer)
2018-11-17 08:40:33,445 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,445 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,446 [http-nio-8090-exec-2] ====> Parameters: 442(Integer)
2018-11-17 08:40:33,446 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,446 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,447 [http-nio-8090-exec-2] ====> Parameters: 510(Integer)
2018-11-17 08:40:33,447 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,447 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,448 [http-nio-8090-exec-2] ====> Parameters: 485(Integer)
2018-11-17 08:40:33,448 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,449 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,450 [http-nio-8090-exec-2] ====> Parameters: 513(Integer)
2018-11-17 08:40:33,451 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,451 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,452 [http-nio-8090-exec-2] ====> Parameters: 496(Integer)
2018-11-17 08:40:33,452 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,453 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,453 [http-nio-8090-exec-2] ====> Parameters: 459(Integer)
2018-11-17 08:40:33,453 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,454 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,454 [http-nio-8090-exec-2] ====> Parameters: 515(Integer)
2018-11-17 08:40:33,455 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,455 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,455 [http-nio-8090-exec-2] ====> Parameters: 506(Integer)
2018-11-17 08:40:33,456 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,456 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,456 [http-nio-8090-exec-2] ====> Parameters: 498(Integer)
2018-11-17 08:40:33,457 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,457 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,458 [http-nio-8090-exec-2] ====> Parameters: 451(Integer)
2018-11-17 08:40:33,458 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,459 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,459 [http-nio-8090-exec-2] ====> Parameters: 448(Integer)
2018-11-17 08:40:33,459 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,460 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,460 [http-nio-8090-exec-2] ====> Parameters: 488(Integer)
2018-11-17 08:40:33,461 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,461 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,461 [http-nio-8090-exec-2] ====> Parameters: 504(Integer)
2018-11-17 08:40:33,462 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,462 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,462 [http-nio-8090-exec-2] ====> Parameters: 511(Integer)
2018-11-17 08:40:33,463 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,463 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,463 [http-nio-8090-exec-2] ====> Parameters: 452(Integer)
2018-11-17 08:40:33,464 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,464 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,465 [http-nio-8090-exec-2] ====> Parameters: 470(Integer)
2018-11-17 08:40:33,465 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,466 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,466 [http-nio-8090-exec-2] ====> Parameters: 440(Integer)
2018-11-17 08:40:33,468 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,468 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,468 [http-nio-8090-exec-2] ====> Parameters: 482(Integer)
2018-11-17 08:40:33,469 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,469 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,470 [http-nio-8090-exec-2] ====> Parameters: 494(Integer)
2018-11-17 08:40:33,470 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,470 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,471 [http-nio-8090-exec-2] ====> Parameters: 520(Integer)
2018-11-17 08:40:33,471 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,472 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,472 [http-nio-8090-exec-2] ====> Parameters: 449(Integer)
2018-11-17 08:40:33,472 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,473 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,473 [http-nio-8090-exec-2] ====> Parameters: 454(Integer)
2018-11-17 08:40:33,474 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,474 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,474 [http-nio-8090-exec-2] ====> Parameters: 472(Integer)
2018-11-17 08:40:33,475 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,475 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,475 [http-nio-8090-exec-2] ====> Parameters: 466(Integer)
2018-11-17 08:40:33,476 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,476 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,477 [http-nio-8090-exec-2] ====> Parameters: 460(Integer)
2018-11-17 08:40:33,477 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,478 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,478 [http-nio-8090-exec-2] ====> Parameters: 475(Integer)
2018-11-17 08:40:33,479 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,479 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,479 [http-nio-8090-exec-2] ====> Parameters: 491(Integer)
2018-11-17 08:40:33,480 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,480 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,480 [http-nio-8090-exec-2] ====> Parameters: 474(Integer)
2018-11-17 08:40:33,481 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,482 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,482 [http-nio-8090-exec-2] ====> Parameters: 477(Integer)
2018-11-17 08:40:33,483 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,484 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,485 [http-nio-8090-exec-2] ====> Parameters: 505(Integer)
2018-11-17 08:40:33,486 [http-nio-8090-exec-2] <====      Total: 2
2018-11-17 08:40:33,486 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,487 [http-nio-8090-exec-2] ====> Parameters: 479(Integer)
2018-11-17 08:40:33,487 [http-nio-8090-exec-2] <====      Total: 3
2018-11-17 08:40:33,488 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,488 [http-nio-8090-exec-2] ====> Parameters: 503(Integer)
2018-11-17 08:40:33,489 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,490 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,491 [http-nio-8090-exec-2] ====> Parameters: 493(Integer)
2018-11-17 08:40:33,492 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,493 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,494 [http-nio-8090-exec-2] ====> Parameters: 507(Integer)
2018-11-17 08:40:33,495 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,496 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,496 [http-nio-8090-exec-2] ====> Parameters: 469(Integer)
2018-11-17 08:40:33,497 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,498 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,498 [http-nio-8090-exec-2] ====> Parameters: 444(Integer)
2018-11-17 08:40:33,500 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,501 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,502 [http-nio-8090-exec-2] ====> Parameters: 501(Integer)
2018-11-17 08:40:33,503 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,504 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,504 [http-nio-8090-exec-2] ====> Parameters: 502(Integer)
2018-11-17 08:40:33,505 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,506 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,506 [http-nio-8090-exec-2] ====> Parameters: 467(Integer)
2018-11-17 08:40:33,507 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,508 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,508 [http-nio-8090-exec-2] ====> Parameters: 443(Integer)
2018-11-17 08:40:33,509 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,510 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,510 [http-nio-8090-exec-2] ====> Parameters: 484(Integer)
2018-11-17 08:40:33,511 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,512 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,512 [http-nio-8090-exec-2] ====> Parameters: 480(Integer)
2018-11-17 08:40:33,513 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,513 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,513 [http-nio-8090-exec-2] ====> Parameters: 445(Integer)
2018-11-17 08:40:33,514 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,515 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,516 [http-nio-8090-exec-2] ====> Parameters: 473(Integer)
2018-11-17 08:40:33,518 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,519 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,519 [http-nio-8090-exec-2] ====> Parameters: 509(Integer)
2018-11-17 08:40:33,520 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,521 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,521 [http-nio-8090-exec-2] ====> Parameters: 497(Integer)
2018-11-17 08:40:33,522 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,522 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,523 [http-nio-8090-exec-2] ====> Parameters: 522(Integer)
2018-11-17 08:40:33,523 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,524 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,524 [http-nio-8090-exec-2] ====> Parameters: 441(Integer)
2018-11-17 08:40:33,524 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,525 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,525 [http-nio-8090-exec-2] ====> Parameters: 478(Integer)
2018-11-17 08:40:33,526 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,526 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,526 [http-nio-8090-exec-2] ====> Parameters: 495(Integer)
2018-11-17 08:40:33,527 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,527 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,527 [http-nio-8090-exec-2] ====> Parameters: 453(Integer)
2018-11-17 08:40:33,528 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,528 [http-nio-8090-exec-2] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:40:33,528 [http-nio-8090-exec-2] ====> Parameters: 471(Integer)
2018-11-17 08:40:33,529 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:40:33,529 [http-nio-8090-exec-2] <==      Total: 83
2018-11-17 08:40:33,530 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,530 [http-nio-8090-exec-2] ==> Parameters: 1(Long)
2018-11-17 08:40:33,531 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,532 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,532 [http-nio-8090-exec-2] ==> Parameters: 20(Long)
2018-11-17 08:40:33,534 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,534 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,535 [http-nio-8090-exec-2] ==> Parameters: 21(Long)
2018-11-17 08:40:33,535 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,536 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,536 [http-nio-8090-exec-2] ==> Parameters: 22(Long)
2018-11-17 08:40:33,537 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,538 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,538 [http-nio-8090-exec-2] ==> Parameters: 23(Long)
2018-11-17 08:40:33,539 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,540 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,540 [http-nio-8090-exec-2] ==> Parameters: 24(Long)
2018-11-17 08:40:33,541 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,541 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,541 [http-nio-8090-exec-2] ==> Parameters: 25(Long)
2018-11-17 08:40:33,542 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,543 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,543 [http-nio-8090-exec-2] ==> Parameters: 26(Long)
2018-11-17 08:40:33,544 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,545 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,545 [http-nio-8090-exec-2] ==> Parameters: 27(Long)
2018-11-17 08:40:33,547 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,547 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,547 [http-nio-8090-exec-2] ==> Parameters: 28(Long)
2018-11-17 08:40:33,548 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,549 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,549 [http-nio-8090-exec-2] ==> Parameters: 31(Long)
2018-11-17 08:40:33,550 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,551 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,552 [http-nio-8090-exec-2] ==> Parameters: 32(Long)
2018-11-17 08:40:33,553 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,554 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,554 [http-nio-8090-exec-2] ==> Parameters: 33(Long)
2018-11-17 08:40:33,555 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,556 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,556 [http-nio-8090-exec-2] ==> Parameters: 34(Long)
2018-11-17 08:40:33,557 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,558 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,558 [http-nio-8090-exec-2] ==> Parameters: 35(Long)
2018-11-17 08:40:33,559 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,559 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,560 [http-nio-8090-exec-2] ==> Parameters: 36(Long)
2018-11-17 08:40:33,561 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,561 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,561 [http-nio-8090-exec-2] ==> Parameters: 38(Long)
2018-11-17 08:40:33,562 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,563 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,563 [http-nio-8090-exec-2] ==> Parameters: 37(Long)
2018-11-17 08:40:33,565 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,566 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,566 [http-nio-8090-exec-2] ==> Parameters: 40(Long)
2018-11-17 08:40:33,567 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,567 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,568 [http-nio-8090-exec-2] ==> Parameters: 41(Long)
2018-11-17 08:40:33,568 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,569 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,569 [http-nio-8090-exec-2] ==> Parameters: 42(Long)
2018-11-17 08:40:33,570 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,571 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,571 [http-nio-8090-exec-2] ==> Parameters: 43(Long)
2018-11-17 08:40:33,572 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,573 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,573 [http-nio-8090-exec-2] ==> Parameters: 44(Long)
2018-11-17 08:40:33,580 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,581 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,582 [http-nio-8090-exec-2] ==> Parameters: 45(Long)
2018-11-17 08:40:33,583 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,583 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,583 [http-nio-8090-exec-2] ==> Parameters: 59(Long)
2018-11-17 08:40:33,585 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,586 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,586 [http-nio-8090-exec-2] ==> Parameters: 102(Long)
2018-11-17 08:40:33,587 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,588 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,588 [http-nio-8090-exec-2] ==> Parameters: 66(Long)
2018-11-17 08:40:33,590 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,590 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,591 [http-nio-8090-exec-2] ==> Parameters: 105(Long)
2018-11-17 08:40:33,592 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,592 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,593 [http-nio-8090-exec-2] ==> Parameters: 63(Long)
2018-11-17 08:40:33,594 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,595 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,595 [http-nio-8090-exec-2] ==> Parameters: 81(Long)
2018-11-17 08:40:33,596 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,598 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,598 [http-nio-8090-exec-2] ==> Parameters: 83(Long)
2018-11-17 08:40:33,602 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,603 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,604 [http-nio-8090-exec-2] ==> Parameters: 58(Long)
2018-11-17 08:40:33,605 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,606 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,606 [http-nio-8090-exec-2] ==> Parameters: 48(Long)
2018-11-17 08:40:33,607 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,607 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,608 [http-nio-8090-exec-2] ==> Parameters: 99(Long)
2018-11-17 08:40:33,608 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,609 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,609 [http-nio-8090-exec-2] ==> Parameters: 80(Long)
2018-11-17 08:40:33,610 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,610 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,611 [http-nio-8090-exec-2] ==> Parameters: 101(Long)
2018-11-17 08:40:33,612 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,613 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,613 [http-nio-8090-exec-2] ==> Parameters: 88(Long)
2018-11-17 08:40:33,614 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,615 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,616 [http-nio-8090-exec-2] ==> Parameters: 60(Long)
2018-11-17 08:40:33,617 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,618 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,618 [http-nio-8090-exec-2] ==> Parameters: 103(Long)
2018-11-17 08:40:33,619 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,620 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,620 [http-nio-8090-exec-2] ==> Parameters: 95(Long)
2018-11-17 08:40:33,621 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,622 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,622 [http-nio-8090-exec-2] ==> Parameters: 89(Long)
2018-11-17 08:40:33,623 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,624 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,625 [http-nio-8090-exec-2] ==> Parameters: 54(Long)
2018-11-17 08:40:33,626 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,627 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,627 [http-nio-8090-exec-2] ==> Parameters: 52(Long)
2018-11-17 08:40:33,628 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,629 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,630 [http-nio-8090-exec-2] ==> Parameters: 82(Long)
2018-11-17 08:40:33,630 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,631 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,632 [http-nio-8090-exec-2] ==> Parameters: 93(Long)
2018-11-17 08:40:33,633 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,634 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,634 [http-nio-8090-exec-2] ==> Parameters: 100(Long)
2018-11-17 08:40:33,635 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,636 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,636 [http-nio-8090-exec-2] ==> Parameters: 55(Long)
2018-11-17 08:40:33,637 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,638 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,638 [http-nio-8090-exec-2] ==> Parameters: 68(Long)
2018-11-17 08:40:33,639 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,640 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,640 [http-nio-8090-exec-2] ==> Parameters: 46(Long)
2018-11-17 08:40:33,641 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,641 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,641 [http-nio-8090-exec-2] ==> Parameters: 76(Long)
2018-11-17 08:40:33,642 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,643 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,643 [http-nio-8090-exec-2] ==> Parameters: 86(Long)
2018-11-17 08:40:33,644 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,645 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,645 [http-nio-8090-exec-2] ==> Parameters: 104(Long)
2018-11-17 08:40:33,646 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,647 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,647 [http-nio-8090-exec-2] ==> Parameters: 53(Long)
2018-11-17 08:40:33,649 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,650 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,650 [http-nio-8090-exec-2] ==> Parameters: 57(Long)
2018-11-17 08:40:33,651 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,652 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,653 [http-nio-8090-exec-2] ==> Parameters: 70(Long)
2018-11-17 08:40:33,654 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,655 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,655 [http-nio-8090-exec-2] ==> Parameters: 64(Long)
2018-11-17 08:40:33,656 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,657 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,657 [http-nio-8090-exec-2] ==> Parameters: 61(Long)
2018-11-17 08:40:33,658 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,658 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,659 [http-nio-8090-exec-2] ==> Parameters: 73(Long)
2018-11-17 08:40:33,659 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,660 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,661 [http-nio-8090-exec-2] ==> Parameters: 84(Long)
2018-11-17 08:40:33,661 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,662 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,662 [http-nio-8090-exec-2] ==> Parameters: 72(Long)
2018-11-17 08:40:33,663 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,664 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,664 [http-nio-8090-exec-2] ==> Parameters: 74(Long)
2018-11-17 08:40:33,665 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,666 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,666 [http-nio-8090-exec-2] ==> Parameters: 18(Long)
2018-11-17 08:40:33,667 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,668 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,669 [http-nio-8090-exec-2] ==> Parameters: 19(Long)
2018-11-17 08:40:33,670 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,670 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,671 [http-nio-8090-exec-2] ==> Parameters: 107(Long)
2018-11-17 08:40:33,671 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,672 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,672 [http-nio-8090-exec-2] ==> Parameters: 75(Long)
2018-11-17 08:40:33,673 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,674 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,674 [http-nio-8090-exec-2] ==> Parameters: 108(Long)
2018-11-17 08:40:33,681 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,682 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,682 [http-nio-8090-exec-2] ==> Parameters: 94(Long)
2018-11-17 08:40:33,683 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,684 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,685 [http-nio-8090-exec-2] ==> Parameters: 85(Long)
2018-11-17 08:40:33,686 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,686 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,687 [http-nio-8090-exec-2] ==> Parameters: 96(Long)
2018-11-17 08:40:33,687 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,688 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,688 [http-nio-8090-exec-2] ==> Parameters: 67(Long)
2018-11-17 08:40:33,689 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,690 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,690 [http-nio-8090-exec-2] ==> Parameters: 50(Long)
2018-11-17 08:40:33,691 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,691 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,692 [http-nio-8090-exec-2] ==> Parameters: 91(Long)
2018-11-17 08:40:33,693 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,694 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,694 [http-nio-8090-exec-2] ==> Parameters: 92(Long)
2018-11-17 08:40:33,695 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,695 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,696 [http-nio-8090-exec-2] ==> Parameters: 65(Long)
2018-11-17 08:40:33,696 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,697 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,697 [http-nio-8090-exec-2] ==> Parameters: 49(Long)
2018-11-17 08:40:33,698 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,699 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,700 [http-nio-8090-exec-2] ==> Parameters: 79(Long)
2018-11-17 08:40:33,701 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,702 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,703 [http-nio-8090-exec-2] ==> Parameters: 78(Long)
2018-11-17 08:40:33,708 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,709 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,710 [http-nio-8090-exec-2] ==> Parameters: 51(Long)
2018-11-17 08:40:33,711 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,711 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,711 [http-nio-8090-exec-2] ==> Parameters: 71(Long)
2018-11-17 08:40:33,712 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,713 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,713 [http-nio-8090-exec-2] ==> Parameters: 98(Long)
2018-11-17 08:40:33,714 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,715 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,715 [http-nio-8090-exec-2] ==> Parameters: 90(Long)
2018-11-17 08:40:33,717 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,717 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,718 [http-nio-8090-exec-2] ==> Parameters: 106(Long)
2018-11-17 08:40:33,719 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,719 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,720 [http-nio-8090-exec-2] ==> Parameters: 47(Long)
2018-11-17 08:40:33,720 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,721 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,721 [http-nio-8090-exec-2] ==> Parameters: 77(Long)
2018-11-17 08:40:33,722 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,722 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,723 [http-nio-8090-exec-2] ==> Parameters: 87(Long)
2018-11-17 08:40:33,724 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,724 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,725 [http-nio-8090-exec-2] ==> Parameters: 56(Long)
2018-11-17 08:40:33,725 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:33,726 [http-nio-8090-exec-2] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:40:33,727 [http-nio-8090-exec-2] ==> Parameters: 69(Long)
2018-11-17 08:40:33,728 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:40:57,120 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:57,120 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:57,121 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:40:57,126 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:40:57,127 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-17 08:40:57,133 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:40:57,134 [http-nio-8090-exec-3] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:40:57,134 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:57,134 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:57,134 [http-nio-8090-exec-3] ==> Parameters: 10(Integer)
2018-11-17 08:40:57,135 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:40:57,140 [http-nio-8090-exec-3] <==      Total: 10
2018-11-17 08:40:58,414 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:58,414 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:58,415 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:58,425 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:40:58,426 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-17 08:40:58,426 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:40:58,435 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:58,435 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:58,437 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:40:59,915 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:40:59,915 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:40:59,916 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:40:59,926 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:40:59,928 [http-nio-8090-exec-6] ==> Parameters: 9(Long)
2018-11-17 08:40:59,930 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:41:00,693 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:00,694 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:00,695 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:00,809 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:00,810 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:00,811 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:00,818 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:41:00,818 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-17 08:41:00,819 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:00,820 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:41:00,820 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-17 08:41:00,820 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:02,137 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:02,138 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:02,139 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:02,146 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:41:02,148 [http-nio-8090-exec-1] ==> Parameters: 9(Long)
2018-11-17 08:41:02,148 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:03,093 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:03,094 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:03,095 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:03,102 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:41:03,104 [http-nio-8090-exec-7] ==> Parameters: 9(Long)
2018-11-17 08:41:03,105 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:16,018 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:16,018 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:16,019 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:41:29,288 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:29,288 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:29,290 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:29,295 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:29,295 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:41:29,296 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:29,297 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:29,299 [http-nio-8090-exec-7] ==> Parameters: 10(Integer), 10(Integer)
2018-11-17 08:41:29,303 [http-nio-8090-exec-7] <==      Total: 10
2018-11-17 08:41:29,862 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:29,863 [http-nio-8090-exec-4] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:29,864 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:41:29,869 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:29,870 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-17 08:41:29,870 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:41:29,871 [http-nio-8090-exec-4] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:29,872 [http-nio-8090-exec-4] ==> Parameters: 20(Integer), 10(Integer)
2018-11-17 08:41:29,876 [http-nio-8090-exec-4] <==      Total: 10
2018-11-17 08:41:30,501 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:30,501 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:30,502 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:30,506 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:30,507 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-17 08:41:30,507 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:30,508 [http-nio-8090-exec-1] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:30,509 [http-nio-8090-exec-1] ==> Parameters: 30(Integer), 10(Integer)
2018-11-17 08:41:30,521 [http-nio-8090-exec-1] <==      Total: 10
2018-11-17 08:41:31,172 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:31,173 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:31,173 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:41:31,177 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:31,178 [http-nio-8090-exec-9] ==> Parameters: 
2018-11-17 08:41:31,178 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:41:31,179 [http-nio-8090-exec-9] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:31,179 [http-nio-8090-exec-9] ==> Parameters: 40(Integer), 10(Integer)
2018-11-17 08:41:31,197 [http-nio-8090-exec-9] <==      Total: 10
2018-11-17 08:41:31,741 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:31,741 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:31,742 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:41:31,752 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:31,752 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:41:31,753 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:41:31,754 [http-nio-8090-exec-6] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:31,754 [http-nio-8090-exec-6] ==> Parameters: 50(Integer), 10(Integer)
2018-11-17 08:41:31,759 [http-nio-8090-exec-6] <==      Total: 10
2018-11-17 08:41:32,261 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:32,262 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:32,262 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:41:32,275 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:32,275 [http-nio-8090-exec-2] ==> Parameters: 
2018-11-17 08:41:32,276 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:41:32,277 [http-nio-8090-exec-2] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:32,278 [http-nio-8090-exec-2] ==> Parameters: 60(Integer), 10(Integer)
2018-11-17 08:41:32,282 [http-nio-8090-exec-2] <==      Total: 10
2018-11-17 08:41:32,817 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:32,817 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:32,817 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:41:32,821 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:32,822 [http-nio-8090-exec-8] ==> Parameters: 
2018-11-17 08:41:32,823 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:41:32,823 [http-nio-8090-exec-8] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:32,824 [http-nio-8090-exec-8] ==> Parameters: 70(Integer), 10(Integer)
2018-11-17 08:41:32,829 [http-nio-8090-exec-8] <==      Total: 10
2018-11-17 08:41:33,357 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:33,358 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:33,359 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:33,363 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:33,364 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-17 08:41:33,364 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:33,365 [http-nio-8090-exec-10] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:33,365 [http-nio-8090-exec-10] ==> Parameters: 80(Integer), 10(Integer)
2018-11-17 08:41:33,370 [http-nio-8090-exec-10] <==      Total: 10
2018-11-17 08:41:33,940 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:33,941 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:33,941 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:41:33,945 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:33,946 [http-nio-8090-exec-3] ==> Parameters: 
2018-11-17 08:41:33,947 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:41:33,948 [http-nio-8090-exec-3] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:33,948 [http-nio-8090-exec-3] ==> Parameters: 90(Integer), 10(Integer)
2018-11-17 08:41:33,963 [http-nio-8090-exec-3] <==      Total: 10
2018-11-17 08:41:34,660 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:34,660 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:34,661 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:41:34,664 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:34,664 [http-nio-8090-exec-5] ==> Parameters: 
2018-11-17 08:41:34,665 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:41:34,665 [http-nio-8090-exec-5] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:34,665 [http-nio-8090-exec-5] ==> Parameters: 100(Integer), 10(Integer)
2018-11-17 08:41:34,669 [http-nio-8090-exec-5] <==      Total: 10
2018-11-17 08:41:35,317 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:35,317 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:35,318 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:35,321 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:35,322 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:41:35,323 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:35,323 [http-nio-8090-exec-7] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ?, ? 
2018-11-17 08:41:35,323 [http-nio-8090-exec-7] ==> Parameters: 110(Integer), 10(Integer)
2018-11-17 08:41:35,338 [http-nio-8090-exec-7] <==      Total: 10
2018-11-17 08:41:36,868 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:36,869 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:36,871 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:41:36,877 [http-nio-8090-exec-9] ==>  Preparing: select p.* from t_dict p where p.type= ? order by p.sort asc 
2018-11-17 08:41:36,878 [http-nio-8090-exec-9] ==> Parameters: sex(String)
2018-11-17 08:41:36,879 [http-nio-8090-exec-9] <==      Total: 2
2018-11-17 08:41:36,908 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:36,909 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:36,910 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:36,913 [http-nio-8090-exec-10] ==>  Preparing: select * from sys_user t where t.id = ? 
2018-11-17 08:41:36,914 [http-nio-8090-exec-10] ==> Parameters: 4668(Long)
2018-11-17 08:41:36,915 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:41:38,764 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:38,764 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:38,765 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:38,769 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId) table_count 
2018-11-17 08:41:38,770 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-17 08:41:38,774 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:41:38,776 [http-nio-8090-exec-1] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId order by su.createTime desc LIMIT ? 
2018-11-17 08:41:38,777 [http-nio-8090-exec-1] ==> Parameters: 10(Integer)
2018-11-17 08:41:38,778 [http-nio-8090-exec-1] <==      Total: 10
2018-11-17 08:41:38,785 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:38,786 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:38,788 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:41:40,848 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:40,849 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:40,850 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:41:40,873 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:41:40,873 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:41:40,874 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:41:40,877 [http-nio-8090-exec-7] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-17 08:41:40,877 [http-nio-8090-exec-7] ==> Parameters: 
2018-11-17 08:41:40,879 [http-nio-8090-exec-7] <==      Total: 37
2018-11-17 08:42:03,260 [http-nio-8090-exec-9] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-17 08:42:03,261 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-17 08:42:03.26(Timestamp)
2018-11-17 08:42:03,263 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-17 08:42:03,265 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:03,265 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,266 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:03,266 [http-nio-8090-exec-9] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:42:03,267 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-17 08:42:03,269 [http-nio-8090-exec-9] <==      Total: 37
2018-11-17 08:42:03,270 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:03,270 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,271 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:03,273 [http-nio-8090-exec-9] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-17 08:42:03,275 [http-nio-8090-exec-9] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542422523269,"id":10,"loginTime":1542415323269,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"c90a6064-4f8a-46ef-bf10-4d582b5ce4c2","username":"wuzhihua"}(String), 2018-11-17 10:42:03.269(Timestamp), 2018-11-17 08:42:03.271(Timestamp), c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,278 [http-nio-8090-exec-9] <==    Updates: 1
2018-11-17 08:42:03,381 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:03,382 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,384 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:03,419 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:03,420 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,421 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:42:03,526 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:03,526 [http-nio-8090-exec-4] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:03,527 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:03,529 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:42:03,529 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:03,532 [http-nio-8090-exec-4] <==      Total: 2
2018-11-17 08:42:03,534 [http-nio-8090-exec-4] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:42:03,536 [http-nio-8090-exec-4] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:03,538 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:05,081 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:05,083 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:05,084 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:05,103 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:05,105 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:05,107 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:05,109 [http-nio-8090-exec-1] ==>  Preparing: select * from sys_permission t order by t.sort 
2018-11-17 08:42:05,110 [http-nio-8090-exec-1] ==> Parameters: 
2018-11-17 08:42:05,111 [http-nio-8090-exec-1] <==      Total: 37
2018-11-17 08:42:06,030 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:06,030 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:06,032 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:06,038 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM (SELECT sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime, GROUP_CONCAT(sr.id SEPARATOR '、') AS roleIds, GROUP_CONCAT(sr.name SEPARATOR '、') AS roleNames FROM sys_project sp LEFT JOIN proj_role_relation prr ON sp.id = prr.proj_id LEFT JOIN sys_role sr ON sr.id = prr.role_id WHERE 1 = 1 AND sp.id = ? GROUP BY sp.id, sp.proj_name, sp.proj_code, sp.proj_intro, sp.sort, sp.createTime, sp.updateTime) table_count 
2018-11-17 08:42:06,041 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-17 08:42:06,049 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:06,050 [http-nio-8090-exec-7] ==>  Preparing: select sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime ,group_concat(sr.id separator '、') as roleIds ,group_concat(sr.name separator '、') as roleNames from sys_project sp left join proj_role_relation prr on sp.id=prr.proj_id left join sys_role sr on sr.id=prr.role_id where 1=1 and sp.id=? group by sp.id,sp.proj_name,sp.proj_code,sp.proj_intro,sp.sort,sp.createTime,sp.updateTime order by sp.sort LIMIT ? 
2018-11-17 08:42:06,052 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:06,054 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:15,860 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:15,860 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:15,861 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:15,878 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:15,878 [http-nio-8090-exec-4] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:15,879 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:15,886 [http-nio-8090-exec-4] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-17 08:42:15,888 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-17 08:42:15,889 [http-nio-8090-exec-4] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:42:15,890 [http-nio-8090-exec-4] ====> Parameters: 479(Integer)
2018-11-17 08:42:15,891 [http-nio-8090-exec-4] <====      Total: 3
2018-11-17 08:42:15,891 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:17,328 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:17,329 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:17,330 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:42:17,333 [http-nio-8090-exec-3] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-17 08:42:17,335 [http-nio-8090-exec-3] ==> Parameters: 479(Long)
2018-11-17 08:42:17,337 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:42:17,338 [http-nio-8090-exec-3] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-17 08:42:17,340 [http-nio-8090-exec-3] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:17,342 [http-nio-8090-exec-3] <==      Total: 7
2018-11-17 08:42:17,344 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:17,345 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:17,347 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:42:22,899 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:22,899 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:22,900 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:22,904 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM (SELECT DISTINCT su.id, su.username, su.nickname, su.phone, su.telephone, su.email, su.birthday, su.sex, su.status, su.createTime FROM sys_user su, sys_role_user ru, sys_role r, proj_role_relation pr, sys_project p WHERE 1 = 1 AND p.id = pr.proj_id AND pr.role_id = r.id AND r.id = ru.roleId AND su.id = ru.userId AND p.id = ?) table_count 
2018-11-17 08:42:22,905 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-17 08:42:22,906 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:22,906 [http-nio-8090-exec-1] ==>  Preparing: select distinct su.id ,su.username ,su.nickname ,su.phone ,su.telephone ,su.email ,su.birthday ,su.sex ,su.status ,su.createTime from sys_user su ,sys_role_user ru ,sys_role r ,proj_role_relation pr ,sys_project p where 1=1 and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and su.id=ru.userId and p.id=? order by su.createTime desc LIMIT ? 
2018-11-17 08:42:22,907 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 50(Integer)
2018-11-17 08:42:22,909 [http-nio-8090-exec-1] <==      Total: 7
2018-11-17 08:42:24,313 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:24,314 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:24,318 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:42:24,334 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:24,334 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:24,335 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:24,336 [http-nio-8090-exec-10] ==>  Preparing: select distinct p.* from sys_project p ,proj_role_relation r where p.id=r.proj_id and p.id=? order by p.sort asc 
2018-11-17 08:42:24,337 [http-nio-8090-exec-10] ==> Parameters: 479(Long)
2018-11-17 08:42:24,337 [http-nio-8090-exec-10] ====>  Preparing: select sr.* from sys_role sr ,proj_role_relation prr where 1=1 and sr.id=prr.role_id and prr.proj_id=? order by sr.sort 
2018-11-17 08:42:24,337 [http-nio-8090-exec-10] ====> Parameters: 479(Integer)
2018-11-17 08:42:24,338 [http-nio-8090-exec-10] <====      Total: 3
2018-11-17 08:42:24,338 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:24,338 [http-nio-8090-exec-10] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:42:24,339 [http-nio-8090-exec-10] ==> Parameters: 107(Long)
2018-11-17 08:42:24,340 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:24,340 [http-nio-8090-exec-10] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:42:24,341 [http-nio-8090-exec-10] ==> Parameters: 75(Long)
2018-11-17 08:42:24,341 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:24,341 [http-nio-8090-exec-10] ==>  Preparing: select group_concat(u.username separator '、') from sys_role_user r ,sys_user u where u.id=r.userId and r.roleId =? 
2018-11-17 08:42:24,342 [http-nio-8090-exec-10] ==> Parameters: 108(Long)
2018-11-17 08:42:24,342 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:26,527 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:26,527 [http-nio-8090-exec-4] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:26,528 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:26,531 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:26,532 [http-nio-8090-exec-4] ==> Parameters: 479(Long)
2018-11-17 08:42:26,533 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:26,535 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 08:42:26,536 [http-nio-8090-exec-4] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:26,538 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 08:42:26,541 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:26,543 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:26,544 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:29,168 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:29,169 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:29,169 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:29,172 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:29,173 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-17 08:42:29,174 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:29,176 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-17 08:42:29,177 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 3(Integer)
2018-11-17 08:42:29,180 [http-nio-8090-exec-2] <==      Total: 3
2018-11-17 08:42:30,517 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:30,518 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:30,520 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:30,625 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:30,626 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:30,627 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:30,630 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:42:30,631 [http-nio-8090-exec-10] ==> Parameters: 
2018-11-17 08:42:30,632 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:30,632 [http-nio-8090-exec-10] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:42:30,633 [http-nio-8090-exec-10] ==> Parameters: 10(Integer)
2018-11-17 08:42:30,634 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:31,742 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:31,743 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:31,744 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:31,747 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:31,748 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-17 08:42:31,749 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:31,750 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_station_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-17 08:42:31,751 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:31,753 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:33,278 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:33,279 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:33,280 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:33,282 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:33,283 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-17 08:42:33,284 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:33,285 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_cell_check lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-17 08:42:33,286 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:33,289 [http-nio-8090-exec-5] <==      Total: 3
2018-11-17 08:42:39,598 [http-nio-8090-exec-7] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-17 08:42:39,599 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 9(Long), 2018-11-17 08:42:39.598(Timestamp)
2018-11-17 08:42:39,603 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-17 08:42:39,604 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:39,604 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,605 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:39,605 [http-nio-8090-exec-7] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:42:39,606 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String), 9(Long)
2018-11-17 08:42:39,609 [http-nio-8090-exec-7] <==      Total: 37
2018-11-17 08:42:39,610 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:39,610 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,611 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:39,612 [http-nio-8090-exec-7] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-17 08:42:39,613 [http-nio-8090-exec-7] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542422559609,"id":10,"loginTime":1542415359609,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":9,"sex":0,"status":1,"telephone":"18301601124","token":"c90a6064-4f8a-46ef-bf10-4d582b5ce4c2","username":"wuzhihua"}(String), 2018-11-17 10:42:39.609(Timestamp), 2018-11-17 08:42:39.611(Timestamp), c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,617 [http-nio-8090-exec-7] <==    Updates: 1
2018-11-17 08:42:39,739 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:39,740 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,741 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:42:39,787 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:39,787 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,789 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:39,886 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:39,887 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:39,888 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:39,889 [http-nio-8090-exec-5] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:42:39,891 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:39,893 [http-nio-8090-exec-5] <==      Total: 2
2018-11-17 08:42:39,895 [http-nio-8090-exec-5] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:42:39,896 [http-nio-8090-exec-5] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:39,900 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:41,240 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:41,241 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:41,242 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:41,245 [http-nio-8090-exec-9] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:41,246 [http-nio-8090-exec-9] ==> Parameters: 9(Long)
2018-11-17 08:42:41,246 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:42:41,278 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:41,278 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:41,278 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:42:41,841 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:41,842 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:41,843 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:41,845 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:41,846 [http-nio-8090-exec-2] ==> Parameters: 9(Long)
2018-11-17 08:42:41,847 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:42,253 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:42,254 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:42,254 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:42:42,379 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:42,379 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:42,380 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:42:42,382 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 08:42:42,383 [http-nio-8090-exec-6] ==> Parameters: 
2018-11-17 08:42:42,383 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:42:42,384 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 08:42:42,384 [http-nio-8090-exec-6] ==> Parameters: 10(Integer)
2018-11-17 08:42:42,385 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:42:42,997 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:42,998 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:42,999 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:43,001 [http-nio-8090-exec-10] ==>  Preparing: SELECT count(0) FROM lte_station_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:43,002 [http-nio-8090-exec-10] ==> Parameters: 9(Long)
2018-11-17 08:42:43,003 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:43,816 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:43,816 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:43,817 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:43,820 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_cell_check lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:43,820 [http-nio-8090-exec-1] ==> Parameters: 9(Long)
2018-11-17 08:42:43,821 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:53,913 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:53,913 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:53,914 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:53,917 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:53,917 [http-nio-8090-exec-5] ==> Parameters: 9(Long)
2018-11-17 08:42:53,918 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:53,930 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:53,930 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:53,931 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:42:56,020 [http-nio-8090-exec-1] ==>  Preparing: insert into sys_login_service(username,proj,createTime) values(?,?,?) 
2018-11-17 08:42:56,020 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 479(Long), 2018-11-17 08:42:56.019(Timestamp)
2018-11-17 08:42:56,025 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-17 08:42:56,027 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:56,027 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,028 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:56,028 [http-nio-8090-exec-1] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 08:42:56,028 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-17 08:42:56,029 [http-nio-8090-exec-1] <==      Total: 37
2018-11-17 08:42:56,030 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:56,030 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,031 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 08:42:56,032 [http-nio-8090-exec-1] ==>  Preparing: update t_token t set t.val = ?, t.expireTime = ?, t.updateTime = ? where t.id = ? 
2018-11-17 08:42:56,033 [http-nio-8090-exec-1] ==> Parameters: {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542422576030,"id":10,"loginTime":1542415376030,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"c90a6064-4f8a-46ef-bf10-4d582b5ce4c2","username":"wuzhihua"}(String), 2018-11-17 10:42:56.03(Timestamp), 2018-11-17 08:42:56.031(Timestamp), c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,037 [http-nio-8090-exec-1] <==    Updates: 1
2018-11-17 08:42:56,148 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:56,149 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,150 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:42:56,182 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:56,183 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,183 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 08:42:56,295 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:56,296 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:56,297 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:56,299 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:42:56,299 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:56,301 [http-nio-8090-exec-7] <==      Total: 2
2018-11-17 08:42:56,303 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:42:56,304 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-17 08:42:56,307 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:42:58,022 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:58,022 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:58,023 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:58,023 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:58,023 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:58,023 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:58,026 [http-nio-8090-exec-2] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:42:58,027 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-17 08:42:58,028 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:58,029 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 08:42:58,030 [http-nio-8090-exec-2] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:42:58,031 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:59,900 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:59,901 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:59,901 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:59,903 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:42:59,903 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:42:59,904 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-17 08:42:59,904 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:59,906 [http-nio-8090-exec-5] ==> Parameters: 10(Long), LtePlan(String)
2018-11-17 08:42:59,909 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:42:59,910 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 08:42:59,912 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-17 08:42:59,912 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 08:42:59,914 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 08:42:59,917 [http-nio-8090-exec-2] <====      Total: 3
2018-11-17 08:42:59,919 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 08:42:59,920 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 08:42:59,923 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:42:59,925 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 08:42:59,928 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 08:42:59,928 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 08:42:59,929 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 08:42:59,929 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 08:42:59,930 [http-nio-8090-exec-2] <====      Total: 3
2018-11-17 08:42:59,931 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:42:59,931 [http-nio-8090-exec-2] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-17 08:42:59,932 [http-nio-8090-exec-2] ==> Parameters: 479(Long)
2018-11-17 08:42:59,933 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 08:49:35,204 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:49:35,204 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:49:35,205 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:49:35,258 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:49:35,259 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:49:35,261 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:49:35,370 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:49:35,370 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:49:35,371 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:49:35,374 [http-nio-8090-exec-3] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:49:35,375 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-17 08:49:35,379 [http-nio-8090-exec-3] <==      Total: 2
2018-11-17 08:49:35,382 [http-nio-8090-exec-3] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:49:35,383 [http-nio-8090-exec-3] ==> Parameters: wuzhihua(String)
2018-11-17 08:49:35,385 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 08:49:36,739 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:49:36,740 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:49:36,741 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:49:36,744 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:49:36,745 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-17 08:49:36,746 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:49:36,746 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 08:49:36,747 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:49:36,748 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:49:36,756 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:49:36,757 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:49:36,758 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:50:41,991 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:50:41,992 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:50:41,992 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 08:50:42,059 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:50:42,060 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:50:42,060 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:50:42,135 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:50:42,136 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:50:42,137 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:50:42,139 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 08:50:42,140 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 08:50:42,140 [http-nio-8090-exec-8] <==      Total: 2
2018-11-17 08:50:42,141 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 08:50:42,142 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 08:50:42,145 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:50:45,494 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:50:45,496 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:50:45,497 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:50:45,503 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:50:45,503 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:50:45,504 [http-nio-8090-exec-5] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:50:45,504 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 08:50:45,504 [http-nio-8090-exec-5] ==> Parameters: 479(Long)
2018-11-17 08:50:45,505 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:50:45,506 [http-nio-8090-exec-5] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 08:50:45,507 [http-nio-8090-exec-5] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 08:50:45,508 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:51:19,520 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:51:19,521 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:51:19,521 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:51:19,528 [http-nio-8090-exec-5] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-17 08:51:19,528 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:51:19,529 [http-nio-8090-exec-5] ==> Parameters: 10(Long), LtePlan(String)
2018-11-17 08:51:19,529 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:51:19,529 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 08:51:19,530 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:51:19,531 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 08:51:19,532 [http-nio-8090-exec-8] ==> Parameters: 10(Long)
2018-11-17 08:51:19,534 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 08:51:19,536 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 08:51:19,538 [http-nio-8090-exec-8] <====      Total: 3
2018-11-17 08:51:19,539 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 08:51:19,541 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 08:51:19,543 [http-nio-8090-exec-8] <====      Total: 1
2018-11-17 08:51:19,545 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 08:51:19,547 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 08:51:19,548 [http-nio-8090-exec-8] <====      Total: 1
2018-11-17 08:51:19,548 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 08:51:19,548 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 08:51:19,549 [http-nio-8090-exec-8] <====      Total: 3
2018-11-17 08:51:19,550 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:51:19,551 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-17 08:51:19,551 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-17 08:51:19,551 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 08:51:40,021 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 08:51:40,021 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 08:51:40,022 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:51:40,026 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 08:51:40,027 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 08:51:40,027 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 08:51:40,029 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-17 08:51:40,030 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 3(Integer)
2018-11-17 08:51:40,031 [http-nio-8090-exec-6] <==      Total: 3
2018-11-17 09:31:42,551 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:31:42,563 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:31:42,563 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 09:31:42,735 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:31:42,735 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:31:42,735 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 09:31:42,829 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:31:42,844 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:31:42,844 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 09:31:42,844 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 09:31:42,860 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 09:31:42,860 [http-nio-8090-exec-9] <==      Total: 2
2018-11-17 09:31:42,860 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 09:31:42,876 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 09:31:42,876 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 09:31:47,140 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:31:47,152 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:31:47,153 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:31:47,154 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:31:47,154 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:31:47,154 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:31:47,264 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 09:31:47,264 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-17 09:31:47,264 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:31:47,279 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 09:31:47,279 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 09:31:47,279 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:32:34,574 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:32:34,574 [http-nio-8090-exec-10] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:32:34,581 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 09:32:34,630 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:32:34,630 [http-nio-8090-exec-4] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:32:34,630 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 09:32:34,708 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:32:34,708 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:32:34,708 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] <==      Total: 2
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 09:32:34,723 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:33:12,452 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:33:12,468 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:33:12,469 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 09:33:12,470 [http-nio-8090-exec-1] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 09:33:12,470 [http-nio-8090-exec-1] ==> Parameters: 479(Long)
2018-11-17 09:33:12,470 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 09:33:12,470 [http-nio-8090-exec-1] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 09:33:12,486 [http-nio-8090-exec-1] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 09:33:12,486 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:33:12,486 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 09:33:12,486 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:33:12,486 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 09:34:09,982 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:34:09,982 [http-nio-8090-exec-2] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:34:09,990 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 09:34:10,022 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:34:10,022 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:34:10,022 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] <==      Total: 2
2018-11-17 09:34:10,147 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 09:34:10,163 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 09:34:10,163 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 09:34:12,678 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:34:12,678 [http-nio-8090-exec-8] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] ==> Parameters: 479(Long)
2018-11-17 09:34:12,689 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:34:12,689 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:34:12,689 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 09:34:12,689 [http-nio-8090-exec-8] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 09:34:12,705 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 09:45:43,144 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:43,154 [http-nio-8090-exec-3] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:43,156 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 09:45:43,328 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:43,328 [http-nio-8090-exec-9] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:43,328 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] <==      Total: 2
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 09:45:43,578 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 09:45:46,249 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:46,257 [http-nio-8090-exec-7] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:46,258 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:45:46,259 [http-nio-8090-exec-5] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:46,259 [http-nio-8090-exec-5] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:46,259 [http-nio-8090-exec-5] <==      Total: 1
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 09:45:46,259 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 09:45:52,055 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 09:45:52,055 [http-nio-8090-exec-1] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 09:45:52,059 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 21:12:42,772 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:42,781 [http-nio-8090-exec-6] ==> Parameters: c90a6064-4f8a-46ef-bf10-4d582b5ce4c2(String)
2018-11-17 21:12:42,781 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:47,061 [http-nio-8090-exec-8] ==>  Preparing: select * from sys_user t where t.username = ? 
2018-11-17 21:12:47,075 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 21:12:47,077 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:12:47,093 [http-nio-8090-exec-8] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 21:12:47,093 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String)
2018-11-17 21:12:47,093 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:12:47,093 [http-nio-8090-exec-8] ==>  Preparing: select distinct sp.* from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_role_permission rp ,sys_permission sp where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and rp.roleId=r.id and sp.id=rp.permissionId and u.username=? and p.id=? 
2018-11-17 21:12:47,093 [http-nio-8090-exec-8] ==> Parameters: wuzhihua(String), 479(Long)
2018-11-17 21:12:47,108 [http-nio-8090-exec-8] <==      Total: 37
2018-11-17 21:12:47,202 [http-nio-8090-exec-8] ==>  Preparing: insert into t_token(id, val, expireTime, createTime, updateTime) values (?, ?, ?, ?, ?) 
2018-11-17 21:12:47,202 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String), {"accountNonExpired":true,"accountNonLocked":true,"authorities":[{"authority":"lte:gcb:list"},{"authority":"lte:config:list"},{"authority":"sys:act:list"},{"authority":"lte:plan:check"},{"authority":"sys:menu:list"},{"authority":"lte:stationcheck:del"},{"authority":"lte:config:del"},{"authority":"sys:role:edit"},{"authority":"lte:loadtest:list"},{"authority":"sys:project:del"},{"authority":"lte:stationcheck:edit"},{"authority":"lte:plan:del"},{"authority":"sys:distribute:edit"},{"authority":"lte:cellcheck:list"},{"authority":"sys:role:list"},{"authority":"sys:lte:manage"},{"authority":"lte:config:edit"},{"authority":"lte:plan:list"},{"authority":"lte:cellcheck:del"},{"authority":"sys:user:del"},{"authority":"sys:role:del"},{"authority":"sys:act:lteconfig"},{"authority":"lte:config:send"},{"authority":"sys:user:list"},{"authority":"lte:gcb:del"},{"authority":"lte:stationcheck:list"},{"authority":"sys:project:edit"},{"authority":"sys:menu:del"},{"authority":"sys:project:list"},{"authority":"sys:distribute:list"},{"authority":"lte:cellcheck:edit"},{"authority":"lte:gcb:edit"},{"authority":"sys:user:edit"},{"authority":"sys:sys:system"},{"authority":"sys:menu:edit"},{"authority":"lte:plan:edit"},{"authority":"sys:diatribute:del"}],"birthday":1538496000000,"createTime":1541240539000,"credentialsNonExpired":true,"email":"19348243@qq.com","enabled":true,"expireTime":1542467567186,"id":10,"loginTime":1542460367186,"nickname":"吴志华","password":"$2a$10$WKXh/sBTxdI2n0dbcyaml.viBOoRo/A4tx6vtLxkyPFq8ZsF4Bgqa","permissions":[{"css":"fa-cog","href":"","id":71,"name":"系统管理","parentId":0,"permission":"sys:sys:system","sort":1,"type":1},{"css":"fa-sitemap","href":"pages/menu/list.html","id":78,"name":"资源管理","parentId":71,"permission":"sys:menu:list","sort":3,"type":1},{"css":"","href":"","id":79,"name":"编辑","parentId":78,"permission":"sys:menu:edit","sort":31,"type":2},{"css":"","href":"","id":80,"name":"删除","parentId":78,"permission":"sys:menu:del","sort":32,"type":2},{"css":"fa-credit-card","href":"pages/project/list.html","id":72,"name":"项目管理","parentId":71,"permission":"sys:project:list","sort":11,"type":1},{"css":"","href":"","id":73,"name":"编辑","parentId":72,"permission":"sys:project:edit","sort":12,"type":2},{"css":"","href":"","id":74,"name":"删除","parentId":72,"permission":"sys:project:del","sort":100,"type":2},{"css":"fa-user-md","href":"pages/role/list.html","id":75,"name":"角色管理","parentId":71,"permission":"sys:role:list","sort":21,"type":1},{"css":"","href":"","id":76,"name":"编辑","parentId":75,"permission":"sys:role:edit","sort":22,"type":2},{"css":"fa-times","href":"","id":77,"name":"删除","parentId":75,"permission":"sys:role:del","sort":23,"type":2},{"css":"fa-user","href":"pages/user/list.html","id":81,"name":"用户管理","parentId":71,"permission":"sys:user:list","sort":24,"type":1},{"css":"","href":"","id":82,"name":"编辑","parentId":81,"permission":"sys:user:edit","sort":100,"type":2},{"css":"","href":"","id":83,"name":"删除","parentId":81,"permission":"sys:user:del","sort":101,"type":2},{"css":"fa-cab","href":"pages/distribute/list.html","id":85,"name":"权限分配","parentId":71,"permission":"sys:distribute:list","sort":200,"type":1},{"css":"","href":"","id":86,"name":"编辑","parentId":85,"permission":"sys:distribute:edit","sort":1,"type":2},{"css":"fa-cab","href":"","id":87,"name":"删除","parentId":85,"permission":"sys:diatribute:del","sort":2,"type":2},{"css":"fa-university","href":"","id":88,"name":"LTE单验","parentId":0,"permission":"sys:lte:manage","sort":2,"type":1},{"css":"fa-send-o","href":"pages/lte/plan/list.html","id":89,"name":"规划表","parentId":88,"permission":"lte:plan:list","sort":3,"type":1},{"css":"","href":"","id":95,"name":"编辑","parentId":89,"permission":"lte:plan:edit","sort":100,"type":2},{"css":"","href":"","id":96,"name":"删除","parentId":89,"permission":"lte:plan:del","sort":100,"type":2},{"css":"","href":"","id":108,"name":"报告审核","parentId":89,"permission":"lte:plan:check","sort":100,"type":2},{"css":"fa-bookmark-o","href":"pages/lte/gcbparameter/list.html","id":90,"name":"工参表","parentId":88,"permission":"lte:gcb:list","sort":4,"type":1},{"css":"","href":"","id":97,"name":"编辑","parentId":90,"permission":"lte:gcb:edit","sort":100,"type":2},{"css":"","href":"","id":98,"name":"删除","parentId":90,"permission":"lte:gcb:del","sort":100,"type":2},{"css":"fa-cogs","href":"pages/lte/config/list.html","id":93,"name":"测试配置项","parentId":88,"permission":"lte:config:list","sort":5,"type":1},{"css":"","href":"","id":99,"name":"编辑","parentId":93,"permission":"lte:config:edit","sort":100,"type":2},{"css":"","href":"","id":100,"name":"删除","parentId":93,"permission":"lte:config:del","sort":100,"type":2},{"css":"","href":"","id":106,"name":"流程推送","parentId":93,"permission":"lte:config:send","sort":100,"type":2},{"css":"fa-codepen","href":"pages/lte/stationtest/list.html","id":91,"name":"基站核查结果","parentId":88,"permission":"lte:stationcheck:list","sort":6,"type":1},{"css":"","href":"","id":102,"name":"编辑","parentId":91,"permission":"lte:stationcheck:edit","sort":2,"type":2},{"css":"","href":"","id":101,"name":"删除","parentId":91,"permission":"lte:stationcheck:del","sort":100,"type":2},{"css":"fa-file-archive-o","href":"pages/lte/cellcheck/list.html","id":92,"name":"小区测试结果","parentId":88,"permission":"lte:cellcheck:list","sort":7,"type":1},{"css":"","href":"","id":103,"name":"编辑","parentId":92,"permission":"lte:cellcheck:edit","sort":100,"type":2},{"css":"","href":"","id":104,"name":"删除","parentId":92,"permission":"lte:cellcheck:del","sort":100,"type":2},{"css":"fa-taxi","href":"","id":94,"name":"路测信息","parentId":88,"permission":"lte:loadtest:list","sort":8,"type":1},{"css":"fa-random","href":"","id":105,"name":"流程管理","parentId":0,"permission":"sys:act:list","sort":3,"type":1},{"css":"fa-bar-chart-o","href":"pages/activiti/lteConfigTaskList.html","id":107,"name":"测试配置项任务","parentId":105,"permission":"sys:act:lteconfig","sort":100,"type":1}],"phone":"18301601124","projId":479,"sex":0,"status":1,"telephone":"18301601124","token":"6ecd54f7-a0f5-4554-b294-5c16a23379de","username":"wuzhihua"}(String), 2018-11-17 23:12:47.186(Timestamp), 2018-11-17 21:12:47.186(Timestamp), 2018-11-17 21:12:47.186(Timestamp)
2018-11-17 21:12:47,218 [http-nio-8090-exec-8] <==    Updates: 1
2018-11-17 21:12:47,405 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:47,405 [http-nio-8090-exec-9] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:47,421 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 21:12:47,499 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:47,499 [http-nio-8090-exec-2] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:47,499 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 21:12:47,608 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:47,608 [http-nio-8090-exec-1] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:47,608 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 21:12:47,608 [http-nio-8090-exec-1] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 21:12:47,624 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 21:12:47,624 [http-nio-8090-exec-1] <==      Total: 2
2018-11-17 21:12:47,624 [http-nio-8090-exec-1] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 21:12:47,624 [http-nio-8090-exec-1] ==> Parameters: wuzhihua(String)
2018-11-17 21:12:47,624 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 21:12:50,717 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:50,725 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:50,727 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:50,727 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:50,727 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:50,743 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:12:50,789 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 21:12:50,805 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 21:12:50,805 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:50,805 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 21:12:50,805 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 21:12:50,805 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:52,024 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:52,033 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:52,034 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:12:52,035 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:12:52,035 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:12:52,035 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:52,035 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-17 21:12:52,035 [http-nio-8090-exec-8] ==> Parameters: 10(Long), LtePlan(String)
2018-11-17 21:12:52,035 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-17 21:12:52,051 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:12:52,051 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:12:52,066 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:12:52,066 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:12:52,066 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:12:52,066 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:12:52,066 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:12:52,082 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:12:52,082 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:12:52,082 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-17 21:12:52,082 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 21:12:52,082 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:13:00,502 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:13:00,507 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:13:00,508 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:13:00,508 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:13:00,508 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-17 21:13:00,508 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:13:00,524 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:13:00,540 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:13:00,540 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:13:00,540 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:18,540 [http-nio-8090-exec-10] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:18,558 [http-nio-8090-exec-10] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:18,558 [http-nio-8090-exec-10] <==      Total: 1
2018-11-17 21:15:18,714 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:18,714 [http-nio-8090-exec-3] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:18,714 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 21:15:18,823 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:18,823 [http-nio-8090-exec-7] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:18,823 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 21:15:18,823 [http-nio-8090-exec-7] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 21:15:18,839 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-17 21:15:18,839 [http-nio-8090-exec-7] <==      Total: 2
2018-11-17 21:15:18,839 [http-nio-8090-exec-7] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 21:15:18,855 [http-nio-8090-exec-7] ==> Parameters: wuzhihua(String)
2018-11-17 21:15:18,855 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 21:15:20,432 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:20,449 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:20,450 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:20,450 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:20,450 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:20,450 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:15:20,544 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 21:15:20,544 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 21:15:20,544 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:20,559 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 21:15:20,559 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 21:15:20,559 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:21,543 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:21,559 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:21,563 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:15:21,563 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:21,563 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:21,563 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:21,563 [http-nio-8090-exec-8] ==>  Preparing: select act_piid from business_activiti_relation where buss_id=? and buss_type=? order by create_time desc limit 1 
2018-11-17 21:15:21,563 [http-nio-8090-exec-8] ==> Parameters: 10(Long), LtePlan(String)
2018-11-17 21:15:21,563 [http-nio-8090-exec-6] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:15:21,563 [http-nio-8090-exec-6] ==> Parameters: 10(Long)
2018-11-17 21:15:21,563 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:15:21,578 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:15:21,578 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:15:21,578 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:15:21,578 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] <====      Total: 1
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:15:21,594 [http-nio-8090-exec-6] ====> Parameters: 123456(String)
2018-11-17 21:15:21,609 [http-nio-8090-exec-6] <====      Total: 3
2018-11-17 21:15:21,609 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:21,609 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_config lp where status=2 and projId=? limit 1 
2018-11-17 21:15:21,609 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 21:15:21,625 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:15:25,312 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:15:25,312 [http-nio-8090-exec-9] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:15:25,318 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 21:15:25,320 [http-nio-8090-exec-9] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:15:25,320 [http-nio-8090-exec-9] ==> Parameters: 10(Long)
2018-11-17 21:15:25,320 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] <====      Total: 3
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] <====      Total: 1
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] ====> Parameters: 123456(String)
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] <====      Total: 3
2018-11-17 21:15:25,335 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 21:28:53,682 [http-nio-8090-exec-1] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:53,686 [http-nio-8090-exec-1] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:53,686 [http-nio-8090-exec-1] <==      Total: 1
2018-11-17 21:28:53,842 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:53,842 [http-nio-8090-exec-2] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:53,842 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 21:28:53,952 [http-nio-8090-exec-9] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:53,952 [http-nio-8090-exec-9] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:53,967 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 21:28:53,967 [http-nio-8090-exec-9] ==>  Preparing: select distinct p.id as "id" ,p.proj_name as "projName" from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u where p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and u.username=? 
2018-11-17 21:28:53,983 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 21:28:53,983 [http-nio-8090-exec-9] <==      Total: 2
2018-11-17 21:28:53,983 [http-nio-8090-exec-9] ==>  Preparing: select c.proj from ( select distinct s.proj,s.createTime from sys_project p ,proj_role_relation pr ,sys_role r ,sys_role_user ru ,sys_user u ,sys_login_service s where s.username=? and p.id=pr.proj_id and pr.role_id=r.id and r.id=ru.roleId and u.id=ru.userId and s.proj=p.id order by s.createTime desc limit 1 ) c 
2018-11-17 21:28:53,999 [http-nio-8090-exec-9] ==> Parameters: wuzhihua(String)
2018-11-17 21:28:53,999 [http-nio-8090-exec-9] <==      Total: 1
2018-11-17 21:28:55,842 [http-nio-8090-exec-6] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:55,842 [http-nio-8090-exec-6] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:55,849 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:28:55,849 [http-nio-8090-exec-3] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:55,849 [http-nio-8090-exec-3] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:55,849 [http-nio-8090-exec-3] <==      Total: 1
2018-11-17 21:28:55,959 [http-nio-8090-exec-6] ==>  Preparing: SELECT count(0) FROM lte_plane lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 21:28:55,974 [http-nio-8090-exec-6] ==> Parameters: 479(Long)
2018-11-17 21:28:55,974 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:28:55,974 [http-nio-8090-exec-6] ==>  Preparing: select lp.* from lte_plane lp where 1=1 and lp.projId = ? order by lp.testTime desc LIMIT ? 
2018-11-17 21:28:55,974 [http-nio-8090-exec-6] ==> Parameters: 479(Long), 10(Integer)
2018-11-17 21:28:55,974 [http-nio-8090-exec-6] <==      Total: 1
2018-11-17 21:28:59,302 [http-nio-8090-exec-8] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:28:59,302 [http-nio-8090-exec-8] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:28:59,306 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:28:59,306 [http-nio-8090-exec-8] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:28:59,306 [http-nio-8090-exec-8] ==> Parameters: 10(Long)
2018-11-17 21:28:59,321 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:28:59,321 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 21:28:59,321 [http-nio-8090-exec-8] <====      Total: 3
2018-11-17 21:28:59,321 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:28:59,321 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] <====      Total: 1
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] <====      Total: 1
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] ====> Parameters: 123456(String)
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] <====      Total: 3
2018-11-17 21:28:59,337 [http-nio-8090-exec-8] <==      Total: 1
2018-11-17 21:30:19,028 [http-nio-8090-exec-7] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:30:19,043 [http-nio-8090-exec-7] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:30:19,045 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] ==>  Preparing: SELECT count(0) FROM lte_gc lp WHERE 1 = 1 AND lp.projId = ? 
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] ==> Parameters: 479(Long)
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] <==      Total: 1
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] ==>  Preparing: select lp.* from lte_gc lp where 1=1 and lp.projId = ? order by lp.createTime desc LIMIT ? 
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] ==> Parameters: 479(Long), 3(Integer)
2018-11-17 21:30:19,061 [http-nio-8090-exec-7] <==      Total: 3
2018-11-17 21:30:20,311 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:30:20,317 [http-nio-8090-exec-4] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:30:20,318 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 21:30:20,459 [http-nio-8090-exec-4] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:30:20,459 [http-nio-8090-exec-4] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:30:20,459 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] ==>  Preparing: SELECT count(0) FROM lte_config lp 
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] ==> Parameters: 
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] ==>  Preparing: select lp.* from lte_config lp order by lp.createTime desc LIMIT ? 
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] ==> Parameters: 10(Integer)
2018-11-17 21:30:20,474 [http-nio-8090-exec-4] <==      Total: 1
2018-11-17 21:31:04,579 [http-nio-8090-exec-2] ==>  Preparing: select * from t_token t where t.id = ? 
2018-11-17 21:31:04,594 [http-nio-8090-exec-2] ==> Parameters: 6ecd54f7-a0f5-4554-b294-5c16a23379de(String)
2018-11-17 21:31:04,595 [http-nio-8090-exec-2] <==      Total: 1
2018-11-17 21:31:04,596 [http-nio-8090-exec-2] ==>  Preparing: select * from lte_plane where id=? 
2018-11-17 21:31:04,596 [http-nio-8090-exec-2] ==> Parameters: 10(Long)
2018-11-17 21:31:04,596 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_gc lp where lp.mENodeBID =? order by lp.mCellID asc 
2018-11-17 21:31:04,596 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 21:31:04,596 [http-nio-8090-exec-2] <====      Total: 3
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_station_check where eNodeBID=? 
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====>  Preparing: select * from lte_load_test where eNodeBID=? 
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] <====      Total: 1
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====>  Preparing: select lp.* from lte_cell_check lp where lp.eNodeBID =? 
2018-11-17 21:31:04,612 [http-nio-8090-exec-2] ====> Parameters: 123456(String)
2018-11-17 21:31:04,627 [http-nio-8090-exec-2] <====      Total: 3
2018-11-17 21:31:04,627 [http-nio-8090-exec-2] <==      Total: 1
