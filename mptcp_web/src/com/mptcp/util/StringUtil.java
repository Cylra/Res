package com.mptcp.util;

public class StringUtil
{
	//������������ת��Ϊutf-8���ַ�����ʽ
	public static String switchUtf(String old) throws Exception
	{
		return new String(old.getBytes("iso-8859-1") , "utf-8");
	}
}
