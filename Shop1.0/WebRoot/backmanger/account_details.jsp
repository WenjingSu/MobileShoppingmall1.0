<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
<title>会员资金变动明细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" href="backmanger/style/adminStyle.css" type="text/css"></link></head>
  
  <body>
  <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="account_user"></i><em>用户资金变动明细</em></span>
    <span class="modular fr"><a class="pt-link-btn">当前用户：“DeathGhost”，可用资金￥5000000.00</a></span>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>变动服务项目</th>
    <th>帐户变动时间</th>
    <th>可用资金帐户</th>
    <th>冻结资金帐户</th>
    <th>帐户变动原因</th>
   </tr>
   <tr>
    <td class="center">201504182513</td>
    <td class="center">2015-04-18</td>
    <td class="center"><i>-</i><span>￥</span><b>139.00</b></td>
    <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
    <td>
     <div style="width:350px;">
               订单付款
     </div>
    </td>
   </tr>
   <tr>
    <td class="center">充值</td>
    <td class="center">2015-04-18</td>
    <td class="center"><i>-</i><span>￥</span><b>200.00</b></td>
    <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
    <td>
     <div style="width:350px;">
               充值
     </div>
    </td>
   </tr>
   <tr>
    <td class="center">管理员/系统操作</td>
    <td class="center">2015-04-18</td>
    <td class="center"><i>-</i><span>￥</span><b>20.00</b></td>
    <td class="center"><i>-</i><span>￥</span><b>10.00</b></td>
    <td width="350">
     <div style="width:350px;">
               平台入驻冻结保证金，操作员：***
     </div>
    </td>
   </tr>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
  </body>
</html>
