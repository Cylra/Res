package com.mptcp.action;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Test
{
	public static void main(String[] args) throws Exception
	{
		String cmd = "./autoRun AutoCreatedCongestionControl";
		Runtime runtime = Runtime.getRuntime();
		

		Process p = runtime.exec(cmd);
		
		BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		
		String line = "";
		
		InputStream error  = p.getErrorStream();
		BufferedReader br2 = new BufferedReader(new InputStreamReader(error));
		
		
		while( (line = br.readLine()) != null)
		{
			System.out.println(line);
		}
		
		while( (line = br2.readLine()) != null)
		{
			
			System.out.println(line);
		}
		
		br.close();
		
	}
	
}
