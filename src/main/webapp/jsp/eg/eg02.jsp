<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>

	<%
		// input name, birthdate, and display table
		
		//request is incldued in JSP
		String name = request.getParameter("name");
		String birthDate = request.getParameter("birthDate");
		
		int year = Integer.parseInt(birthDate.substring(0,4));
		int age = 2023 - year;
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%= name %></td>
				<td><%= age %></td>
			</tr>
		</tbody>
		
	</table>

</body>
</html>