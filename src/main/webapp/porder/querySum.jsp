<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.porder,
    dao.impl.porderImpl,
    java.util.List"
    %>
    
<%
//String Start=request.getParameter("start");//沒有start物 null, 有物件產生,沒有打字-->""
//String End=request.getParameter("end");
//out.println("Start="+Start+"<br>"+"End:"+End);
/*
List<porder> l=?
1.先判斷-->start,end
2.null ,""-->queryAll
3.有資料-->先轉型 int-->querySum
*/

List<porder> l=null;
String Start=request.getParameter("start");
String End=request.getParameter("end");


if(Start!=null && Start!="" && End!=null && End!="")
{
	int S=Integer.parseInt(Start);
	int E=Integer.parseInt(End);
	
	l=new porderImpl().querySum(S, E);
}
else
{
	l=new porderImpl().queryAll();
}


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
			<form action="querySum.jsp">
				<table width=300 align=center>
					<tr>
						<td align=center>輸入查詢金額範圍<br>
					開始:<input type="text" name="start" size=5>
					結束:<input type="text" name="end" size=5>
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