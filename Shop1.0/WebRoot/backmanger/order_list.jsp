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
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" href="backmanger/style/adminStyle.css"type="text/css"></link>
<script type="text/javascript" src="backmanger/js/public.js"></script>
<script type="text/javascript" src="backmanger/js/jquery.js"></script>
<script type="text/javascript" src="backmanger/js/jquery.min.js"></script>

<script type="text/javascript" src="backmanger/js/laydate.js"></script>
<link rel="stylesheet" href="backmanger/style/laydate.css" type="text/css"></link>
<link rel="stylesheet" type="text/css" href=" backmanger/style/pagination.css">
<script type="text/javascript" src="backmanger/js/jquery.pagination.js"></script>
<script type="text/javascript">
	function selectAll() {
		$("input[name='all']").each(function() {
			if ($(this).prop("checked") == true) {
				$("input[name='one']").prop('checked', true);
				return;
			} else {
				$("input[name='one']").prop('checked', false);
				return;
			}
		});
	}


	
</script>
<script type="text/javascript">
function handlePaginationClick(new_page_index, pagination_container) {
   	 $("#Form").attr("action", "<%=path%>/OrderServlet?method=pageOrderList&currentPage=" + (new_page_index+1));
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
<script type="text/javascript">
	function fdate() {
		laydate({
			elem : '#demo',
			format : 'YYYY-MM-DD',
			festival : true, //显示节日
			choose : function(datas) { //选择日期完毕的回调
				$("input[id='bt']").click(function() {
					//alert('得到：' + datas);
				});
			}
		});

	}
</script>
</head>



<body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="order"></i><em>订单列表</em>
			</span>
		</div>
		<div class="operate">
			<form action="${pageContext.request.contextPath}/OrderServlet?method=pageOrderList" method="post" id="Form">
				<img src="images/icon_search.gif" /> 
				<input type="text"
					class="textBox length-long" placeholder="输入订单编号..." name="orderserial" value="${address.orderserial}"/> 
					<input class=" textBox laydate-icon " id="demo"  value="${address.ordertime}" onclick="fdate()"  placeholder="选择订单日期..." name="ordertime">
					<select class="inline-select" name="orderstate" value="${address.orderstate}">
					<option value="0">全部</option>
					<option value="1">1.未支付</option>
					<option value="2">2.已支付（待发货）</option>
					<option value="3">3.已发货（待收货）</option>
					<option value="4">4.交易完成（收货）</option>
				</select> <input  type="submit" value="查询" class="tdBtn" name="bt" />
			</form>
		</div>
		<table class="list-style Interlaced">
			<tr>
				<th>订单编号</th>
				<th>下单时间</th>
				<th>收件人</th>
				<th>订单金额</th>
				<th>订单状态</th>
				<th>操作</th>
			</tr>

			<!-- 循环开始 -->
			<c:forEach items="${list.dataList}" var="orderlist">
				<tr>
					<td><input type="checkbox" name="one" /> <a
						href="${pageContext.request.contextPath}/OrderServlet?method=order_detail&oid=${orderlist.order_id}">${orderlist.orderserial}</a>
					</td>
					<td class="center"><span class="block">${orderlist.ordertime}</span>
					</td>
					<td width="450"><span class="block">${orderlist.consignee_name}[${orderlist.consignee_tel}]</span>
						<address>${orderlist.address}</address></td>
					<td class="center"><span><i>￥</i><b>${orderlist.order_total_price}</b>
					</span></td>
					<td class="center"><c:if test="${orderlist.orderstate==1}">
							<span> <c:out value="未支付" />
							</span>
						</c:if> <c:if test="${orderlist.orderstate==2}">
							<span> <c:out value="已支付（待发货）" />
							</span>
						</c:if> <c:if test="${orderlist.orderstate==3}">
							<span><c:out value="已发货（待收货）" />
							</span>
						</c:if> <c:if test="${orderlist.orderstate==4}">
							<span><c:out value="已发货（待收货）" />交易完成（收货）</span>
						</c:if></td>
					<td class="center"><a
						href="${pageContext.request.contextPath}/OrderServlet?method=order_detail&oid=${orderlist.order_id}"
						class="inline-block" title="查看订单"><img
							src="images/icon_view.gif" />
					</a> <!--  <a class="inline-block" title="删除订单"><img src="images/icon_trash.gif" id="deleimg"/></a>-->
					</td>
				</tr>
				<!-- 循环结束 -->


			</c:forEach>

		</table>



		<!-- BatchOperation -->
		<div style="overflow:hidden;">
			<!-- Operation -->
			<div class="BatchOperation fl">
				<input type="checkbox" id="del" name="all" onclick="selectAll()" />
				<label for="del" class="btnStyle middle">全选</label>
				 <input type="button" value="打印订单" class="btnStyle" />
				<!-- <input type="button" value="配货" class="btnStyle"/>
	   <input type="button" value="删除订单" class="btnStyle"/>  -->
			</div>
			<!-- turn page -->
				<div id="buttom">
			<div class="pagination" style="float: right;padding-top: 10px;">
			共${list.totalRecord}条记录&nbsp;&nbsp;共${list.totalPage}页&nbsp;&nbsp;当前页第${list.currentPage}页&nbsp;&nbsp;
	    	
	    	<br>
	    	</div>
	    	<div id="News-Pagination" class="pagination" style="float: right;padding-top: 10px;" ></div><!--用来展示分页列表-->
		</div>
	    	<br>
	    	</br>
	    	
	    
		</div>
	</div>
</body>
</html>
