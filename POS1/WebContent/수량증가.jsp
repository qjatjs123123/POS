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

int num = Integer.parseInt(request.getParameter("num"));

request.setCharacterEncoding("utf-8");

String driverName= "org.gjt.mm.mysql.Driver";
String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?;useUnicode=true&characterEncoding=utf8";
Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
Statement stmt = con.createStatement();
  

		String query = "UPDATE "+id+"_table_"+num+" SET count = count+1 WHERE menu = ?;";
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);

		pstmt.setString(1, menu);
		pstmt.executeUpdate();
		
		String str = "";
		String query1 = "SELECT * FROM "+id+"_table_"+num;
		ResultSet rs = stmt.executeQuery(query1);
		while(rs.next()){
			if(menu.equals(rs.getString("menu"))){
				str += "!"+",";
				str += rs.getInt("count");
				break;
			}
		}
		
		out.println(str);
		i = 1;

   
%>