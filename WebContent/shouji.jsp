
<%@page import="com.cn.vo.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>

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
.ss{ background:#333; height:25px; width:40px; border:1px #CCCCCC solid; color:#CCC; }


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

/*.nav_02{ margin-top:25px; width:920px; height:210px; margin-left:auto; margin-right:auto; background:#FFF; padding-top:15px;}*/

.pic_01{ width:250px; height:250px; background:url(images/shouji1.jpg); float:right; /*transition:all 1s;transition:all 0.2s;*/
}

.pic_01:hover{ width:250px; height:250px; background:url(images/shouji1.jpg) no-repeat center; 
/*transform:rotate(1440deg) scale(1.5,1.5); opacity:1
*/text-align:center;}

.wz{
	font-size:18px; margin-top:5px; text-align:center; margin-right:50px;
	width:180px; height:20px; float:right; transition:all 1s;transition:all 0.2s;
}
.gwc{ margin-right:90px; margin-top:10px; height:30px; width:100px; background:#F3C; float:right;}


.nav>div>ul>li{ padding-left:20px;}

.nav>div>ul>li>p1{ font-size:12px; border-radius:36px;}

.nav>div>ul>li>p1:hover{ background:red; color:#FFF;}

.nav>div>ul>li>p{ color:#666; margin-top:5px; text-align:center; font-size:13px;}

.pic{background:#999; color:#FFF; border-radius:999px; font-size:12px;}
</style>

</head>

<body>

<%List<Goods> list=(List<Goods>)session.getAttribute("List");%>

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
        	<a href="ipad.jsp">笔记本 平板</a>
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
    </ul>
    <div class="search right">
     <input type="text" placeholder="search" >
     <input class="ss" type="button" value="搜索" >  
     </div>
    <p>&nbsp;</p>
</div>
    
	<div class="left">
    	<ul>
    	<%if(list!=null){
	    for(int i=0;i<list.size();i++){
	    	Goods goods=list.get(i);
	    	if(goods.getType_id()==1){%>
        	<li  class="pic_01">
        	<a href="details.jsp?m=<%=i %>">
        	<img src="<%=goods.getGoods_pic()%>"> </a>
            <p>
            <a class="wz">¥&nbsp;<%=goods.getGoods_price() %></a>
            <a class="wz"><%=goods.getGoods_name() %></a>
            </p>
            
            <p>&nbsp; </p>
            </li>
           <%}}} %>
           </ul>
    </div>


</div>

</body>
</html>
