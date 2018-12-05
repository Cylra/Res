package com.mptcp.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStreamWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfigScript
{
	public String createCC(String measurementName , String sliceName , 
			String runtime , String portBase , String sshPrivateKey , String localNodeName , 
			String remoteNodeName , String ipVersion , String[] cmt , String sndBufSize , 
			String pathMgr , String[] cc , String path ,HttpServletRequest request, 
			HttpServletResponse response) throws Exception
	{
		
		FileReader fr = new FileReader(path+"run-uia-uib");
		
		BufferedReader br = new BufferedReader(fr);
		
		StringBuffer sb = new StringBuffer();
		String str ;
		
		
		
		
		
		
		while((str = br.readLine()) != null)
		{
			sb.append(str+"\n");
		}
		br.close();
		
		String script = sb.toString();
		
		
		script = script.replaceFirst("MeasurementName = 'uia-uib'" , "MeasurementName = '"+measurementName+"'");
		
		script = script.replaceFirst("SliceName       = 'hu_zhoufeng'" ,"SliceName       = '"+sliceName+"'");
		
		script = script.replaceFirst("Runtime         = 60" , "Runtime         = "+runtime);
		
		script = script.replaceFirst("PortBase        = 12402" , "PortBase        = "+portBase);
		
		script = script.replaceFirst("SSHPrivateKey   = '/home/zhoufeng/.ssh/id_rsa'" , "SSHPrivateKey   = '"+sshPrivateKey+"'");
		
		script = script.replaceFirst("LocalNodeName   = \"fjoesnisse.uia.nornet\"" , "LocalNodeName   = \""+localNodeName+"\"");
		
		script = script.replaceFirst("RemoteNodeName  = \"bergenhus.uib.nornet\"","RemoteNodeName  = \""+remoteNodeName+"\"");
		
		if(ipVersion .equals("1"))
		{
			ipVersion = "for ipVersion in [ 4 ]:";
		}
		else if(ipVersion.equals("2"))
		{
			ipVersion = "for ipVersion in [ 6 ]:";
		}
		else
		{
			ipVersion = "for ipVersion in [ 4 , 6 ]:";
		}
		script = script.replace("for ipVersion in [ 6 ]:" , ipVersion);
		
		
		script = script.replace("sndBufSize = 0" , "sndBufSize = "+sndBufSize);
		
		String fcmt = "for cmt in [";
		for(int i = 0 ; i < cmt.length ; i++)
		{
			fcmt += "'"+cmt[i]+"'";
			if(i != cmt.length-1)
				fcmt +=",";
		}
		fcmt +="]:";
		script = script.replace("for cmt in [ 'mptcp','off' ]:",fcmt);
		
		
		String fcc = "for cc in [";
		for(int i=0 ; i < cc.length ; i++)
		{
			fcc += "'"+cc[i]+"'";
			if(i != cc.length-1)
				fcc +=",";
		}
		fcc +="]:";
		
		script = script.replace("for cc in ['cubic','reno','dctcp','bic','highspeed','htcp','hybla','illinois','lp','scalable','vegas','veno','westwood','yeah','balia','lia','olia','wvegas']:"
									,fcc);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"AutoCreatedCongestionControl")));
		bw.write(script);
		bw.flush();
		bw.close();
		br.close();
		
		
		return script;
		
	}
}
