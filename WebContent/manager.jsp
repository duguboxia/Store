<%@page import="com.cn.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	.table{ border-collapse: collapse;}
	.tr{ background: #09F;}
	.ths{
		height: 28px;
		margin-left: 10px;
	}
	.inputs{
		height: 22px;
		background:#1e9fff;
		margin-left:10px;
		border: none;
	}.inputs2{
		height: 22px;
		background:#ff5722;
		
		margin-bottom:6px;
		border: none;
	}
	.th{
		height: 60px;
		text-align: center;
	}
</style>
</head>
<%List<User> list=(List<User>)session.getAttribute("UserList"); %>
<body>
<form action="managerServlet" method="post">
<div>
	<input type="button" onclick="window.location.href='AddManager.jsp'" value="添加"  >
</div>
<p>&nbsp;</p>
	  <table class="table" width="95%" border="1" cellpadding="0" cellspacing="0">
	    <tr class="tr">
	      <th width="50" height="20" scope="col" >&nbsp;id</th>
	      <th width="100" scope="col" >&nbsp;用户名</th>
	      <th width="100" scope="col" >&nbsp;密码</th>
	      <th width="100" scope="col" >&nbsp;电子邮件</th>
	      <th width="100" scope="col" >&nbsp;真实姓名</th>
	      <th width="100" scope="col" >&nbsp;性别</th>
	       <th width="100" scope="col" >&nbsp;联系电话</th>
	       <th width="100" scope="col" >&nbsp;兴趣爱好</th>
	      <th width="100" scope="col" >&nbsp;自我介绍</th>
	       <th width="100" scope="col" >&nbsp;用户类型</th>
	       <th width="100" scope="col" >&nbsp;操作</th>
	    </tr>
	    <%if(list!=null){
	    for(int i=0;i<list.size();i++){
	    	User u=list.get(i);
	    %>
	    <tr class="th">
	     <th width="50" height="20" scope="col" >&nbsp;<%=i+1 %></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getUsername() %></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getPassword()%></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getEamil() %></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getRealname() %></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getSex() %></th>
	       <th width="100" scope="col" >&nbsp;<%=u.getPhone() %></th>
	       <th width="100" scope="col" >&nbsp;<%=u.getHobbies() %></th>
	      <th width="100" scope="col" >&nbsp;<%=u.getNote() %></th>
	       <th width="100" scope="col" >&nbsp;<%=u.getType() %></th>
	       <th width="100" scope="col" >&nbsp;
	       <a href="DeleteUserServlet?user_id=<%=u.getUser_id()%>"><input type="button" class="inputs2" value="删除"></a><br>
	       <a href="UpdateUser.jsp?user_id=<%=i%>"><input type="button" class="inputs" value="修改"></a>
	       </th>
	    </tr>
	    <%}} %>
	  </table>
	  <p>&nbsp;</p>
	  </form>
</body>
</html>