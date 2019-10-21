<%@page import="com.cn.vo.Indent"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%List<Indent> list=(List<Indent>)session.getAttribute("indentlist") ;
	String id=request.getParameter("id");
	Indent indent=new Indent();
	indent=list.get(Integer.parseInt(id));
%>
<body>
<form name="form" method="post" action="UpdateIndentServlet" id="form">
<input type="hidden" name="id" value="<%=indent.getId()%>">
  <p>订单编号：
  <input type="text" name="order_id" id="order_id" value="<%=indent.getOrder_id()%>">
  </p>
  <p>收货地址:
    <input type="text" name="address" id="address" value="<%=indent.getAddress()%>">
  </p>
  <p>收获人：  
    <input type="text" name="username" id="username" value="<%=indent.getUsername()%>">
  </p>
  <p>总额：
    <input type="text" name="orderSum" id="orderSum" value="<%=indent.getOrderSum()%>">
  </p>
  <p>处理时间：
    <input type="text" name="dealtime" id="dealtime" value="<%=indent.getDealDate()%>">
</p>
  <p>状态：
    <input type="text" name="status" id="status" value="<%=indent.getStatus()%>">
  </p>
  <p>
    <input type="submit" name="sure" id="sure" value="确认">
    <input type="button" name="return" id="return" value="返回" onclick="back()">
  </p>
</form>
<script type="text/javascript">
function back(){
	window.history.back();
}
</script>
</body>
</html>