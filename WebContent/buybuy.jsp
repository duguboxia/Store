<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>

.logo{ color:#F00; text-align:center;}

.da{ width: 1000px;margin-left: auto;margin-right: auto;}

.aa{ margin-top:100px;}

.inputs{ width:200px; height:30px; border:1px #CCC solid; padding-left:10px; padding-right:10px; margin-top:25px;}

.inputs:focus{ /*聚焦*/ border:1px #FF0000 solid;}

.tj{ width:200px; height:40px; margin-top:20px; background:#F00; color:#FFF;}
</style>
</head>
<body>
<% String price = request.getParameter("orderSum");
float orderSum =Float.parseFloat(price);
%>
<div class="da">
<div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
    	</p>
</div>
</div>
<div class="aa">
<form name="form" method="post" action="BuyBuyServlet" style="text-align:center;">
  <p>收&nbsp;货&nbsp;人&nbsp;：
    <input class="inputs" type="text" name="username" id="username">
    
  </p>
  <p>电话号码：
    <input class="inputs" type="text" name="username" id="username">
  </p>
  <p>收货地址：
    <input class="inputs" type="text" name="address" id="address">
  </p>
  <p>订单总额：
    <input class="inputs" readonly type="text" name="orderSum" id="orderSum" value="<%=orderSum%>">
  </p>
  <p>
    <input class="tj" type="submit" name="button" id="button" value="提交">
  </p>
</form>
</div>
</body>
</html>