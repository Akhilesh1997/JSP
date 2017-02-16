<%@page import="java.sql.*"%>
	<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbdemo", "root", "");
	    Statement st = con.createStatement();
    	PreparedStatement ps = con.prepareStatement("insert into dbdemo values(?);");	
    	//LESSENS THE LOAD DUE TO MULTIPLE QUERY STATEMENTS

		/*CallableStatement cs = con.prepareCall("{call proc1()}"); and cs.setInt(); or setString(); cs.execute(); cs.close();*/
	    for (int i = 0; i < 5000; i++){
	    	ps.setInt(1, i);
	    	ps.execute();
	    }
	%>
