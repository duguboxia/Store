<%@page import="com.cn.vo.Type"%>
<%@page import="java.util.List"%>
<%@page import="com.cn.vo.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>host</title>
</head>
<style type="text/css">
.clear{ clear:both; height:0px; line-height:0px; overflow:hidden; font-size:0px;}/*清除浮动*/
.left{ float:left;}/*左浮动*/
.right{ float:right;}/*右浮动*/
a{ text-decoration:none; color:#F00;}/*清除a标签下划线*/
ul,li,ol{ list-style:none;}/*清除列表样式*/
*{
	margin: 0;
	padding: 0;
	color:black;
}
ul,li,ol{
	list-style:none;
}
.da{ width: 1000px;margin-left: auto;margin-right: auto;}
.zc{ margin-left:800px; color:#F00;}
.menu{
	width:1000px;
	height:40px;
	background:#333;
	margin-left:auto;
	margin-right:auto;
}
.menu_ul>li{
	
    
	float:left;
	width:100px;
	position:relative;  /*相对定位：约束绝对定位*/
}
.menu_ul>li>a{
	color:#999;
	text-decoration:none;
	line-height:40px;
	text-align:center;
	display:block;
	width:100px;
	height:40px;
	}
.menu_ul>li>a:hover{
	background:#C60;
	}
.search{ hight:40px;margin-left:auto;margin-right:10px; margin-top:10px;}
.logo{ color:#F00; text-align:center;}
.foot{ text-align:center;}


.pics{ width:1000px; margin-left:auto; margin-right:auto;}

.bigPic{ position:relative; width:1000px; height:293px; overflow:hidden; margin-bottom:10px;}

.bigPic p{ position:absolute; width:1000px; height:30px; background:pink;
color:#ffffff; text-align:center; overflow:hidden; line-height:30px; bottom:0; left:0; opacity:0.5;}

.bigPic_01{ position:relative; width:1000px; height:45px; overflow:hidden; margin-bottom:10px;}

.bigPic_01 p{ position:absolute; width:1000px; height:30px; background:red;
color:#ffffff; text-align:center; overflow:hidden; line-height:30px; bottom:0; left:0; opacity:0.5;}

.slt{ height:80px;}

.slt li{ float:left; width:195px; border:2px #fff solid; height:80px; overflow:hidden;}

.slt li.on{ border:2px #f00 solid;}





.nav{ margin-left:auto; margin-right:auto; height:370px; width:1000px; background:#CCC; padding-top:60px;}

.nav_01{ width:1000px; margin-left:auto; margin-right:auto;} 

.wz{ font-size:18px;}

/*.nav_02{ margin-top:25px; width:920px; height:210px; margin-left:auto; margin-right:auto; background:#FFF; padding-top:15px;}*/

.pic_01{ width:250px; height:250px; background:url(images/shouji1.jpg); float:right; transition:all 1s;transition:all 0.2s;
}

.pic_01:hover{ width:250px; height:250px; background:url(images/shouji1.jpg) no-repeat center; 
transform:rotate(1440deg) scale(1.7,1.7); opacity:1
text-align:center;}

.wz{
	width:180px; height:20px; float:right; transition:all 1s;transition:all 0.2s;
}
.nav>div>ul>li{ padding-left:20px;}

.nav>div>ul>li>p1{ font-size:12px; border-radius:36px;}

.nav>div>ul>li>p1:hover{ background:red; color:#FFF;}

.nav>div>ul>li>p{ color:#666; margin-top:5px; text-align:center; font-size:13px;}

.pic{background:#999; color:#FFF; border-radius:999px; font-size:12px;}
</style>
<body>
<%List<Type> list=(List<Type>)session.getAttribute("ListType");
%>


<div class="da">
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
<div class="menu">
	<ul class="menu_ul">
    	<li>
    		<a href="aftermain.jsp">首页</a>
        </li>
       
        <li>
        	<a href="shouji.jsp">手机</a>
        </li>
        <li>
        	<a href="ipad.jsp">笔记本平板</a>
        </li>
        <li>
        	<a href="wear.jsp">智能穿戴</a>
        </li>
        <li>
        	<a href="furniture.jsp">智能家居</a>
        </li>
        <li>
        	<a href="hotparts.jsp">热销配件</a>
        </li>
         <li>
        	<a href="other.jsp">其他</a>
        </li>
         <% if(list!=null){
        	for(int i=0;i<list.size();i++){
        		Type type=list.get(i);
        		if(!type.getType_name().equals("手机")&&!type.getType_name().equals("笔记本平板")&&!type.getType_name().equals("智能穿戴")&&!type.getType_name().equals("智能家居")&&!type.getType_name().equals("热销配件")&&!type.getType_name().equals("其他")){
        		%>
        		<li>
        		<a href="#"><%=type.getType_name()%></a>
        		</li>
<%      }  	}
        }%>
    </ul>
    <div class="search right">
     <input type="text" placeholder="search" >
     <input type="button" value="搜索" >  
     </div>
    <p>&nbsp;</p>
</div>
</div>
<div class="pics">
	<div class="bigPic">
    	<img id="bigPIC" src="images/huawei1.png" width="1000" height="250" alt="">
        <p id="bigBT">
        	HUAWEI
        </p>
    </div>
    
    <div class="slt">
    	<ul id="sltUL">
        	<li class="on" bt="HUAWEI" dt="images/huawei1.png">
            	<img src="images/huawei1.png" width="195" height="80" alt="">
            </li>
            <li bt="HUAWEI" dt="images/huawei2.png">
            	<img src="images/huawei2.png" width="195" height="80" alt="">
            </li>
            <li bt="HUAWEI" dt="images/huawei3.png">
            	<img src="images/huawei3.png" width="195" height="80" alt="">
            </li>
            <li bt="HUAWEI" dt="images/huawei4.png">
            	<img src="images/huawei4.png" width="195" height="80" alt="">
            </li>
            <li bt="HUAWEI" dt="images/huawei5.png">
            	<img src="images/huawei5.png" width="195" height="80" alt="">
            </li>
        </ul>
    </div>
    
    <div class="bigPic_01">
        <p id="bigBT">
        	热销商品
        </p>
    </div>
    
    <div class="left">
    	<ul>
        	<li  class="pic_01"><img src="images/shouji1.png">
            <p><a class="wz">nova 5 Pro</a></p>
            </li>
            <li  class="pic_01"><img src="images/shouji2.png">
            <p><a class="wz">荣耀20</a></p>
            </li>
            <li class="pic_01"><img src="images/shouji3.jpg">
            <p><a class="wz">荣耀20i</a></p>
            </li>
             <li class="pic_01"><img src="images/shouji4.png">
            <p><a class="wz">P30 Pro</a></p>
            </li>
        </ul>
    </div>
    
    <div class="left">
    	<ul>
        	<li  class="pic_01"><img src="images/shouji5.png">
            <p><a class="wz">荣耀笔记本</a></p>
            </li>
            <li  class="pic_01"><img src="images/shouji6.png">
            <p><a class="wz">无线耳机</a></p>
            </li>
            <li class="pic_01"><img src="images/shouji7.png">
            <p><a class="wz">无线耳机</a></p>
            </li>
            <li class="pic_01"><img src="images/shouji8.png">
            <p><a class="wz">智能音箱</a></p>
            </li>
        </ul>
    </div>
</div>
<script>
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
</body>
</html>