<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>修改密码</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="backmanger/style/adminStyle.css"
	type="text/css"></link>
<script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
	$(function new1() {
		$("#newpassword1").blur(function() {
			var newpassword1 = $("#newpassword1").val();
			var oldpasswrod = $("#oldpassword").val();
			var newpassword2 = $("#newpassword2").val();
			if (oldpasswrod!=""&&newpassword1==oldpasswrod) {
				$("#newpassword3").html("<img src='/Shop1.0/images/no.gif' height='18px'/>新密码与旧密码不可相同！");		
			}else if(newpassword1==""||newpassword1==null){
				$("#newpassword3").html("<img src='/Shop1.0/images/no.gif' height='18px'/>密码不能为空！");
				$("#newpassword4").html("");
			}else if(newpassword1.indexOf(" ")!=-1){
				$("#newpassword3").html("<img src='/Shop1.0/images/no.gif' height='18px'/>密码不能包含空格！");
				$("#newpassword4").html("");
			}else if(newpassword1!=newpassword2){
				$("#newpassword3").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
				$("#newpassword4").html("<img src='/Shop1.0/images/no.gif' height='18px'/>两次密码不一致！");
			}else if(newpassword1==newpassword2){
				$("#newpassword3").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
				$("#newpassword4").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
			}else{
				$("#newpassword3").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
			}
		});
	});
	$(function new2() {	
		$("#newpassword2").blur(function() {
			var newpassword1 = $("#newpassword1").val();
			var newpassword2 = $("#newpassword2").val();
			var oldpasswrod = $("#oldpassword").val();
			if (oldpasswrod!=""&&newpassword1==oldpasswrod) {
				$("#newpassword4").html("");			
			}else if (newpassword1==""||newpassword1==null) {
				$("#newpassword4").html("");			
			}else if(newpassword1.indexOf(" ")!=-1){
				$("#newpassword4").html("");
			}else if(newpassword1!=newpassword2){
				$("#newpassword4").html("<img src='/Shop1.0/images/no.gif' height='18px'/>两次密码不一致！");
			}else{
				$("#newpassword4").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
			}
		});
	});
	$(function old() {		
		$("#oldpassword").blur(function() {
			$.post("ManagerServlet",{method:"paw",oldpassword:$("#oldpassword").val()},function(data){
				var num = data;
				if (num==1) {
					$("#oldpassword1").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
					return 1;
				} else{
					$("#oldpassword1").html("<img src='/Shop1.0/images/no.gif' height='18px'/>密码错误！");
					return 2;
				}
			});
		});
	});
	$(function paw() {	
		$("#btn1").click(function(){
			$.post("ManagerServlet",{method:"paw",oldpassword:$("#oldpassword").val()},function(data){
				var n = data;
				var newpassword1 = $("#newpassword1").val();
				var newpassword2 = $("#newpassword2").val();
				if (n==1&&newpassword1!=""&&newpassword1!=null) {
					$.post("ManagerServlet",{method:"m_paw",newpassword:$("#newpassword1").val()},function(data){
						var nu = data;
						if (nu==1) {
							window.parent.location="${pageContext.request.contextPath}/adminLogin.jsp";
						} else{
							alert("修改密码失败!");
						}
					});
				} else{
					$("#paw").html("请输入正确的密码！");
				};
			});
		});
	});
	
</script>
</head>
<body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="user"></i><em>修改密码</em>
			</span>
		</div>
		<table class="noborder">
			<tr>
				<td width="15%" style="text-align:right;">当前账号：</td>
				<td><font>${manager.m_name}</font></td>
			</tr>
			<tr>
				<td style="text-align:right;">旧密码：</td>
				<td><input type="password" class="textBox length-middle"
					id="oldpassword" onblur="fun()" /><span id="oldpassword1"></span>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;">新密码：</td>
				<td><input type="password" class="textBox length-middle"
					id="newpassword1" /><span id="newpassword3"></span>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;">再次确认密码：</td>
				<td><input type="password" class="textBox length-middle"
					id="newpassword2" /><span id="newpassword4"></span>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;"></td>
				<td>
				<input type="submit" class="tdBtn" value="保存" id="btn1"/>
				<span id="paw"></span>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>