<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  <title>添加新会员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link></head>
  
  <body>
   <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="add_user"></i><em>添加新会员</em></span>
  </div>
  <form action="user_list.html">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">会员昵称：</td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">会员邮箱：</td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">设置密码：</td>
    <td><input type="password" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">手机号码：</td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="添加新用户"/></td>
   </tr>
  </table>
  </form>
 </div>
  </body>
</html>
