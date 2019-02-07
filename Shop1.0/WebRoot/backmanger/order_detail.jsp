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

<link rel="stylesheet" href="backmanger/style/adminStyle.css"
	type="text/css"></link>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	
	
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
	
  function delivery(oid,orderstate){
 if(orderstate==2){
 if(confirm("是否确认发货？")){
 var xmlHttp = createXMLHttpRequest();
		
		var method = "post";
		var url = "OrderServlet";
		xmlHttp.open(method, url, true);
		//post必须设置请求头，才能发送数据
		xmlHttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded;charset=utf-8");

		xmlHttp.send("method=updatesta"+"&"+"oid="+oid);
		
		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4) {
				var text = xmlHttp.responseText;
				if(text==1){
				alert("订单已发货");
					location.reload();
					$("#btdelivery").val("已发货");
				}
				
			};
		};
 }
 }if(orderstate==4){
alert("订单已完成");
 }
 if(orderstate==1){
alert("订单未支付");
 }
 else{
  alert("订单已发货");
 }
  
  }
  
  
  
   function print(){
    /*bdhtml=window.document.body.innerHTML;   
    sprnstr="<!--startprint-->";   
    eprnstr="<!--endprint-->";   
    prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);   
    prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));   
    window.document.body.innerHTML=prnhtml; */
    alert("df");
    //window.print();  

  /* alert("123");
  var xmlHttp = createXMLHttpRequest();
		
		var method = "post";
		var url = "OrderServlet";
		xmlHttp.open(method, url, true);
		//post必须设置请求头，才能发送数据
		//xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=utf-8");

		xmlHttp.send("method=print"+"&"+"oid="+oid);
		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4) {
				var text = xmlHttp.responseText;
				if(text==1){
				window.open ('page.html','newwindow','height=100,width=400,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
				}
				
			};
		};*/
		
  
  }
  
  </script>
	
</head>

<body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="order"></i><em>订单编号:${add.orderserial
					}</em> </span>
						<span class="modular fl">&nbsp;<i class="order"></i>
						<em>用户名:${add.username}</em> </i>
						</span>
						<em style="float: right;"><a href="${pageContext.request.contextPath}/OrderServlet?method=order_list" >返回</a></em>
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
		
			<dd>

				<!-- Operation -->
				<div class="BatchOperation">
				  <OBJECT  id=WebBrowser  classid=CLSID:8856F961-340A-11D0-A96B-00C04FD705A2  height=0  width=0>
  </OBJECT>
					<input type="button" value="打印订单" class="btnStyle"  onclick="print()"/>

					<input type="button" value="发货" class="btnStyle" id="btdelivery"
						onclick="delivery(${add.order_id},${add.orderstate})" /> 
					<input type="button" value="取消订单" class="btnStyle"  />
				</div>
			</dd>
		</dl>
	</div>
</body>
</html>
