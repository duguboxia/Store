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
<p style="background:#09F;text-align:center;">添加商品</p>
<form  method="post" action="AddGoodsServlet" id="f" enctype="multipart/form-data">
  <p>
  商品名称：
  <input type="text" name="goods_name" id="goods_name">
  </p>
  <p>
  类别编号：
  <input type="text" name="type_id" id="type_id">
  </p>
  <p>
  商品价格：
  <input type="text" name="goods_price" id="goods_price">
  </p>
  <p>
  商品描述：
	<textarea name="goods_desc" id="goods_desc" cols="28" rows="5"></textarea>
  </p>
  <p>
  商品图片：
  <input type="file" name="file" id="file">
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
/* function check(){
	alert(111);
	var typename=document.getElementById("typename").value;
	var typedesc=document.getElementById("typedesc").value;
	var f=document.getElementById("f");
	if(typename==""){
		alert("类名不能为空");
		return;
	}
	if(typedesc==""){
		alert("请描述一下类名");
		return;
	}
	$.post("AddTypeServlet",{"typename":typename,"typedesc":typedesc}, function(data) {
		 if(data == "success"){
			 history.go(-1);//返回上一层
		alert("添加成功");
		 }else{
			 alert("添加失败");
		 }
		 }); 
} */
</script>
</body>
</html>