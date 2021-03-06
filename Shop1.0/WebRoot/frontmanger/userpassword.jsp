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
	<link rel="stylesheet" href="frontmanger/css/personal.css" type="text/css"></link>
	<link rel="stylesheet" href="frontmanger/css/addstyle.css" type="text/css"></link>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
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
<link rel="stylesheet" href="frontmanger/css/admin.css" type="text/css"></link>
<link rel="stylesheet" href="frontmanger/css/jquery.countdown.css" />
<link rel="stylesheet" href="frontmanger/css/addstyle.css" type="text/css"></link>
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
</head>

<body>
	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="frontmanger/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div id="login1" class="w3l_login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span> </a>
			</div>
			<div id="login2" class="w3l_login">
				<a href="${pageContext.request.contextPath}/frontmanger/user.jsp"
					target="_parent"><img src="/Shop1.0/images/${user.u_img}"
					height="100%" width="100%" /> </a>
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
					<form action="#" method="post">
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
					<li><a
						href="${pageContext.request.contextPath}/frontmanger/index.jsp"
						class="act">首页</a>
					</li>
					<!-- Mega Menu -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">个人中心 <b class="caret"></b> </a>
						<ul class="dropdown-menu multi-column columns-3">
							<div class="row">
								<div class="col-sm-3">
									<ul class="multi-column-dropdown">
										<h6>个人资料</h6>
										<!-- 列表循环 -->
										<li><a href="products.html">收货地址 </a>
										</li>
										<li><a href="products.html">修改资料</a>
										</li>
										<li><a href="products.html">修改头像 </a>
										</li>
										<!-- 列表循环结束 -->
									</ul>
								</div>
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>安全设置</h6>
											<!-- 列表循环 -->
											<li><a
												href="${pageContext.request.contextPath}/frontmanger/products.jsp">修改登录密码</a>
											</li>
											<li><a href="products.html">手机绑定 </a>
											</li>
											<li><a href="products.html">密保问题设置</a>
											</li>
											<li><a href="products.html">身份证认证 </a>
											</li>
											<!-- 列表循环结束 -->
										</ul>


									</div>


									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>帐号绑定</h6>
											<li><a href="products1.html">支付宝绑定</a>
											</li>
											<li><a href="products1.html">微博绑定</a>
											</li>
											<li><a href="products1.html">微信绑定 </a>
											</li>
											<li><a href="products1.html">邮箱绑定</a>
											</li>
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
						</ul></li>


					<li><a href="about.html">个人交易信息</a>
					</li>
					<li><a href="about.html">联系客服</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/UserServlet?method=exit"
						target="_parent">安全退出</a>
					</li>
				</ul>
			</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->

	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<div class="w3ls_mobiles_grids">
				<div class="col-md-4 w3ls_mobiles_grid_left">
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Categories</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title asd">
											<a class="pa_italic" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <span
												class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
												class="glyphicon glyphicon-minus" aria-hidden="true"></i>New
												Arrivals </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body panel_text">
											<ul>
												<li><a href="products.html">Mobiles</a>
												</li>
												<li><a href="products1.html">Laptop</a>
												</li>
												<li><a href="products2.html">Tv</a>
												</li>
												<li><a href="products.html">Wearables</a>
												</li>
												<li><a href="products2.html">Refrigerator</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title asd">
											<a class="pa_italic collapsed" role="button"
												data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo" aria-expanded="false"
												aria-controls="collapseTwo"> <span
												class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
												class="glyphicon glyphicon-minus" aria-hidden="true"></i>Accessories
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body panel_text">
											<ul>
												<li><a href="products2.html">Grinder</a>
												</li>
												<li><a href="products2.html">Heater</a>
												</li>
												<li><a href="products2.html">Kid's Toys</a>
												</li>
												<li><a href="products2.html">Filters</a>
												</li>
												<li><a href="products2.html">AC</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<ul class="panel_bottom">
								<li><a href="products.html">Summer Store</a>
								</li>
								<li><a href="products.html">Featured Brands</a>
								</li>
								<li><a href="products.html">Today's Deals</a>
								</li>
								<li><a href="products.html">Latest Watches</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Color</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="ecommerce_color">
								<ul>
									<li><a href="#"><i></i> Red(5)</a>
									</li>
									<li><a href="#"><i></i> Brown(2)</a>
									</li>
									<li><a href="#"><i></i> Yellow(3)</a>
									</li>
									<li><a href="#"><i></i> Violet(6)</a>
									</li>
									<li><a href="#"><i></i> Orange(2)</a>
									</li>
									<li><a href="#"><i></i> Blue(1)</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Price</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="ecommerce_color ecommerce_size">
								<ul>
									<li><a href="#">Below $ 100</a>
									</li>
									<li><a href="#">$ 100-500</a>
									</li>
									<li><a href="#">$ 1k-10k</a>
									</li>
									<li><a href="#">$ 10k-20k</a>
									</li>
									<li><a href="#">$ Above 20k</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 w3ls_mobiles_grid_right">
					
			<div class="col-main">
				
					<div class="user-address">
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form action="UserServlet?method=userUpdatepsw" method="post">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">当前账号:</label>
											<div class="am-form-content">
												${user.username}
											</div>
										</div>
										<br>
										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">原密码:</label>
											<div class="am-form-content">
												<input id="user-phone" type="password" name="oldpassword">
											</div>
										</div>
										<br>
										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">新密码:</label>
											<div class="am-form-content">
												<input id="user-phone" type="password" name="newpasswprd">
											</div>
										</div>
										<br>
										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">再次输入:</label>
											<div class="am-form-content">
												<input id="user-phone" type="password" name="newpassword">
											</div>
										</div>
										<br>
										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
											<input type="submit" value="保存"> 
											<input type="button" value="取消"> 
												<!-- <a class="am-btn am-btn-danger">保存</a>
													<a class="am-btn am-btn-danger">保存</a>
												<a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a> -->
											</div>
										</div>
										<br>
									</form>
								</div>

							</div>

						</div>

					</div>

					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script>

					<div class="clear"></div>

				</div>
			



				<div class="clearfix"></div>
			
		</div>
	</div>






</body>
</html>
