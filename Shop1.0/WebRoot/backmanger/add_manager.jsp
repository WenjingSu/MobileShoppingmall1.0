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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="backmanger/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#sub1").click(function(){    
   		var username = $("#username").val();
   		var newpassword1 = $("#password1").val();
			var newpassword2 = $("#password2").val();
			if (username!=""&&username!=null&&username.indexOf(" ")==-1&&newpassword1!=""&&newpassword1!=null&&newpassword1.indexOf(" ")==-1&&newpassword1==newpassword2) {
				$.post("ManagerServlet",{method:"add_manager",m_name:username,m_password:newpassword1},function(data){
					var num = data;
					if (num==1) {
						window.location.href="${pageContext.request.contextPath}/backmanger/m_addWin.jsp";
					} else if(num==2){
						alert("添加失败");
					};
				});
			};
		});

		$("#username").blur(function(){
			var username = $("#username").val();
			$.post("ManagerServlet",{method:"m_name",m_name:username},function(data){
					var num = data;
				if (num==1) {
					if (username==""||username==null) {
						$("#username1").html("<img src='/Shop1.0/images/no.gif' height='18px'/>帐号不能为空！");						
					} else if(username.indexOf(" ")!=-1) {
						$("#username1").html("<img src='/Shop1.0/images/no.gif' height='18px'/>帐号不能包含空格！");		
					} else {
						$("#username1").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");		
					};
				}else{
					$("#username1").html("<img src='/Shop1.0/images/no.gif' height='18px'/>帐号已存在！");
				}
			});
		});

		$("#password1").blur(function(){
			var newpassword1 = $("#password1").val();
			var newpassword2 = $("#password2").val();
			if(newpassword1==""||newpassword1==null){
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
			};
		});
		
		$("#password2").blur(function(){
			var newpassword1 = $("#password1").val();
			var newpassword2 = $("#password2").val();
			if (newpassword1==""||newpassword1==null) {
				$("#newpassword4").html("");			
			}else if(newpassword1.indexOf(" ")!=-1){
				$("#newpassword4").html("");
			}else if(newpassword1!=newpassword2){
				$("#newpassword4").html("<img src='/Shop1.0/images/no.gif' height='18px'/>两次密码不一致！");
			}else{
				$("#newpassword4").html("<img src='/Shop1.0/images/yes.gif' height='18px'/>");
			};
		});
	});
</script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>添加管理员</em></span>
  </div>
  <table class="noborder">
   <tr>
    <td width="15%" style="text-align:right;">请输入账号：</td>
    <td><input type="text" class="textBox length-middle" id="username"/>
    		<span id="username1"></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">请输入密码：</td>
    <td><input type="password" class="textBox length-middle" id="password1"/>
    		<span id="newpassword3"></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">再次确认密码：</td>
    <td><input type="password" class="textBox length-middle" id="password2"/>
    		 <span id="newpassword4"></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="保存" id="sub1"/></td>
   </tr>
  </table>
 </div>
</body>
</html>
