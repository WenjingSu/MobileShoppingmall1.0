<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><link rel="stylesheet" type="text/css" href=" backmanger/style/pagination.css">
	<script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="backmanger/js/jquery.pagination.js"></script>
<script type="text/javascript">
	/* $(function(){
		$("#News-Pagination").pagination(100, {
        items_per_page:10, // 每页显示多少条记录
        current_page:2-1,
        prev_text:"上一页",
         next_text:"下一页"
       // current_page:${result.currentPage} - 1, // 当前显示第几页数据
        /* num_display_entries:2, // 分页显示的条目数
        next_text:"下一页",
        prev_text:"上一页",
        num_edge_entries:2, // 连接分页主体，显示的条目数
        callback:handlePaginationClick */
	//});
	// 设置学生默认性别
	//$("#gender").val("${gender}");
	
//}); 
function handlePaginationClick(new_page_index, pagination_container) {
   	 $("#Form").attr("action", "<%=path%>/Goods_imgServlet?method=FuzzySelectGoods&currentPage=" + (new_page_index+1));
   	 $("#Form").submit();
     return false;
	}
	$(function(){
		$("#News-Pagination").pagination(${list.totalRecord}, {
        items_per_page:${list.pageSize}, // 每页显示多少条记录
        current_page:${list.currentPage} - 1, // 当前显示第几页数据
        num_display_entries:2, // 分页显示的条目数
        next_text:"下一页",
        prev_text:"上一页",
        num_edge_entries:2, // 连接分页主体，显示的条目数
        callback:handlePaginationClick
	});
	// 设置学生默认性别
	//$("#gender").val("${gender}");
	
});

</script>
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
<!-- //js -->  
<!-- web fonts --> 
<link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts --> 
<!-- for bootstrap working -->
<script type="text/javascript" src="frontmanger/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->


 <script type="text/javascript">
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
  </head>
  
  <body>
  <!-- header modal -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
					<h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
									</ul>		
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">			
													<input name="Email" placeholder="Email Address" type="text" required="">						
													<input name="Password" placeholder="Password" type="password" required="">										
													<div class="sign-up">
														<input type="submit" value="Sign in"/>
													</div>
												</form>
											</div>
										</div> 
									</div>	 
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">			
													<input placeholder="Name" name="Name" type="text" required="">
													<input placeholder="Email Address" name="Email" type="email" required="">	
													<input placeholder="Password" name="Password" type="password" required="">	
													<input placeholder="Confirm Password" name="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Create Account"/>
													</div>
												</form>
											</div>
										</div>
									</div> 			        					            	      
								</div>	
							</div>
							<script src="frontmanger/js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function () {
									$('#horizontalTab').easyResponsiveTabs({
										type: 'default', //Types: default, vertical, accordion           
										width: 'auto', //auto or any width like 600px
										fit: true   // 100% fit in a container
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
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
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
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<script>
				$(function(){
				$("div.row div#cname ul").each(function(){$(this).find("li:first").append("&nbsp;<span class='label label-success'>New</span>");});
			    });
		       </script>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}/GoodsTypeFrontServlet?method=goodstypeFindAllLimit">Home</a></li>	
						<!-- Mega Menu -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle act" data-toggle="dropdown" >Products <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
							
								<div class="row">
								<c:forEach items="${goodsTypes01}" var="goodsTypes">
									<div class="col-sm-3"  id="cname">
										<ul class="multi-column-dropdown">
											<!--  <h6>Mobiles</h6>-->
										 <h6><a href="${pageContext.request.contextPath}/Goods_imgServlet?method=productslist&ft_id=${goodsTypes.gt_id}">${goodsTypes.gt_typename}</a></h6>
											<c:if test="${!empty goodsTypes.children}">
										 <c:forEach items="${goodsTypes.children}" var="children">
										 <li><a href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${children.gt_id}">${children.gt_typename}</a></li>
										   
										  </c:forEach>
										 </c:if>
											<!--  <li><a href="products.html">Mobile Phones</a></li>
											<li><a href="products.html">Mp3 Players <span>New</span></a></li> 
											<li><a href="products.html">Popular Models</a></li>
											<li><a href="products.html">All Tablets<span>New</span></a></li>-->
										</ul>
									</div>
								</c:forEach>
									
									
									
									<div class="clearfix"></div>
								</div>
							</ul>
						</li>
						<li><a href="https://www.apple.com/cn/">About Us</a></li> 
						<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="icons.html">Web Icons</a></li>
								<li><a href="codes.html">Short Codes</a></li>     
							</ul>
						</li>  
						<li><a href="mail.html">Mail Us</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner -->
	<div class="banner banner1">
		<div class="container">
			<h2>Great Offers on <span>Mobiles</span> Flat <i>35% Discount</i></h2> 
		</div>
	</div> 
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> 主页</a> <i>/</i></li>
				<li>产品</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs --> 
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<div class="w3ls_mobiles_grids">
				<div class="col-md-4 w3ls_mobiles_grid_left">
					<div class="w3ls_mobiles_grid_left_grid">
						</div>
				</div>
		
					<div class="clearfix"> </div>

					<div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
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
					
						<div class="clearfix"> </div>
					</div>
					<!-- 开始循环 -->
					
					<c:forEach items="${list.dataList}" var="list">
					
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
							
								<div class="hs-wrapper hs-wrapper2">
								<img src="images/${list.good_imgurl}" alt=" " class="img-responsive" />
								<c:forEach items="${list}" var="list">
										<c:if test="${list.gt_id==listtype.gt_id}">
									<img src="images/${list.good_imgurl }" alt=" " class="img-responsive" />								
									</c:if>
								</c:forEach>
									
									<div class="w3_hs_bottom w3_hs_bottom_sub1">
										<ul>
											<li>
												<a href="#" data-toggle="modal" data-target="#myModal9"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
											</li>
										</ul>
									</div>
								</div>
								
								<h5><a href="${pageContext.request.contextPath}/GoodsServlet?method=goodsdetail&gtid=${list.gt_id}">${list.goodsname }</a></h5>
								
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="w3ls_item" value="${list.goodsname}" /> <input
													type="hidden" name="amount" value="${list.goodsprice}" />
												<button type="button" onclick="gocart(${list.g_id})"
													class="w3ls-cart" id="${list.g_id}">Add to
													cart</button>
											
								<div class="simpleCart_shelfItem">
								<c:set var="maxI" value="0"/>
								<c:set var="min" value="10000"/>
									<c:forEach items="${list}" var="i">
									<c:if test="${i.gt_id==listtype.gt_id}">
										<c:if test="${i.goodsprice<=min}">
   										 <c:set var="min" value="${i.goodsprice}"/>
   										 </c:if>
									
									
   										 <c:if test="${i.goodsprice>=maxI}">
   										 <c:set var="maxI" value="${i.goodsprice}"/>
   										 </c:if>
   										  </c:if>
									</c:forEach>
								<p><i class="item_price">${ min}</i>------	
								<i class="item_price">${ maxI}</i></p>
									<p><span>${list.original_price}</span> <i class="item_price">${list.goodsprice }</i></p>
									
								</div> 
							</div>
						</div>
					
						
						</c:forEach>
						<!-- 结束循环 -->
		<div class="clearfix"> </div>
					</div>
					 <div id="News-Pagination" class="pagination" style="float: right;padding-top: 10px;" ></div><!--用来展示分页列表-->
		<div class="pagination" style="float: right;padding-top: 10px;">
			共${list.totalRecord}条记录&nbsp;&nbsp;共${list.totalPage}页&nbsp;&nbsp;当前页第${list.currentPage}页&nbsp;&nbsp;
	    	</div>
				
				</div>
				<div class="clearfix"> </div>
				
		
	
	
	
	
	
	

	
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //newsletter -->
	
	

<div id="News-Pagination" class="pagination"></div><!--用来展示分页列表-->
  </body>
</html>
