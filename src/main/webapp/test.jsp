<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><p>
</c:forEach>
 -->
 <%@include file="title.jsp" %>
	<br>
	<jsp:include page="title.jsp"/>
	<br>
	<jsp:useBean id="m" class="model.member"></jsp:useBean>
 
 	<%
 	m.setName("tttt");
 	%>
 	
 	m=<%=m %><br>
 	name=<%=m.getName() %>
 	
</body>
</html>