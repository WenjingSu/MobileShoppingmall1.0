<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员等级</title>
    
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
    <span class="modular fl"><i class="user"></i><em>会员等级</em></span>
    <span class="modular fr"><a href="add_user_rank.html" class="pt-link-btn">+添加会员等级</a></span>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>会员类型</th>
    <th>等级图标</th>
    <th>等级名称</th>
    <th>等级折扣</th>
    <th>操作</th>
   </tr>
   <tr>
    <td>
     <img src="images/user_02.png"/>
     <span class="middle">普通用户组</span>
    </td>
    <td class="center"><img src="#" class="thumbnail"/></td>
    <td class="center">普通会员</td>
    <td class="center">88%</td>
    <td class="center">
     <a class="block">
      <img src="images/icon_drop.gif"/>
     </a>
    </td>
   </tr>
   <tr>
    <td>
     <img src="images/user_01.png"/>
     <span class="middle">特殊用户组</span>
    </td>
    <td class="center"><img src="#" class="thumbnail"/></td>
    <td class="center">商户会员</td>
    <td class="center">85%</td>
    <td class="center">
     <a class="block">
      <img src="images/icon_drop.gif"/>
     </a>
    </td>
   </tr>
  </table>
 </div>
  </body>
</html>
