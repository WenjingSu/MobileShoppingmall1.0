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
<script class="resources library"
		src="/Shop1.0/frontmanger/js/area.js" type="text/javascript"></script>

<script type="text/javascript" src="Shop1.0/backmanger/js/laydate.js"></script>
<script type="text/javascript"
	src="Shop1.0/backmanger/js/jquery-1.9.2.min.js"></script>
<script type="text/javascript"
	src="Shop1.0/backmanger/js/imagecropper.js"></script>
<!--  <link rel="stylesheet" href="Shop1.0/backmanger/style/imageUpload.css" type="text/css"></link>-->



</head>




<script>
	 $(function () {
        // 出生年月插件
        $.ms_DatePicker({
            YearSelector: ".sel_year",
            MonthSelector: ".sel_month",
            DaySelector: ".sel_day"
        });
    });
	(function($){
$.extend({
ms_DatePicker: function (options) {
            var defaults = {
                YearSelector: "#sel_year",
                MonthSelector: "#sel_month",
                DaySelector: "#sel_day",
                FirstText: "--",
                FirstValue: 0
            };
            var opts = $.extend({}, defaults, options);
            var $YearSelector = $(opts.YearSelector);
            var $MonthSelector = $(opts.MonthSelector);
            var $DaySelector = $(opts.DaySelector);
            var FirstText = opts.FirstText;
            var FirstValue = opts.FirstValue;

            // 初始化
            var str = "<option value=\"" + FirstValue + "\">" + FirstText + "</option>";
            $YearSelector.html(str);
            $MonthSelector.html(str);
            $DaySelector.html(str);

            // 年份列表
            var yearNow = new Date().getFullYear();
            for (var i = yearNow; i >= 1894; i--) {
                var yearStr = "<option value=\"" + i + "\">" + i + "</option>";
                $YearSelector.append(yearStr);
            }

            // 月份列表
            for (var i = 1; i <= 12; i++) {
                var monthStr = "<option value=\"" + i + "\">" + i + "</option>";
                $MonthSelector.append(monthStr);
            }

            // 日列表(仅当选择了年月)
            function BuildDay() {
                if ($YearSelector.val() == 0 || $MonthSelector.val() == 0) {
                    // 未选择年份或者月份
                    $DaySelector.html(str);
                } else {
                    $DaySelector.html(str);
                    var year = parseInt($YearSelector.val());
                    var month = parseInt($MonthSelector.val());
                    var dayCount = 0;
                    switch (month) {
                        case 1:
                        case 3:
                        case 5:
                        case 7:
                        case 8:
                        case 10:
                        case 12:
                            dayCount = 31;
                            break;
                        case 4:
                        case 6:
                        case 9:
                        case 11:
                            dayCount = 30;
                            break;
                        case 2:
                            dayCount = 28;
                            if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)) {
                                dayCount = 29;
                            }
                            break;
                        default:
                            break;
                    }

                    for (var i = 1; i <= dayCount; i++) {
                        var dayStr = "<option value=\"" + i + "\">" + i + "</option>";
                        $DaySelector.append(dayStr);
                    }
                }
            }
            $MonthSelector.change(function () {
                BuildDay();
            });
            $YearSelector.change(function () {
                BuildDay();
            });
        } // End ms_DatePicker
});
})(jQuery);
</script>













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
				<a href="#" onclick="return false"><img
					src="/Shop1.0/images/${user.u_img}" height="100%" width="100%" />
				</a>
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
					<form action="Goods_imgServlet?method=FuzzySelectGoods"
						method="post" id="Form">
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
										<li><a href="products.html" target="1">收货地址 </a>
										</li>
										<li><a
											href="${pageContext.request.contextPath}/frontmanger/userHeadShot.jsp">修改头像</a>
										</li>
										<li><a
											href="${pageContext.request.contextPath}/frontmanger/userInfo.jsp">修改个人资料</a>
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
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>我也</h6>
											<li><a href="products2.html">不知道</a>
											</li>
											<li><a href="products2.html">该</a>
											</li>
											<li><a href="products2.html">再编</a>
											</li>
											<li><a href="products2.html">点啥</a>
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
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<!-- ================================================================================= -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title asd">
											<a class="pa_italic" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <span
												class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
												class="glyphicon glyphicon-minus" aria-hidden="true"></i>个人信息
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body panel_text">
											<ul>
												<li><a
													href="${pageContext.request.contextPath}/frontmanger/userHeadShot.jsp">修改头像</a>
												</li>

												<li><a
													href="${pageContext.request.contextPath}/frontmanger/userInfo.jsp">修改个人资料</a>
												</li>

											</ul>
										</div>
									</div>
								</div>

								<!-- ================================================================================= -->

								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title asd">
											<a class="pa_italic collapsed" role="button"
												data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree" aria-expanded="false"
												aria-controls="collapseTwo"> <span
												class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
												class="glyphicon glyphicon-minus" aria-hidden="true"></i>我的购物车
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="collapseThree">
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
								<!-- ================================================================================= -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title asd">
											<a class="pa_italic collapsed" role="button"
												data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo" aria-expanded="false"
												aria-controls="collapseTwo"> <span
												class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
												class="glyphicon glyphicon-minus" aria-hidden="true"></i>已买到的宝贝
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body panel_text">
											<ul>
												<li><a href="products2.html">代付款</a>
												</li>
												<li><a href="products2.html">代发货</a>
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
						</div>
						<!-- ================================================================================= -->
					</div>
				</div>
				<!-- ================================================================================= -->


				<script type="text/javascript">
                           var Gid  = document.getElementById ;
                           var showArea = function(){
                           Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
                           Gid('s_city').value + " - 县/区" + 
                           Gid('s_county').value + "</h3>"
                           Gid('s_county').setAttribute('onchange','showArea()');
                        </script>
				<script type="text/javascript">
                                 


                                   
                                   //用户姓名验证
                                   $(function(){
									$("#userrealname").blur(function(){
										var re1=/^[\u4E00-\u9FA5A-Za-z]+$/;
										var userrealname = $("#userrealname").val();
										
										if (re1.test(userrealname)) {
											$("#userrealname2").html("<img src='/Shop1.0/images/check.png' style='width: 25px'/>");
										} else{
											$("#userrealname2").html("<img src='/Shop1.0/images/close.png' style='width: 25px'/>格式错误");
										}
                                     });
									});
									//用户性别
									
									//用户生日
									
									//用户居住地
                                </script>



				<div class="col-md-8 w3ls_mobiles_grid_right">
					<div class="">
						<ul id="user_head">
							<h3>基本信息</h3>
						</ul>
					</div>
					<div class="clearfix"></div>

					<!-- <div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3></h3>
						</div>
						<div class="clearfix"> </div>
					</div> -->

					<br>
					<div class="clearfix"></div>
					<div class="w3ls_mobiles_grid_right_grid3">

						<form
							action="${pageContext.request.contextPath}/UserInfoServlet?method=userInfoUpdate&u_id=${user.u_id}"
							method="post">
							<input type="hidden" name="user_id" value="${user.u_id}">


							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="" style="width:120px;">用户名：</div>
								<input type="text" name="username" id="username"
									value="${user.username}" readonly="true "
									style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">&nbsp;<span></span>

							</div>
							<!--一条-->


							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="">真实姓名：</div>
								<input type="text" name="userrealname" id="userrealname"
									value="${user.realname}"
									style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;"><span
									id="userrealname2"></span>
							</div>
							<!--一条-->

							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="">性别：</div>

								<select name="usersex"
									style="outline:none;border:1px solid #ddd;height:30px;">

									<c:if test="${user.u_sex eq 1}">
										<option selected="selected">男</option>
										<option value="">女</option>
									</c:if>
									<c:if test="${user.u_sex eq 0}">
										<option>男</option>
										<option selected="selected">女</option>
									</c:if>
								</select>
							</div>
							<!--一条-->
							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="">生日：</div>
								<select class="sel_year" name="year" value="">
								</select>年 <select class="sel_month" name="month" value="">
								</select>月 <select class="sel_day" name="day" value="">
								</select>日
							</div>
							<!--一条-->
							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="" style="width:120px;">参考生日：</div>
								<input type="text" name="user_birthday" id="user_birthday"
									value="${user.birthday}" readonly="true "
									style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">&nbsp;<span></span>

							</div>
							<!--一条-->


							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="">居住地：</div>
								<div>
									<select id="s_province" name="s_province"></select> <select
										id="s_city" name="s_city"></select> <select id="s_county"
										name="s_county"></select>
									<script class="resources library" src="js/area.js"
										type="text/javascript"></script>
									<script type="text/javascript">_init_area();</script>
								</div>
								<div id="show"></div>

							</div>
							<br>
							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="" style="width:120px;">参考居住地：</div>
								<input type="text" name="user_residence" id="user_residence"
									value="${user.u_residence}" readonly="true "
									style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">&nbsp;<span></span>

							</div>
							<!--一条-->


							<br>

							<div class="width100"
								style="height:32px;line-height:32px;margin-top:25px;">
								<div class="">个性签名：</div>
								<textarea rows="5" cols="30" name="userInfo">${user.userinfo}</textarea>
							</div>

							<br> <br> <br> <br> <br> <br>
							<br> <br> <br>
							<div>
								<input type="submit" value="保存" class="tdBtn" />
							</div>

						</form>








					</div>
				</div>
				<!-- ================================================================================= -->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>





</body>
</html>
