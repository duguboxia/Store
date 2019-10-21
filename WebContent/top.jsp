<%@page import="com.cn.vo.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>top</title>
<style type="text/css">
	*{ font-family: 可爱得可爱,思源黑体旧字形Normal,黑体;/* background: #E8FFE8; */}
	div{ width: 700px ; font-size: 36px;text-align: center;
	color:#0015FF;margin-top:10px;margin-left: auto;margin-right: auto;}
	span{ font-size: 14px; color:#000000;}
	p{ font-size: 14px; margin-top: 2px;color: #000000;}
</style>
</head>
<body background="images/hs.jpg">
<div class="div">网上商城后台管理
<span>欢迎您${User.username}</span>
</div>
</body>
</html>
