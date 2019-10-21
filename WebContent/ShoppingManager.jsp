<%@page import="com.cn.vo.Goods"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
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
<%List<Goods> list=(List<Goods>)session.getAttribute("List");%>
<body>
<form action="ShoppingManagerServlet" method="post">
 <p>
 <input type="button" value="添加" onclick="add()">
 </p>
  <p>&nbsp;</p>
	  <table class="table" width="95%" border="1" cellpadding="0" cellspacing="0">
	    <tr class="tr">
	      <th valign="middle" width="120" height="20" scope="col">&nbsp;商品编号</th>
	      <th width="200" scope="col">&nbsp;商品名称</th>
	      <th width="120" scope="col" >&nbsp;类别编号</th>
	      <th width="200" scope="col" >&nbsp;商品价格</th>
	      <th width="200" scope="col" >&nbsp;商品图片</th>
	      <th width="100" scope="col">&nbsp;操作</th>
	    </tr>
	    <%if(list!=null){
	    for(int i=0;i<list.size();i++){
	    	Goods goods=list.get(i);
	    %>
	    <tr align="center" >
	      <td width="120" class="ths" height="20" scope="col" >&nbsp;<%=goods.getGoods_id() %></td>
	      <td class="ths" scope="col" >&nbsp;<%=goods.getGoods_name()%></td>
	      <td width="120" scope="col" class="ths" >&nbsp;<%=goods.getType_id() %></td>
	      <td width="200" scope="col" class="ths" >&nbsp;<%=goods.getGoods_price() %>
	      <td width="200"scope="col" class="ths" >&nbsp;<img src="<%=goods.getGoods_pic() %>" width="50" height="60"></td>
	      <td width="100" scope="col" class="ths" >
	      <a href="UpdateGoods.jsp?id=<%=i%>"><input type="button" class="inputs" value="修改"></a>
	      <a href="DeleteGoodsServlet?id=<%=goods.getGoods_id()%>"><input type="button" class="inputs2" value="删除"></a>
	      </td>
	    </tr>
	    <%}} %>
	  </table>
	  <p>&nbsp;</p>
	  </form>
<script type="text/javascript">
function add(){
	window,location.href="AddShopping.jsp";
}
</script>
</body>
</html>