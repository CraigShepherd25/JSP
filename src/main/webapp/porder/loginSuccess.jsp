<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"
    %>
    
 <%
 System.out.println(session.getAttribute("M"));
 
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
					<tr>
						<td colspan=2 align=center>
						<h3><%=m.getName() %>歡迎你,登入成功</h3>
					<tr>
						<td colspan=2 align=center>
						<a href="porder.jsp">進入購物</a>
				</table>
		<tr>
			<td height=50 align=center>
			<%@include file="../footer.jsp" %>
	</table>

</body>
</html>