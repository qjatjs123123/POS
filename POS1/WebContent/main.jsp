
<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8");
	try {
		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		
		String id = request.getParameter("id");
		String ps = request.getParameter("ps");
		String query = "SELECT * FROM member;";
		
		ResultSet rs = stmt.executeQuery(query);
		boolean a = false; 
		while(rs.next()){
			if(id.equals(rs.getString("id"))){
				if(ps.equals(rs.getString("passwd"))){
					a = true;	
				}
			}
		}
		if(a){
			out.println("t");
		}
		else{
			out.println("f");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
    }
	
	
%>