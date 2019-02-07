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
    
   <title>商品回收站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link>
  
  <script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
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
  
  </head>
  
  <body>
  <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>商品回收站</em></span>
  </div>
  <table class="list-style">
   <tr>
    <th>ID编号</th>
    <th>产品</th>
    <th>名称</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${list}" var="list" varStatus="id">
   <tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox" name="one"/>
     <i>${id.index+1}</i>
     </span>
    </td>
    <td class="center pic-area"><img src="img/${list.good_imgurl}" class="thumbnail"/></td>
    <td class="td-name">
      <span class="ellipsis td-name block">${list.goodsname}</span>
    </td>
    <td class="center">
     <a href="${pageContext.request.contextPath}/GoodsServlet?method=del&id=${list.g_id}&id1=1" title="恢复" ">恢复</a>
    </td>
   </tr>
   </c:forEach>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del" name="all" onclick="selectAll()"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量恢复" class="btnStyle" />
	  </div>
	  <!-- turn page -->
	 <!--  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div> -->
  </div>
 </div>
  </body>
</html>
