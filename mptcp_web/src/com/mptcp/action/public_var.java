package com.mptcp.action;
/*
用于所有Servlet功能类使用统一的路径
*/
public class public_var {
	//此处是运行和绘图脚本所在位置,路径最后记得要加/
	public static String get_path(){
		return "/home/long/Res/mptcp_web/";
	}
	//20190422 增加查询站点信息脚本所在的路径,最后同样要加/
	public static String get_site_path(){
		return "/home/long/get/";
	}
}