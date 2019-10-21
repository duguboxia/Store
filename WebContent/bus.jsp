<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>购物车</title>


</head>
<style type="text/css">

*{
	margin:0px;
	padding:0px ;
}
#app{
	width: 1200px;
	padding:20px 0px;
	margin: 0 auto;	
}

#app .biaoti{
	width: 1200px;
	margin: 0 auto;
	background: #f3f3f3;
	height: 40px;
	line-height: 40px;
	overflow: hidden;
}
#app .biaoti ul li{
	float: left;
	height: 80px;
	list-style: none;
	margin-left: 20px;
	
}
#app .biaoti ul li:nth-child(2){
	margin-left: 84px;
}
#app .biaoti ul li:nth-child(3){
	margin-left: 530px;
}
#app .biaoti ul li:nth-child(4){
	margin-left: 103px;
}
#app .biaoti ul li:nth-child(5){
	margin-left: 104px;
}
#app .biaotiul li:nth-child(6){
	margin-left: 90px;
}
#app .biaoti ul li:last-child{
	margin-left: 82px;
}

#app .liebiao{
	width: 1200px;
	margin: 0 auto;
	/*background: red;*/
	padding: 0px 0px;
	
	
}
#app .liebiao ul{
	padding: 20px 0px;
	height: 200px;
	/*background: deepskyblue;*/
}
#app .liebiao ul li{
	float: left;
	list-style: none;
	margin-left: 20px;
	font-size: 12px;
	
}





#app .liebiao ul li:first-child{
	margin-left: 0px;
}
#app .liebiao ul li:nth-child(2){
	margin-left: 0px;
	
}
#app .liebiao ul li:nth-child(3){
	width: 210px;
	white-space: pre-wrap;  
	
}
#app .liebiao ul li:nth-child(4){
	margin-left: 191px;
	/*background: red;*/
	width: 100px;

	text-align: center;
}
#app .liebiao ul li:nth-child(5){
	margin-left: 0px;

	
}

#app .liebiao ul li:nth-child(6){
	margin-left: 50px;
	width: 100px;
	text-align: center;
	/*background: red;*/
}
#app .liebiao ul li:last-child{
	margin-left: 35px;           /*删除*/
}
#app .liebiao ul li{
	overflow: hidden;
}
#app .liebiao ul li button:first-child{
	margin-left:30px;
	float: left;

}
#app .liebiao ul li button{
	width:30px;
	height:30px;
	background:#F00;
}
#app .liebiao ul li input{
	width: 50px;
	height:26px;
	text-align: center;
	float: left;

}










#aq{
	width: 389px;
	height: 100px;
	/*background: gray;*/
	float: right;
	
}
#aq span{
	display: block;
	float: left;
	
}
#aq .weq{
	margin-left: 55px;
}
#aq button{
	width: 100px;
	height: 80px;
	background: red;
	line-height: 80px;
	text-align: center;
	color: white;
	margin-left: 39px;
}
.ghj{
	display: none;
}
.rf{
	background: deepskyblue;
}

.logo{ color:#F00; text-align:center;}
.zc{ margin-left:800px; color:#F00;}



</style>
<body>        

<div id="app">
	<div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
        <p class="zc">
    		<a>${User.username}的购物车</a>
            </p>
        </p>
	</div>
	<h3>全部商品{{length}}</h3>
	<div class="biaoti" >
		<ul  >
			
			<li> <input type="checkbox" id="sure" v-model="fv" @click="sd"  ><label for="checkbox">全选</label></li>
			<li>商品</li>
			<li>单价</li>
			<li>数量</li>
			<li>小计</li>
			<li>操作</li>
		</ul>
	</div>
	<div class="liebiao" id="list">
		<ul id="fff" class="et"  v-for="(e,index) in we">
			<li> <input type="checkbox" id="be" v-model="e.checked" @click="wq(index)"></li>
						  
			<li><img :src="e.url"></li>
			<li>{{e.message}}</li>
			<li>{{e.price}}</li>
			<li><button v-on:click="subtract(index)">-</button>
				<input type="text" value="0" size="1" id="ef" v-model="e.num">
				<button v-on:click="add(index)">+</button>
			</li>
			<li>{{wer(index)}}</li>
			<li @click="fun(index)">删除</li>
			
		</ul>
	   
	   <div v-if="!we.length">当前没有商品，请添加商品。</div>
	   <div id="aq"  :class={ghj:but}>
			<span > 已选择{{sde()}}件商品</span>  <span class="weq">合计{{wry()}}</span> <button  @click="ed">清空购物车</button>
	   </div>
		
	</div>
</div>

<script type="text/javascript"  src="js/vue.js"></script>
<script src="js/index.js"></script>
</body>
</html>