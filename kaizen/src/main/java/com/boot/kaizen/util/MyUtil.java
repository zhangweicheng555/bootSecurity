package com.boot.kaizen.util;

import java.util.UUID;

import com.boot.kaizen._enum.Constant;
import com.boot.kaizen.entity.LoginUser;

public class MyUtil {

	public static String getUuid() {
		return UUID.randomUUID().toString().replace("-", "");
	}

	public static Long getDealProjId(LoginUser user) {
		if (Constant.SYSTEM_ID_PROJECT != user.getProjId()) {
			return user.getProjId();
		}
		return null;
	};
}
