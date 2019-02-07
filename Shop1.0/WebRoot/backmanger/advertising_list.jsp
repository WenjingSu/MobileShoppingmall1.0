<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>广告列表</title>
    
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
    <span class="modular fl"><i></i><em>广告列表</em></span>
    <span class="modular fr"><a href="advertising.html" class="pt-link-btn">+添加广告</a></span>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>广告名称</th>
    <th>广告位置</th>
    <th>媒介类型</th>
    <th>操作</th>
   </tr>
   <tr>
    <td>五一劳动节</td>
    <td>首页导航下方通栏</td>
    <td>图片</td>
    <td class="center">
     <a href="advertising.html" title="编辑"><img src="images/icon_edit.gif"/></a>
     <a title="删除"><img src="images/icon_drop.gif"/></a>
    </td>
   </tr>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle"/>
	  </div>
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
