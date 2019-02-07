<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<script type="text/javascript" src="backmanger/js/jquery.js">
	
</script>
<script type="text/javascript" src="backmanger/js/Particleground.js">
	
</script>
<link href="backmanger/style/adminStyle.css" rel="stylesheet"
	type="text/css" />
<style>
body {
	width: 100%;
	height: 100%;
	overflow: hidden;
	background-image: url("images/pc_loginBg.jpg");
	background-size: cover;
	position: absolute;
}
</style>
<script>
	$(document).ready(function() {
		$('body').particleground({
			dotColor : 'green',
			lineColor : '#c9ec6e'
		});
		$('.intro').css({
			'margin-top' : -($('.intro').height() / 2)
		});

	});
</script>
</head>
<body>
	<form action="ManagerServlet?method=login" method="post">
		<section class="loginform">
		<h1>你输入的帐号或密码错误，请重新输入!</h1>
		<ul>
			<li><label>账号：</label> <input type="text" class="textBox"
				placeholder="管理员账号" name="username" style="height: 100%;"/></li>
			<li><label>密码：</label> <input type="password" class="textBox"
				placeholder="登陆密码" name="password" style="height: 100%;"/></li>
			<li>
				<center>
					<input type="submit" value="登录" style="width: 90px;height: 30px">
				</center></li>
		</ul>
		</section>
	</form>
</body>
</html>
