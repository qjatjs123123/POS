
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
function start(){
	location.href="비밀번호변경완료.html";
	
}
</script>

<body onload = "start()">
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); 
String id = request.getParameter("state1");
String pwd = request.getParameter("state");


String driverName= "org.gjt.mm.mysql.Driver";
String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
Class.forName(driverName);
Connection con = DriverManager.getConnection(dbURL, "root1", "0199");

String query3 = "UPDATE member SET passwd = ? WHERE id= ?;";

PreparedStatement pstmt3 = null;
pstmt3 = con.prepareStatement(query3);
pstmt3.setString(1,pwd);
pstmt3.setString(2,id);

  
pstmt3.executeUpdate();


out.print("1");
%>




</body>
</html>