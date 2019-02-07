<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>站点设置</title>
    
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
    <span class="modular fl"><i class="settings"></i><em>站点设置</em></span>
  </div>
  <table class="noborder">
   <tr>
    <td style="width:15%;text-align:right;"><b>站点名称：</b></td>
    <td><input type="text" class="textBox length-long"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>关键词设置：</b></td>
    <td><input type="text" class="textBox length-long"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>站点描述：</b></td>
    <td><input type="text" class="textBox length-long"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>ICP备案号：</b></td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>公司名称：</b></td>
    <td><input type="text" class="textBox length-long"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>电子邮件：</b></td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>联系电话：</b></td>
    <td><input type="text" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>关闭站点：</b></td>
    <td>
     <input type="radio" name="zhandian" id="yes"/>
     <label for="yes">是</label>
     <input type="radio" name="zhandian" id="no"/>
     <label for="no">否</label>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>关闭站点提示：</b></td>
    <td>
     <textarea class="textarea">网站正在内测中...</textarea>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="保存" class="tdBtn"/></td>
   </tr>
  </table>
 </div>
  </body>
</html>
