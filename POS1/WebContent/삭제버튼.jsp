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
<%
	String id = request.getParameter("id");
	String menu = request.getParameter("menu");
	int num = Integer.parseInt(request.getParameter("num"));
    request.setCharacterEncoding("utf-8");

    String driverName= "org.gjt.mm.mysql.Driver";
	String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
	Statement stmt = con.createStatement();
      
    String query = "DELETE FROM "+id+"_table_"+num+" WHERE menu = ?"; 
      
    PreparedStatement pstmt = null;
    pstmt = con.prepareStatement(query);
    
	pstmt.setString(1, menu);
	
	int rowCount = pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	out.println("3");
%>


</body>
</html>