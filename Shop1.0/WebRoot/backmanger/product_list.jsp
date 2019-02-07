<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>产品列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href=" backmanger/style/pagination.css">
<script type="text/javascript" src="backmanger/js/jquery.pagination.js"></script>
  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link>
  <script type="text/javascript" src="backmanger/js/public.js"></script>
 <!--  <script type="text/javascript" src="backmanger/js/jquery.js"></script>
  <script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script> -->
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
   	 $("#Form").attr("action", "<%=path%>/GoodsServlet?method=product_list&currentPage=" + (new_page_index+1));
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
	 function f(){
	 
	  var deleid="";
$(".arr td").each(function(){
var check=$(this).find("#one");
if (check.is(":checked")) {
		deleid += "," +check.val(); 
		}

});
window.location.href = "<%=path%>/GoodsServlet?method=delAll&deleid=" + deleid;
 	 }
	 
	 </script>
  </head>
  
  <body>
     <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>产品列表</em></span>
    <span class="modular fr"><a href="${pageContext.request.contextPath}/GoodsServlet?method=edit_product" class="pt-link-btn">+添加商品</a></span>
  </div>
  <div class="operate">
   <form id="Form" action="GoodsServlet?method=product_list" method="post">
    <!-- <select class="inline-select">
     <option>店铺</option>
    </select> -->
    <input type="text" class="textBox length-long" placeholder="输入产品名称..." name="search"/>
    <input type="submit" value="查询" class="tdBtn"/>
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>ID编号</th>
    <th>产品</th>
    <th>名称</th>
    <th>市场价</th>
    <th>原价</th>
    <th>进价</th>
    <th>库存</th>
    <th>状态</th>
    <th>操作</th>
   </tr>
   
   <c:forEach items="${list.dataList}" var="list"  varStatus="id">
   <tr class="arr">
    <td>
    
     <span>
     <input type="checkbox" class="middle children-checkbox" name="one" value="${list.g_id}" id="one"/>&nbsp;
    <i>${id.index+1}</i>
     </span>
    </td>
    <td class="center pic-area"><img src="img/${list.good_imgurl}" class="thumbnail"/></td>
    <td class="td-name">
      <span class="ellipsis td-name block">${list.goodsname}</span>
    </td> 
    <td class="center">
     <span>
      <i>￥</i>
      <em>${list.goodsprice}</em>
     </span>
    </td>
    <td class="center">
     <span>
      <i>￥</i>
      <em>${list.original_price}</em>
     </span>
    </td>
      <td class="center">
     <span>
      <i>￥</i>
      <em>${list.purchasing_price}</em>
     </span>
    </td>
    <td class="center">
     <span>
      <em>${list.amount}</em>
      <i>件</i>
     </span>
    </td><td class="center">
     <span>
      <em><c:if test="${list.goods_state==1}"><a href="${pageContext.request.contextPath}/GoodsServlet?method=state&id=${list.g_id}&id1=2" title="点击下架"><input type="button" value="已上架"></a></c:if>
      <c:if test="${list.goods_state!=1}"><a href="${pageContext.request.contextPath}/GoodsServlet?method=state&id=${list.g_id}&id1=1" title="点击上架"><input type="button" value="未上架"></a></c:if></em>
     </span>
    </td>
    <td class="center">
     <a href="${pageContext.request.contextPath}/GoodsServlet?method=edit_productupdate&id=${list.g_id}" title="查看" target="_blank" ><img src="images/icon_view.gif"/></a>
     <a href="${pageContext.request.contextPath}/GoodsServlet?method=edit_productupdate&id=${list.g_id}" title="编辑"><img src="images/icon_edit.gif"/></a>
     <a href="${pageContext.request.contextPath}/GoodsServlet?method=del&id=${list.g_id}&id1=0" title="删除" class="del" onclick="del()"><img src="images/icon_drop.gif"/></a>
    </td>
   </tr>
     </c:forEach>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del" name="all" onclick="selectAll()"	/>
	   <label for="del" class="btnStyle middle" >全选</label>
	   <input type="button" value="批量删除" class="btnStyle" id="btndete" onclick="f()"/>
	  </div>
	
	  <!-- turn page -->
	  <div class="turnPage center fr">
	  <%-- <div class="pagination" style="float: right;padding-top: 10px;">
			共${list.totalRecord}条记录&nbsp;&nbsp;共${list.totalPage}页&nbsp;&nbsp;当前页第${list.currentPage}页&nbsp;&nbsp;
	    	
	    	<br>
	    	</div> --%>
	    	<div id="News-Pagination" class="pagination" style="float: right;padding-top: 10px;" ></div><!--用来展示分页列表-->
		
	  
	  </div>
  </div>
 </div>
  </body>
</html>
