<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  <title>管理员回复</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link><script type="text/javascript" src="backmanger/js/jquery.js"></script><script type="text/javascript" src="backmanger/js/public.js"></script></head>
  
  <body>
   <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>管理员回复</em></span>
  </div>
  <dl>
   <dt class="R-userTitle">DeathGhost:</dt>
   <dd class="R-userCont">这里是用户留言信息哦....</dd>
   <dt class="R-adminTitle">管理员</dt>
   <dd class="R-adminCont">这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!这里是管理员回复信息!</dd>
  </dl>
  <hr/>
  <div>
   <textarea class="textarea block" style="padding:1em;"></textarea>
   <input type="submit" value="回复 " class="tdBtn" style="margin:8px 0;"/>
  </div>
 </div>
  </body>
</html>
