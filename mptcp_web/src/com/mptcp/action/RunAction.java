package com.mptcp.action;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RunAction extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		//this codes can run some shell cammand 
		
//		String path = getServletContext().getRealPath("/");
//		path +="../";
		
		
		
		String path = "/home/long/mptcp/";
		
		String cmd = "./autoRun AutoCreatedCongestionControl";//.
		Runtime runtime = Runtime.getRuntime();
		

		Process p = runtime.exec(cmd, null, new File("/home/long/mptcp/"));
		
		BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		
		String line = "";
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"ResultCongestionControl")));
		
		
		InputStream error  = p.getErrorStream();
		BufferedReader br2 = new BufferedReader(new InputStreamReader(error));
		
		while( (line = br.readLine()) != null)
		{
//			System.out.println(line);
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		
		while( (line = br2.readLine()) != null)
		{
//			System.out.println(line);
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		
		bw.close();
		br.close();
		
	}
	
}
