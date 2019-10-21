<%@page import="com.cn.vo.Indent"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	*{ margin-left: auto;margin-right: auto;}
	.table{ border-collapse: collapse;}
	.tr{ background: #09F;}
	.ths{
		height: 28px;
		margin-left: 10px;
	}
	.inputs{
		height: 22px;
		background:#1e9fff;
		margin-right: 5px;
		border: none;
	}.inputs2{
		height: 22px;
		background:#ff5722;
		border: none;
	}
</style>
</head>
<%
	List<Indent> list=(List<Indent>)session.getAttribute("indentlist");
%>
<body>
<form action="OrderServlet" method="post">
<input type="button" value="添加" onclick="add()">
  <p>&nbsp;</p>
	  <table class="table" width="95%" border="1" cellpadding="0" cellspacing="0">
	    <tr class="tr">
	      <th width="50" height="20" scope="col" >&nbsp;id</th>
	      <th width="100" scope="col" >&nbsp;订单编号</th>
	      <th width="100" scope="col" >&nbsp;收货地址</th>
	       <th width="100" scope="col" >&nbsp;收货人</th>
	       <th width="100" scope="col" >&nbsp;订单总额</th>
	        <th width="100" scope="col" >&nbsp;处理时间</th>
	          <th width="100" scope="col" >&nbsp;状态</th>
	           <th width="100" scope="col" >&nbsp;操作</th>
	    </tr>
	    <%
	    	if(list!=null){
	    	    	for(int i=0;i<list.size();i++){
	    	    		Indent indent=list.get(i);
	    %>
	    <tr>
	     <th width="50" height="20" scope="col" >&nbsp;<%=i+1 %></th>
	      <th width="100" scope="col" >&nbsp;<%=indent.getOrder_id()%></th>
	       <th width="100" scope="col" >&nbsp;<%=indent.getAddress()%></th>
	       <th width="100" scope="col" >&nbsp;<%=indent.getUsername() %></th>
	       <th width="100" scope="col" >&nbsp;<%=indent.getOrderSum() %></th>
	        <th width="100" scope="col" >&nbsp;<%=indent.getDealDate() %></th>
	          <th width="100" scope="col" >&nbsp;<%=indent.getStatus() %></th>
	           <th width="100" scope="col" >&nbsp;
	           <a href="DeleteIndentServlet?id=<%=indent.getId()%>"><input type="button" class="inputs2" value="删除"></a>
	           <a href="UpdateIndent.jsp?id=<%=i%>"><input type="button" class="inputs" value="修改"></a>
	           </th>
	    </tr>
	   <%}} %>
	  </table>
	  <p>&nbsp;</p>
	  </form>
	  <script type="text/javascript">
	  function add(){
		  window.location.href="AddIndent.jsp";
	  }
	  </script>
</body>
</html>