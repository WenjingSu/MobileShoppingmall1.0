<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href=" backmanger/style/pagination.css">
	<script type="text/javascript" src="backmanger/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="backmanger/js/jquery.pagination.js"></script>
  <script type="text/javascript">
	$(function(){
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
	});
	// 设置学生默认性别
	//$("#gender").val("${gender}");
	
});

</script>
  </head>
  
  <body>
<div id="News-Pagination" class="pagination"></div><!--用来展示分页列表-->

</body>
  
</html>
