<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>统计</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="/Shop1.0/jQuery.js"></script>
<script type="text/javascript" src="/Shop1.0/jqplot.js"></script>
<script type="text/javascript">
	$(function() {
		
				
			
	});
</script>
<script type="text/javascript">
	function createXMLHttpRequest() {//解决浏览器的兼容问题
		var xmlHttp;
		if (window.XMLHttpRequest) {//
			xmlHttp = new XMLHttpRequest(); //FF

		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); //IE	
		}
		return xmlHttp;
	}

	$(function() {
		$("#sub").click(
				function() {
					var year = $("#year").val();
					//window.location.href = "<%=path%>
	///CountServlet?method=CountYear" + "&" + "year="+ year ;
							var xmlHttp = createXMLHttpRequest();
							var method = "post";
							var url = "CountServlet";
							xmlHttp.open(method, url, true);
							//post必须设置请求头，才能发送数据
							xmlHttp
									.setRequestHeader("Content-type",
											"application/x-www-form-urlencoded;charset=utf-8");

							xmlHttp.send("method=CountYear" + "&" + "year="
									+ year);
							xmlHttp.onreadystatechange = function() {
								if (xmlHttp.readyState == 4) {
									text = xmlHttp.responseText;
									//var obj=eval();
									//alert(text);
									//var a = new Array(12);
                                    var arr=text.split(',');
                                    var a1=arr[1];
                                    var a2=arr[2];
                                    var a3=arr[3];
                                    var a4=arr[4];
                                    var a5=arr[5];
                                    var a6=arr[6];
                                    var a7=arr[7];
                                    var a8=arr[8];
                                    var a9=arr[9];
                                    var a10=arr[10];
                                    var a11=arr[11];
                                    var a12=arr[12];
                                    
									//var a1 = text[2];
									//alert(arr[2]);
									var data = [
											[ a1, a2, a3, a4, a5, a6, a7, a8, a9,a10,a11,a12 ]
											 ];

									var data_max = 100; //Y轴最大刻度
									var line_title = [ "A" ]; //曲线名称
									var y_label = "这是Y轴"; //Y轴标题
									var x_label = "这是X轴"; //X轴标题
									var x = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
											11, 12 ]; //定义X轴刻度值
									var title = "这是标题"; //统计图标标题
									j.jqplot.diagram.base("chart1", data,
											line_title, "这是统计标题", x, x_label,
											y_label, data_max, 1);
									j.jqplot.diagram.base("chart2", data,
											line_title, "这是统计标题", x, x_label,
											y_label, data_max, 2);
								}
							}
							//alert(year);
							//var month=$("#month").val();
							//alert(month);
							//var day=$("#day").val();
							//alert(day);

						});

	});
</script>
</head>
<!-- 
  <body>
  
	<div id="chart1"></div>
	<div id="chart2"></div>
  </body> -->
<body>

	<form name="reg_testdate">
		<a>请选择日期：</a> <select name="YYYY" onChange="YYYYDD(this.value)"
			id="year">
			<option value="">请选择 年</option>
		</select>
		<!-- <select name="MM" onChange="MMDD(this.value)" id="month">
		<option value="">选择 月</option>
	</select>
	<select name="DD" id="day">
		<option value="">选择 日</option>
	</select> -->
		<input type="button" value="确定" id="sub">
	</form>

	<script language="JavaScript">
		function YYYYMMDDstart() {
			MonHead = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

			//先给年下拉框赋内容   
			var y = new Date().getFullYear();
			for ( var i = (y - 30); i < (y + 30); i++)
				//以今年为准，前30年，后30年   
				document.reg_testdate.YYYY.options.add(new Option(" " + i
						+ " 年", i));

			//赋月份的下拉框   
			for ( var i = 1; i < 13; i++)
				document.reg_testdate.MM.options.add(new Option(" " + i + " 月",
						i));

			document.reg_testdate.YYYY.value = y;
			document.reg_testdate.MM.value = new Date().getMonth() + 1;
			var n = MonHead[new Date().getMonth()];
			if (new Date().getMonth() == 1 && IsPinYear(YYYYvalue))
				n++;
			writeDay(n); //赋日期下拉框Author:meizz   
			document.reg_testdate.DD.value = new Date().getDate();
		}
		if (document.attachEvent)
			window.attachEvent("onload", YYYYMMDDstart);
		else
			window.addEventListener('load', YYYYMMDDstart, false);
		function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)   
		{
			var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;
			if (MMvalue == "") {
				var e = document.reg_testdate.DD;
				optionsClear(e);
				return;
			}
			var n = MonHead[MMvalue - 1];
			if (MMvalue == 2 && IsPinYear(str))
				n++;
			writeDay(n)
		}
		function MMDD(str) //月发生变化时日期联动   
		{
			var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;
			if (YYYYvalue == "") {
				var e = document.reg_testdate.DD;
				optionsClear(e);
				return;
			}
			var n = MonHead[str - 1];
			if (str == 2 && IsPinYear(YYYYvalue))
				n++;
			writeDay(n)
		}
		function writeDay(n) //据条件写日期的下拉框   
		{
			var e = document.reg_testdate.DD;
			optionsClear(e);
			for ( var i = 1; i < (n + 1); i++)
				e.options.add(new Option(" " + i + " 日", i));
		}
		function IsPinYear(year)//判断是否闰平年   
		{
			return (0 == year % 4 && (year % 100 != 0 || year % 400 == 0));
		}
		function optionsClear(e) {
			e.options.length = 1;
		}
	</script>

	<div id="chart1"></div>
	<div id="chart2"></div>
</body>
</html>
