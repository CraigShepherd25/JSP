<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
 <%
 String gjun=application.getInitParameter("GJUN");
 
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
			<%@include file="title.jsp" %>
		<tr>
			<td height=400>
				<form action="loginController" method="post">
					<table width=400 align=center border=1>
						<tr>
							<td colspan=2 align=center>
							<%=gjun %><br>
							<c:out value="Hello Craig"></c:out>
							登入
						<tr>
							<td width=100 align=center>帳號
							<td align=center><input type="text" name="username">
						<tr>
							<td width=100 align=center>密碼
							<td align=center><input type="password" name="password">
						<tr>
							<td colspan=2 align=center>
							<input type="submit" value="送出">
							<a href="addMember.jsp">註冊</a>
					
					</table>			
				
				</form>		
		
		<tr>
			<td height=50 align=center>
			<%@include file="footer.jsp" %>
	</table>


</body>
</html>