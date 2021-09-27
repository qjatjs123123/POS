
<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8");

		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		
		String id = request.getParameter("id");
		String num = request.getParameter("num");
		String query = "INSERT INTO "+id+"_kitchen"+"(SELECT * FROM "+id+"_table_"+num+")";
		
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);
		pstmt.executeUpdate();
		
	    String query1 = "INSERT INTO "+id+"_today_kitchen"+"(SELECT * FROM "+id+"_table_"+num+")";
		
		PreparedStatement pstmt1 = null;
		pstmt1 = con.prepareStatement(query1);
		
		pstmt1.executeUpdate();
	
	
%>