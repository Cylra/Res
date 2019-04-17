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
			String[] pathMgr , String[] cc , String method, String path ,HttpServletRequest request, 
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
		
		/*20190416 将源文件run-uia-uib中私钥的赋值改为固定形式,
		  不再在前端界面填写私钥地址,此处也无需再进行替换
		  同时添加前端method传值,作为可视化时调用不同R绘图脚本的识别参数:
		  1 缓冲区
		  2 路径管理
		  3 拥塞控制
		  4 鲁棒性(未实现)
		*/
		//script = script.replaceFirst("SSHPrivateKey   = '/home/zhoufeng/.ssh/id_rsa'" , "SSHPrivateKey   = '"+sshPrivateKey+"'");
		String tmp = "# Contact: dreibh@simula.no";
		script = script.replaceFirst(tmp, tmp + "\n# Research direction: " + method);
		
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
		
		//20190416 替换峰哥脚本的语句: sndBufSize = 0为可选的多个缓冲区大小
		String bufsize = "for bufsize in [ " + sndBufSize + " ]:";
		script = script.replace("for bufsize in [ 16 ]:" , bufsize);
		
		//替换峰哥脚本的语句: pathMgr    = 'fullmesh'为可选的多个路径管理算法
		String fpathMgr = "for pathMgr in [ ";
		for(int i = 0 ; i < pathMgr.length ; i++)
		{
			fpathMgr += "'"+pathMgr[i]+"'";
			if(i != pathMgr.length-1)
				fpathMgr +=", ";
		}
		fpathMgr +=" ]:";
		script = script.replace("for pathMgr in [ 'default', 'fullmesh' ]:",fpathMgr);
		
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
