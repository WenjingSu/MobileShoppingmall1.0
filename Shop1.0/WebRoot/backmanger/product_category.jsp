<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link>
  <script type="text/javascript" src="<%=path%>/js/jquery-1.9.1.min.js"></script>
  <script>
  
   /*$(function del(){
   $(".deleteImg").bind("click",function(){ 
    var msg = "您真的确定要删除吗？\n\n请确认！";
    if (confirm(msg)==true){ 
       return true; 
    }else{ 
       return false; 
    } 
   });
   });*/
   
  function del()
  {
  
    var msg = "您真的确定要删除吗？\n\n请确认！";
    if (confirm(msg)==true){ 
       return true; 
    }else{ 
       return false; 
    } 
  }
    </script>
   
	
  
  
  </head>
  
  <body>
    <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>产品分类</em></span>
    <span class="modular fr"><a href="<%=path%>/GoodsTypeServlet?method=goodstypeAddSkip" class="pt-link-btn">+添加新分类</a></span>
  </div>
  
  <table class="list-style">
   <tr>
    <th>分类编号</th>
    <th>分类名称</th>
    <th>删除分类</th>
    <th>编辑信息</th>
   </tr>
   
   <c:forEach items="${goodsTypes01}" var="goodsTypes"> 
   <tr>
    <td style="text-indent:6em;"> <input type="checkbox"/>
     <span> ${goodsTypes.gt_id}</span></td>
    <td class="center">${goodsTypes.gt_typename}</td>
    <td class="center"><a href="<%=path%>/GoodsTypeServlet?method=goodstypeDel&g_id=${goodsTypes.gt_id}" class="block" title="移除"><img src="images/icon_trash.gif" class="deleteImg" onclick="javascript:return del()"/></a ></td>
    <td class="center"><a href="<%=path%>/GoodsTypeServlet?method=goodstypeFatherEdit&g_id=${goodsTypes.gt_id}" class="inline-block" title="修改信息"><img src="images/icon_edit.gif"/></a>
    <a href="<%=path%>/GoodsTypeServlet?method=goodstypeAddChildrenSkip&g_id=${goodsTypes.gt_id}" class="inline-block" title="添加二级分类"><img src="images/icon_edit.gif"/></a>
    </td>
   </tr>
    
    <c:if test="${!empty goodsTypes.children}">
    <c:forEach items="${goodsTypes.children}" var="children">
    <tr>
    <td style="text-indent:8em;"> <input type="checkbox"/>
     <span> ${children.gt_id}</span></td>
    <td class="center">${children.gt_typename}</td>
    <td class="center"><a href="<%=path%>/GoodsTypeServlet?method=goodstypeDel&g_id=${children.gt_id}" class="block" title="移除"><img src="images/icon_trash.gif" class="deleteImg" onclick="javascript:return del()"/></a></td>
    <td class="center"><img src="images/icon_edit.gif"></td>
   
    </tr>
    </c:forEach>
    </c:if>
    
  
   </c:forEach>
   

   
  
  </table>
  
  
  <div style="overflow:hidden;">
      
	 <!--  <div class="BatchOperation fl">
	   <input type="checkbox" id="del"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle"/>
	  </div>
	  
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div> -->
  </div>
 </div>
  </body>
</html>
