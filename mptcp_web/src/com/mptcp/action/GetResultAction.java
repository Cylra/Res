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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetResultAction")
public class GetResultAction extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		//String path = "/home/long/mptcp/";
		String path = public_var.get_path();
		
		String cmd = "./autoRun rsync";//.
		Runtime runtime = Runtime.getRuntime();
		

		Process p = runtime.exec(cmd, null, new File(path));
		
		BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		
		String line = "";
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"CollectProcess")));
		
		
		InputStream error  = p.getErrorStream();
		BufferedReader br2 = new BufferedReader(new InputStreamReader(error));
		
		while( (line = br.readLine()) != null)
		{
			System.out.println(line);
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		
		while( (line = br2.readLine()) != null)
		{
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		
		System.out.println("getResultAction completed");
		bw.close();
		br.close();
	}
}
