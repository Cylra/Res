<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <style type="text/css">
    	#button
    	{
    		width: 150px;
    		border-right:1px solid #000;
    		padding:0 0 1em 0;
    		margin-bottom:1em ; 
    		font-family:"宋体";
    		font-size:13px;
    		background: #ff9933
    		color: #000000;
    	}
    	#button ul
    	{
    		list-style: none;
    		margin: 0;
    		padding: 0
    		border: none;
    	}
    	#button li
    	{
    		margin: 0;
    		border-bottom-width: 1px;
    		border-bottom-style: solid;
    		border-bottom-color: #ffff00;
    	}
    	#button li a
    	{
    		display: block;
    		padding: 5px 5px 5px 0.5em;
    		background-color: #ff9933;
    		color:#fff;
    		text-decoration: none;
    		width: 100%;
    		border-right-width: 10px;
    		border-left-width: 10px;
    		border-right-style: solid;
    		border-left-style: solid;
    		border-right-color: #ffcc00;
    		border-left-color: #ffcc00;
    	}
    	html>body #button li a
    	{
    		width:auto;
    	}
    	#button li a:hover 
    	{
    		background-color: #ffcc00;
    		color:#fff;
    		border-right-width: 10px;
    		border-left-width: 10px;
    		border-right-style: solid;
    		border-left-style: solid;
    		border-right-color: #ff00ff;
    		border-left-color: #ff00ff;
    	}
    </style>

  </head>
  
  <body>
	<div>
		<ul id="button">
			<li><a href="#">首页1</a></li>
			<li><a href="#">首页2</a></li>
			<li><a href="#">首页3</a></li>
			<li><a href="#">首页4</a></li>
			<li><a href="#">首页5</a></li>
			<li><a href="#">首页6</a></li>
		
		</ul>
	</div>  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </body>
</html>
