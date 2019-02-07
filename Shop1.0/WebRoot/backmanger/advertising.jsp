<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>广告位</title>
    
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
    <span class="modular fl"><i class="settings"></i><em>广告位</em></span>
  </div>
  <form action="advertising_list.html">
  <table class="noborder">
   <tr>
    <td style="width:15%;text-align:right;"><b>广告投放位置：</b></td>
    <td>
     <select class="textBox">
      <option>首页导航下方通栏</option>
      <option>文章详情侧边栏</option>
      <option>具体根据客户需求吧</option>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>媒介类型：</b></td>
    <td>
     <select class="textBox">
      <option>图片</option>
      <option>代码</option>
      <option>文字</option>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>上传图片：</b></td>
    <td><input type="file"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>输入广告代码：</b></td>
    <td><textarea class="textarea"></textarea></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="保存" class="tdBtn"/></td>
   </tr>
  </table>
  </form>
 </div>
  </body>
</html>
