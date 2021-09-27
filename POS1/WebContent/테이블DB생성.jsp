<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("utf-8");

		String driverName= "org.gjt.mm.mysql.Driver";
		String dbURL= "jdbc:mysql://192.168.55.150:3306/pos?useUnicode=true&characterEncoding=UTF-8";
		Class.forName(driverName);
		Connection con = DriverManager.getConnection(dbURL, "root1", "0199");
		Statement stmt = con.createStatement();
		Statement stmt1 = con.createStatement();
		
		
		String id = request.getParameter("id");
		int count = Integer.parseInt(request.getParameter("state"));
		int count1 = Integer.parseInt(request.getParameter("state1"));
		
		int i=1;
		int j=1;
		
		while(i<=count1){
			String sql2 = "DROP TABLE "+id+"_table_"+i+";";
			stmt.execute(sql2);
			i++;
		}

		 
		
	    while(j<=count){
		StringBuilder sb = new StringBuilder();
		String sql = sb.append("CREATE TABLE "+id+"_table_"+j+"(")
				.append("menu varchar(50),")
				.append("price int,")
				.append("count int DEFAULT 0,")
				.append("time DATETIME DEFAULT NOW()")
				.append(");").toString();
		stmt1.execute(sql);
		j++;
	    }
	    if (count1 != 0){
	    String sql3 = "DROP TABLE "+id+"_table_count"+";";
		stmt.execute(sql3);
	    }
	    
	    String sql4 = "CREATE TABLE "+id+"_table_count"+"(count int);";
		stmt.execute(sql4);
		
		String query = "INSERT INTO "+id+"_table_count(count) VALUES(?);";
		
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, count);
		pstmt.executeUpdate();
		


%>
