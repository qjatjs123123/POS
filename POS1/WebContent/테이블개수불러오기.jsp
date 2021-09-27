<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8");
	try {
		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		
		String id = request.getParameter("state1");

		
		String query = "select count from "+id+"_table_count"+";";
		
		ResultSet rs = stmt.executeQuery(query);
		
		int num = 0;
		while(rs.next()){
			num = rs.getInt("count");
		}
		out.println(num);

	} catch (Exception e) {
			e.printStackTrace();
	}
%>