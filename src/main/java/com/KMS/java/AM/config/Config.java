package com.KMS.java.AM.config;

public class Config {
	public static String getDBUrl() {
		return "jdbc:mysql://1.234.44.77:3306/JSPTest?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul&useOldAliasMetadataBehavior=true&zeroDateTimeNehavior=convertToNull";
	}

	public static String getDBUser() {
		return "user1";
	}

	public static String getDBPassword() {
		return "mkop9074!@";
	}

	public static String getDBDriverClassName() {
		return "com.mysql.jdbc.Driver";
	}
}
