<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理系统</title>
    
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
<div class="header">
 <div class="logo">
  <img src="images/admin_logo.png" title="在哪儿"/>
 </div>
 <div class="fr top-link">
  <a href=" ${pageContext.request.contextPath}/frontmanger/index.jsp" target="_blank" title="访问站点"><i class="shopLinkIcon"></i><span>访问站点</span></a>
  <a href=" ${pageContext.request.contextPath}/ManagerServlet?method=managerFindAll" target="mainCont" title="${manager.m_name}"><i class="adminIcon"></i><span>管理员：${manager.m_name}</span></a>
  <a href=" ${pageContext.request.contextPath}/backmanger/revise_password.jsp" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
  <a href=" ${pageContext.request.contextPath}/ManagerServlet?method=exit" target="_parent" title="安全退出" style="background:rgb(60,60,60);"><i class="quitIcon"></i><span>安全退出</span></a>
 </div>
</div>
</body>
</html>
