<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member,model.porder"
    %>
  <%
  member m=(member)session.getAttribute("M");
  int p1=Integer.parseInt(request.getParameter("product1"));
  int p2=Integer.parseInt(request.getParameter("product2"));
  int p3=Integer.parseInt(request.getParameter("product3"));
  
  porder p=new porder(m.getName(),p1,p2,p3);
  
  session.setAttribute("P", p);
  
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
				<table width=400 align=center border=1>
					<tr>
						<td colspan=2 align=center>
						<%=m.getName() %>,這是你的購物清單,請確認
					<tr>
						<td width=100>product1
						<td><%=p.getProduct1() %>
					<tr>
						<td width=100>product2
						<td><%=p.getProduct2() %>
					<tr>
						<td width=100>product3
						<td><%=p.getProduct3() %>
					<tr>
						<td width=100>sum
						<td><%=p.getSum() %>元
					<tr>
						<td colspan=2 align=center>
						<a href="../addPorderController">確認</a><br>
						<a href="addPorder.jsp">上一頁</a>
				
				</table>
			
			
				
		<tr>
			<td height=50 align=center>
			<%@include file="../footer.jsp" %>
	</table>

</body>
</html>

<%


%>