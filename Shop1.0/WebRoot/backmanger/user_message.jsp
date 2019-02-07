<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员留言</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link><script type="text/javascript" src="backmanger/js/public.js"></script><script type="text/javascript" src="backmanger/js/jquery.js"></script></head>
  
  <body>
    <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>会员留言</em></span>
  </div>
  <table class="list-style Interlaced">
   <tr>
     <th>会员账号</th>
     <th>留言时间</th>
     <th>处理状态</th>
     <th>留言内容</th>
     <th>管理员回复</th>
     <th>操作</th>
   </tr>
   <tr>
    <td class="center">DeathGhost</td>
    <td class="center">2015-04-18 10:39</td>
    <td class="center">未处理</td>
    <td width="300">
     <div style="width:400px;height:50px;overflow:scroll;overflow-x:hidden;">
      这里是留言内容
     </div>
    </td>
    <td width="300">
     <div style="width:400px;height:50px;overflow:scroll;overflow-x:hidden;">
      这里是留言内容
     </div>
    </td>
    <td class="center">
     <a href="reply_message.html" class="inline-block" title="回复"><img src="images/icon_title.gif"/></a>
     <a class="inline-block" title="移除"><img src="images/icon_drop.gif"/></a>
    </td>
   </tr>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
  </body>
</html>
