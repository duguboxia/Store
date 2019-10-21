<%@page import="com.cn.vo.Type"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-3.4.0.js"></script>
<%

String id=request.getParameter("id");
List<Type> list=(List<Type>)session.getAttribute("ListType");
Type type=new Type();
type=list.get(Integer.parseInt(id));
%>

<body>
<p style="background:#09F;text-align:center;">修改分类</p>
<form  method="post" action="UpdateTypeServlet" id="form">
  <p>
  <input type="hidden" name="id" value="<%=type.getId()%>">
  类别名称：
  <input type="text" name="typename" id="typename" value="<%=type.getType_name()%>">
  </p>
  <p>
  类别描述：
  <input type="text" name="typedesc" id="typedesc" value="<%=type.getType_desc() %>">
  </p>
  <p>
    <input type="button" name="sure" id="sure" value="确认" onclick="check()">
    <input type="button" value="返回"  onclick="back()">
  </p>
</form>
<script type="text/javascript">
function back() {
	history.go(-1);
}
function check(){
	var typename=document.getElementById("typename").value;
	var typedesc=document.getElementById("typedesc").value;
	var form=document.getElementById("form");
	if(typename==""){
		alert("类名不能为空！");
		return;
	}
	if(typedesc==""){
		alert("请填写类别描述");
		return;
	}
	
	document.getElementById("form").submit();
	alert("修改成功");
}
</script>
</body>
</html>