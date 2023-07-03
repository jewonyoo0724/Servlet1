<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.alpaca.common.MysqlService"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user list</title>
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `new_user`;";
		ResultSet resultSet = mysqlService.select(query);
	%>
	
	<h2>User list</h2>
	
	<table border="1">
		<thead>
			<tr>
				<th>name</th>
				<th>birthday</th>
				<th>email</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			while (resultSet.next())
			{
		%>
			<tr>
				<td><%= resultSet.getString("name")%></td>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><a href="/Servlet1/db/user/delete?id=<%= resultSet.getInt("id")%>">delete</a></td>
			</tr>
			
		<%
			}
		%>
		</tbody>
	</table>
	
	<a href="/Servlet1/database/eg/user_input.jsp">Add user</a>

</body>
</html>