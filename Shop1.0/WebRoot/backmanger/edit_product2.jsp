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
    
    <title>批量上传</title>
    
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
  
  <form action="${pageContext.request.contextPath}/GoodsServlet?method=goodsAddAll" method="post" enctype="multipart/form-data">
  <table class="list-style">
   
   
   <tr>
    <td style="text-align:right;">产品缩图片：</td>
    <td>
     <label for="chanpinzhutu" class="labelBtn2">批量上传</label><br/>
   		<input type="file"  name="good_imgurl"/>
    </td>
   </tr>
   
 
   
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="发布新商品" class="tdBtn"/></td>
   </tr>
  </table>
  </form>
 </div>
  </body>
</html>
