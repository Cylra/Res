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
<script type="text/javascript">
		function All(obj)
		{
			var c = document.getElementsByName("checkb");
			if(obj.checked)
			{
				for(var i=0 ; i < c.length ; i++)
				{
					c[i].checked = true;	
				}
			}
			else
			{
				for(var i=0 ; i < c.length ; i++)
				{
					c[i].checked = false;	
				}
			}
		}
		/*20190423
		  重组查询结果,拼接出HTML表格片段,
		  用于jQuery添加表格展示DOM
		  20190424
		  修改参数aa -> response_type,
		  直接处理jQuery ajax返回的对象
		  增加参数table_type,用于site/node/slice
		  3个表格直接添加DOM节点,删除返回值tt
		*/
		function generate_table_DOM(response_type, table_type)
		{
			var aa = response_type.responseText.split("\n");
			//删除最后一项的空字符串""
			aa.pop();

			var tt = "<tbody>\n";
			for(var i=0; i<aa.length; i++)
			{
				var tmp = aa[i].trim().split(/  +/); //注意正则中是2个空格,1个空格会将Hainan University分割为2个字符串
				tt += "<tr>\n";
				tt += "  <td>" + (i+1) + "：	</td>\n";
				tt += "  <td>" + tmp[0] + "</td>\n";
				if(aa.length > 1){   //当输入有误,服务器返回错误信息时,无第三列可以显示
					tt += "  <td>&nbsp;&nbsp;&nbsp;&nbsp;" + tmp[1] + "</td>\n";
				}
				tt += "</tr>\n"
			}
			tt += "</tbody>\n";
			
			table_type.append(tt);
			table_type.css("display","block");
		}
		function turn(obj)
		{
			var site_table = $("#change");

			if(obj.value == "收起所有站点")
			{
				site_table.css("display","none");
				obj.value="查询所有站点"
			}
			else
			{
				//20190423 增加查询全部站点的功能
				//清空
				site_table.html("");
				//执行查询
				htmlobj1 = $.ajax({
					url: "SearchAction",
					data: { Index: "1" },
					async: false
				});
				generate_table_DOM(htmlobj1, site_table);

				obj.value="收起所有站点"
			}
			
		}
		
		function seachSite(obj)
		{
			var siteName = document.getElementsByName("siteName")[0].value;
			if( 0 == siteName.length ){
				alert("请重新输入!")
				return;
			}
			//20190423 增加查询指定站点的节点
			var node_table = $("#HUsite");
			//清空
			node_table.html("");
			//执行查询
			htmlobj2 = $.ajax({
				url: "SearchAction",
				data: { Index: "2", Site: siteName },
				async: false
			});
			generate_table_DOM(htmlobj2, node_table);
			/*
			var HUsite = document.getElementById("HUsite");
			var SRLsite = document.getElementById("SRLsite");
			if(siteName=="HU")
			{
				HUsite.style.display = "block";
				SRLsite.style.display = "none";
			}
			if(siteName=="SRL")
			{
				HUsite.style.display = "none";
				SRLsite.style.display = "block";
			}
			*/
		}
		
		function seach(obj)
		{
			//20190422 增加根据Slice查询站点信息的功能
			var slice_table = $("#slice_zhoufeng");
			//清空
			slice_table.html("");
			//执行查询
			var sliceNodes = document.getElementsByName("sliceNodes")[0].value;
			if( 0 == sliceNodes.length ){
				alert("请重新输入!")
				return;
			}
			htmlobj3 = $.ajax({
				url: "SearchAction",
				data: { Index: "3", Slice: sliceNodes },
				async: false
			});
			generate_table_DOM(htmlobj3, slice_table);
			/*
			var slice_zhoufeng = document.getElementById("slice_zhoufeng");
			var slice_chengxi = document.getElementById("slice_chengxi");
			if(sliceNodes=="hu_zhoufeng")
			{
				slice_zhoufeng.style.display = "block";
				slice_chengxi.style.display = "none";
			}
			if(sliceNodes=="hu_chengxi"){
				slice_chengxi.style.display = "block";
				slice_zhoufeng.style.display = "none";
			}
			*/
		}
	</script>


</head>
<body style="background-image:url(images/1.jpg);background-repeat:no-repeat;background-size:100%; ">
<!--start-home-->
	<!-- <div class="header-middle">
		<a href="index.jsp"><img src="images/title.png" alt=" " /></a>
	</div> -->
	
		<!--header-top-->
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
								<li class="menu__item menu__item--current"><a href="seachSite.jsp" class="menu__link"><span class="menu__helper">站点信息查询</span></a></li>
								<li class="menu__item"><a href="script.jsp" class="menu__link"><span class="menu__helper">配置脚本及运行</span></a></li>
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
		<div class="services" id="services">
			<div class="container">

				 
				
				    
			<table cellpadding="0" cellspacing="0" border="0"  bgcolor="#FFFFFF">
			
				<tr height="30%">
					<td width="28%">
						<table border="0" height="100%" width="100%">
							<tr valign="top" >
								<td colspan="2" valign="top" align="left">
									<input  type="button" name="getAllSite" value="查询所有站点" onclick="turn(this)"/>
								</td>
							</tr>	
							<tr>
								<td>
									<table border="1" id = "change" style="display:none">
										<%
											String[] s={"Simula Research Laboratory(SRL)","Universitetet i Oslo(UIO)","Høgskolen i Gjøvik(HIG)","Universitetet i Tromsø(UIT)","Universitetet i Stavanger(UIS)","Universitetet i Bergen(UIB)","Universitetet i Agder(UIA)","Universitetet på Svalbard(UPS)","Universitetet i Trondheim(UIT)","Høgskolen i Narvik(HIN)","Høgskolen i Oslo og Akershus(HOA)","Karlstads Universitet(KU)","Universität Kaiserslautern(UK)","Hochschule Hamburg(HH)","Universität Duisburg-Essen(UDE)","Universität Darmstadt(UD)","Hainan University(HU)","Haikou College of Economics(HCOE)","The University of Kansas(TUOK)","New York University(NYU)","Korea University(KU)","National ICT Australia(NTA)"};
											for(int i=1; i < 23 ; i++)
											{
										%>
										<tr>
											<td>
												<%=i %>：	
											</td>
											<td>
												<%=s[i-1]%>
											</td>
										</tr>
										<% 	
											}
										%>
									</table>
								</td>
							</tr>
						</table>	
					</td>
								
					<td width="34%" valign="top">
							查询节点:<input type="text"  name= "siteName" />
							<input type = "button" value = "确认" onclick="seachSite(this)" >
							<table border="1" id = "HUsite" style="display:none">
										<%
											String[] site={"boao","longhu","bamenbay","wanqun","nanshan","yalongbay"};
											for(int i=1; i <= site.length ; i++)
											{
										%>
										<tr>
											<td>
												<%=i %>：	
											</td>
											<td>
												<%=site[i-1]%>
											</td>
										</tr>
										<% 	
											}
										%>
							</table>
							<table border="1" id = "SRLsite" style="display:none">
										<%
											String[] srlSite={"akerbrygge",
													"bygdoey",
													"tullinloekka",
													"frogner",
													"nordberg",
													"solvang",
													"nordreaker",
													"vestreaker",
													"skoeyen",
													"vaekeroe",
													"akerselva",
													"ullern"};
											for(int i=1; i <= srlSite.length ; i++)
											{
										%>
										<tr>
											<td>
												<%=i %>：	
											</td>
											<td>
												<%=srlSite[i-1]%>
											</td>
										</tr>
										<% 	
											}
										%>
							</table>
					</td>
					<td width="38%" valign="top">
							查询Slice_nodes<input type="text"  name= "sliceNodes" value=""/>
							<input type="button" value="确认" onclick="seach(this)"/>
							<table border="1" id = "slice_zhoufeng" style="display:none">
										<%
											String[] slice={"fisketorget.uib.nornet           boot",
													"fjoesnisse.uia.nornet            boot",
													"heimdal.ntnu.nornet              boot",
													"aunegaarden.uit.nornet           boot",
													"huoshankou.hkc.nornet            reinstall",
													"kapp.hig.nornet                  boot",
													"bondi.nicta.nornet               disabled",
													"coogee.nicta.nornet              disabled",
													"verlegerviertel.tuda.nornet      boot",
													"vaenern.kau.nornet               boot",
													"langoeyene.hioa.nornet           boot",
													"dongzhaigang.hkc.nornet          reinstall",
													"solvang.simula.nornet            boot",
													"eina.hig.nornet                  boot",
													"clinton.ku.nornet                boot",
													"bergenhus.uib.nornet             boot",
													"mariebergsskogen.kau.nornet      boot",
													"stenbron.kau.nornet              boot",
													"yongsan.korea.nornet             boot",
													"baldeneysee.ude.nornet           reinstall",
													"isbre.unis.nornet                boot",
													"nordlys.unis.nornet              boot"};
											for(int i=1; i <= slice.length ; i++)
											{
										%>
										<tr>
											<td>
												<%=i %>：	
											</td>
											<td>
												<%=slice[i-1]%>
											</td>
										</tr>
										<% 	
											}
										%>
							</table>
							<table border="1" id = "slice_chengxi" style="display:none">
										<%
											String[] slice_chengxi={"fjoesnisse.uia.nornet            boot",
													"wanlvyuan.hkc.nornet             reinstall",
													"amundsen.uit.nornet              boot",
													"bondi.nicta.nornet               disabled",
													"sokn.uis.nornet                  boot",
													"coogee.nicta.nornet              disabled",
													"verlegerviertel.tuda.nornet      boot",
													"clinton.ku.nornet                boot",
													"mariebergsskogen.kau.nornet      boot",
													"yongsan.korea.nornet             boot",
													"baldeneysee.ude.nornet           reinstall",
													"furuset.uio.nornet               boot",
													"kaiserberg.tukl.nornet           boot",
													"altenessen.ude.nornet            reinstall",
													"adventfjorden.unis.nornet        boot",
													"nanshan.hu.nornet                boot",
													"frogner.simula.nornet            boot",
													"bessungen.tuda.nornet            boot",
													"isfjorden.unis.nornet            boot",
													"ekeberg.uio.nornet               boot",
													"bygdoey.simula.nornet            boot",
													"bymarka.ntnu.nornet              boot"};
											for(int i=1; i <= slice_chengxi.length ; i++)
											{
										%>
										<tr>
											<td>
												<%=i %>：	
											</td>
											<td>
												<%=slice_chengxi[i-1]%>
											</td>
										</tr>
										<% 	
											}
										%>
							</table>
					</td>
				</tr>

				<tr style="top-margin:1em">
					<td colspan="3" valign="top">
					
						<%@include file="marquee.html"%>
					</td>
				</tr>
			</table>
				

				
			</div>
		</div>
		
		<!--start-smooth-scrolling-->
						<script type="text/javascript">
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
								<!--end-smooth-scrolling-->
		<a href="#house" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script src="js/bootstrap.js"></script>

</body>
</html>
