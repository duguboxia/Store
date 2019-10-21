<!--<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>-->
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<style type="text/css">

.logo{ color:#F00; text-align:center;}

.da{ width:250px; margin-left:0px; margin-right:auto; margin-top:0px; float:left;}

.dl{ width:1000px; margin-left:auto; margin-right:auto;}

.dj{ margin-left:10px; background:#F00; height:40px; width:130px;; border:1px #00FF33 solid; color:#FFF; margin-top:25px;}

.zz{ float:right; width:320px; height:280px; margin-left:auto; margin-right:100px; margin-top:100px;}

.inputs{ width:200px; height:30px; border:1px #CCC solid; padding-left:10px; padding-right:10px; margin-top:25px;}

.inputs:focus{ /*聚焦*/ border:1px #FF0000 solid;}
 
.aa{ float:left; margin-left:10px;}

.bb{ width:215px; height:30px;}

</style>
<body>
	
    <div class="dl">
    <div class="logo">
		<p>
		<img src="images/xiaoji_03.png">
		<img src="images/zwsc_03.png">
    	</p>
	
      <div>
      <div  class="da">
      	<p>
    		<img src="images/22.png">
   		</p>
       </div> 
       <div class="zz">
         <h1>登录</h1>  
                <form action="LoginServlet" method="post" id="f1">
					<p>用&nbsp;户&nbsp;名：
					<input class="inputs" type="text" name="username" id="username">
					</p>
					<p>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
  					<input class="inputs" type="password" name="password" id="password">
				  	</p>
				  	<p class="aa">用户类型:
				  	<select name="type" class="bb">
				  	<option value="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;普通用户</option>
				  	<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员</option>
				  	</select>
				  	</p>
				  <div>
				    <input class="dj" type="submit" value="登陆"> 
				    <input class="dj" type="button" name="zhuce" id="zhuce" value="注册" onclick="window.location.href='Register.jsp'">
				  </div>
                </form>
                </div>
                </div>
         </div>
      </div>
      
</body>
</html>
