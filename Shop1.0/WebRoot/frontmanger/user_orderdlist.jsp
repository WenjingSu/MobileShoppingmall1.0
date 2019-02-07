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

<title>订单列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="frontmanger/css/tasp.css" />
<link href="frontmanger/css/orderconfirm.css" rel="stylesheet" />
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
<script type="text/javascript">
$(function(){

$(".option0").click(function(){
var state=$(this).val();
alert(0); //查看
window.location.href = "<%=path%>/AddressServlet?method=addorderlistall&arrcid=" + arrcid+"&totalmoney="+totalmoney;
});
$(".option1").click(function(){
var state=$(this).val();
alert(1);//支付

});
$(".option2").click(function(){
var state=$(this).val();
alert(3);//收货

});
$(".option3").click(function(){
var state=$(this).val();
alert(4);//评价

});

});



</script>
<!-- //end-smooth-scrolling -->
<style>
#page {
	width: auto;
}

#comm-header-inner,#content {
	width: 950px;
	margin: auto;
}

#logo {
	padding-top: 26px;
	padding-bottom: 12px;
}

#header .wrap-box {
	margin-top: -67px;
}

#logo .logo {
	position: relative;
	overflow: hidden;
	display: inline-block;
	width: 140px;
	height: 35px;
	font-size: 35px;
	line-height: 35px;
	color: #f40;
}

#logo .logo .i {
	position: absolute;
	width: 140px;
	height: 35px;
	top: 0;
	left: 0;
	background: url(http://a.tbcdn.cn/tbsp/img/header/logo.png);
}
</style>
</head>

<body data-spm="1">
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
						<input type="text" name="Search" placeholder="Search..." >
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
					<li class="dropdown">
					<a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=0"
						>全部订单<!--  <b class="caret"></b> --> </a>
						<%-- <ul class="dropdown-menu multi-column columns-3">
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
						</ul> --%>
					</li>

				
					<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=1">待付款</a></li>
					<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=2">待发货</a></li>
					<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=3">待收货</a></li>
				<li><a href="${pageContext.request.contextPath }/OrderServlet?method=orderState&orderstate=4">待评价</a></li>
				</ul>
			</div>
			</nav>
		</div>
	</div>


	<div id="page">

		<div id="content" class="grid-c">

			<div id="address" class="address" style="margin-top: 20px;"
				data-spm="2">
				
				<h3 class="dib">订单信息</h3>
				<table cellspacing="0" cellpadding="0" class="order-table"
					id="J_OrderTable" summary="统一下单订单信息区域">
					
					<thead>
						<tr>
							<th class="s-title">宝贝名称
								<hr />
							</th>
							<th class="s-price">单价(元)
								<hr />
							</th>
							<th class="s-amount">数量
								<hr />
							</th>
							<th class="s-agio">优惠方式(元)
								<hr />
							</th>
							<th class="s-total">小计(元)
								<hr />
							</th>
						</tr>
					</thead>


<!-- begin -->
<c:forEach items="${list}" var="list">



					<tbody data-spm="3" class="J_Shop" data-tbcbid="0"
						data-outorderid="47285539868" data-isb2c="false" data-postMode="2"
						data-sellerid="1704508670">
						<tr class="first">
							<td colspan="5"></td>
						</tr>
						<tr class="shop blue-line">

							<td colspan="2" class="promo">
								<div>
							<input hidden="hidden" value="${list.order_id }" id="oid">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=User_order_detail&oid=${list.order_id}&state=${list.orderstate}">订单编号：${list.orderserial }</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/OrderServlet?method=User_order_detail&oid=${list.order_id}&state=${list.orderstate}">订单时间：${list.ordertime }</a>
								</div>
								</td>
						</tr>
						
						
						<c:forEach items="${list.order_goodlist}" var="list1">  
						<tr class="item" data-lineid="19614514619:31175333266:35612993875"
							data-pointRate="0">			
							<td class="s-title"><a href="#" target="_blank"
								title="Huawei/华为 G520新款双卡双待安卓系统智能手机4.5寸四核手手机"
								class="J_MakePoint"
								data-point-url="http://log.mmstat.com/buy.1.5">
								 <img src="/Shop1.0/images/${list1. good_imgurl}" class="itempic">
									<span class="title J_MakePoint"
									data-point-url="http://log.mmstat.com/buy.1.5"></span>
							</a>
                               <%-- <c:set var="list1" value="${list.order_goodlist}"></c:set> --%>
								<div class="props">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=User_order_detail&oid=${list1.order_id}">${list1.g_name}</a>
								</div></td>
							<td class="s-price"><span class='price '> <em
									class="style-normal-small-black J_ItemPrice">${list1.g_price }</em> </span> <input
								type="hidden" name="costprice" value="630.00"
								class="J_CostPrice" /></td>
							<td class="s-amount" data-point-url=""><input type="hidden"
								class="J_Quantity" value="1"
								name="19614514619_31175333266_35612993875_quantity" />${list1. goods_num}</td>
							<td class="s-agio">
								<div class="J_Promotion promotion" data-point-url="">无优惠</div></td>
							<td class="s-total"><span class='price '> <em
									class="style-normal-bold-red J_ItemTotal ">${list1.g_price * list1. goods_num}</em> </span></td>
						</tr>


 </c:forEach>

						<tr class="shop-total blue-line">
							<td colspan="5">合计 <span class='price g_price '> <span>&yen;</span><em
									class="style-middle-bold-red J_ShopTotal">${list.order_total_price}</em> </span> <input
								type="hidden" name="1704508670:2|creditcard" value="false" /> <input
								type="hidden" id="J_IsLadderGroup" name="isLadderGroup"
								value="false" />
								
								<c:if test="${list. orderstate!=1&&list. orderstate!=3 &&list. orderstate!=4}">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=User_order_detail&oid=${list.order_id}&state=${list.orderstate}">查看订单</a></c:if>
								<c:if test="${list. orderstate==1}">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=userupdateorder&oid=${list.order_id}&orderstate=2&state=${list.orderstate}">确认支付 </a></c:if>
								<c:if test="${list. orderstate==3}">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=userupdateorder&oid=${list.order_id}&orderstate=4&state=${list.orderstate}">确认收货 </a></c:if>
								<c:if test="${list. orderstate==4}">
								<a href="${pageContext.request.contextPath }/OrderServlet?method=Review&oid=${list.order_id}">去评价 </a></c:if>
								</td>
						</tr>
					</tbody>
					</c:forEach>
<!-- end -->					
					
					
					
					
					<tfoot>
						<tr>
							<td colspan="5">

								<div class="order-go" data-spm="4">
									<div class="J_AddressConfirm address-confirm">
										
									</div>




								</div></td>
						</tr>
					</tfoot>
				</table>
			</div>


		</div>

		<div id="footer"></div>
	</div>

</body>
</html>
