<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %><!doctype html>
<html>
<head>
<meta charset="UTF-8">
   <title>SimpleTree</title>
   <style type="text/css">
   		ul,li{ list-style: none;}
   </style>
<link rel="stylesheet" type="text/css" href="../css/SimpleTree.css">
<script type="text/javascript" src="../js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="../js/SimpleTree.js"></script>
<script type="text/javascript">
	$(function() {
		$(".st_tree").SimpleTree({
			click : function(a) {
				if (!$(a).attr("hasChild"))
	
			}
		});
	}); 
</script>
</head>
<body>
	<div class="st_tree">
		<ul>
			<li>分类管理</li>
			<ul>
			
				<li><a href="StoreBeforeManagerServlet" target="indexFrame">分类管理</a></li>
			</ul>
			<li>商品管理</li>
			<ul>
				<li><a href="ShoppingManagerServlet" target="indexFrame">商品管理</a></li>
			</ul>
			<li>订单管理</li>
			<ul>
				<li><a href="OrderServlet" target="indexFrame">订单管理</a></li>
			</ul>
			<li>用户管理</li>
			<ul>
				<li><a href="managerServlet" target="indexFrame">用户管理</a></li>
			</ul>
			<a href="Login.jsp" target="_top">退出登录</a>
		</ul>
	</div>
</body>
</html>