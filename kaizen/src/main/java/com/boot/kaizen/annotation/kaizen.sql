




SELECT  
t.id
,t.name
,t.remark
,t.grid
,t.gridSp
,t.kind
,t.kpi
,t.kpiSp
,t.ssv
,t.ssvSp
,t.xmjl

,t.xmzl

FROM 
t_project t

ORDER BY t.id DESC

--


SELECT  d.id,d.name,GROUP_CONCAT(m.loginNo)

 FROM 

(
	SELECT c.id,c.name,c.remark,

		CONCAT_WS(',',c.grid,c.gridSp,c.kind,c.kpi,c.kpiSp,c.ssv,c.ssvSp,c.xmjl,c.xmzl) AS user_ids

	FROM 
	(

		SELECT  
		t.id
		,t.name
		,t.remark
		,CASE t.grid WHEN t.grid IS NULL THEN 'zww' ELSE t.grid END AS grid
		,CASE t.gridSp WHEN t.gridSp IS NULL THEN 'zww' ELSE t.gridSp END AS gridSp
		,CASE t.kind WHEN t.kind IS NULL THEN 'zww' ELSE t.kind END AS kind
		,CASE t.kpi WHEN t.kpi IS NULL THEN 'zww' ELSE t.kpi END AS kpi
		,CASE t.kpiSp WHEN t.kpiSp IS NULL THEN 'zww' ELSE t.kpiSp END AS kpiSp
		,CASE t.ssv WHEN t.ssv IS NULL THEN 'zww' ELSE t.ssv END AS ssv
		,CASE t.ssvSp WHEN t.ssvSp IS NULL THEN 'zww' ELSE t.ssvSp END AS ssvSp
		,CASE t.xmjl WHEN t.xmjl IS NULL THEN 'zww' ELSE t.xmjl END AS xmjl


		,CASE t.xmzl WHEN t.xmzl IS NULL THEN 'zww' ELSE t.xmzl END AS xmzl



		FROM 
		t_project t
		ORDER BY t.id DESC

	) c

) d,


(
SELECT  
p.id
,p.loginNo
,p.name
,p.email
,p.mobile
,p.officeTel
,p.sex
,p.memo 
,p.gongsi
FROM sys_person  p
WHERE p.deleted=0 
) m 
WHERE LOCATE(m.id,d.user_ids) > 0

GROUP BY d.id,d.name

ORDER BY d.id






--查询项目的id



SELECT c.id,c.name,c.remark,

		CONCAT_WS(',',c.grid,c.gridSp,c.kind,c.kpi,c.kpiSp,c.ssv,c.ssvSp,c.xmjl,c.xmzl) AS user_ids

	FROM 
	(


		SELECT  
		t.id
		,t.name
		,t.remark
		,CASE t.grid WHEN t.grid IS NULL THEN 'zww' ELSE t.grid END AS grid
		,CASE t.gridSp WHEN t.gridSp IS NULL THEN 'zww' ELSE t.gridSp END AS gridSp
		,CASE t.kind WHEN t.kind IS NULL THEN 'zww' ELSE t.kind END AS kind
		,CASE t.kpi WHEN t.kpi IS NULL THEN 'zww' ELSE t.kpi END AS kpi
		,CASE t.kpiSp WHEN t.kpiSp IS NULL THEN 'zww' ELSE t.kpiSp END AS kpiSp
		,CASE t.ssv WHEN t.ssv IS NULL THEN 'zww' ELSE t.ssv END AS ssv
		,CASE t.ssvSp WHEN t.ssvSp IS NULL THEN 'zww' ELSE t.ssvSp END AS ssvSp
		,CASE t.xmjl WHEN t.xmjl IS NULL THEN 'zww' ELSE t.xmjl END AS xmjl


		,CASE t.xmzl WHEN t.xmzl IS NULL THEN 'zww' ELSE t.xmzl END AS xmzl



		FROM 
		t_project t
		ORDER BY t.id DESC

	) c



