package com.mptcp.action;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CollectPDFMessage")
public class CollectPDFMessageAction extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("CollectionPDFMessageAction");
		String path = "/home/long/mptcp/";
		
		PrintWriter pw = response.getWriter();
		
		
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(path+"CollectProcess")));
		
		String line = "";
		
		while( (line = br.readLine()) != null )
		{
			pw.print(line+"\n");
		}
	 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		
	}

}
