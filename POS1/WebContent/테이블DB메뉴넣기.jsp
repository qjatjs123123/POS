<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.Date" %>
<%! int i=0; %>
<%
String id = request.getParameter("id");
String menu = request.getParameter("state");
int price = Integer.parseInt(request.getParameter("state1"));
int num = Integer.parseInt(request.getParameter("num"));

request.setCharacterEncoding("utf-8");

String driverName= "org.gjt.mm.mysql.Driver";
String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?;useUnicode=true&characterEncoding=utf8";
Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
Statement stmt = con.createStatement();
  

String query1 = "SELECT * FROM "+id+"_table_"+num;
int i = 0;
ResultSet rs = stmt.executeQuery(query1);
while(rs.next()){
	if(menu.equals(rs.getString("menu"))){
		String query = "UPDATE "+id+"_table_"+num+" SET count = count+1 WHERE menu = ?;";
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);

		pstmt.setString(1, menu);
		pstmt.executeUpdate();
		out.println("1");
		i = 1;
		break;
	}
}
if(i==0){
	String query3 = "INSERT INTO "+id+"_table_"+num+"(menu, price, count) VALUES (?, ?, ?);";
    PreparedStatement pstmt = null;
    pstmt = con.prepareStatement(query3);
    pstmt.setString(1, menu);
    pstmt.setInt(2, price);
    pstmt.setInt(3, 1);

      
    pstmt.executeUpdate();
}


   
%>