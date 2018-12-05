package com.mptcp.action;


import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CollectResultAction extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
//		System.out.println("CollectResultAction Doget Invoked!");
		
	
		
//		String path = getServletContext().getRealPath("/");
//		path +="../";//�˴���Ϊ�˵õ���Ŀ��Ŀ¼
		
		
		//String path = "/home/long/mptcp/";
		
		System.out.println("*run CollectResultAction Begin*");
		String path = public_var.get_path();
		PrintWriter pw = resp.getWriter();
		
		
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(path+"ResultCongestionControl")));
		
		String line = "";
		
		while( (line = br.readLine()) != null )
		{
			pw.print(line+"\n");
		}


		System.out.println("*run CollectResultAction End*");
	}
}
