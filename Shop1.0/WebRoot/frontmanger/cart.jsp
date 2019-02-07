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

<title>我的购物车</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="frontmanger/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="frontmanger/js/jquery.1.4.2-min.js"></script>
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
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="frontmanger/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="frontmanger/js/jquery.min.js"></script>
<!-- //js -->
<!-- web fonts -->
<!-- <link href='http://fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'> -->
<!-- //web fonts -->
<!-- for bootstrap working -->
<script type="text/javascript"
	src="frontmanger/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
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
	$(document).ready(function() {

		//jquery特效制作复选框全选反选取消(无插件)
		// 全选        
		$(".allselect").click(function() {
		if($(this).prop("checked")==true){
		$(".gwc_tb2 input[name=newslist]").each(function() {
				$(this).attr("checked", true);
				GetCount();
			});
		}else{
		
		$(".gwc_tb2 input[name=newslist]").each(function() {
				$(this).attr("checked", false);
			});
		}
			
			
		});

		/* //反选
		$("#invert").click(function() {
			$(".gwc_tb2 input[name=newslist]").each(function() {
				if ($(this).attr("checked")) {
					$(this).attr("checked", false);
				} else {
					$(this).attr("checked", true);
				}
			});
			GetCount();
		}); */

		//取消
		$("#cancel").click(function() {
			$(".gwc_tb2 input[name=newslist]").each(function() {
				$(this).attr("checked", false);
			});
			GetCount();
		});

		// 输出
		$(".gwc_tb2 input[name=newslist]").click(function() {
			GetCount();
		});
	});
	//******************
	function GetCount() {
		var zong = 0;
		var shuliang = 0;
		$(".gwc_tb2 input[name=newslist]").each(
				function() {
					if ($(this).attr("checked")) {
						for ( var i = 0; i < $(this).length; i++) {
							zong += parseFloat($(this).parent().parent().find(
									"#total1").text());
							shuliang += 1;
						}
					}
				});
		$("#shuliang").text(shuliang);
		$("#zong1").html((zong).toFixed(2));
		$("#jz1").css("display", "none");
		$("#jz2").css("display", "block");
	}
</script>


<!---商品加减算总数---->
<script type="text/javascript">
function createXMLHttpRequest() {//解决浏览器的兼容问题
		var xmlHttp;
		if (window.XMLHttpRequest) {//
			xmlHttp = new XMLHttpRequest(); //FF

		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); //IE	
		}
		return xmlHttp;
	}

	$(function() {
	
		//var t = $("#text_box1");//数量
		//var p=$("#text_box2");//价格
		var zong = $("#zong1");
		$(".gwc_tb2 tr")
				.each(
						function() {
							var t = $(this).find("#text_box1");
							var t2 = $(this).find("#text_box2");
							var total1 = $(this).find("#total1");
							var cheak = $(this).find("#newslist-2");
							var c_id=$(this).find("#c_id");
							$(this)
									.find("#add")
									.click(
											function() {
												if (t.val() < parseInt(t
														.attr("num"))) {
													t
															.val(parseInt(t
																	.val()) + 1);//t.val()获取id为"#text_box1"的value值，转换为int类型并加1，再赋值给吞t。val()
													var money = (parseInt(t
															.val()) * parseFloat(t2
															.text()))
															.toFixed(2);
													total1.html(money);
													//alert(t.val());
													//alert(c_id.val());
												var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "CartServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=UpdateAmountInCart"
												+ "&" + "c_id=" +cheak.val()+"&"+"amount="+t.val());
													
										xmlHttp.onreadystatechange = function()
										 {
											if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												
											}
										}
												
													if (cheak.is(":checked")) {
														var zongMoney = 0;
														zongMoney = eval(parseFloat(zong
																.text())
																+ parseFloat(t2
																		.text()));
														zong.text(zongMoney
																.toFixed(2));
																alert(aong.text());
													}
												
												}

											});
							$(this)
									.find("#min")
									.click(
											function() {
												if (t.val() > 1) {
													t
															.val(parseInt(t
																	.val()) - 1);
													var money = (parseInt(t
															.val()) * parseFloat(t2
															.text()))
															.toFixed(2);
													total1.html(money);
													
													
														var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "CartServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=UpdateAmountInCart"
												+ "&" + "c_id=" +cheak.val()+"&"+"amount="+t.val());
													
										xmlHttp.onreadystatechange = function()
										 {
											if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												
											}
										}
													
											
													if (cheak.is(":checked")) {
														var zongMoney = 0;
														zongMoney = eval(parseFloat(zong
																.text())
																- parseFloat(t2
																		.text()));
														zong.text(zongMoney
																.toFixed(2));
													}
												}
											});
							var m = (parseInt(t.val()) * parseFloat(t2.text()))
									.toFixed(2);
							total1.text(m);
								$(this).find("#delete").click(function(){
alert( cheak.val());
				
var re=confirm("是否删除");

					if(re==true){
					
					var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "CartServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=deleteCart"
												+ "&" + "c_id=" + cheak.val());
									xmlHttp.onreadystatechange = function()
										 {
										 if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												//alert(text);
												location.reload();
												}
										 
										 }
					}

});
							
						});
						
						
				

	});
</script>
<!--end  -->

<script>

$(function() {
		$("#jz2").click(function() {
		//alert("go to order");
			var arrcid = "";
			var arrNum = "";
			$(".gwc_tb2 tr").each(function() {
				var check = $(this).find("#newslist-2");
				var t1 = $(this).find("#text_box1");
				if (check.is(":checked")) {
				 	arrcid +=   "," +check.attr("value"); 
				}
			});
			var totalmoney=$("#zong1").html();
			//alert(arrcid);
			
			//window.location.href = "<%=path%>/AddressServlet?method=addorderlistall&arrcid=" + arrcid+"&totalmoney="+totalmoney;
		var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "AddressServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=setsession&arrcid=" + arrcid+"&totalmoney="+totalmoney);
										 xmlHttp.onreadystatechange = function()
										 {
										 if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												
												window.location.href = "<%=path%>/AddressServlet?method=addorderlistall";
										 
										  }	
										  }
		
 
		
		});
	});
	<%-- $(function() {
		$("#jz2").click(function() {
		alert("dd");
		alert("go to order");
			var cid="";
			$(".gwc_tb2 tr").each(function() {
				var check = $(this).find("#c_id");
				if (check.is(":checked")) {
				 	cid +=   "," +check.attr("value"); 			
				}
				alert(cid);
			});
			
			//window.location.href = "<%=path%>/OrderServlet?method=goToOrder&cid="+ cid ;
			//			});
	}); --%>
</script>
<script type="text/javascript">
/* $(function(){
$("#delete").click(function(){
var c_id=$("#newslist-2").val();
					
var re=confirm("是否删除");
					if(re==true){
					var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "CartServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=deleteCart"
												+ "&" + "c_id=" + c_id);
									xmlHttp.onreadystatechange = function()
										 {
										 if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												//alert(text);
												location.reload();
												}
										 
										 }
					}

});

}); */
/* function deletecid() {
				var c_id=$("#newslist-2").val();
					alert(c_id);
					var re=confirm("是否删除");
					if(re==true){
					var xmlHttp = createXMLHttpRequest();
										var method = "post";
										var url = "CartServlet";
										xmlHttp.open(method, url, true);
										//post必须设置请求头，才能发送数据
										xmlHttp
												.setRequestHeader(
														"Content-type",
														"application/x-www-form-urlencoded;charset=utf-8");

										xmlHttp.send("method=deleteCart"
												+ "&" + "c_id=" + c_id);
													
										xmlHttp.onreadystatechange = function()
										 {
											if (xmlHttp.readyState == 4)
											 {
												text = xmlHttp.responseText;
												alert(text);
												
											}else{
					alert(re);
					}
										}
					
					
					
			} */

</script>
</head>

<body>
	<!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
		aria-labelledby="myModal88" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">a &times;</button>
					<h4 class="modal-title" id="myModalLabel">不要等待，立即登录</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1"
							style="border-right: 1px dotted #C2C2C2;padding-right:3em; background-color: red;">
							<div class="sap_tabs">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>登录</span>
										</li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>注册</span>
										</li>
									</ul>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">
													<input name="Email" placeholder="Email Address" type="text"
														required=""> <input name="Password"
														placeholder="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Sign in" />
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">
													<input placeholder="Name" name="Name" type="text"
														required=""> <input placeholder="Email Address"
														name="Email" type="email" required=""> <input
														placeholder="Password" name="Password" type="password"
														required=""> <input placeholder="Confirm Password"
														name="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Create Account" />
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
									<h3 class="other-nw">Sign in with</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#"
											class="entypo-facebook"></a>
										</li>
										<li class="social_dribbble"><a href="#"
											class="entypo-dribbble"></a>
										</li>
										<li class="social_twitter"><a href="#"
											class="entypo-twitter"></a>
										</li>
										<li class="social_behance"><a href="#"
											class="entypo-behance"></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
				var u = $("#myMode166").attr("class");
				if (u == "") {
					$('#myModal88').modal('show');
					$('#login1').show();
					$('#login2').hide();
				} else {
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
				<form
					action="${pageContext.request.contextPath}/CartServlet?method=gotoCart"
					method="post" class="last">
					<input type="hidden" name="cmd" value="_cart" /> <input
						type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value="">

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
				$(function() {
					$("div.row div#cname ul")
							.each(
									function() {
										$(this)
												.find("li:first")
												.append(
														"&nbsp;<span class='label label-success'>New</span>");
									});
				});
			</script>
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a
						href="${pageContext.request.contextPath}/GoodsTypeFrontServlet?method=goodstypeFindAllLimit">主页</a>
					</li>
					<!-- Mega Menu -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">产品介绍 <b class="caret"></b> </a>
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
								<div class="clearfix"></div>
							</div>
						</ul></li>
					<li><a href="https://www.apple.com/cn/">关于我们</a>
					</li>
					<!-- <li class="w3pages"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Pages <span class="caret"></span> </a>
						<ul class="dropdown-menu">
							<li><a href="icons.html">Web Icons</a>
							</li>
							<li><a href="codes.html">Short Codes</a>
							</li>
						</ul></li> -->
					<li><a href="mail.html">联系我们</a>
					</li>
				</ul>
			</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->


	<div class="gwc" style=" margin:auto;">
		<table cellpadding="0" cellspacing="0" class="gwc_tb1">
			<tr>
				<td class="tb1_td1"><input id="Checkbox1" type="checkbox"
					class="allselect" /></td>
				<td class="tb1_td1">全选</td>
				<td class="tb1_td3">商品</td>
				<td class="tb1_td4">商品信息</td>
				<td class="tb1_td5">数量</td>
				<td class="tb1_td6">单价</td>
				<td class="tb1_td6">小计</td>
				<td class="tb1_td7">操作</td>
			</tr>
		</table>
		<table cellpadding="0" cellspacing="0" class="gwc_tb2">



			<c:forEach items="${list}" var="list">



				<tr>

					<td class="tb2_td1"><input type="checkbox"
						value="${list.c_id}" name="newslist" id="newslist-2" /> <input
						type="hidden" id="c_id" value="" /></td>

					<td class="tb2_td2"><a href="#"><img
							src="images/${list. good_imgurl}" /> </a></td>
					<td class="tb2_td3"><a href="#">${list. goodsname }</a></td>

					<td class="tb1_td5"><input id="min" name=""
						style=" width:20px; height:18px;border:1px solid #ccc;"
						type="button" value="-" /> <input id="text_box1"
						num="${ list.amount}" name="" type="text"
						value="${list.goods_count }"
						style=" width:30px; text-align:center; border:1px solid #ccc;"
						readonly="readonly" /> <input id="add" name="" class="add"
						style=" width:20px; height:18px;border:1px solid #ccc;"
						type="button" value="+" />
					</td>

					<td class="tb1_td6"><lable id="text_box2" name="">${list.goodsprice
						}</lable></td>
					<td class="tb1_td6"><label id="total1" class="tot"
						style="color:#ff5500;font-size:14px; font-weight:bold;"></label></td>
					<td class="tb1_td7"><input type="button" value="删除"
						id="delete">
					</td>

				</tr>
			</c:forEach>

		</table>

		<table cellpadding="0" cellspacing="0" class="gwc_tb3">
			<tr>
				<td class="tb1_td1">
					<!-- <input id="checkAll" class="allselect"
					type="checkbox" /></td> --> <!-- <td class="tb1_td1">全选</td>
				<td class="tb3_td1"><input id="invert" type="checkbox" />反选 <input
					id="cancel" type="checkbox" />取消</td> -->
				<td class="tb3_td2">已选商品 <label id="shuliang"
					style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
				<td class="tb3_td3">合计(不含运费):<span>￥</span><span
					style=" color:#ff5500;"><label id="zong1"
						style="color:#ff5500;font-size:14px; font-weight:bold;">0.00</label>
				</span>
				
				</td>
				<td class="tb3_td4"><span id="jz1">结算</span><input
					type="button" style=" display:none;" class="jz2" id="jz2"
					value="结算" /></td>
			</tr>

		</table>
		<script type="text/javascript">
		
		
		
		</script>

	</div>
	<br>
	<br>
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
	<!-- <script src="frontmanger/js/minicart.js"></script>
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
	</script> -->
</body>
</html>
