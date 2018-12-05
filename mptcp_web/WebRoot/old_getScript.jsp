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
			max-width: 100%;
			padding: 25px 15px 25px 10px;
			font: 12px Georgia, "Times New Roman", Times, serif;
			color: #888;
			text-shadow: 1px 1px 1px #FFF;
			/*border:1px solid #E4E4E4;*/
			z-index: 0;
			
		}
		.basic-grey textarea 
		{
			border: 1px solid #DADADA;
			color: #000000;
			height: 500px;
			margin-bottom: 20px;
			margin-right: 6px;
			margin-top: 2px;
			outline: 0 none;
			padding: 3px 3px 3px 5px;
			width: 100%;
			font-size: 12px;
			line-height:15px;
			box-shadow: inset 0px 1px 4px #ECECEC;
			-moz-box-shadow: inset 0px 1px 4px #ECECEC;
			-webkit-box-shadow: inset 0px 1px 4px #ECECEC;
		}
		.basic-grey h1 {
			font-size: 25px;
			padding: 0px 0px 10px 10px;
			display: block;
			margin: -10px -15px 10px -10px;;
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
			text-align: left;
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
		
		
		
		.basic-grey .button {
			background: #E27575;
			border: none;
			padding: 10px 25px 10px 25px;
			margin-right:20px;
			color: #FFF;
			box-shadow: 1px 1px 5px #B6B6B6;
			border-radius: 3px;
			text-shadow: 1px 1px 1px #9E3F3F;
			cursor: pointer;
			float: left;
		}
		.basic-grey .button:hover 
		{
			background: #abcdef
		}
		
		.basci-grey textarea 
		{
			padding:5px 3px 3px 5px;
			
		}
				
	</style>
	<script type="text/javascript" src="jquery-3.1.1.js"></script>
	<script type="text/javascript">
	<%
		String script = (String)request.getAttribute("script");
	%>	
	
		$(document).ready(function()
		{
			var xmlHttpRequest = null;
			var interval = null;
			var flag = 1;
			var script = $("#area").html();
			
			$("#run").click(function()
			{
				if($("#run").val() == "查看脚本")
				{
					$("#area").html(script);
					$("#run").val("运行脚本");
					$("#result").css("display" , "none");
				}
				else
				{
					if(flag == 1)
					{
						flag = 0 ;
						$("#run").val("正在运行");
						
						var xmlHttpRequest = createXmlHttpRequest();
						
						if(null != xmlHttpRequest)
						{
							xmlHttpRequest.open("GET","RunAction",true);
							xmlHttpRequest.onreadystatechange = RunResult;
							xmlHttpRequest.send(null);
							//脚本运行后，开始接受数据(实际上是调用数据Servlet) by tqn
							interval = setInterval(CollecResult , 1000);
						};
					}
					else
					{
							alert("脚本正在运行,请等候结束!")
					}
				}
				
			});
			function createXmlHttpRequest()
			{
				if(window.ActiveXObject)
				{
					xmlHttpRequest = new ActiveXObject("microsoft.XMLHTTP");
				}
				else if(window.XMLHttpRequest)
				{
					xmlHttpRequest = new XMLHttpRequest();
				}
				return xmlHttpRequest;
			};
			
			var RunResult = function()
			{
				if(xmlHttpRequest.readyState == 4 )
				{
					if(xmlHttpRequest.status == 200)
					{
						$("#run").val("查看脚本");
						$("#result").css("display" , "block");
						flag = 1;
						clearInterval(interval);
						CollecResult();
						
					}
				}
			}
			var CollecResult = function()
			{
				var xmlHttpRequest = createXmlHttpRequest();
					
					if(null != xmlHttpRequest)
					{
						xmlHttpRequest.open("GET","CollectResultAction",true);
						xmlHttpRequest.onreadystatechange = ShowResult;
						xmlHttpRequest.send(null);
						//脚本运行后，开始接受数据(实际上是调用数据Servlet) by tqn
					};
			}
			
			var ShowResult = function()
			{
				if(xmlHttpRequest.readyState == 4 )
				{
					if(xmlHttpRequest.status == 200)
					{
						//显示
						var content = xmlHttpRequest.responseText;
						$("#area").html(content)
					}
				}
			}
			
			//this block is the function that when button result is clicked
			//this function will send a request to the server and it will run the R language for constructing the pdf photograph 
			//and save it on specific place to read it
			$("#result").click(function()
			{
				
				var xmlHttpRequest = createXmlHttpRequest();
				$("#result").val("on loading!");
				
				if(null != xmlHttpRequest)
				{
					xmlHttpRequest.open("GET","GetResultAction",true);
					xmlHttpRequest.onreadystatechange = visualResult;
					xmlHttpRequest.send(null);
				};
			})
			
			var visualResult = function()
			{
				if(xmlHttpRequest.readyState == 4 )
				{
					if(xmlHttpRequest.status == 200)
					{
							alert("Success!");
							$("#result").css("display" , "none");
							$("#showResult").css("display" , "block")
					}
				}
			}
			
		});
	
	</script>
	
  </head>
  
  <body>
  		<%@include file="topTest.jsp"%>
  		<div class= "container">
					<form class="basic-grey">
					
						<h1>配置脚本如下: </h1>
						<label>
							<input class = "button" type="button" id ="run"  value="运行脚本"/>
						</label>
						<label>
							<input class = "button" id = "result" type="button" style="display:none;"  value="获得结果"/>
						</label>
						<label>
								<input class = "button" id = "showResult" type="button" value="Show Result" style="display:none">
						</label>
						<label>
							<%
								
								if(script != null )
								{
							%>
								<textarea id = "area" name="details"  readonly="true"><%=script %>
                   				 </textarea>
							<%
								}
							%>						
						</label>
					</form>
  		</div>
  </body>
</html>
