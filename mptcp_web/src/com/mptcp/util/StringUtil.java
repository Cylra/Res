package com.mptcp.util;

public class StringUtil
{
	//讲所传进来的转换为utf-8的字符串格式
	public static String switchUtf(String old) throws Exception
	{
		return new String(old.getBytes("iso-8859-1") , "utf-8");
	}
}
