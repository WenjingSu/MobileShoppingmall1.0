<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
	
	
 	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link rel="stylesheet" href="frontmanger/css/user.css" type="text/css"></link>
<link href="frontmanger/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="frontmanger/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="frontmanger/css/fasthover.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="frontmanger/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="frontmanger/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="frontmanger/js/jquery.min.js"></script>
<script src="frontmanger/css/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="frontmanger/css/jquery.countdown.css" />
<!-- countdown -->
<!-- //js -->
<!-- web fonts -->
<link href='http://fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
  <script type="text/javascript" src="/Shop1.0/backmanger/js/area.js"></script>
  <script type="text/javascript" src="Shop1.0/backmanger/js/laydate.js"></script>
  <script type="text/javascript" src="Shop1.0/backmanger/js/jquery-1.9.2.min.js"></script>
  <script type="text/javascript" src="Shop1.0/backmanger/js/imagecropper.js"></script>
  <!--  <link rel="stylesheet" href="Shop1.0/backmanger/style/imageUpload.css" type="text/css"></link>-->
  
  
  
  </head>
  
  
  
  <body onload="init();">
	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="frontmanger/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div id="login1" class="w3l_login">
				<a href="" data-toggle="modal" data-target="#myModal88"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> </a>
			</div>
			<div id="login2" class="w3l_login">
				<a href="#" onclick="return false"><img src="/Shop1.0/images/${user.u_img}" height="100%" width="100%"/></a>
			</div>
			
			<font id="myMode166" class="${user.username}"></font>
			<script type="text/javascript">
				var u=$("#myMode166").attr("class");
				if (u=="") {
					$('#myModal88').modal('show');
					$('#login1').show();
					$('#login2').hide();
				}else{
					$('#login1').hide();
					$('#login2').show();
				}
			</script>
			<div class="w3l_logo">
				<h1>
					<a href="index.jsp">My Apple Store<span>Your stores.
							Your place.</span> </a>
				</h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box"> <label
					class="icon-search" for="search_box"><span
					class="glyphicon glyphicon-search" aria-hidden="true"></span> </label>
				<div class="search_form">
					<form action="Goods_imgServlet?method=FuzzySelectGoods" method="post" id="Form">
						<input type="text" name="Search" placeholder="Search...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //header -->
		<!-- navigation -->
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header nav_2">
				<button type="button" class="navbar-toggle collapsed navbar-toggle1"
					data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/frontmanger/index.jsp" class="act">首页</a></li>
					<!-- Mega Menu -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">个人中心 <b class="caret"></b> </a>
						<ul class="dropdown-menu multi-column columns-3">
							<div class="row">
								<div class="col-sm-3">
									<ul class="multi-column-dropdown">
										<h6>个人资料</h6>
										<!-- 列表循环 -->
										<li><a href="products.html" target="1">收货地址
										</a></li>
										<li><a href="products.html">修改资料</a></li>
										<li><a href="products.html">修改头像
										</a></li>
											<!-- 列表循环结束 -->
									</ul>
								</div>
								<div class="row">
								<div class="col-sm-3">
									<ul class="multi-column-dropdown">
										<h6>安全设置</h6>
										<!-- 列表循环 -->
										<li><a
											href="${pageContext.request.contextPath}/frontmanger/products.jsp">修改登录密码</a></li>
										<li><a href="products.html">手机绑定
										</a></li>
										<li><a href="products.html">密保问题设置</a></li>
										<li><a href="products.html">身份证认证
										</a></li>
											<!-- 列表循环结束 -->
									</ul>
									
									
								</div>
								
								
								<div class="col-sm-3">
									<ul class="multi-column-dropdown">
										<h6>帐号绑定</h6>
										<li><a href="products1.html">支付宝绑定</a></li>
										<li><a href="products1.html">微博绑定</a></li>
										<li><a href="products1.html">微信绑定
										</a></li>
										<li><a href="products1.html">邮箱绑定</a></li>
									</ul>
								</div>
								<div class="col-sm-2">
									<ul class="multi-column-dropdown">
										<h6>我也</h6>
										<li><a href="products2.html">不知道</a></li>
										<li><a href="products2.html">该</a></li>
										<li><a href="products2.html">再编</a></li>
										<li><a href="products2.html">点啥</a></li>
									</ul>
								</div>
								
								<!--<div class="col-sm-4">
									<div class="w3ls_products_pos">
										<h4>
											30%<i>Off/-</i>
										</h4>
										<img src="/Shop1.0/images/1.jpg" alt=" "
											class="img-responsive" />
									</div>
								</div>  -->
								<div class="clearfix"></div>
							</div>
						</ul>
					</li>

				
					<li><a href="about.html">个人交易信息</a></li>
					<li><a href="about.html">联系客服</a></li>
					<li><a href="${pageContext.request.contextPath}/UserServlet?method=exit" target="_parent">安全退出</a></li>
				</ul>
			</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
<!-- ================================================================================= -->
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<div class="w3ls_mobiles_grids">
<!-- ================================================================================= -->
				<div class="col-md-4 w3ls_mobiles_grid_left">
					<div class="w3ls_mobiles_grid_left_grid">
<!-- ================================================================================= -->
						<h3>Categories</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<!-- ================================================================================= -->
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
								  <h4 class="panel-title asd">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>个人信息
									</a>
								  </h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body panel_text">
									<ul>
										<li><a href="${pageContext.request.contextPath}/frontmanger/userHeadShot.jsp">修改头像</a></li>
										
										<li><a href="${pageContext.request.contextPath}/frontmanger/userInfo.jsp">修改个人资料</a></li>
										
									</ul>
								  </div>
								</div>
							  </div>
							  
<!-- ================================================================================= -->  
							  
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseTwo">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>我的购物车
									</a>
								  </h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseThree">
								   <div class="panel-body panel_text">
									<ul>
										<li><a href="products2.html">Grinder</a></li>
										<li><a href="products2.html">Heater</a></li>
										<li><a href="products2.html">Kid's Toys</a></li>
										<li><a href="products2.html">Filters</a></li>
										<li><a href="products2.html">AC</a></li>
									</ul>
								  </div>
								</div>
							  </div>
<!-- ================================================================================= -->
							   <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>已买到的宝贝
									</a>
								  </h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								   <div class="panel-body panel_text">
									<ul>
										<li><a href="products2.html">代付款</a></li>
										<li><a href="products2.html">代发货</a></li>
										<li><a href="products2.html">Kid's Toys</a></li>
										<li><a href="products2.html">Filters</a></li>
										<li><a href="products2.html">AC</a></li>
									</ul>
								  </div>
								</div>
							  </div>
							  
							  
							  
							  
							</div>
						</div>
<!-- ================================================================================= -->
					</div>
				</div>
<!-- ================================================================================= -->
                             
                             
                             
                              <script type="text/javascript">
                                   //用户头像验证
                                   $(function(){
                                 $("#userimg").live('change',function(){  
                                     var re1=/[^\s]+\.(jpg|gif|png|bmp)/i;
                                     var userimg = $("#userimg").val();
                                     if (re1.test(userimg)) {
											$("#userimg2").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#userimg2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>格式错误");
										}
                                 
                               });
                             });  

                            </script>

                                   
                                   



				    <div class="col-md-8 w3ls_mobiles_grid_right">
				    <div class="">
					<ul id="user_head">
					<h3>基本信息</h3>
					</ul>
					</div>
					<div class="clearfix"> </div>

					<!-- <div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3></h3>
						</div>
						<div class="clearfix"> </div>
					</div> -->
					
					<br>
					<div class="clearfix"> </div>
					<div class="w3ls_mobiles_grid_right_grid3">

                   <form action="${pageContext.request.contextPath}/UserInfoServlet?method=userHeadShotUpdate&u_id=${user.u_id}" method="post" enctype="multipart/form-data">
                   <input type="hidden" name="user_id" value="${user.u_id}">
                    <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                      <div class="" style="width:120px;">当前头像：</div>
   		              <input type="file" name="userimg" id="userimg"  name="good_imgurl" placeholder="${user.u_img}"/><span id="userimg2"></span>
   		              <!-- <input type="file" name="uploadImg" onchange="Javascript:validate_img(this);" size="12"/> -->
                    </div>
                    <br><br>
                 <!--一条-->
      
                    
                   <div>
                     <input type="submit" value="保存" class="tdBtn"/>
                   </div>
                  
                   </form>
					
					</div>
				 </div>
 <!-- ================================================================================= -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>  
	
	
	
	
	
  </body>
</html>
