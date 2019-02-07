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
    
    <title>print</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="backmanger/style/adminStyle.css"
	type="text/css"></link>
  </head>
  
 <body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="order"></i><em>订单编号:${add.orderserial
					}</em> </span>
		</div>
		<dl class="orderDetail">
			<dt class="order-h">订单详情</dt>
			<dd>
				<ul>
					<li><span class="h-cont h-right">收件人姓名：</span> <span
						class="h-cont h-left">${add. consignee_name}</span></li>
					<li><span class="h-cont h-right">联系电话：</span> <span
						class="h-cont h-left">${add. consignee_tel}</span></li>
					<li><span class="h-cont h-right">联系地址：</span> <span
						class="h-cont h-left">${add. address}</span></li>
					<li><span class="h-cont h-right">付款状态：</span> <c:if
							test="${add.orderstate==1}">
							<span class="h-cont h-left">未支付</span>
						</c:if> <c:if test="${add.orderstate==2}">
							<span class="h-cont h-left"> <c:out value="已支付（待发货）" /> </span>
						</c:if> <c:if test="${add.orderstate==3}">
							<span class="h-cont h-left"><c:out value="已发货（待收货）" /> </span>
						</c:if> <c:if test="${add.orderstate==4}">
							<span class="h-cont h-left"><c:out value="已发货（待收货）" />交易完成（收货）</span>
						</c:if></li>
					<li><span class="h-cont h-right">下单时间：</span> <span
						class="h-cont h-left">${add.ordertime}</span></li>
					<li><span class="h-cont h-right">付款时间：</span> <span
						class="h-cont h-left">${add.ordertime}</span></li>
				</ul>
			</dd>
			<dd style="padding:1em 0;">
				<span><b>订单留言：</b> </span> <span>...这里是用户留言信息，务必***请到****谢谢~</span>
			</dd>
			<dd>
				<table class="list-style">
					<c:forEach items="${list}" var="list">
						<!--循环开始  -->
						<tr>

							<th>产品</th>
							<th>单价</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						<tr>

							<td>${list.g_name}</td>
							<td><span> <i>￥</i> <em>${list.g_price}</em> </span></td>
							<td>${list.goods_num}</td>
							<td><span> <i>￥</i> <em>${list.goods_num*list.g_price}</em>
							</span></td>
							
						</tr>
						<!--循环结束  -->
					</c:forEach>

					<tr>
						<td colspan="5">
							<div class="fr">
								<span style="font-size:15px;font-weight:bold;"> <i>订单共计金额：￥</i>
									<b>${add.order_total_price}</b> </span>
							</div></td>
					</tr>
				</table>
			</dd>
			<!-- <dd>
				 <table class="noborder">
					<tr>
						<td width="10%" style="text-align:right;"><b>管理员操作：</b>
						</td>
						<td><textarea class="block"
								style="width:80%;height:35px;outline:none;"></textarea></td>
					</tr>
				</table>
			</dd>-->
			<dd>
				<!-- Operation -->
				<div class="BatchOperation">
					<input type="button" value="打印订单" class="btnStyle" id="btprint" />

					<input type="button" value="发货" class="btnStyle" id="btdelivery"
						onclick="delivery(${add.order_id},${add.orderstate})" /> 
					<input type="button" value="取消订单" class="btnStyle" onclick="print(${add.order_id})"  />
				</div>
			</dd>
		</dl>
	</div>
</body>
</html>
