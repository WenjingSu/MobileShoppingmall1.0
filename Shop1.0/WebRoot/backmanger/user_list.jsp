<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="backmanger/js/public.js"></script><link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link><script type="text/javascript" src="backmanger/js/jquery.js"></script></head>
  
  <body>
    <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>用户列表</em></span>
    <span class="modular fr"><a href="add_user.html" class="pt-link-btn">+添加新用户</a></span>
  </div>
  <div class="operate">
   <form action="UserServlet" method="post">
   <input type="hidden" name="method" value="userfindbyuId2">
    <input type="text" name="userId" class="textBox length-long" placeholder="输入用户编号"/>
    <input type="submit" value="查询" class="tdBtn" >
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>用户编号</th>
     <th>用户名</th>
     <th>性别</th>
     <th>居住地</th>
     <th>生日</th>
     <th>电话号码</th>
     <th>个性签名</th> 
     <th>查看详情</th>
   </tr>
  
    <c:forEach items="${users}" var="u">  
    <tr>
    <td class="center"><input type="checkbox"/><span class="middle">${u.u_id}</span></td>
    <td class="center">${u.username}</td>
    <c:if test="${u.u_sex eq 1}">
    <td class="center">男</td>
    </c:if>
    <c:if test="${u.u_sex eq 0}">
    <td class="center">女</td>
    </c:if>
    <td class="center">${u.u_residence}</td>
    <td class="center">${u.birthday}</td>
    <td class="center">${u.u_phone}</td>
    <td class="center">${u.userinfo}</td>
    <td class="center">
     <a href="<%=path%>/UserServlet?method=userfindbyuId1&u_id=${u.u_id}">查看</a>
    </td>
    
    </tr>
    </c:forEach>
   
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
