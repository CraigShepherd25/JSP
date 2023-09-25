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
			<%@include file="../title.jsp" %>
		<tr>
			<td height=400>
				<form action="confirm.jsp" method="post">
					<table width=500 align=center border=1>
						<tr>
							<td colspan=3 align=center>
							<h3>請選擇商品數量</h3>
						<tr>
							<td align=center valign=top>
							<img alt="1.jpg" src="pic/1.jpg">
							<select name="product1">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
							</select>
							product1
							<td align=center valign=top>
							<img alt="2.jpg" src="pic/2.jpg">
							<select name="product2">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
							</select>
							product2
							<td align=center valign=top>
							<img alt="3.jpg" src="pic/3.jpg">
							<select name="product3">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
							</select>
							product3
					<tr>
						<td colspan=3 align=center>
						<input type="submit" value="送出">
					
					
					
					</table>		
				
				</form>			
				
		<tr>
			<td height=50 align=center>
			<%@include file="../footer.jsp" %>
	</table>

</body>
</html>