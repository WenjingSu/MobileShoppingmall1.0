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
    <span class="modular fr"><a href="${pageContext.request.contextPath}/backmanger/edit_product2.jsp" class="pt-link-btn">批量添加</a></span>
  </div>
  <form action="${pageContext.request.contextPath}/GoodsServlet?method=editproduct&id=0" method="post" enctype="multipart/form-data">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">产品名称：</td>
    <td><input type="text" class="textBox length-long" name="goodsname" value=""/></td>
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
     <input type="text" class="textBox length-short" name="purchasing_price" />
     <span>元</span>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;">原价：</td>
    <td>
     <input type="text" class="textBox length-short" name="original_price"/>
     <span>元</span>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;">市场价：</td>
    <td>
     <input type="text" class="textBox length-short" name="goodsprice"/>
     <span>元</span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">库存：</td>
    <td>
     <input type="text" class="textBox length-short" name="amount"/>
     <span>个</span>
    </td>
   </tr>

   <tr>
    <td style="text-align:right;">产品描述：</td>
    <td><input type="text" class="textBox length-long" name="goodsinfo"/></td>
   </tr>
   
   <tr>
    <td style="text-align:right;">产品缩图片：</td>
    <td>
     <label for="chanpinzhutu" class="labelBtn2">本地上传(最多选择1张)</label><br/>
   		<input type="file"  name="good_imgurl"/>
    </td>
   </tr>
   
   <tr>
    <td style="text-align:right;">产品主图：</td>
    <td>
    <label for="chanpinzhutu" class="labelBtn2">本地上传(最多选择5张)</label><br/>
     <input type="file"  name="imageurl"/>
     <input type="file"  name="imageurl"/>
     <input type="file"  name="imageurl"/>
     <input type="file"  name="imageurl"/>
     <input type="file"  name="imageurl"/>
    </td>
   </tr>
   
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="发布新商品" class="tdBtn"/></td>
   </tr>
  </table>
  </form>
 </div>
  </body>
</html>
