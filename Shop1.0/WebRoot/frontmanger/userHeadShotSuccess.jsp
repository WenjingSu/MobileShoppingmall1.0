<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String headMessage = request.getAttribute("headMessage").toString();
	
%>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript">
    
	 <% if(headMessage!="") { %>
		alert("<%=headMessage%>");
		document.location.href = "<%=path%>/frontmanger/userHeadShot.jsp";
	<% } %>
	
	
</script>
</head>



 
<body> 
</body> 
</html>
