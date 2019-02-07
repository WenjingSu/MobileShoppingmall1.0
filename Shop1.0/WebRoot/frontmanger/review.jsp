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

<title>评论页面</title>

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

<body>


	<div id="page">

		<div id="content" class="grid-c">

			<div id="address" class="address" style="margin-top: 20px;"
				data-spm="2">
				<h3 class="dib">订单信息</h3>
				<table cellspacing="0" cellpadding="0" class="order-table"
					id="J_OrderTable" summary="统一下单订单信息区域">
					<span>${msg}</span>
					<thead>
						<tr>
							<th class="s-title" >宝贝名称
								<hr />
							</th>
							<th class="s-price" colspan="3">评论
								<hr />
							</th>
						</tr>
					</thead>



<!-- begin -->
					<tbody data-spm="3" class="J_Shop" data-tbcbid="0"
						data-outorderid="47285539868" data-isb2c="false" data-postMode="2"
						data-sellerid="1704508670">
						<tr class="first">
							<td colspan="5"></td>
						</tr>
						<tr class="shop blue-line">

							<td colspan="2" class="promo">
								<div>
									<ul class="scrolling-promo-hint J_ScrollingPromoHint">
									</ul>
								</div></td>
						</tr>
						
						<c:forEach items="${list }" var="list">
						<tr class="item" data-lineid="19614514619:31175333266:35612993875"
							data-pointRate="0">
							<td class="s-title"><a  target="_blank" 
								title="Huawei/华为 G520新款双卡双待安卓系统智能手机4.5寸四核手手机"
								class="J_MakePoint"
								data-point-url="http://log.mmstat.com/buy.1.5"> <img
									src="/Shop1.0/images/${list.good_imgurl}"
									class="itempic"><span class="title J_MakePoint"
									>${list.g_name}</span>
							</a>

								<div class="props">
									<span> </span>
								</div></td>
							<form action="ReviewServlet?method=reviewAdd&g_id=${list.g_id}&goodsname=${list.g_name}" method="post">
							<td class="s-price" ><input name="good" type="radio" value="1"/>好评<br/><input name="good" type="radio" value="2"/>中评<br/><input name="good" type="radio" value="3"/>差评</td>
							<td class="s-amount" data-point-url=""><textarea name="review" style="width: 300px;height: 80px;"></textarea></td>
							<td class="s-total"><span class='price '> <em
									class="style-normal-bold-red J_ItemTotal "><input type="submit" value="发表评论"/></em> </span>
								
							</td>
							</form>

						</tr>
						
</c:forEach>

						
					</tbody>
<!-- end -->					
					
				
					
					

				</table>
			</div>


		</div>

		<div id="footer"></div>
	</div>

</body>
</html>
