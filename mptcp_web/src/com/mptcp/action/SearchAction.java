package com.mptcp.action;
/*20190423增加
执行python脚本从PLC上查询站点节点信息,
并将查询结果返回给浏览器
*/

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchAction extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		try
		{
			String get_type = req.getParameter("Index");
			ProcessBuilder pb = null;
			switch(get_type){
				case "1":
					String[] cmd1 = {"./get-Sites"};
					pb = new ProcessBuilder(cmd1);
					break;
				case "2":
					String SiteName = req.getParameter("Site");
					System.out.println(SiteName);
					String[] cmd2 = {"./get-Nodes", SiteName};
					pb = new ProcessBuilder(cmd2);
					break;
				case "3":
					String SliceName = req.getParameter("Slice");
					System.out.println(SliceName);
					String[] cmd3 = {"./get-Slice-Nodes", SliceName};
					pb = new ProcessBuilder(cmd3);
					break;
			}
			System.out.println("*run SearchAction Begin*");
			String path = public_var.get_site_path();

			//设置shell命令执行的工作目录
			pb.directory(new File(path));
			//合并错误输出到标准输出
			pb.redirectErrorStream(true);

			Process p = pb.start();
			//等待查询结束
			p.waitFor();

			//使用Ajax,前端Console显示XML解析错误,需设置字符集
			resp.setContentType("text/text;charset=utf-8"); 
			//设置服务器端的编码,避免当resp返回的数据包含中文时,浏览器中显示乱码
			resp.setCharacterEncoding("UTF-8");
			PrintWriter pw = resp.getWriter();
			
			//获取查询到的站点、节点等信息
			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line = "";
			while( (line = br.readLine()) != null)
			{
				pw.print(line+"\n");
			}
			System.out.println("*run SearchAction End*");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
}
