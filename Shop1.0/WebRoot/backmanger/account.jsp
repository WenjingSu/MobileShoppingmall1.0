<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>会员列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link></head>
  
  <body>
<div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="account_user"></i><em>会员列表</em></span>
    <span class="modular fr"><a href="account_details.html" class="pt-link-btn">资金变动明细</a></span>
  </div>
  <table class="noborder">
   <tr>
    <td style="text-align:right;width:15%;">当前会员：</td>
    <td>DeathGhost</td>
   </tr>
   <tr>
    <td style="text-align:right;">账户变动原因：</td>
    <td>
     <textarea class="textarea" style="height:100px;outline:none;"></textarea>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">可用资金账户：</td>
    <td>
     <select class="textBox">
      <option>增加</option>
      <option>减少</option>
     </select>
     <input type="text" class="textBox length-short"/>
     <span class="middle"><i>￥</i><b>0.00</b></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">冻结资金账户：</td>
    <td>
     <select class="textBox">
      <option>增加</option>
      <option>减少</option>
     </select>
     <input type="text" class="textBox length-short"/>
     <span class="middle"><i>￥</i><b>0.00</b></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td>
     <input type="submit" value="确认" class="tdBtn"/>
     <input type="reset" value="重置" class="tdBtn"/>
    </td>
   </tr>
  </table>
 </div>
  </body>
</html>
