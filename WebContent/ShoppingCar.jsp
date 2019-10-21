<%@page import="com.cn.vo.Order_detail"%>
<%@page import="com.cn.vo.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<style>
	*{ margin-bottom: 5px;}
	.da{width: 95%;}
	.right{ float: right;}
	.inputs{ width: 100px;border: 1px #FD9899 solid;border-radius: 5px;height: 25px;
	padding-left: 10px;padding-right: 10px;}
	tr{ text-align: center;}
	.logo{ color:#F00; text-align:center;}
	.zc{ margin-left:800px; color:#F00;}
	.pay {
    padding-left: 30px;
    background-color: #FFF;
    width: 90%;
    height: 166px;
    position: fixed;bottom: 0;
}
.pay .totalNum{
    color: #F02028;
}
.pay p{
    color: #F02028;
}
.pay .button{
    position: fixed;
    width: 100px;
    height: 66px;
    background-color: #FF3334;
    color: #FFF;
    font-size: 20px;
}	
</style>
<script src="js/jquery-3.2.1.min.js"> </script>
</head>
<body>
<%
List<Order_detail> listOrder_ = (List<Order_detail>)session.getAttribute("ListOrder_");
%>
<div class="da">
<div class="logo">
		<p>
			<img src="images/xiaoji_03.png">
			<img src="images/zwsc_03.png">
       		<p class="zc">
    			<a>${User.username}的购物车</a>
            </p>
        </p>
	</div>
 <table class="table" id="myTable" width="95%" border="0" cellpadding="0" cellspacing="0">
	    <tr class="tr">
	      <th valign="middle" width="120" height="20" scope="col">&nbsp;订单编号</th>
	      <th width="200" scope="col">&nbsp;商品名称</th>
	      <th width="120" scope="col" >&nbsp;商品单价</th>
	      <th width="200" scope="col" >&nbsp;数量</th>
	      <th width="200" scope="col" >&nbsp;小计</th>
	      <th width="100" scope="col">&nbsp;操作</th>
	    </tr>
	<%if(listOrder_!=null){
	    for(int i=0;i<listOrder_.size();i++){
	    	Order_detail od=listOrder_.get(i);
	    %>	
<tr class="tr">
	<th  valign="middle" width="120" height="20" scope="col">&nbsp;<%=od.getOrder_id() %></th>
	<th width="200" scope="col">&nbsp;<%=od.getGoods_name() %></th>
	<th width="120" scope="col" ><span><%=od.getGoods_price() %></span></th>
	<th width="200" scope="col">
		<input value="-" type="button" onClick="jian(this)">
		<input type="text" id="num" class="inputs" value="0" readonly>
		<input value="+" type="button" onclick="jia(this)">
	</th>
	<th width="200" scope="col" ><span id="xiaoji" name="xiaoji">0</span></th>
	<th width="100" scope="col">
		<input type="button" value="删除" onclick="deleteRow(this)">
	</th>
</tr>
<%}} %>
</table>

<table class="pay right" id="pay" width="90%" border="0">
	<tr>
		<td colspan="4" class="totalPrice"><label>0</label></td>
		<td>	
		<button type="submit" class="button right">去付款</button>
		</td>
	</tr>
</table>
</div>

<script>
	function deleteRow(t){
		var i=t.parentNode.parentNode.rowIndex;
		document.getElementById('myTable').deleteRow(i);
	}
	var num = document.getElementById("num");
	var xiaoji = document.getElementById("xiaoji");
	var dj = document.getElementById("dj");
	function jia(el){
		var va=$(el).prev().val();
		$(el).prev().val(parseInt(va)+1);
		var dj=$(el).parent().prev().text();
		var total=$(el).parent().next().text();
		$(el).parent().next().text(parseInt(dj) * $(el).prev().val());
		var goods_price = $(el).parent().next().text();
		$(".totalPrice").text(parseInt($(".totalPrice").text())+parseInt($(el).parent().prev().text()));
	}
	function jian(ell){
		var va=$(ell).next().val();
		if($(ell).next().val(parseInt(va)) < 1 ){
			alert("数量不能小于0！");
			return;
		}
		
		$(ell).next().val(parseInt(va)-1);
		var dj=$(ell).parent().prev().text();
		var total=$(ell).parent().next().text();
		$(ell).parent().next().text(parseInt(dj) * $(ell).next().val());
		var goods_price = $(ell).parent().next().text();
		$(".totalPrice").text(parseInt($(".totalPrice").text())-parseInt($(ell).parent().prev().text()));
		//xiaoji.innerHTML = Number(xiaoji.innerHTML) - Number(dj.innerHTML) + ".00";
	}
</script>
</body>
</html>