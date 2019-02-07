<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_info.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link>
 </head>
  
  <body>
   <div class="wrap">
   <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>用户详情</em></span>
   </div>
   </div>
 
    
    <table id="table-4" style="width:500px">
    <tr class="center"><td style="width:100px;height:35px">用户编号</td><td style="width:200px"> ${user.u_id}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">用户名</td><td> ${user.username}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">性别</td><c:if test="${user.u_sex eq 1}">
    <td class="center">男</td>
    </c:if>
    <c:if test="${user.u_sex eq 0}">
    <td class="center">女</td>
    </c:if></tr>
    <tr class="center"><td style="width:100px;height:35px">居住地</td><td> ${user.u_residence}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">密码</td><td> ${user.u_password}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">头像</td><td> ${user.u_img}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">真实姓名</td><td> ${user.realname}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">身份证号</td><td> ${user.u_idcard}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">生日</td><td> ${user.birthday}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">电话号码</td><td> ${user.u_phone}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">个性签名</td><td> ${user.userinfo}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">用户状态</td><td> ${user.state}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">注册时间</td><td> ${user.regist_time}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">上次登陆时间</td><td> ${user.login_time}</td></tr>
    <tr class="center"><td style="width:100px;height:35px">删除</td><td> ${user.u_del}<span><a href="<%=path%>/UserServlet?method=userfindbyuId3&u_id=${user.u_id}" class="inline-block" title="编辑"><img src="images/icon_edit.gif"/></a></span></td></tr>
  
    </table>
  
    
  </body>
</html>
