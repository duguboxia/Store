<%@page import="com.cn.vo.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>details</title>
</head>
<style>

.logo{ color:#F00; text-align:center;}
.zc{ margin-left:800px; color:#F00;}


.right{ width:650px; float:right; }


.pics{ width:300px; margin-left:auto; margin-right:auto; float:left;}

.bigPic{ position:relative; width:350px; height:400px; overflow:hidden; margin-bottom:-10px; text-align:center;}

.bigPic p{ position:absolute; width:250px; height:30px; background:#000;
color:#ffffff; text-align:center; overflow:hidden; line-height:30px; bottom:0; left:0; opacity:0.5; margin-left:55px;
	}

.slt{ height:105px;}

.slt li{ float:left; width:80px; border:2px #fff solid; height:105px; overflow:hidden;}

.slt li.on{ border:2px #fff solid;}

.zd{ width:1000px; margin-left:auto; margin-right: auto;}

.gift{
	color:blue;
}

.gift:hover{
	color:red;
	transition:all 1s;
}

.price{
	color:red;
}

.jia{
	width:150px;
	height:30px;
	text-align:center;
	background:#FC0;
}
.mai{
	width:150px;
	height:30px;
	text-align:center;
	background:#F06;
}
.sp{
	width:150px;
	height:30px;
	text-align:center;
	background:#ccc;
	margin-left: 80px;
}
	

</style>
<body>



<%
String m = request.getParameter("m");
List<Goods> list=(List<Goods>)session.getAttribute("List");
Goods g=new Goods();
g=list.get(Integer.parseInt(m));
%>
<div class="zd">

	<div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
   	 		<p class="zc">
              您好，${User.username}&nbsp;&nbsp;&nbsp;&nbsp;
    		<a href="ShoppingCar.jsp">购物车</a>
            </p>
    	</p>
	</div>
    
	<div class="pics">
	
	
    <div class="bigPic">
    	<img id="bigPIC" src="<%=g.getGoods_pic() %>" width="300" height="300" alt="">
    </div>
    
    </div>
	<div class="right">
	<h2 class="phonename" id="goodsname"><%=g.getGoods_name() %></h2>
    <h3 class="gift" id="goods_desc"><%=g.getGoods_desc() %></h3>
    <h3 class="price">中&nbsp;&nbsp;为&nbsp;&nbsp;价:&nbsp;￥&nbsp;<%=g.getGoods_price() %></h3>
    <a href="AddCarServlet?name=<%=g.getGoods_name()%>&price=<%=g.getGoods_price()%>"><input type="submit" class="jia" value="加入购物车"  /></a>
    <a href="buybuy.jsp?orderSum=<%=g.getGoods_price() %>">
    <input type="button" class="mai" value="￥立即购买" ><br></br>
   </a>
    <input type="button" class="sp" value="返回商品页"  onclick="back()"/>
    
    
    </div>
</div>
</body>
<script>

function back() {
	history.go(-1);
}
function buy() {
	alert("加入购物车成功，快去下单吧亲！么么哒！！！");
	return;
}
var sltUL = document.getElementById("sltUL");
var li = sltUL.getElementsByTagName("li");
for(var k = 0 ; k <= li.length-1 ; k++){
	li[k].onclick = function (){
		var bigPIC = document.getElementById("bigPIC");
		var dt = this.getAttribute("dt");
	
		bigPIC.src = dt;
	
		var bigBT = document.getElementById("bigBT");
		var bt = this.getAttribute("bt");
		bigBT.innerHTML = bt;
	
		var sltUL = document.getElementById("sltUL");
		var li = sltUL.getElementsByTagName("li");
		for( var i = 0 ; i <= li.length-1 ; i++){
			li[i].className = "";z
			}
		this.className = "on";
	}
}

</script>
</html>
