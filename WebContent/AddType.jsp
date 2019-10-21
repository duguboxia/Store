<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="jquery-3.4.0.js"></script>
<body>
<p style="background:#09F;text-align:center;">添加分类</p>
<form  method="post" action="AddTypeServlet" id="f">
  <p>
  类别名称：
  <input type="text" name="typename" id="typename">
  </p>
  <p>
  类别描述：
  <input type="text" name="typedesc" id="typedesc">
  </p>
  <p>
    <input type="submit" name="sure" id="sure" value="确认">
    <input type="button" value="返回"  onclick="back()">
  </p>
</form>
<script type="text/javascript">
function back() {
	history.go(-1);
}
</script>
</body>
</html>