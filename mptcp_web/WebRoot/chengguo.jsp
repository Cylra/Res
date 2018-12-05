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
<body style="background-image:url(images/12.jpg);background-repeat:no-repeat;background-size:100%; ">
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
								<li class="menu__item"><a href="seachSite.jsp" class="menu__link"><span class="menu__helper">站点信息查询</span></a></li>
								<li class="menu__item"><a href="script.jsp" class="menu__link"><span class="menu__helper">配置脚本及运行</span></a></li>
								<li class="menu__item menu__item--current"><a href="chengguo.jsp" class="menu__link"><span class="menu__helper">成果展示</span></a></li>
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
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">缓冲区研究</a></li>
							<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">拥塞算法研究</a></li>
							<li role="presentation"><a href="#safari" role="tab" id="safari-tab" data-toggle="tab" aria-controls="safari">路径管理研究</a></li>
							<li role="presentation"><a href="#chen" role="tab" id="chen-tab" data-toggle="tab" aria-controls="chen">鲁棒性研究</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">DEMO展示</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 1.5em;">
									<img src="images/buf.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#000;">缓冲区研究:
        在图中，我们可以看出，缓冲区大小对于传输的影响。随着缓冲区的大小的增加，吞吐量随着增加，基本呈线性增加。设置一个合适的缓冲区的值，可以减少资源的消耗。</p>
									<ul style="font-size: 14px; line-height: 2em;" >
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1)<a class="media" href="pdf/run-ude-hu"><font color="#000000">运行脚本run-ude-hu</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)<a class="media" href="pdf/s-plot.R"><font color="#000000">可视化脚本s-plot.R</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/Results-uib-uis-mptcp.pdf"><font color="#000000">结果Results-uib-uis-mptcp.pdf</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/Results-hu-ude-mptcp.pdf"><font color="#000000">结果Results-hu-ude-mptcp.pdf</font></a></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 1.5em;">
									<img src="images/yongse.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#000;">拥塞算法研究：
图中选取了测试床上的可用的拥塞算法，在IPv6的环境下进行测试。不同的拥塞算法在MPTCP协议下传输的不同表现。但是可以看到，在IPv6的环境下，路径的容错性更高，很多针对特定的路径的算法没有体现出优势，事实上，随着IPv6的推广，新一代的协议结构会使拥塞算法的研究省去很多麻烦。</p>
									<ul style="font-size: 14px; line-height: 2em;" >
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1)<a class="media" href="pdf/run-hu-korea"><font color="#000000">运行脚本run-hu-korea</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)<a class="media" href="pdf/plot-HU-KOREA.R"><font color="#000000">可视化脚本plot-HU-KOREA.R</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/hioa-ku-18cc-IPv6.pdf"><font color="#000000">结果hioa-ku-18cc-IPv6.pdf</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/uib-uis-vc-mptcp-Uninett-Uninett.pdf"><font color="#000000">结果uib-uis-vc-mptcp-Uninett-Uninett.pdf</font></a></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
							
							<div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 1.5em;">
									<img src="images/pathMage.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#000;">路径管理：
从 MPTCP 多路径传输来讲，单纯的使用IPv4或IPv6技术进行数据传输，对总的网络传输吞吐量并没有太大影响；但对于TCP单路径传输来说，仅使用IPv6技术，明显能提高路径的吞吐量，改善路径的性能。</p>
									<ul style="font-size: 14px; line-height: 2em">
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1)<a class="media" href="pdf/run-pathmgr"><font color="#000000">运行脚本run-pathmgr</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)<a class="media" href="pdf/plot-pathmgr-barplots.R"><font color="#000000">可视化脚本plot-pathmgr-barplots.R</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/uib-hioa-9-9-10.pdf"><font color="#000000">结果uib-hioa-9-9-10.pdf</font></a></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="chen" aria-labelledby="chen-tab">
								<div class="col-md-5 col-sm-5 tab-image" style="margin-top: 1.5em;">
									<img src="images/lubangxing.png" alt="Medicinal">
								</div>
								<div class="col-md-7 col-sm-7 tab-info">
									<p style="color:#000;">鲁棒性研究：
鲁棒性及健壮性，在多路径网络环境中表现为多路径中一条或多条网络数据传输路径断开后，不影响数据的正确传输。图示表现多路径鲁棒性测试的一种方法，即利用防火墙阻断其中一条正在工作的传输路径，一段时间后复通阻断路径，记录整个过程数据收发情况，然后对记录结果进行可视化分析。总结说明多路径的鲁棒性。</p>
									<ul style="font-size: 14px; line-height: 2em">
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1)<a class="media" href="pdf/Experiment-Firewall-Setup"><font color="#000000">防火墙配置脚本Experiment-Firewall-Setup</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)<a class="media" href="pdf/Run-FirewallExperiment"><font color="#000000">运行脚本Run-FirewallExperiment</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)<a class="media" href="pdf/plot-vec.R"><font color="#000000">可视化脚本plot-vec.R</font></a></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(4)<a class="media" href="pdf/Results--wallaby-betzenberg.tukl.nornet-ipv6-1.pdf"><font color="#000000">结果Results--wallaby-betzenberg.tukl.nornet-ipv6-1.pdf</font></a></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
									<%@include file="demo.jsp"%>
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
