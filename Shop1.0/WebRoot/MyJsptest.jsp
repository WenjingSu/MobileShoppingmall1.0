<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <script type="text/javascript" src="/Shop1.0/backmanger/js/area.js"></script>
<script class="resources library"
		src="/Shop1.0/frontmanger/js/area.js" type="text/javascript"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div>
<select id="s_province" name="s_province"></select>  
<select id="s_city" name="s_city" ></select>  
<select id="s_county" name="s_county"></select>
<script class="resources library" src="js/area.js" type="text/javascript"></script>   
<script type="text/javascript">_init_area();</script>
</div>
<div id="show"></div>								
<script type="text/javascript">
var Gid  = document.getElementById ;
var showArea = function(){
Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
Gid('s_city').value + " - 县/区" + 
Gid('s_county').value + "</h3>"
Gid('s_county').setAttribute('onchange','showArea()');
</script>
  </body>
</html>
