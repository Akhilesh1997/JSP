<!DOCTYPE html>
<html>
	<head>
		<title>Employee</title>
	</head>
	<body>
		<table border="3">
			<tr>
				<td>
					ID
				</td>

				<td>
					NAME
				</td>

				<td>
					CONTACT
				</td>
			</tr>
			<%@page import="java.sql.*"%>
			<%
				Class.forName("com.mysql.jdbc.Driver").newInstance();
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
				Statement st = con.createStatement();

				ResultSet rs = st.executeQuery("select * from Employee order by id asc;");
				while(rs.next()){
					%>
						<tr>
							<td>
								<%=rs.getInt("id")%>
							</td>

							<td>
								<%=rs.getString("name")%>
							</td>

							<td>
								<%=rs.getInt("contact")%>
							</td>
						</tr>
					<%
				}
		%>
		</table>

		<%
			rs.close();
			st.close();
			con.close();
		%>
		<form action="addValues.jsp" method="post" style="position: fixed; top: 50%; left: 40%; width: 270px; height:180px; border: 2px inset black; box-shadow: 2px 3px 5px 5px black; padding: 25px;">
			<h1 style="text-decoration: underline;">ADD EMPLOYEE</h1>
			Name: <input type="text" name="ename" style="position: absolute; left: 80px;" />
			<br/><br/>
			Contact: <input type="number" name="econtact" style="position: absolute; left: 80px;"/><br/>
			<button type="submit">Add!</button>
		</form>
	</body>
</html>