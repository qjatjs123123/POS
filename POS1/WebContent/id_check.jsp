
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("utf-8"); 
		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		
		String id = request.getParameter("ID");
		String query = "SELECT * FROM member;";
		
		ResultSet rs = stmt.executeQuery(query);
		boolean a = true; 
		while(rs.next()){
			if(id.equals(rs.getString("id"))){
				a = false;
			}
		}
		if(a){
			out.println("t");
		}
		else{
			out.println("f");
		}
		
	
	
%>