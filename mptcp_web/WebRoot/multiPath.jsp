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


</head>
<body style="background-image:url(images/14.jpg);background-repeat:no-repeat;background-size:100%; ">
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
								<li class="menu__item menu__item--current"><a href="multiPath.jsp" class="menu__link"><span class="menu__helper">多路径传输技术</span></a></li>
								<li class="menu__item"><a href="seachSite.jsp" class="menu__link"><span class="menu__helper">站点信息查询</span></a></li>
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

				 
				<div class="inner_tabs">
				    
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">多路径传输技术</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">NorNet国际测试床</a></li>
						
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 2em;">
									<img src="images/mptcp2.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#fff;font-size:16px;"><font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在新的互联网环境中，不同的接入技术相互融合，通信终端通常具有多种网络接口，比如笔记本电脑同时配置有有线局域网和无线Wifi网络适配器，智能手机既可以接入蜂窝网络(UMTS或3G等)，又可以接入Wifi网络。另一方面，网络运营商通常会在接入链路和回程链路配置备用链路和设备，在网络失效时发挥作用。由此以来，两个通信端点之间就有可能存在多条路径。自然而然，出现了同时使用多条路径的想法，以此提升端到端连接的健壮性和传输性能。这样的多路径连接可以均衡负载、动态切换，自动将业务从最拥塞最易中断的路径上转移到较好的路径上。</font></p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 1.5em;">
									<img src="images/nornet.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着多路径传输技术的日趋成熟，急迫需要构建一个真实的分布式的测试环境，NorNet Testbed 就是由挪威simula国家实验室于2013构建起来的世界上第一个基于下一代互联网多宿主系统新技术的大规模多路径传输的测试床基础设
施。该测试床由NorNet Core Test Bed (NNC-TB)和NorNet Edge Test Bed(NNE-TB)两部分组成，前者是基于固网的多路径传输的测试床设施，后者则是基于移动互联标准(MBB标准、 WiFi)的多路径传输而设计的。 两者的目标非常明
确，就是为测试下一代互联网多宿主（Multi-Homing）系统性能的国际测试床。</p>
								</div>
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
				</div>

				
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
