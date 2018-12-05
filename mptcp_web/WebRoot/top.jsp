<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<style type="text/css">
			ul li{list-style: none;}
		#nav {
			font-size: 12px;
			font-weight: bold;
			margin: 1em 0 0;
			width: auto;
			overflow: hidden;
			z-index:99999;
		}
		#nav ul 
		{
			float: left;

		}
		#nav ul>li {
			float: left;
			margin-right: 20px;
		}


		#nav ul>li>a {//标题栏灰边缘
			line-height: 40px;
			text-decoration: none;
			background: #DDDDDD;
			color: #666666;
			display: block;
			width: 200px;
			text-align: center;
		}

		#nav li>a:hover{
			color: #FFFFFF;
			background: #DC4E1B;
		}
		#nav ul li ul 
		{
			position: absolute;
			display: none;
			padding: 0;
		}
		#nav ul li ul li 
		{
			float: none;
		}
		#nav ul li ul li a 
		{
			border-top: 1px solid #ccc;

		}
		#nav ul li:hover ul{display: block;}

		</style>

	</head>

	<body>
		<table width="100%" border="0" align="center"  >
			<tr >
				<td align="left">
					<img src="image/test3.png"  />
				</td>
				
			</tr>
			<tr valign="top">
				<td width="100%"  align="left" valign="top">
					<div id="nav">
										
						<ul >
							<li><a  href="index.jsp">首页</a></li>
							
							<li><a href="configuration.jsp">配置脚本</a>
								<ul>
									<li><a href="" class="">缓冲区研究</a></li>
									<li><a href="" class="">路径管理</a></li>
									<li><a href="configuration.jsp">拥塞算法研究</a></li>
									<li><a href="">鲁棒性研究</a></li>
								</ul>
							</li>
							<li><a class="" href="seachSite.jsp">相关查询</a></li>
							<li><a  href="chengguo.jsp">成果展示</a	>
								<ul>
									<li><a href="" class="">缓冲区研究</a></li>
									<li><a href="" class="">路径管理</a></li>
									<li><a href="">拥塞算法研究</a></li>
									<li><a href="">鲁棒性研究</a></li>
								</ul>
								
							</li>
							
							
						</ul>
						
						
					</div>
				</td>
				
			</tr>
		</table>
		<span class="STYLE2"></span>
	</body>
</html>
