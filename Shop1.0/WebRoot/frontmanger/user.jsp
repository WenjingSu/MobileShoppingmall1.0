<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
				<a href="" data-toggle="modal" data-target="#myModal88"><span
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
					<li><a href="${pageContext.request.contextPath}/GoodsTypeFrontServlet?method=goodstypeFindAllLimit" class="act">首页</a></li>
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
											href="${pageContext.request.contextPath}/frontmanger/userpassword.jsp">修改登录密码</a></li>
										<li><a href="${pageContext.request.contextPath}/frontmanger/userphone1.jsp">手机绑定
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
	
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<div class="w3ls_mobiles_grids">
				<div class="col-md-4 w3ls_mobiles_grid_left">
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Categories</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
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
							  
							  
							  
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" >
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>
									 <a href="<%=path%>/CartServlet?method=gotoCart">我的购物车</a> 
									</a>
								  </h4>
								</div>
								<!-- <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseThree">
								   <div class="panel-body panel_text">
									<ul>
										<li><a href="products2.html">Grinder</a></li>
										<li><a href="products2.html">Heater</a></li>
										<li><a href="products2.html">Kid's Toys</a></li>
										<li><a href="products2.html">Filters</a></li>
										<li><a href="products2.html">AC</a></li>
									</ul>
								  </div>
								</div> -->
								
							  </div>
							   <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=0">已买到的宝贝</a>
									</a>
								  </h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								   <div class="panel-body panel_text">
									<ul>
									<!-- <li><a href="products2.html"></a></li> -->
										<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=1">待付款</a></li>
										<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=2">待发货</a></li>
										<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=3">待收货</a></li>
										<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=4">待评价</a></li>
										
									</ul>
								  </div>
								</div>
								
							  </div>
							  
							  
							  
							  
							</div>
							
						</div>
					</div>
					
					
				</div>
				<div class="col-md-8 w3ls_mobiles_grid_right">
					<div class="user_head_padding">
					
					<a>用户名</a>
					
					<a>欢迎您</a>
				
					<br>
					
					<a class="user_head_right" href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=0">我的收货地址</a>
							<br>
					<a class="user_foot" href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=1">待付款</a>
					<a class="user_foot" href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=2">待发货</a>
					<a class="user_foot" href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=3">待收货</a>
					<a class="user_foot" href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=4">待评价</a>
					
					</div>
					
					
					<div class="clearfix"> </div>

					<div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3>猜你喜欢：</h3>
						</div>
						<!-- <div class="w3ls_mobiles_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div> -->
						<div class="clearfix"> </div>
					</div>
					<div class="w3ls_mobiles_grid_right_grid3">
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/31.jpg" alt=" " class="img-responsive" />
									<img src="images/30.jpg" alt=" " class="img-responsive" />
									<img src="images/27.jpg" alt=" " class="img-responsive" />
									<img src="images/28.jpg" alt=" " class="img-responsive" />
									<img src="images/29.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal9"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Smart Phone</a></h5> 
								<div class="simpleCart_shelfItem">
									<p><span>$250</span> <i class="item_price">$245</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Smart Phone" /> 
										<input type="hidden" name="amount" value="245.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
								<div class="mobiles_grid_pos">
									<h6>New</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/p1.jpg" alt=" " class="img-responsive" />
									<img src="images/p2.jpg" alt=" " class="img-responsive" />
									<img src="images/p3.jpg" alt=" " class="img-responsive" />
									<img src="images/p4.jpg" alt=" " class="img-responsive" />
									<img src="images/p1.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Audio-speaker</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$50</span> <i class="item_price">$45</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Audio-speaker" /> 
										<input type="hidden" name="amount" value="45.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/30.jpg" alt=" " class="img-responsive" />
									<img src="images/28.jpg" alt=" " class="img-responsive" />
									<img src="images/26.jpg" alt=" " class="img-responsive" />
									<img src="images/27.jpg" alt=" " class="img-responsive" />
									<img src="images/29.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal9"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Red Mobile</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$80</span> <i class="item_price">$65</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Red Mobile" /> 
										<input type="hidden" name="amount" value="65.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3ls_mobiles_grid_right_grid3">
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/p4.jpg" alt=" " class="img-responsive" />
									<img src="images/p1.jpg" alt=" " class="img-responsive" />
									<img src="images/p3.jpg" alt=" " class="img-responsive" />
									<img src="images/p2.jpg" alt=" " class="img-responsive" />
									<img src="images/p5.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Headphone</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$250</span> <i class="item_price">$245</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Headphone"/> 
										<input type="hidden" name="amount" value="245.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/p5.jpg" alt=" " class="img-responsive" />
									<img src="images/p1.jpg" alt=" " class="img-responsive" />
									<img src="images/p2.jpg" alt=" " class="img-responsive" />
									<img src="images/p4.jpg" alt=" " class="img-responsive" />
									<img src="images/p3.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Wireless Speaker</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$100</span> <i class="item_price">$86</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Wireless Speaker" /> 
										<input type="hidden" name="amount" value="86.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/p6.jpg" alt=" " class="img-responsive" />
									<img src="images/26.jpg" alt=" " class="img-responsive" />
									<img src="images/31.jpg" alt=" " class="img-responsive" />
									<img src="images/22.jpg" alt=" " class="img-responsive" />
									<img src="images/p6.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Asus Tablet</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$450</span> <i class="item_price">$425</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Asus Tablet" /> 
										<input type="hidden" name="amount" value="425.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
								<div class="mobiles_grid_pos">
									<h6>New</h6>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3ls_mobiles_grid_right_grid3">
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/p3.jpg" alt=" " class="img-responsive" />
									<img src="images/p5.jpg" alt=" " class="img-responsive" />
									<img src="images/p4.jpg" alt=" " class="img-responsive" />
									<img src="images/p2.jpg" alt=" " class="img-responsive" />
									<img src="images/p1.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Music MP3 Player</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$60</span> <i class="item_price">$58</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Ultra MP3 Player" /> 
										<input type="hidden" name="amount" value="58.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
								<div class="mobiles_grid_pos">
									<h6>New</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/31.jpg" alt=" " class="img-responsive" />
									<img src="images/30.jpg" alt=" " class="img-responsive" />
									<img src="images/p6.jpg" alt=" " class="img-responsive" />
									<img src="images/26.jpg" alt=" " class="img-responsive" />
									<img src="images/29.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Golden Tablet</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$650</span> <i class="item_price">$550</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Golden Tablet" /> 
										<input type="hidden" name="amount" value="550.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<div class="hs-wrapper hs-wrapper2">
									<img src="images/35.jpg" alt=" " class="img-responsive" />
									<img src="images/30.jpg" alt=" " class="img-responsive" />
									<img src="images/27.jpg" alt=" " class="img-responsive" />
									<img src="images/28.jpg" alt=" " class="img-responsive" />
									<img src="images/29.jpg" alt=" " class="img-responsive" /> 
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal9"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								<h5><a href="single.html">Wireless Phone</a></h5>
								<div class="simpleCart_shelfItem">
									<p><span>$250</span> <i class="item_price">$210</i></p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Wireless Phone" /> 
										<input type="hidden" name="amount" value="210.00"/>   
										<button type="submit" class="w3ls-cart">Add to cart</button>
									</form>
								</div> 
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>  
	<div class="modal video-modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModal9">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/27.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Latest Smart Phone </h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$250</span> <i class="item_price">$245</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Smart Phone" /> 
									<input type="hidden" name="amount" value="245.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div> 	
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/34.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Musical Kids Toy</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$150</span> <i class="item_price">$100</i></p> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Kids Toy"> 
									<input type="hidden" name="amount" value="100.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/36.jpg" alt=" " class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Dry Vacuum Cleaner</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive">
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$960</span> <i class="item_price">$920</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Vacuum Cleaner"> 
									<input type="hidden" name="amount" value="920.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/p3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Music MP3 Player </h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$60</span> <i class="item_price">$58</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="MP3 Player" /> 
									<input type="hidden" name="amount" value="58.00"/>   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/38.jpg" alt=" " class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Kitchen &amp; Dining Accessories</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive">
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive">
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$650</span> <i class="item_price">$645</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Microwave Oven"> 
									<input type="hidden" name="amount" value="645.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div> 
	<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/p6.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Latest Asus ZenPad Tablet</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>  
							<div class="modal_body_right_cart  simpleCart_shelfItem">
								<p><span>$45</span> <i class="item_price">$425</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Latest Tablet" /> 
									<input type="hidden" name="amount" value="425.00" />   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>  
  </body>
</html>
