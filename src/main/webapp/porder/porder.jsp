<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"
    
    %>
    
 <%
 
 member m=(member)session.getAttribute("M");
 
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
				<table width=400 align=center>
					<tr align=center>
						<td><%=m.getName() %> , 請選擇服務項目
					<tr align=center>
						<td><a href="addPorder.jsp">1)購物</a>
					<tr align=center>
						<td><a href="query.jsp">2)查詢訂單</a>
					<tr align=center>
						<td><a href="update.jsp">3)修改訂單</a>
					<tr align=center>
						<td><a href="delete.jsp">4)刪除</a>
				
				
				
				</table>
			
				
		<tr>
			<td height=50 align=center>
			<%@include file="../footer.jsp" %>
	</table>

</body>
</html>