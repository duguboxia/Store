<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
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
<form id="form" method="post" action="AddManagerServlet">
<div class="zc">

	<div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
    	</p>
	</div>

	<div class="da">
		<p>
			账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号： <input class="inputs" type="text" name="username" id="username" onblur="checkUser()">
			<label id="name" style="color:red;" >请输入账号</label>
		</p>
		<p>
			真实姓名： <input class="inputs" type="text" name="realname" id="realname">
		</p>
		<p>
			密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码： <input class="inputs" type="password" name="password" id="password">
		</p>
        <p>
			确认密码： <input class="inputs" type="password" name="repassword" id="repassword">
		</p>
		<p>
			性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： <input type="radio" name="sex" id="sex" value="男"> 男 <input
				type="radio" name="sex" id="sex" value="女"> 女
		</p>
		<p>
			电子邮件： <input class="inputs" type="text" name="email" id="email">
		</p>
		<p>
			联系电话： <input class="inputs" type="text" name="phone" id="phone">
		</p>
		<p>
			兴趣爱好： <input class="inputs" type="text" name="hobbies" id="hobbies">
		</p>
		<p>自我介绍：</p>
		<p>
			<textarea name="note" cols="38" rows="6" id="note"></textarea>
		</p>
		<p>
			<input class="dj" type="button" name="register" id="register" value="确认"  onclick="check()">
			<input class="dj" type="reset" value="重置">
		</p>
	</div>
</div>
</form>
<script type="text/javascript">
function check(){
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	var repassword=document.getElementById("repassword").value;
	var form=document.getElementById("form");
	if(username==""){
		alert("账号不能为空，请输入你的账号");
		return;
	}
	if(password.length<6||password.length>18){
		alert("输入的密码必须是6-18位的字符！");
		return;
	}
	if(password!=repassword){
		alert("密码应与再次输入的密码保持一致！");
		return;
	}
	alert("添加成功");
	form.submit();
}
function checkUser(){
	var username=document.getElementById("username").value;
	$.post("CheckUserServlet",{"username":username},function(data){
	if(data=="success"){
		$("#name").text("账号可用");
	}else{
		$("#name").text("账号不可用");
	}
	});
}
</script>
</body>
</html>