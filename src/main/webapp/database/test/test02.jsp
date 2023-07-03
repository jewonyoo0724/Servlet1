<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.alpaca.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String sel_query = "SELECT * FROM `bookmark` ORDER BY `id` DESC;";
		ResultSet resultSet = mysqlService.select(sel_query);
	%>
	
	<h2>Bookmarks</h2>
	
	<table class="table">
		<thead>
			<tr>
				<th>Website</th>
				<th>Address</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			while (resultSet.next())
			{
		%>
			<tr>
				<td><%=resultSet.getString("name") %></td>
				<td><a href=<%=resultSet.getString("url") %>><%=resultSet.getString("url") %></a></td>
				<td><a href="/Servlet1/db/user/delete_test02?id=<%= resultSet.getInt("id") %>">Delete</a></td>
			</tr>
		
		<%
			}
		%>
		
		</tbody>
	</table>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>