<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder
    ,dao.impl.porderImpl
    ,java.util.List"
    %>
<%
List<porder> l=new porderImpl().queryAll();

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width=600 align=center border=1>
		<tr>
			<td height=120 align=center>
			<%@include file="../title.jsp" %>
		<tr>
			<td height=400>
			<table width=500 align=center border=1>
				<tr>
					<td>ID<td>姓名<td>產品1<td>產品2<td>產品3<td>金額
				<%
				for(porder p:l)
				{
					out.print("<tr><td>"+p.getId()+
							"<td>"+p.getName()+
							"<td>"+p.getProduct1()+
							"<td>"+p.getProduct2()+
							"<td>"+p.getProduct3()+
							"<td>"+p.getSum());
				}			
				
				%>			
				<tr>
					<td colspan=6 align=center>
					<a href="porder.jsp">回訂單管理頁</a>
			</table>		
			
				
		<tr>
			<td height=50 align=center>
			<%@include file="../footer.jsp" %>
	</table>

</body>
</html>