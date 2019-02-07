<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>编辑会员资料</title>
    
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
    <span class="modular fl"><i class="edit_user"></i><em>编辑会员资料</em></span>
  </div>
  <table class="list-style">
   
   <tr>
    <td style="text-align:right;">是否删除：</td>
   
    <td> 
   
    <form action="UserServlet?method=updateUserDel&u_id=${user.u_id}" method="post">
    <input type="submit" name="delete" class="tdBtn" value="是的"/>&nbsp;
    </form>
    <form action="UserServlet?method=userfindbyuId1&u_id=${user.u_id}" method="post">
    <input type="submit" class="tdBtn" value="再想想"/>
     </form>
    </td>
   
    
   </tr>
   
  </table>
 </div>
  </body>
</html> 