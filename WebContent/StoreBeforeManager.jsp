
<%@page import="java.util.List"%>
<%@page import="com.cn.vo.Type"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"  %>
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
		margin-right: 10px;
		border: none;
	}.inputs2{
		height: 22px;
		background:#ff5722;
		border: none;
	}
</style>
</head>
<%List<Type> list=(List<Type>)session.getAttribute("ListType");%>
<body>
<form action="StoreBeforeManagerServlet" method="post">
 <p>
 <input type="button" value="添加" onclick="add()">
 </p>
  <p>&nbsp;</p>
	  <table class="table" width="95%" border="1" cellpadding="0" cellspacing="0">
	    <tr class="tr">
	      <th width="50" height="20" scope="col" >&nbsp;id</th>
	      <th width="100" scope="col" >&nbsp;类别名称</th>
	      <th width="100" scope="col" >&nbsp;类别描述</th>
	       <th width="100" scope="col" >&nbsp;操作</th>
	    </tr>
	    <%if(list!=null){
	    for(int i=0;i<list.size();i++){
	    	Type type=list.get(i);
	    %>
	    <tr>
	      <th width="50" height="20" scope="col" >&nbsp;<%=i+1 %></th>
	      <th width="100" scope="col" >&nbsp;<%=type.getType_name() %></th>
	      <th width="100" scope="col" >&nbsp;<%=type.getType_desc() %></th>
	      <th width="100" scope="col" >&nbsp;
	      <a href="UpdateType.jsp?id=<%=i%>"><input type="button" class="inputs" value="修改"></a>
	      <a href="DeleteTypeServlet?id=<%=type.getId()%>"><input type="button" class="inputs2" value="删除"></a>
	      </th>
	    </tr>
	    <%}} %>
	  </table>
	  <p>&nbsp;</p>
	  </form>
<script type="text/javascript">
function add(){
	window.location.href="AddType.jsp";
}
</script>
</body>
</html>