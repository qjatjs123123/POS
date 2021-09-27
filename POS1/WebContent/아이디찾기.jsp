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
	int chk=0;
	String name  = request.getParameter("name");
	String email = request.getParameter("email");
	
	String driverName= "org.gjt.mm.mysql.Driver";
	String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
    Statement stmt = con.createStatement();
      
    String query = "SELECT * FROM member";
    
    
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next()){
		if(name.equals(rs.getString("name"))){
			if(email.equals(rs.getString("email"))){
				chk=1;
				out.print("찾으시는 이름의 아이디는 " + rs.getString("id") + " 입니다.");
			}
		}
	}
	if(chk != 1){
		out.print("아이디가 존재하지 않습니다.");
	}
%>
</body>
</html>