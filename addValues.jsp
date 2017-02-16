<%@page import="java.sql.*"%>

<%
	String name = request.getParameter("ename"); 
	long contact = Integer.parseInt(request.getParameter("econtact"));
	int id = 0;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
	Statement st = con.createStatement();
	Statement st1 = con.createStatement();

	ResultSet ctr = st1.executeQuery("select max(id) from employee;");
	while(ctr.next()){
		id = ctr.getInt(1);
		out.print(id);
	}

	st.executeUpdate("insert into Employee values("+(id+1)+", '"+name+"', "+contact+");");	
	st.close();
	st1.close();
	ctr.close();
	con.close();

	response.sendRedirect("HomePage.jsp");
%>