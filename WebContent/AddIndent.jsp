<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<p style="background:#09F;text-align:center;">添加订单</p>
<form name="form" method="post" action="AddIndentServlet" id="form">
<input type="hidden" name="id" >
  <p>订单编号：
  <input type="text" name="order_id" id="order_id">
  </p>
  <p>收货地址:
    <input type="text" name="address" id="address">
  </p>
  <p>收获人：  
    <input type="text" name="username" id="username">
  </p>
  <p>总额：
    <input type="text" name="orderSum" id="orderSum">
  </p>
  <p>处理时间：
    <input type="text" name="dealtime" id="dealtime">
</p>
  <p>状态：
    <input type="text" name="status" id="status">
  </p>
  <p>
    <input type="submit" name="sure" id="sure" value="确认">
    <input type="button" name="return" id="return" value="返回" onclick="back()">
  </p>
</form>
</body>
<script type="text/javascript">
function back(){
	window.history.back();
}
</script>
</html>