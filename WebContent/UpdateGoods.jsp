<%@page import="com.cn.vo.Goods"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-3.4.0.js"></script>
<%

String id=request.getParameter("id");
List<Goods> list=(List<Goods>)session.getAttribute("List");
Goods goods=new Goods();
goods=list.get(Integer.parseInt(id));
%>

<body>
<p style="background:#09F;text-align:center;">修改商品</p>
<form  method="post" action="UpdateGoodsServlet" id="form" enctype="multipart/form-data">
  <p>
   商品编号：
  <input type="text" readonly="readonly" name="goods_id" id="goods_id" value="<%=goods.getGoods_id() %>">
  </p>
  <p>
   商品名称：
  <input type="text" name="goods_name" id="goods_name" value="<%=goods.getGoods_name() %>">
  </p>
  <p>
  类别编号：
  <input type="text" name="type_id" id="type_id" value="<%=goods.getType_id() %>">
  </p>
  <p>
  商品价格：
  <input type="text" name="goods_price" id="goods_price" value="<%=goods.getGoods_price() %>">
  </p>
  <p>
  商品描述：
	<textarea name="goods_desc" id="goods_price" cols="28" rows="5"><%=goods.getGoods_desc() %></textarea>
  </p>
  <p>
  商品图片：
  <input type="file" name="file" id="file" value="<%=goods.getGoods_pic() %>">
  </p>
  <p>
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
	var typename=document.getElementById("goods_name").value;
	var typedesc=document.getElementById("goods_desc").value;
	var form=document.getElementById("form");
	if(typename==""){
		alert("商品名称不能为空！");
		return;
	}
	if(typedesc==""){
		alert("请填写商品描述");
		return;
	}
	
	document.getElementById("form").submit();
	alert("修改成功");
} */
</script>
</body>
</html>