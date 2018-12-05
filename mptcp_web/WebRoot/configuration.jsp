<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    <style type="text/css">
    	.nav
    	{
    		margin: 0;
    		padding: 0;
    		position:relative;
    		z-index: 9999;
    	}
		.basic-grey 
		{
			position:relative;
			max-width: 500px;
			padding: 25px 15px 25px 10px;
			font: 12px Georgia, "Times New Roman", Times, serif;
			color: #888;
			text-shadow: 1px 1px 1px #FFF;
			border:1px solid #E4E4E4;
			z-index: 0;
			
		}
		.basic-grey h1 {
			font-size: 25px;
			padding: 0px 0px 10px 40px;
			display: block;
			border-bottom:1px solid #E4E4E4;
			margin: -10px -15px 30px -10px;;
			color: #000000;
		}
		.basic-grey h1>span
		{
			display:block;
			font-size: 12px ;
			color : red;
			
		}
		
		
		.basic-grey label {
			display: block;
			margin: 0px;
			/*border: 1px solid grey;*/
		}
		.basic-grey label>span {
			float: left;
			width: 25%;
			text-align: right;
			padding-right: 10px;
			margin-top: 10px;
			color: #000000;
		}
		.basic-grey input[type="text"], .basic-grey select 
		{
			border: 1px solid #DADADA;
			color: #000000;
			height: 25px;
			margin-bottom: 20px;
			margin-right: 6px;
			margin-top: 2px;
			outline: 0 none;
			padding: 3px 3px 3px 5px;
			width: 60%;
			font-size: 12px;
			line-height:15px;
			box-shadow: inset 0px 1px 4px #ECECEC;
			-moz-box-shadow: inset 0px 1px 4px #ECECEC;
			-webkit-box-shadow: inset 0px 1px 4px #ECECEC;
		}
		.basic-grey input[type=checkbox]
		{
			margin-left: 5px;
		}
		.basic-grey select 
		{
			background: #FFF url('down-arrow.png') no-repeat right;
			background: #FFF url('down-arrow.png') no-repeat right);
			appearance:none;
			-webkit-appearance:none;
			-moz-appearance: none;
			text-indent: 0.01px;
			text-overflow: '';
			width: 60%;
			height: 25px;
		}
		.basic-grey .button {
			background: #E27575;
			border: none;
			padding: 10px 25px 10px 25px;
			color: #FFF;
			box-shadow: 1px 1px 5px #B6B6B6;
			border-radius: 3px;
			text-shadow: 1px 1px 1px #9E3F3F;
			cursor: pointer;
		}
		.basic-grey .button:hover 
		{
			background: #CF7A7A
		}
		.basic-grey .checkbox
		{
			padding: 7px 0 10px 0px;
			/*border: 1px solid red;*/
			overflow: hidden;
		}
		.basic-grey .checkbox span
		{

			display: block;
			float: left;
			/*border: 1px solid grey;*/
			color:#000000;
			margin-right: 20px;
			width: 80px;
			text-align: right;
		}
				
	</style>
	
  </head>
  
  <body>
  
  		<table cellpadding="0" cellspacing="0" border="0" width="70%"
			align="center" bgcolor="#FFFFFF">
			<tr>
				<td>
				
					<div class="nav"><%@include file="top.jsp"%></div>
				</td>
			</tr>
			<tr>
				<td >
					<hr/>
				</td>
			</tr>
			<tr>
				<td align="center">
						<form action="configurationAction" method="post" class="basic-grey"> 
						<h1>拥塞控制算法脚本配置:
						
						<% 
							String error = (String)request.getAttribute("error");
							
							if(error != null && error.equals("1"))
							{
						%>
								<span>
									您的输入有误！
								</span>
								
						<% 		
							}
						%>
						
						
						</h1>
						<label>
						<span>MesurementName:</span>
						<input type="text" name="MesurementName" placeholder="测试名字"/>
						</label>
				
				
						<label>
						<span>SliceName:</span>
						<input type="text" name="SliceName" />
						</label>
				
						<label>
						<span>Runtime:</span>
						<input type="text" name="Runtime"/>
						</label>
						<label>
						<span>PortBase:</span>
						<input type="text" name="PortBase" />
						</label>
				
						<label>
						<span>SSHPrivateKey:</span>
						<input type="text" name="SSHPrivateKey" />
						</label>
				
						<label>
						<span>LocalNodeName:</span>
						<input type="text" name="LocalNodeName" />
						</label>
						<label>
						<span>RemoteNodeName:</span>
						<input type="text" name="RemoteNodeName" />
						</label>
						<label>
						<span>ipVersion:</span>
						<select name="ipVersion">
						  <option value ="1">IPv4</option>
						  <option value ="2">IPv6</option>
						  <option value ="3">IPv4 and IPv6</option>
						</select>
						</label>
				
						<label>
						<span>CMT:</span>
				
				
						<div class="checkbox">
						<span>mptcp
						<input type="checkbox" name="cmt" value="mptcp" />
						</span>
						<span>off
						<input type="checkbox" name="cmt" value="off" />
						</span>
						</div>
						</label>
				
						<label>
						<span>SndBufSize:</span>
						<input type="text" name="SndBufSize" />
						</label>
						<label>
						<span>PathMgr:</span>
						<select name="PathMgr">
						  <option value ="1">fullmesh</option>
						</select>
						</label>
				
						
						
				
						<label>
						<span>CC:</span> 
						<div class="checkbox">
						<span>cubia<input type="checkbox" name="CC" value="cubia" /></span>
						<span>reno<input type="checkbox" name="CC" value="reno" /></span>
						<span>dctcp<input type="checkbox" name="CC" value="dctcp" /></span>
						<span>bic<input type="checkbox" name="CC" value="bic" /></span>
						<span>highspeed<input type="checkbox" name="CC" value="highspeed" /></span>
						<span>htcp<input type="checkbox" name="CC" value="htcp" /></span>
						<span>hybla<input type="checkbox" name="CC" value="hybla" /></span>
						<span>illinois<input type="checkbox" name="CC" value="illinois" /></span>
						<span>IP<input type="checkbox" name="CC" value="IP" /></span>
						<span>scalable<input type="checkbox" name="CC" value="scalable" /></span>
						<span>vegas<input type="checkbox" name="CC" value="vegas" /></span>
						<span>veno<input type="checkbox" name="CC" value="veno" /></span>
						<span>westwood<input type="checkbox" name="CC" value="westwood" /></span>
						<span>yeah<input type="checkbox" name="CC" value="yeah" /></span>
						<span>balia<input type="checkbox" name="CC" value="balia" /></span>
						<span>olia<input type="checkbox" name="CC" value="olia" /></span>
						<span>wvegas<input type="checkbox" name="CC" value="wvegas" /></span>
						</div>
						</label>
				
						<label>
							<span></span>	
							<input type="submit" name="submit" class="button" value="提交">
						</label>
						</form>
				</td>
			</tr>
			<tr>
				<td >
					<%@include file="bottom.jsp"%>
				</td>
			</tr>
		</table>
  
  </body>
</html>
