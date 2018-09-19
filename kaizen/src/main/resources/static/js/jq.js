//ajax通用配置
$.ajaxSetup({
	cache : false,
	headers : {
		"token" : localStorage.getItem("token")
	},
	error : function(xhr, textStatus, errorThrown) {
		var msg = xhr.responseText;
		var response = JSON.parse(msg);
		var code = response.code;
		var message = response.message;
		if (code == 400) {
			layer.msg(message);
		} else if (code == 401) {
			localStorage.removeItem("token");
			location.href = '/login.html';
		} else if (code == 403) {
			console.log("未授权:" + message);
			layer.msg('未授权');
		} else if (code == 500) {
			layer.msg('系统错误：' + message);
		}
	}
});

// 删除按钮权限
function buttonDel(data, permission, pers) {
	if (permission != "") {
		if ($.inArray(permission, pers) < 0) {
			return "";
		}
	}

	var btn = $("<button class='layui-btn layui-btn-xs' title='删除' onclick='del(\""
			+ data + "\")'><i class='layui-icon'>&#xe640;</i></button>");
	return btn.prop("outerHTML");
}

// 编辑按钮权限
function buttonEdit(href, permission, pers) {
	if (permission != "") {
		if ($.inArray(permission, pers) < 0) {
			return "";
		}
	}

	var btn = $("<button class='layui-btn layui-btn-xs' title='编辑' onclick='window.location=\""
			+ href + "\"'><i class='layui-icon'>&#xe642;</i></button>");
	return btn.prop("outerHTML");
}
// 根据参数的名字获取url后面传递的值
function getUrlParam(key) {
	var href = window.location.href;
	var url = href.split("?");
	if (url.length <= 1) {
		return "";
	}
	var params=url[1].split("&");
	for(var i=0;i<params.length;i++){
		var param=params[i].split("=");
		if(key == param[0]){
			return parma[1];
		}
	}
}
// 删除当前tab
function deleteCurrentTab() {
	var lay_id = $(parent.document).find("ul.layui-tab-title").children(
			"li.layui-this").attr("lay-id");
	parent.active.tabDelete(lay_id);
}
