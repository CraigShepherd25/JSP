<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder,dao.impl.porderImpl,java.util.List"%>
<%

String ID=request.getParameter("id");
String Product1=request.getParameter("product1");
String Product2=request.getParameter("product2");
String Product3=request.getParameter("product3");

if(ID!=null && ID!="" && Product1!=null 
&& Product1!=""
&& Product2!=null && Product2!="" 
&& Product3!=null && Product3!="")
{
	
int I=Integer.parseInt(ID);
int P1=Integer.parseInt(Product1);
int P2=Integer.parseInt(Product2);
int P3=Integer.parseInt(Product3);

porder p=new porderImpl().queryId(I);
p.setProduct1(P1);
p.setProduct2(P2);
p.setProduct3(P3);

p.getSum();

new porderImpl().update(p);

}


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
			<form action="update.jsp">
				<table width=500 align=center>
					<tr>
						<td align=center>輸入修改資料<br>
					id:<input type="text" name="id" size=4>
					product1:<input type="text" name="product1" size=4>
					product2:<input type="text" name="product2" size=4>
					product3:<input type="text" name="product3" size=4>
					<input type="submit" value="ok">
				</table>	
			
			</form>
			
			<hr>
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