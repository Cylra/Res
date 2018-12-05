<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
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
					$(".scroll").click(function(event)
					{		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
					});
				});
	</script>
	

  </head>
  
  <body>
  	<!--start-home-->
	<!-- <div class="header-middle">
		<a href="index.jsp"><img src="images/title.png" alt=" " /></a>
	</div> -->
  		<!--header-top-->
	<div class="">
	  <div class="container">
			<nav class="navbar navbar-default">
			<!-- Brand and toggle get grouped for better mobile display -->
			
			<div class="navbar-header">
				<div class="logo" >
					<h1><a href="index.jsp"><img src="images/title.png" /></a></h1>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
				  <div class="top-menu">
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

	</div>
	</div>
  	
  	
  	
  	
  	
  	
  	<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() 
									{
										$().UItoTop({ easingType: 'easeOutQuart' });
									});
								</script>
								<!--end-smooth-scrolling-->
		<a href="#house" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script src="js/bootstrap.js"></script>
  </body>
</html>
