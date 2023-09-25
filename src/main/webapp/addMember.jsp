<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<form action="addMemberController" mwthod="post">
					<table width=400 align=center border=1>
						<tr>
							<td colspan=2 align=center>輸入基本資料
						<tr>
							<td width=100>姓名
							<td><input type="text" name="name">
						<tr>
							<td width=100>帳號
							<td><input type="text" name="username">
						<tr>
							<td width=100>密碼
							<td><input type="password" name="password">
						<tr>
							<td width=100>地址
							<td><input type="text" name="address">
						<tr>
							<td width=100>電話
							<td><input type="text" name="phone">
						<tr>
							<td colspan=2 align=center>
							<input type="submit" vlaue="送出">
					</table>
				</form>
		<tr>
			<td height=50 align=center>
			<%@include file="footer.jsp" %>
	</table>

</body>
</html>