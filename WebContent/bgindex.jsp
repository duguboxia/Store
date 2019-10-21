<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>index</title>
</head>
<style>
	*{ /* background: #FBFBEA; */}
</style>
<frameset rows="80,*" cols="*" framespacing="0" frameborder="yes" border="0" bordercolor="#FF0000">
  <frame src="top.jsp" name="topFrame" scrolling="NO" noresize title="topFrame">
  <frameset rows="*" cols="215,*" framespacing="0" frameborder="yes" border="0" bordercolor="#FF0000">
    <frame src="left.jsp" name="leftFrame" scrolling="NO" noresize title="leftFrame">
    <frame src="index.jsp" name="indexFrame" title="indexFrame">
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
