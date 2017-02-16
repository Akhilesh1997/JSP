<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
	</head>
	<body>

	<div id = "container" style="width: 100%; height: 100%;">
		<div id = "header" style="width: 100%; height: 20%; position: fixed; top: 0%; left: 0%; background-color: #000065; box-shadow: 3px 3px 5px 5px black;">
			<span style="text-shadow: 2px 2px 3px gold; font-size: 3.75em; position: absolute; top: 15%; left: 2%; color: white;"> ShopMate </span>

			<button style="position: absolute; left: 40%; top: 15%; width: 5em; height: 3em; background-color: white;"></button>
			<button style="position: absolute; left: 48%; top: 15%; width: 5em; height: 3em; background-color: white;"></button>
			<button style="position: absolute; left: 56%; top: 15%; width: 5em; height: 3em; background-color: white;"></button>
		</div>
	</div>




		<%@page import="java.sql.*"%>
		<%
		    Class.forName("com.mysql.jdbc.Driver").newInstance();
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopdb", "root", "");
		    Statement st = con.createStatement();
		   // st.executeUpdate("insert into Product values(1, 'Keyboard', 3000.00, 5, 20);");
		   st.close();
		   con.close();
		//    
		%>
	</body>
</html>