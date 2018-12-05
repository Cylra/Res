<!-- <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> -->
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applisalonion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!---<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
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
			padding: 25px 5px 0px 10px;
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
			text-align: center;
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
			margin-top: 1px;
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
<body style="background-image:url(images/12.jpg);background-repeat:no-repeat;background-size:100%; height :960px ;width:100%;" >
<!--start-home-->
	<!-- <div class="header-middle">
		<a href="index.jsp"><img src="images/title.png" alt=" " /></a>
	</div> -->
	
		<!--header-top-->
<div >
	<div class="header-top">
	  <div class="container">
			 <nav class="navbar navbar-default">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
				<div class="logo" valign="top">
					<h1><a href="index.jsp"><img src="images/title.png" /></a></h1>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
				  <div class="top-menu" valign="center">
					<nav class="menu menu--francisco">
							<ul class="nav navbar-nav menu__list">
								<li class="menu__item"><a href="multiPath.jsp" class="menu__link"><span class="menu__helper">多路径传输技术</span></a></li>
								<li class="menu__item"><a href="seachSite.jsp" class="menu__link"><span class="menu__helper">站点信息查询</span></a></li>
								<li class="menu__item menu__item--current"><a href="script.jsp" class="menu__link"><span class="menu__helper">配置脚本及运行</span></a></li>
								<li class="menu__item"><a href="chengguo.jsp" class="menu__link"><span class="menu__helper">成果展示</span></a></li>
								<li class="menu__item"><a href="about.html" class="menu__link"><span class="menu__helper">关于我们</span></a></li>
							</ul>
						</nav>
					</div>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

	   <div class="clearfix"></div>
	</div>
	</div>

	
		<!-- Services -->
		<div class="container" id="services">
			<div class="container" align="center">
				    
					<table cellpadding="0" cellspacing="0" border="0" align="center" bgcolor="#FFFFFF">
			
			<tr>
				<td >
					<hr/>
				</td>
			</tr>
			<tr align="center">
				<td align="center">
						<form action="configurationAction" method="post" class="basic-grey" align="center"> 
						<h1><font face="微软雅黑">拥塞控制算法脚本配置</font>
						<span><a class="media" href="pdf/run-init"><font color="#000000">查看原脚本</font></a></span>
						
						
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
						<input type="text" name="MesurementName" value="name"/>
						</label>
				
				
						<label>
						<span>SliceName:</span>
						<input type="text" name="SliceName" value = "hu_zhoufeng"/>
						</label>
				
						<label>
						<span>Runtime:</span>
						<input type="text" name="Runtime" value = "60"/>
						</label>
						<label>
						<span>PortBase:</span>
						<input type="text" name="PortBase" value = "10222"/>
						</label>
				
						<label>
						<span>SSHPrivateKey:</span>
						<input type="text" name="SSHPrivateKey" value = "/home/zhoufeng/.ssh/id_rsa"/>
						</label>
				
						<label>
						<span>LocalNodeName:</span>
						<input type="text" name="LocalNodeName" value = "boao.hu.nornet"/>
						</label>
						<label>
						<span>RemoteNodeName:</span>
						<input type="text" name="RemoteNodeName" value = "kettwig.ude.nornet"/>
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
						<input type="checkbox" name="cmt" value="mptcp" checked = "checked"/>
						</span>
						<span>off
						<input type="checkbox" name="cmt" value="off" />
						</span>
						</div>
						</label>
				
						<label>
						<span>SndBufSize:</span>
						<input type="text" name="SndBufSize" value = "5000"/>
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
						<span>cubia<input type="checkbox" name="CC" value="cubia" checked = "checked" /></span>
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
			<%-- <tr>
				<td >
					<%@include file="bottom.jsp"%>
				</td>
			</tr> --%>
		</table>
				

				
			</div>
		</div>
		
		<!--start-smooth-scrolling-->
						<!-- <script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
								end-smooth-scrolling
		<a href="#house" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script src="js/bootstrap.js"></script> -->
</div>
</body>
</html>
