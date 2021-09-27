<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	try {
		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		
		String id = request.getParameter("ID");
		//String id = "kiosk";
		String query = "SELECT * FROM "+id+"_kitchen";
		String cnt = "SELCT COUNT(*) FROM "+id+"_kitchen";
		
		ResultSet rs = stmt.executeQuery(query);
		
		String str = "";
		while(rs.next()){			
			str += rs.getString("menu")+",";
			str += rs.getString("price")+",";
			str += rs.getString("count")+",";
			str += rs.getString("time")+",";
		}
		out.println(str);
	} catch (Exception e) {
		e.printStackTrace();
    }
	
%>