<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 기록</title>
<style>
html{
	display : flex;
	justify-content: center;
}
</style>
<%@ page import="java.sql.*" %>
<%int chk=0; %>
<% request.setCharacterEncoding("utf-8"); %>

<% 
String driverName= "org.gjt.mm.mysql.Driver";
String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
Statement stmt = con.createStatement();



String id = request.getParameter("id");

String query = "SELECT * FROM "+id+"_today_kitchen";

ResultSet rs = stmt.executeQuery(query);
%>
</head>
<body>
	<table border="1" cellspacing = "0">
		<tr>
			<th>메뉴명</th>
			<th>주문시간</th>
			<th>주문수량</th>
			<th>1개당 가격</th>
			<th>총 가격</th>
		</tr>
		<%while(rs.next()){ %>
			<tr>
				<td align="center"><%=rs.getString("menu")%></td>
				<td align="center" width="180px"><%=rs.getString("time")%></td>
				<td align="right"><%=rs.getString("count")%>개　</td>
				
				<td align="right" width = "90px"><%=rs.getString("price")%>원　</td>
				<td align="right" width = "100px"><%=(Integer.parseInt(rs.getString("price")) * Integer.parseInt(rs.getString("count")))%>원　</td>
			</tr>
		<%} %>
	</table>
</body>
</html>