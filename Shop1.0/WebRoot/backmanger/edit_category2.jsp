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
    
    <title>修改信息</title>
    
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
    <span class="modular fl"><i></i><em>修改信息</em></span>
  </div>
   <form action="GoodsTypeServlet" method="post">
   <input type="hidden" name="method" value="goodstypeUpdate">
   
   <input type="hidden" name="g_id" value="${goodtype.gt_id}">
   
   <br>分类名称：<input type="text" name="gt_typename" class="textBox length-long" placeholder="${goodtype.gt_typename}"/><br><br>
        分类描述：<textarea rows="5" cols="30" type="text" name="gt_mark" class="textBox length-long" placeholder="输入分类描述"/></textarea>
   <br><br><input type="submit" value="保存" class="tdBtn" >
   
   </form>
 
 </div>
  </body>
</html>
