<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增产品分类</title>
    
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
    <span class="modular fl"><i></i><em>添加分类</em></span>
  </div>
  
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">分类名称：</td>
    <td>
     <input type="text" class="textBox"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:10%;">上级分类：</td>
    <td>
     <select class="textBox">
      <option>顶级分类</option>
      <option>某分类</option>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">数量单位：</td>
    <td>
     <input type="text" class="textBox length-short"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">排序：</td>
    <td>
     <input type="text" class="textBox length-short"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">是否显示：</td>
    <td>
     <input type="radio" name="show" id="yes"/>
     <label for="yes">是</label>
     <input type="radio" name="show" id="no"/>
     <label for="no">否</label>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">分类页面标题：</td>
    <td>
     <input type="text" class="textBox length-long"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">分类页面关键词：</td>
    <td>
     <input type="text" class="textBox length-long"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">分类页面描述：</td>
    <td>
     <textarea class="textarea"></textarea>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="保存" class="tdBtn"/></td>
   </tr>
  </table>
 </div>
  </body>
</html>
