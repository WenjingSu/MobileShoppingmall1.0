<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>添加管理员</title>

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
				<span class="modular fl"><i class="user"></i><em>添加管理员</em></span>
			</div>
			<table class="noborder">
				<tr>
					<td width="15%" style="text-align: center;font-size: x-large;">添加管理员成功!</td>
				</tr>
			</table>
		</div>
	</body>
</html>