<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		String str = "";
		String id = request.getParameter("state1");

		int count = Integer.parseInt(request.getParameter("state3"));
		
		//String id = "kiosk";
		for(int i =1;i<=count;i++){
		String query = "SELECT * FROM "+id+"_table_"+i;
		
		
		ResultSet rs = stmt.executeQuery(query);
		
		while(rs.next()){
			
			str += rs.getString("menu")+",";
			str += Integer.toString(rs.getInt("price"))+",";
			str +=  Integer.toString(rs.getInt("count"))+",";
		}
		str += "!"+",";
		}
		

		out.println(str);

	
%>