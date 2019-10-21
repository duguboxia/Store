<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<p>您已选择的商品：大猪蹄子</p>
<p>单价: <span id="dj">50.00</span></p>
<p>
	数量为:
	<input value="-" type="button" onClick="jian()">
	<input type="text" id="num" class="inputs" value="1" readonly>
	<input value="+" type="button" onClick="jia()">
	(库存<span id="kucun">10</span>件)
</p>
<p>总价为:<span id="zj">50.00</span></p>
<script type="text/javascript">
var num = document.getElementById("num");
function jia(){
	if(Number(num.value > 10)){
		alert("库存不足！");
		return;
	}
	num.value = Number(num.value) + 1;
	kucun.innerHTML = Number(kucun.innerHTML) - 1;
	zj.innerHTML = Number(zj.innerHTML) + Number(dj.innerHTML) + ".00";
}
function jian(){
	if(Number(num.value < 2)){
		alert("数量不能小于1！");
		return;
	}
	num.value = Number(num.value) - 1;
	kucun.innerHTML = Number(kucun.innerHTML) + 1;
	zj.innerHTML = Number(zj.innerHTML) - Number(dj.innerHTML) + ".00";
}

</script>
</body>
</html>