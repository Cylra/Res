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
		<script type="applisalonion/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="css/slider.css">
		<script src="js/jquery-1.11.1.min.js">
</script>
		<script type="text/javascript" src="js/move-top.js">
</script>
		<script type="text/javascript" src="js/easing.js">
</script>
		<!---<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>-->
		<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate( {
			scrollTop : $(this.hash).offset().top
		}, 900);
	});
});
</script>

<style type="text/css">
.nav-a {
	margin: 0;
	padding: 0;
	position: relative;
	z-index: 9999;
}

.basic-grey {
	position: relative;
	max-width: 100%;
	padding: 25px 15px 25px 10px;
	font: 12px Georgia, "Times New Roman", Times, serif;
	color: #888;
	text-shadow: 1px 1px 1px #FFF;
	border: 1px solid #E4E4E4;
	z-index: 0;
}

.basic-grey h1 {
	font-size: 25px;
	padding: 0px 0px 10px 40px;
	display: block;
	/*border-bottom: 1px solid #E4E4E4;*/
	margin: -10px -15px 30px -10px;;
	color: #000000;
	
}

.basic-grey h1>span {
	display: block;
	font-size: 12px;
	color: red;
}

.basic-grey label {
	display: block;
	margin: 0px;
	/*border: 1px solid red;*/
}

.basic-grey label>span {
	float: left;
	width: 25%;
	text-align: right;
	padding-right: 10px;
	margin-top: 10px;
	color: #000000;
}

.basic-grey input[type="text"],.basic-grey select {
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
	line-height: 15px;
	box-shadow: inset 0px 1px 4px #ECECEC;
	-moz-box-shadow: inset 0px 1px 4px #ECECEC;
	-webkit-box-shadow: inset 0px 1px 4px #ECECEC;
}

.basic-grey input[type=checkbox] {
	margin-left: 5px;
}

.basic-grey select {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	text-indent: 0.01px;
	text-overflow: '';
	width: 60%;
	height: 25px;
}

.button {
	background: #E27575;
	border: none;
	padding: 10px 25px 10px 25px;
	color: #FFF;
	box-shadow: 1px 1px 5px #B6B6B6;
	border-radius: 3px;
	text-shadow: 1px 1px 1px #9E3F3F;
	cursor: pointer;
}

.button:hover {
	background: #abcdef
}

.basic-grey .checkbox {
	padding: 7px 0 10px 0px;
	/*border: 1px solid red;*/
	overflow: hidden;
}

.basic-grey .checkbox span {
	display: block;
	float: left;
	color: #000000;
	margin: 0 20 0 0;
	width: 80px;
	text-align: right;
}

.basic-grey #div1 {
	display: block;
	padding-right: 20%;
	text-align: right;
}
</style>

	</head>
	<body
		style="background-image: ; background-repeat: no-repeat; background-size: 100%;">
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
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="logo" valign="top">
						<h1>
							<a href="index.jsp"><img src="images/title.png" />
							</a>
						</h1>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<div class="top-menu" valign="center">
						<nav class="menu menu--francisco">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item">
								<a href="multiPath.jsp" class="menu__link"><span
									class="menu__helper">多路径传输技术</span>
								</a>
							</li>
							<li class="menu__item">
								<a href="seachSite.jsp" class="menu__link"><span
									class="menu__helper">站点信息查询</span>
								</a>
							</li>
							<li class="menu__item menu__item--current">
								<a href="script.jsp" class="menu__link"><span
									class="menu__helper">配置脚本及运行</span>
								</a>
							</li>
							<li class="menu__item">
								<a href="chengguo.jsp" class="menu__link"><span
									class="menu__helper">成果展示</span>
								</a>
							</li>
							<li class="menu__item">
								<a href="about.html" class="menu__link"><span
									class="menu__helper">关于我们</span>
								</a>
							</li>
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

					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active">
								<a href="#expeditions" id="expeditions-tab" role="tab"
									data-toggle="tab" aria-controls="expeditions"
									aria-expanded="true">缓冲区脚本配置</a>
							</li>
							<li role="presentation">
								<a href="#tours" role="tab" id="tours-tab" data-toggle="tab"
									aria-controls="tours">路径管理配置</a>
							</li>
							<li role="presentation">
								<a href="#3" role="tab" id="3-tab" data-toggle="tab"
									aria-controls="3">拥塞控制算法脚本配置</a>
							</li>
							<!-- <li role="presentation">
								<a href="#robus" role="tab" id="robus-tab" data-toggle="tab"
									aria-controls="robus">鲁棒性脚本配置</a>
							</li> -->

						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active"
								id="expeditions" aria-labelledby="expeditions-tab">
								<%@include file="huanchong.jsp"%>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours"
								aria-labelledby="tours-tab">
								<%@include file="pathConfigure.jsp"%>
								<div class="clearfix"></div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="3"
								aria-labelledby="3-tab">
								<%@include file="yongse.jsp"%>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="robus"
								aria-labelledby="robus-tab">
								<%@include file="robusConfigure.jsp"%>
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

	$().UItoTop( {
		easingType : 'easeOutQuart'
	});

});
</script>
		<!--end-smooth-scrolling-->
		<a href="#house" id="toTop" class="scroll" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
		<script src="js/bootstrap.js">
</script>

	</body>
</html>
