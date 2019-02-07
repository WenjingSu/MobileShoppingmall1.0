<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link></head>
  
  <body>
    <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="add"></i><em>编辑/添加产品</em></span>
    <span class="modular fr"><a href="${pageContext.request.contextPath}/GoodsServlet?method=product_list" class="pt-link-btn">产品列表</a></span>
  </div>
  <form action="${pageContext.request.contextPath}/GoodsServlet?method=editproduct&id=1" method="post" enctype="multipart/form-data">
  <input type="hidden" name="g_id" value="${good.g_id}">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">产品名称：</td>
    <td><input type="text" class="textBox length-long" name="goodsname" value="${good.goodsname }"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">产品分类：</td>
    <td>
     <select class="textBox" name="gt_id"  >
 		<c:forEach items="${listtype}" var="listtype">
 			 <c:forEach items="${listtype.children}" var="listtype">
 		     <option value="${listtype.gt_id}"  name="gt_id">${listtype.gt_typename}</option>
 		 </c:forEach>
 		</c:forEach>
      </optgroup>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">进价：</td>
    <td>
     <input type="text" class="textBox length-short" name="purchasing_price" value="${good.purchasing_price}"/>
     <span>元</span>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;">原价：</td>
    <td>
     <input type="text" class="textBox length-short" name="original_price" value="${good.original_price}"/>
     <span>元</span>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;">市场价：</td>
    <td>
     <input type="text" class="textBox length-short" name="goodsprice" value="${good.goodsprice}"/>
     <span>元</span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">库存：</td>
    <td>
     <input type="text" class="textBox length-short" name="amount" value="${good.amount}"/>
     <span>个</span>
    </td>
   </tr>

   <tr>
    <td style="text-align:right;">产品描述：</td>
    <td><input type="text" class="textBox length-long" name="goodsinfo" value="${good.goodsinfo}"/></td>
   </tr>
   
   <tr>
    <td style="text-align:right;">产品缩图片：</td>
    <td>
   		<img alt="" src="images/${good.good_imgurl}">
    </td>
   </tr>
   
  <%--  <tr>
    <td style="text-align:right;">产品主图：</td>
    <td>
    <c:forEach items="${goodimg}" var="goodimg">
     	<img alt="" src="img/${goodimg}">
     </c:forEach>
    </td>
   </tr> --%>
   
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="提交商品" class="tdBtn"/></td>
   </tr>
  </table>
  </form>
 </div>
  </body>
</html>
