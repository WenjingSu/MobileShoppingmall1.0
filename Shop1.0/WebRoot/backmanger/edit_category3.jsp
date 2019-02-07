<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加一级分类</title>
    
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
    <span class="modular fl"><i></i><em>添加二级分类</em></span>
  </div>
   <form action="GoodsTypeServlet" method="post">
   <input type="hidden" name="method" value="goodstypeAddChildren">
   <input type="hidden" name="g_id" value="${g_id}">
   <br><input type="text" name="gt_typename" class="textBox length-long" placeholder="输入分类名称"/><br><br>
   <textarea rows="5" cols="30" type="text" name="gt_mark" class="textBox length-long" placeholder="输入分类描述"/></textarea>
   <input type="submit" value="保存" class="tdBtn" >
   
   </form>
 
 </div>
  </body>
 
</html>
