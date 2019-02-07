<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>Apple</title>

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
<script type="text/javascript">
/* 	$(function(){
	$(".w3ls-cart").each(function(){
	$(this).click(function(){
	var id=document.getElementById(id);
	alert(id);
	});
	});
	
	}); */
 function gocart(g_id){
 
function createXMLHttpRequest() {//解决浏览器的兼容问题
		var xmlHttp;
		if (window.XMLHttpRequest) {//
			xmlHttp = new XMLHttpRequest(); //FF

		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); //IE	
		}
		return xmlHttp;
	}
 var xmlHttp = createXMLHttpRequest();
					var method = "post";
					var url = "CartServlet";
					xmlHttp.open(method, url, true);
					//post必须设置请求头，才能发送数据
					xmlHttp.setRequestHeader("Content-type",
							"application/x-www-form-urlencoded;charset=utf-8");

					xmlHttp.send("method=goodCart" + "&" + "gid=" + g_id + "&"
							+ "count=" + 1);
							
							xmlHttp.onreadystatechange = function() {
											if (xmlHttp.readyState == 4) {
												var text = xmlHttp.responseText;
												
											if(text==1){
											alert("添加成功");
window.location.href="<%=path%>/CartServlet?method=gotoCart";
											} if(text==2){
											alert("您未登陆");
											$('#myModal88').modal('show');
					$('#login1').show();
					$('#login2').hide();
											}

										}
										}
} 

</script>
<!-- //end-smooth-scrolling -->
</head>
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="frontmanger/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
		aria-labelledby="myModal88" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">不要等待，立即登录!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1"
							style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>登录</span>
										</li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>注册</span>
										</li>
										<span>${msg}</span>
										<span id="register_info"></span>
									</ul>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="UserServlet?method=userLogin" method="post">
													<input name="Username" placeholder="帐号/手机号" type="text"
														required="required"> <input name="Password"
														placeholder="密码" type="password" required="required">
													<div class="sign-up">
														<input type="submit" value="立即登录" />
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="UserServlet?method=userRegister" method="post">
													<input id="name1" placeholder="帐号/以字母开头/6-20个字符/只能由字母、数字组成"
														name="Name" type="text" style="width: 70%;"><span
														id="name2"></span> <input id="password1"
														placeholder="密码/6-20个字符/只能由字母、数字组成" name="Password"
														type="password" style="width: 70%;"><span
														id="password3"></span> <input id="password2"
														placeholder="验证密码/6-20个字符/只能由字母、数字组成" name="Password"
														type="password" style="width: 70%;"><span
														id="password4"></span> <input id="tel1" placeholder="手机号"
														name="Email" type="text"
														style="width: 70%;margin:1em 0 0;"><span id="tel2"></span>
													<input id="code3" placeholder="验证码" name="Auth Code"
														type="text" style="width: 70%;margin:1em 0 0;"><span
														id="code2" class=""></span>
													<div class="sign-up">
														<input id="code1" type="button" value="发送验证码"
															style="outline:none;border:none;background:#212121;padding:10px 0;color:#fff;width:40%;font-size:1em;text-transform:uppercase;margin:2em 0 0;" />
														<input id="register1" type="submit" value="立即注册"
															disabled="disabled" />
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<script src="frontmanger/js/easyResponsiveTabs.js"
								type="text/javascript"></script>
							<script type="text/javascript">							
								$(function(){
									//帐号验证
									$("#name1").blur(function(){
										var re1=/^[a-zA-Z][a-zA-Z0-9]{5,19}$/;
										var name = $("#name1").val();
										if (re1.test(name)) {
											$("#name2").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#name2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>格式错误");
										}
										$.post("UserServlet",{method:"userFindbyName",tel:name},function(data){
											var num = data;
											if (num==1) {
												
											} else if(num==2){
												$("#name2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>该帐号已被注册");
											};
										});
									});
									$("#name1").keyup(function(){
										var name = $("#name1").val();
										var num = name.replace().length;
										$("#name2").html("<font>"+num+"个字符</font>");
									});
									//密码验证
									$("#password1").blur(function(){
										var re1=/^[a-zA-Z0-9]{6,20}$/;
										var password1 = $("#password1").val();
										if (re1.test(password1)) {
											$("#password3").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#password3").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>格式错误");
										}
									});
									$("#password1").keyup(function(){
										var password1 = $("#password1").val();
										var num = password1.replace().length;
										$("#password3").html(num+"个字符");
									});
									$("#password2").blur(function(){
										var password1 = $("#password1").val();
										var password2 = $("#password2").val();
										if (password2!=""&&password2!=null&&password1==password2) {
											$("#password4").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#password4").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>两次密码不一致");
										}
									});
									$("#password2").keyup(function(){
										var password2 = $("#password2").val();
										var num = password2.replace().length;
										$("#password4").html(num+"个字符");
									});
									//随机生成6位数验证码
									function fun1(){
										var num = "";
										for(var i=0;i<6;i++){
											num+=Math.floor(Math.random()*10);
										}
										return num;
									}
									//验证手机号是否被注册
									$("#tel1").blur(function (){		
										var tel = $("#tel1").val();
										$.post("UserServlet",{method:"userFindbyName",tel:tel},function(data){
											var num = data;
											if (num==1&&tel!=""&&tel!=null&&re1.test(tel)) {
												
											} else if(num==2){
												$("#tel2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>该手机号已被注册");
											};
										});	
									});
									$("#tel1").keyup(function(){
										var re1=/^[0-9]{11}$/;
										var tel = $("#tel1").val();
										if (re1.test(tel)) {
											$("#tel2").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#tel2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>输入11位手机号");
										}
									});
									//将验证码发送给手机号
									$("#code1").click(function(){														
										var tel = $("#tel1").val();
										var code = fun1();
										$("#code2").attr("class",code);
										$.post("UserServlet",{method:"userFindbyName",tel:tel},function(data){
											var num = data;
											if (num==1) {
												$.post("UserServlet",{method:"userPhone",tel:tel,code:code},function(data){
													var num = data;
													if (num==1) {
														alert("发送成功！");
													} else if(num==2){
														alert("发送失败!");
													};
												});	
											} else if(num==2){
												alert("手机号已经被注册");
											};
										});							
									});
									//验证码验证
									$("#code3").blur(function(){
										var code = $("#code2").attr("class");
										var code1 = $("#code3").val();
										if (code==code1&&code1!=""&&code1!=null&&code1!=" ") {
											$("#register1").removeAttr("disabled");
											$("#code2").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else if(code1!=""&&code1!=null&&code1!=" "){
											$("#register1").attr("disabled","disabled");
											$("#code2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>验证码错误");
										} 
									});
									$(".register input").blur(function(){
										var code1 = $("#code3").val();
										if (code1==""||code1==null) {
											$("#register1").attr("disabled","disabled");
										}
									});
								});				
								$(document).ready(function() {
									$('#horizontalTab').easyResponsiveTabs({
										type : 'default', //Types: default, vertical, accordion           
										width : 'auto', //auto or any width like 600px
										fit : true
									// 100% fit in a container
									});
								});
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3 class="other-nw">其他登录方式</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#"
											class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#"
											class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#"
											class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#"
											class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('#myModal88').modal('hide');
	</script>
	<!-- header modal -->



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
					<a href="${pageContext.request.contextPath}/GoodsTypeFrontServlet?method=goodstypeFindAllLimit">My Apple Store<span>Your stores.
							Your place.</span> </a>
				</h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box"> <label
					class="icon-search" for="search_box"><span
					class="glyphicon glyphicon-search" aria-hidden="true"></span> </label>
				<div class="search_form">
					<form action="Goods_imgServlet?method=FuzzySelectGoods" method="post" id="Form">
						<input type="text" name="Search" placeholder="Search..." value="${name.goodsname }">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
			<div class="cart cart box_1">
				<form>
					
					<input type="hidden" name="cmd" value="_cart" /> <input
						type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="button" name="submit" value="">
						<script type="text/javascript">
$(function(){
$(".w3view-cart").click(function(){
var u=$("#myMode166").attr("class");
				if (u=="") {
				alert("您未登陆");
				$('#myModal88').modal('show');
					$('#login1').show();
					$('#login2').hide();
				}
				else{
					window.location.href="<%=path%>/CartServlet?method=gotoCart";
				}
});
});

</script>
						<span class="glyphicon glyphicon-shopping-cart"
							style="padding-top:10px;background: #ff5063;color:white;width:42px;height:42px;">
						</span>

						<!--  	<i class="fa fa-cart-arrow-down" aria-hidden="true">
					</i>-->

					</button>
				</form>
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
			<script>
			$(function(){
				$("div.row div#cname ul").each(function(){$(this).find("li:first").append("&nbsp;<span class='label label-success'>New</span>");});
			});
		  </script>
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a
						href="${pageContext.request.contextPath}/GoodsTypeFrontServlet?method=goodstypeFindAllLimit"
						class="act">主页</a></li>
					<!-- Mega Menu -->
					<li class="dropdown"><a
						href="${pageContext.request.contextPath}/Goods_imgServlet?method="
						class="dropdown-toggle" data-toggle="dropdown">商品列表<b
							class="caret"></b> </a>

						<ul class="dropdown-menu multi-column columns-3">

							<div class="row">
								<c:forEach items="${goodsTypes01}" var="goodsTypes">

									<div class="col-sm-3" id="cname">
										<ul class="multi-column-dropdown">
											<h6>
												<a
													href="${pageContext.request.contextPath}/Goods_imgServlet?method=productslist&ft_id=${goodsTypes.gt_id}">${goodsTypes.gt_typename}</a>
											</h6>

											<c:if test="${!empty goodsTypes.children}">
												<c:forEach items="${goodsTypes.children}" var="children">
													<li><a
														href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${children.gt_id}">${children.gt_typename}</a>
													</li>

												</c:forEach>
											</c:if>

										</ul>


									</div>
								</c:forEach>
								<!-- <div class="clearfix"></div> -->

							</div>

						</ul>
					</li>

					<li><a href="https://www.apple.com/cn/">关于我们</a></li>
					<li class="w3pages"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Pages <span class="caret"></span> </a>
						<ul class="dropdown-menu">
							<li><a href="icons.html">Web Icons</a></li>
							<li><a href="codes.html">Short Codes</a></li>
						</ul>
					</li>
					<li><a href="mail.html">联系客服</a></li>
				</ul>
			</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<h3>
				Electronic Store, <span>Special Offers</span>
			</h3>
		</div>
	</div>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-5 wthree_banner_bottom_left">
				<div class="video-img">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>
				</div>
				<!-- pop-up-box -->
				<script src="frontmanger/js/jquery.magnific-popup.js"
					type="text/javascript"></script>
				<!--//pop-up-box -->
				<div id="small-dialog" class="mfp-hide">
					<iframe src=""></iframe>
				</div>
				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type : 'inline',
							fixedContentPos : false,
							fixedBgPos : true,
							overflowY : 'auto',
							closeBtnInside : true,
							preloader : false,
							midClick : true,
							removalDelay : 300,
							mainClass : 'my-mfp-zoom-in'
						});

					});
				</script>
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							id="home-tab" role="tab" data-toggle="tab" aria-controls="home">${goodsTypes02[0].gt_typename
								}</a>
						</li>
						<li role="presentation"><a href="#audio" role="tab"
							id="audio-tab" data-toggle="tab" aria-controls="audio">${goodsTypes02[1].gt_typename
								}</a>
						</li>
						<li role="presentation"><a href="#video" role="tab"
							id="video-tab" data-toggle="tab" aria-controls="video">${goodsTypes02[2].gt_typename
								}</a>
						</li>
						<li role="presentation"><a href="#tv" role="tab" id="tv-tab"
							data-toggle="tab" aria-controls="tv">${goodsTypes02[3].gt_typename
								}</a></li>
						<li role="presentation"><a href="#kitchen" role="tab"
							id="kitchen-tab" data-toggle="tab" aria-controls="kitchen">${goodsTypes02[4].gt_typename
								}</a>
						</li>
					</ul>
					<!-- ================================================================================== -->
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home"
							aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/3.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/4.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/5.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/6.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/7.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/3.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/4.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/5.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<c:set var="list1" value="${list[0]}"></c:set>


										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list1[0].gt_id}">${list1[0].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list1[0].original_price}</span> <i class="item_price">${list1[0].goodsprice}</i>
										</p>

										<form id="i" action="CartServlet" method="goodCart">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list1[0].goodsname}" /> <input
												type="hidden" name="amount" value="${list1[0].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list1[0].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ================================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/4.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/5.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/6.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/7.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/3.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/4.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/5.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/6.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list1[1].gt_id}">${list1[1].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list1[1].original_price}</span> <i class="item_price">${list1[1].goodsprice}</i>
										</p>

										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list1[1].goodsname}" /> <input
												type="hidden" name="amount" value="${list1[1].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list1[1].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ================================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/7.jpg" alt=" " class="img-responsive" /> <img
											src="images/6.jpg" alt=" " class="img-responsive" /> <img
											src="images/4.jpg" alt=" " class="img-responsive" /> <img
											src="images/3.jpg" alt=" " class="img-responsive" /> <img
											src="images/5.jpg" alt=" " class="img-responsive" /> <img
											src="/images/7.jpg" alt=" " class="img-responsive" /> <img
											src="images/4.jpg" alt=" " class="img-responsive" /> <img
											src="images/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list1[2].gt_id}">${list1[2].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list1[2].original_price}</span> <i class="item_price">${list1[2].goodsprice}</i>
										</p>

										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list1[2].goodsname}" /> <input
												type="hidden" name="amount" value="${list1[2].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list1[2].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

						<!-- ================================================================================== -->
						<div role="tabpanel" class="tab-pane fade" id="audio"
							aria-labelledby="audio-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/10.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/10.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal1"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<c:set var="list2" value="${list[1]}"></c:set>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list2[0].gt_id}">${list2[0].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list2[0].original_price}</span> <i class="item_price">${list2[0].goodsprice}</i>
										</p>
										<div class="simpleCart_shelfItem">
											<form id="i" action="#" method="post">
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="w3ls_item" value="${list2[0].goodsname}" /> <input
													type="hidden" name="amount" value="${list2[0].goodsprice}" />
												<button type="button" onclick="gocart(${list2[0].g_id})"
													class="w3ls-cart" id="${list2[0].g_id}">Add to
													cart</button>
											</form>


										</div>
									</div>
								</div>
								<!-- ================================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/9.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/8.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/10.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/10.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal1"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list2[1].gt_id}">${list2[1].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list2[1].original_price}</span> <i class="item_price">${list2[1].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list2[1].goodsname}" /> <input
												type="hidden" name="amount" value="${list2[1].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list2[1].g_id})">Add to cart</button>
										</form>
									</div>
								</div>


								<!-- ================================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/10.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/8.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/9.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/10.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/8.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/9.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal1"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list2[2].gt_id}">${list2[2].goodsname}</a>

									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list2[2].original_price}</span> <i class="item_price">${list2[1].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list2[2].goodsname}" /> <input
												type="hidden" name="amount" value="${list2[2].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list2[2].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!-- =================================================================================== -->

						<div role="tabpanel" class="tab-pane fade" id="video"
							aria-labelledby="video-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="/Shop1.0/images/11.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/12.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/13.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/11.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/12.jpg"
											alt=" " class="img-responsive" /> <img
											src="/Shop1.0/images/13.jpg" alt=" " class="img-responsive" />
										<img src="/Shop1.0/images/11.jpg" alt=" "
											class="img-responsive" /> <img src="/Shop1.0/images/12.jpg"
											alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<c:set var="list3" value="${list[2]}"></c:set>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list3[0].gt_id}">${list3[0].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list3[0].original_price}</span> <i class="item_price">${list3[0].goodsprice}</i>
										</p>
										${list3[0].g_id}
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list3[0].goodsname}" /> <input
												type="hidden" name="amount" value="${list3[0].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list3[0].g_id})">Add to cart</button>
										</form>

									</div>
								</div>
								<!-- ========================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/12.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/13.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/12.jpg" alt=" " class="img-responsive" /> <img
											src="images/13.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list3[1].gt_id}">${list3[1].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list3[1].original_price}</span> <i class="item_price">${list3[1].goodsprice}</i>
										</p>

										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list3[1].goodsname}" /> <input
												type="hidden" name="amount"
												value="${list3[1].goodsprice}</i>
										</p>" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list3[1].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ======================================================================== -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/13.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/12.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/12.jpg" alt=" " class="img-responsive" /> <img
											src="images/13.jpg" alt=" " class="img-responsive" /> <img
											src="images/11.jpg" alt=" " class="img-responsive" /> <img
											src="images/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list3[2].gt_id}">${list3[2].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list3[2].original_price}</span> <i class="item_price">${list3[2].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list3[2].goodsname}" /> <input
												type="hidden" name="amount" value="${list3[2].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list3[2].g_id})"">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!-- ============================================================================= -->
						<div role="tabpanel" class="tab-pane fade" id="tv"
							aria-labelledby="tv-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<c:set var="list4" value="${list[3]}"></c:set>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list4[0].gt_id}">${list4[0].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list4[0].original_price}</span> <i class="item_price">${list4[0].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list4[0].goodsname}r" /> <input
												type="hidden" name="amount" value="${list4[0].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list4[0].g_id})"">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ============================================================================ -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list4[1].gt_id}">${list4[1].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list4[1].original_price}</span> <i class="item_price">${list4[1].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list4[1].goodsname}" /> <input
												type="hidden" name="amount" value="${list4[1].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list4[1].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ============================================================================ -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" /> <img
											src="images/16.jpg" alt=" " class="img-responsive" /> <img
											src="images/14.jpg" alt=" " class="img-responsive" /> <img
											src="images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>

										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list4[2].gt_id}">${list4[2].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list4[2].original_price}</span> <i class="item_price">${list4[2].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list4[2].goodsname}" /> <input
												type="hidden" name="amount" value="${list4[2].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list4[2].g_id})">Add to cart</button>
										</form>
									</div>
								</div>

								<div class="clearfix"></div>
							</div>
						</div>
						<!-- ============================================================================ -->
						<div role="tabpanel" class="tab-pane fade" id="kitchen"
							aria-labelledby="kitchen-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<c:set var="list5" value="${list[4]}"></c:set>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list5[0].gt_id}">${list5[0].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list5[0].original_price}</span> <i class="item_price">${list5[0].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list5[0].goodsname}" /> <input
												type="hidden" name="amount" value="${list5[0].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list5[0].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ============================================================================ -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list5[1].gt_id}">${list5[1].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list5[1].original_price}</span> <i class="item_price">${list5[1].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list5[1].goodsname}" /> <input
												type="hidden" name="amount" value="${list5[1].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list5[1].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<!-- ============================================================================ -->
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" /> <img
											src="images/19.jpg" alt=" " class="img-responsive" /> <img
											src="images/17.jpg" alt=" " class="img-responsive" /> <img
											src="images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												</a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a
											href="${pageContext.request.contextPath }/GoodsServlet?method=goodsdetail&gtid=${list5[2].gt_id}">${list5[2].goodsname}</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>${list5[2].original_price}</span> <i class="item_price">${list5[2].goodsprice}</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${list5[2].goodsname}" /> <input
												type="hidden" name="amount" value="${list5[2].goodsprice}" />
											<button type="button" class="w3ls-cart"
												onclick="gocart(${list5[2].g_id})">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- modal-video -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/3.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>The Best Mobile Phone 3GB</h4>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
							dolor in reprehenderit in voluptate velit esse cillum dolore eu
							fugiat nulla pariatur.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$380</span> <i class="item_price">$350</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Mobile Phone1"> <input
									type="hidden" name="amount" value="350.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal1" tabindex="-1"
		role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/9.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>Multimedia Home Accessories</h4>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
							dolor in reprehenderit in voluptate velit esse cillum dolore eu
							fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est
							laborum.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$180</span> <i class="item_price">$150</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Headphones"> <input
									type="hidden" name="amount" value="150.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal2" tabindex="-1"
		role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/11.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>Quad Core Colorful Laptop</h4>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
							dolor in reprehenderit in voluptate velit esse cillum dolore eu
							fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$880</span> <i class="item_price">$850</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Laptop"> <input
									type="hidden" name="amount" value="850.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal3" tabindex="-1"
		role="dialog" aria-labelledby="myModal3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/14.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>Cool Single Door Refrigerator</h4>
						<p>Duis aute irure dolor inreprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$950</span> <i class="item_price">$820</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Mobile Phone1"> <input
									type="hidden" name="amount" value="820.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal4" tabindex="-1"
		role="dialog" aria-labelledby="myModal4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/17.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>New Model Mixer Grinder</h4>
						<p>Excepteur sint occaecat laboris nisi ut aliquip ex ea
							commodo consequat.Duis aute irure dolor in reprehenderit in
							voluptate velit esse cillum dolore eu fugiat nulla pariatur
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$460</span> <i class="item_price">$450</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Mobile Phone1"> <input
									type="hidden" name="amount" value="450.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal5" tabindex="-1"
		role="dialog" aria-labelledby="myModal5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/36.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>Dry Vacuum Cleaner</h4>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
							dolor in reprehenderit in voluptate velit esse cillum dolore eu
							fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est
							laborum.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$960</span> <i class="item_price">$920</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Vacuum Cleaner">
								<input type="hidden" name="amount" value="920.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1"
		role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-5 modal_body_left">
						<img src="images/37.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-7 modal_body_right">
						<h4>Kitchen & Dining Accessories</h4>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
							dolor in reprehenderit in voluptate velit esse cillum dolore eu
							fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est
							laborum.</p>
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
							<div class="clearfix"></div>
						</div>
						<div class="modal_body_right_cart simpleCart_shelfItem">
							<p>
								<span>$280</span> <i class="item_price">$250</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="Induction Stove">
								<input type="hidden" name="amount" value="250.00">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
						<h5>Color</h5>
						<div class="color-quality">
							<ul>
								<li><a href="#"><span></span> </a></li>
								<li><a href="#" class="brown"><span></span> </a></li>
								<li><a href="#" class="purple"><span></span> </a></li>
								<li><a href="#" class="gray"><span></span> </a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //modal-video -->
	<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
				<h3>
					Grand Opening Event With flat<span>20% <i>Discount</i> </span>
				</h3>
				<a href="products.html">Shop Now</a>
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<h4>hot deal</h4>
				<div class="timer_wrap">
					<div id="counter"></div>
				</div>
				<script src="frontmanger/js/jquery.countdown.js"></script>
				<script src="frontmanger/js/script.js"></script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-bottom1 -->
	<!-- special-deals -->
	<div class="special-deals">
		<div class="container">
			<h2>Special Deals</h2>
			<div class="w3agile_special_deals_grids">
				<div class="col-md-7 w3agile_special_deals_grid_left">
					<div class="w3agile_special_deals_grid_left_grid">
						<img src="images/21.jpg" alt=" " class="img-responsive" />
						<div class="w3agile_special_deals_grid_left_grid_pos1">
							<h5>
								30%<span>Off/-</span>
							</h5>
						</div>
						<div class="w3agile_special_deals_grid_left_grid_pos">
							<h4>
								We Offer <span>Best Products</span>
							</h4>
						</div>
					</div>
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/t1.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Laura</h4>
								</div>
							</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/t2.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Michael</h4>
								</div>
							</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="w3agile_special_deals_grid_left_grid1">
									<img src="images/t3.png" alt=" " class="img-responsive" />
									<p>Quis autem vel eum iure reprehenderit qui in ea
										voluptate velit esse quam nihil molestiae consequatur, vel
										illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>
									<h4>Rosy</h4>
								</div>
							</div>
							</article>
						</div>
					</div>
					<script src="frontmanger/js/jquery.wmuSlider.js"></script>
					<script>
						$('.example1').wmuSlider();
					</script>
				</div>
				<div class="col-md-5 w3agile_special_deals_grid_right">
					<img src="images/20.jpg" alt=" " class="img-responsive" />
					<div class="w3agile_special_deals_grid_right_pos">
						<h4>
							Women's <span>Special</span>
						</h4>
						<h5>
							save up <span>to</span> 30%
						</h5>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //special-deals -->
	<!-- new-products -->
	<div class="new-products">
		<div class="container">
			<h3>Hot-sale Products</h3>
			<div class="agileinfo_new_products_grids">
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/25.jpg" alt=" " class="img-responsive" /> <img
								src="images/23.jpg" alt=" " class="img-responsive" /> <img
								src="images/24.jpg" alt=" " class="img-responsive" /> <img
								src="images/22.jpg" alt=" " class="img-responsive" /> <img
								src="images/26.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li><a href="#" data-toggle="modal"
										data-target="#myModal2"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									</a></li>
								</ul>
							</div>
						</div>
						<h5>
							<a
								href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${list1[0].gt_id}">${list1[0].goodsname}</a>
						</h5>
						<div class="simpleCart_shelfItem">
							<p>
								<span>${list1[0].original_price}</span> <i class="item_price">${list1[0].goodsprice}</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="${list1[0].goodsname}">
								<input type="hidden" name="amount"
									value="${list1[0].goodsprice}">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/27.jpg" alt=" " class="img-responsive" /> <img
								src="images/28.jpg" alt=" " class="img-responsive" /> <img
								src="images/29.jpg" alt=" " class="img-responsive" /> <img
								src="images/30.jpg" alt=" " class="img-responsive" /> <img
								src="images/31.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li><a href="#" data-toggle="modal" data-target="#myModal"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									</a></li>
								</ul>
							</div>
						</div>
						<h5>
							<a
								href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${list2[0].gt_id}">${list2[0].goodsname}</a>
						</h5>
						<div class="simpleCart_shelfItem">
							<p>
								<span>${list2[0].original_price}</span> <i class="item_price">${list2[0].goodsprice}</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="${list2[0].goodsname}">
								<input type="hidden" name="amount"
									value="${list2[0].goodsprice}">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/34.jpg" alt=" " class="img-responsive" /> <img
								src="images/33.jpg" alt=" " class="img-responsive" /> <img
								src="images/32.jpg" alt=" " class="img-responsive" /> <img
								src="images/35.jpg" alt=" " class="img-responsive" /> <img
								src="images/36.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li><a href="#" data-toggle="modal"
										data-target="#myModal5"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									</a></li>
								</ul>
							</div>
						</div>
						<h5>
							<a
								href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${list3[0].gt_id}">${list3[0].goodsname}</a>
						</h5>
						<div class="simpleCart_shelfItem">
							<p>
								<span>${list3[0].original_price}</span> <i class="item_price">${list3[0].goodsprice}</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="${list3[0].goodsname}">
								<input type="hidden" name="amount"
									value="${list3[0].goodsprice}">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/37.jpg" alt=" " class="img-responsive" /> <img
								src="images/38.jpg" alt=" " class="img-responsive" /> <img
								src="images/39.jpg" alt=" " class="img-responsive" /> <img
								src="images/40.jpg" alt=" " class="img-responsive" /> <img
								src="images/41.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li><a href="#" data-toggle="modal"
										data-target="#myModal6"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									</a></li>
								</ul>
							</div>
						</div>
						<h5>
							<a
								href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${list5[1].gt_id}">${list5[1].goodsname}</a>
						</h5>
						<div class="simpleCart_shelfItem">
							<p>
								<span>${list5[1].original_price}</span> <i class="item_price">${list5[1].goodsprice}</i>
							</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="w3ls_item" value="${list5[1].goodsname}">
								<input type="hidden" name="amount"
									value="${list5[1].goodsprice}">
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //new-products -->
	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Top Brands</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">
					<li><img src="images/tb1.jpg" alt=" " class="img-responsive" />
					</li>
					<li><img src="images/tb2.jpg" alt=" " class="img-responsive" />
					</li>
					<li><img src="images/tb3.jpg" alt=" " class="img-responsive" />
					</li>
					<li><img src="images/tb4.jpg" alt=" " class="img-responsive" />
					</li>
					<li><img src="images/tb5.jpg" alt=" " class="img-responsive" />
					</li>
				</ul>
			</div>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo1").flexisel({
						visibleItems : 4,
						animationSpeed : 1000,
						autoPlay : true,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 1
							},
							landscape : {
								changePoint : 640,
								visibleItems : 2
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});

				});
			</script>
			<script type="text/javascript"
				src="frontmanger/js/jquery.flexisel.js"></script>
		</div>
	</div>
	<!-- //top-brands -->
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit
						esse.</p>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker"
							aria-hidden="true"></i>1234k Avenue, 4th block, <span>New
								York City.</span>
						</li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a>
						</li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info">
						<li><a href="about.html">About Us</a>
						</li>
						<li><a href="mail.html">Contact Us</a>
						</li>
						<li><a href="codes.html">Short Codes</a>
						</li>
						<li><a href="faq.html">FAQ's</a>
						</li>
						<li><a href="products.html">Special Products</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info">
						<li><a href="products.html">Mobiles</a>
						</li>
						<li><a href="products1.html">Laptops</a>
						</li>
						<li><a href="products.html">Purifiers</a>
						</li>
						<li><a href="products1.html">Wearables</a>
						</li>
						<li><a href="products2.html">Kitchen</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info">
						<li><a href="index.html">Home</a>
						</li>
						<li><a href="products.html">Today's Deals</a>
						</li>
					</ul>
					<h4>Follow Us</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a>
							</li>
							<li><a href="#" class="twitter"> </a>
							</li>
							<li><a href="#" class="google"> </a>
							</li>
							<li><a href="#" class="pinterest"> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-copy">
			<div class="footer-copy1">
				<div class="footer-copy-pos">
					<a href="#home1" class="scroll"><img src="images/arrow.png"
						alt=" " class="img-responsive" /> </a>
				</div>
			</div>
			<div class="container">
				<p>
					Copyright &copy; 2017.Company name All rights reserved.<a
						target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- cart-js -->
	<script src="frontmanger/js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
</html>
