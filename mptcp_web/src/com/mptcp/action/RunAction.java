package com.mptcp.action;

/*点击运行脚本后此执行此服务器程序,
将指令执行时的输出写入ResultCongestionControl文件
*/
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
		
		
		
		//String path = "/home/long/mptcp/";
		String path = public_var.get_path();
		System.out.println("*run RunAction begin*");
		
		//String cmd = "./autoRun AutoCreatedCongestionControl";//.
		String cmd = "./autoRun_ly.sh";
		Runtime runtime = Runtime.getRuntime();
		
		ProcessBuilder pb = new ProcessBuilder(cmd);
        //设置shell命令执行的工作目录
		pb.directory(new File(path));
		//合并错误输出到标准输出
		pb.redirectErrorStream(true);

		Process p = pb.start();//runtime.exec(cmd, null, new File(path));
		
		BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		
		String line = "";
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"ResultCongestionControl")));
		
		
		InputStream error  = p.getErrorStream();
		BufferedReader br2 = new BufferedReader(new InputStreamReader(error));
		
		while( (line = br.readLine()) != null)
		{
//			System.out.println(line);
			//去掉脚本输出中的特殊字符
			line = line.replaceAll(".?\\[\\d+m", "");
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		
		//无需再重复写入错误输出
		/*
		while( (line = br2.readLine()) != null)
		{
//			System.out.println(line);
			bw.write(line);
			bw.newLine();
			bw.flush();
		}
		*/
		bw.close();
		br.close();
		br2.close();
		System.out.println("*run RunAction End*");
		
	}
	
}
