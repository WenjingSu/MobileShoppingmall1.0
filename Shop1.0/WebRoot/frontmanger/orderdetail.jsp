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

<title>订单详情</title>

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
				<form name="addrForm" id="addrForm" action="#">
					<h3>
						收货地址 <span class="manage-address"> </span>
					</h3>
					<span class="marker-tip">寄送至</span> <label for="addrId_674944241"
						class="user-address"> ${add.address} <br>(${
						add.consignee_name}收) <em>${add.consignee_tel}</em> </label> <br> <br>
					<br>
				</form>

				<h3 class="dib">订单信息</h3>
				<table cellspacing="0" cellpadding="0" class="order-table"
					id="J_OrderTable" summary="统一下单订单信息区域">

					<thead>
						<tr>
							<th class="s-title">宝贝名称
								<hr /></th>
							<th class="s-price">单价(元)
								<hr /></th>
							<th class="s-amount">数量
								<hr /></th>
							<th class="s-agio">优惠方式(元)
								<hr /></th>
							<th class="s-total">小计(元)
								<hr /></th>
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
								</div>
							</td>
						</tr>

						<c:forEach items="${list }" var="list">
							<tr class="item"
								data-lineid="19614514619:31175333266:35612993875"
								data-pointRate="0">
								<td class="s-title"><a target="_blank"
									title="Huawei/华为 G520新款双卡双待安卓系统智能手机4.5寸四核手手机"
									class="J_MakePoint"
									data-point-url="http://log.mmstat.com/buy.1.5"> <img
										src="http://img03.taobaocdn.com/bao/uploaded/i3/18670026332876589/T1A4icFbNeXXXXXXXX_!!0-item_pic.jpg_60x60.jpg"
										class="itempic"><span class="title J_MakePoint">${list.g_name
											}</span> </a>

									<div class="props">
										<span> </span>
									</div>
								</td>
								<td class="s-price"><span class='price '> <em
										class="style-normal-small-black J_ItemPrice">${list.g_price
											}</em> </span> <input type="hidden" name="costprice" value="630.00"
									class="J_CostPrice" />
								</td>
								<td class="s-amount" data-point-url=""><input type="hidden"
									class="J_Quantity" value="1"
									name="19614514619_31175333266_35612993875_quantity" />${list.goods_num
									}</td>
								<td class="s-agio">
									<div class="J_Promotion promotion" data-point-url="">无优惠</div>
								</td>
								<td class="s-total"><span class='price '> <em
										class="style-normal-bold-red J_ItemTotal ">${list.goods_num*list.g_price
											}</em> </span>
								</td>
							</tr>
						</c:forEach>

						<tr class="shop-total blue-line">
							<td colspan="5">合计 <span class='price g_price '> <span>&yen;</span><em
									class="style-middle-bold-red J_ShopTotal">${add.order_total_price
										}</em> </span> <input type="hidden" name="1704508670:2|creditcard"
								value="false" /> <input type="hidden" id="J_IsLadderGroup"
								name="isLadderGroup" value="false" />
							</td>
						</tr>
					</tbody>
					<!-- end -->




					<tfoot>
						<tr>
							<td colspan="5">

								<div class="order-go" data-spm="4">
									<div class="J_AddressConfirm address-confirm">
										<div class="kd-popup pop-back" style="margin-bottom: 40px;">
											<div class="box">
												<div class="bd">
													<div class="point-in">

														<em class="t">实付款：</em> <span class='price g_price '>
															<span>&yen;</span><em class="style-large-bold-red"
															id="J_ActualFee">${add.order_total_price}</em> </span><br/>
															
													</div>
										
												</div>
											</div><c:if test="${state==1}">
<a id="J_Go" class=" btn-go"  data-point-url=""  tabindex="0" title="点击此按钮，立即支付。" href="OrderServlet?method=userupdateorder&orderstate=2&oid=${oid}">立即支付<b class="dpl-button"></b></a>
</c:if>
										</div>
									</div>




								</div>
							</td>
						</tr>
						
					</tfoot>
				</table>
			</div>


		</div>

		<div id="footer"></div>
	</div>

</body>
</html>
