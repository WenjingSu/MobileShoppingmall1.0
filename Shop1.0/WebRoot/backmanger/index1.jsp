<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<frameset rows="76,*" framespacing="0" border="0">
  <frame src="backmanger/top.jsp" id="header-frame" name="header-frame" frameborder="no" scrolling="no">
  <frameset cols="180, 10, *" framespacing="0" border="0" id="frame-body">
    <frame src="backmanger/menu.jsp" frameborder="no" scrolling="yes">
    <frame src="backmanger/bar.jsp" frameborder="no" scrolling="no">
    <frame src="backmanger/main.jsp" name="mainCont" frameborder="no" scrolling="yes">
  </frameset>
</frameset><noframes></noframes>
  </head>
  
  <body>
    
  </body>
</html>
