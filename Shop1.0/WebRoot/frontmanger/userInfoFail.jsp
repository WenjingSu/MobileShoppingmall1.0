<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String InfoMessage = request.getAttribute("InfoMessage").toString();
	
%>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript">
    
	 <% if(InfoMessage!="") { %>
		alert("<%=InfoMessage%>");
		document.location.href = "<%=path%>/frontmanger/userInfo.jsp";
	<% } %>
	
	
</script>
</head>



 
<body> 
</body> 
</html>
