package com.mptcp.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mptcp.service.ConfigScript;

public class configurationAction extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doPost(request , response);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		boolean error = false; 
		
		//String path = getServletContext().getRealPath("/");
		String path = "/home/long/mptcp/";
		try
		{
			String measurementName = req.getParameter("MesurementName");
			
			String sliceName =req.getParameter("SliceName");
			
			String runtime = req.getParameter("Runtime");
			
			String portBase = req.getParameter("PortBase");
			
			String sshPrivateKey = req.getParameter("SSHPrivateKey");
			
			
			String localNodeName = req.getParameter("LocalNodeName");
			
			String remoteNodeName = req.getParameter("RemoteNodeName");
			
			String ipVersion = req.getParameter("ipVersion");
			
			String[] cmt = req.getParameterValues("cmt");
			
		
			String sndBufSize = req.getParameter("SndBufSize");
			
			String pathMgr = req.getParameter("PathMgr");
			
			String[] cc = req.getParameterValues("CC");
			//System.out.println(pathMgr);
			
			ConfigScript configScript = new ConfigScript();
			
			
			if(measurementName == (null) && "".equals(measurementName))
			{
				error = true;
			}

			if(sliceName==(null) && "".equals(sliceName))
			{
				error = true;
			}
			
			if(runtime==(null) && "".equals(runtime))
			{
				error = true;
			}
			
			
			if(portBase==(null) && "".equals(portBase))
			{
				error = true;
			}
			
			if(sshPrivateKey==(null) && "".equals(sshPrivateKey))
			{
				error = true;
			}
			if(localNodeName==(null) && "".equals(localNodeName))
			{
				error = true;
			}
			if(remoteNodeName==(null) && "".equals(remoteNodeName))
			{
				error = true;
			}
			
			if(ipVersion==(null) && "".equals(ipVersion))
			{
				error = true;
			}
			
			
			if(null == cmt)
			{
				error = true;
			}
			if(sndBufSize==(null) && "".equals(sndBufSize))
			{
				error = true;
			}
			if(cc == null  )
			{
				error = true;
			}
			
			if(error == true)
			{
				req.setAttribute("error" , "1");
				req.getRequestDispatcher("configuration.jsp").forward(req,resp);
			}
			else
			{
				String script = configScript.createCC(measurementName , sliceName , runtime , portBase , sshPrivateKey
					,localNodeName , remoteNodeName , ipVersion , cmt , sndBufSize , pathMgr , cc , path , req , resp);
				req.setAttribute("script", script);
				System.out.println("-----------------------");
				req.getRequestDispatcher("getScript.jsp").forward(req,resp);			
			}		
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println("haha");
		}
		
	}

}
