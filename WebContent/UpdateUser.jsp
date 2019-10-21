<%@page import="com.cn.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%String user_id=request.getParameter("user_id");
List<User> list=(List<User>)session.getAttribute("UserList");
User u=new User();
u=list.get(Integer.parseInt(user_id));
%>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<style type="text/css">
*{ margin-left: auto;margin-right: auto;}

.logo{ color:#F00; text-align:center;}

.zc{ width:1000ps; margin-left:auto; margin-right:auto;}

.inputs{ width:200px; height:30px; border:1px #CCC solid; padding-left:10px; padding-right:10px;}

.da{ width:400px; margin-left:auto; margin-right:auto}

.inputs:focus{ /*聚焦*/ border:1px #FF0000 solid;}

.dj{ margin-left:20px; background:#F00; height:40px; width:100px;; border:1px #00FF33 solid; color:#FFF;}

</style>
<body>
<form id="form" method="post" action="UpdateUserServlet">
<div class="zc">

	<div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
    	</p>
	</div>

	<div class="da">
	<input type="hidden" name="user_id" value="<%=u.getUser_id()%>">
		<p>
			账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号： <input class="inputs" type="text" name="username" value="<%=u.getUsername()%>">
		</p>
		<p>
			真实姓名： <input class="inputs" type="text" name="realname" id="realname" value="<%=u.getRealname() %>">
		</p>
		<p>
			密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码： <input class="inputs" type="text" name="password" value="<%=u.getPassword() %>">
		</p>
        
		<p>
			性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： <input type="text" name="sex" id="sex" class="inputs" value="<%=u.getSex() %>"> 
		</p>
		<p>
			电子邮件： <input class="inputs" type="text" name="email" id="email" value="<%=u.getEamil() %>">
		</p>
		<p>
			联系电话： <input class="inputs" type="text" name="phone" id="phone" value="<%=u.getPhone() %>">
		</p>
		<p>
			兴趣爱好： <input class="inputs" type="text" name="hobbies" id="hobbies" value="<%=u.getHobbies() %>">
		</p>
		<p>
			用户类型： <input class="inputs" type="text" name="type"  value="<%=u.getType() %>">
		</p>
		<p>自我介绍：</p>
		<p>
			<textarea name="note" cols="38" rows="6" id="note"><%=u.getNote() %>"</textarea>
		</p>
		<p>
			<input class="dj" type="submit" name="sure"  value="修改" >
			<input class="dj" type="button" value="返回"  onclick="back()">
		</p>
	</div>
</div>
</form>
<script type="text/javascript">
function back(){
	window.history.back();
}
</script>
</body>
</html>