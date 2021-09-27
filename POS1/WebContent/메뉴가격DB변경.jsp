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
    int afterprice = Integer.parseInt(request.getParameter("state"));
    String beforemenu = request.getParameter("state1");


    request.setCharacterEncoding("utf-8");

    String driverName= "org.gjt.mm.mysql.Driver";
	String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
	Statement stmt = con.createStatement();
      
    String query = "UPDATE "+id+"_menu SET price = ? WHERE menu = ?;";
      
    PreparedStatement pstmt = null;
    pstmt = con.prepareStatement(query);
    pstmt.setInt(1, afterprice);
    pstmt.setString(2, beforemenu);


      
    pstmt.executeUpdate();
    out.println("2"); 
   
%>



</body>
</html>