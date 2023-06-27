<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eg04</title>
</head>
<body>
	<%
		List<String> fruitList = new ArrayList<>();
	
		fruitList.add("apple");
		fruitList.add("banana");
		fruitList.add("strawberry");
		fruitList.add("mango");
		
		String result = "";
		
		/* for (int i = 0; i < fruitList.size(); i++)
		{
			result += "<h2>" + fruitList.get(i) + "</h2>";
		}
		
		for (String fruit : fruitList)
		{
			out.println("<h2>" + fruit + "</h2>");
		} */
	%>
	
	<%
		for (String fruit : fruitList)
		{
	%>
			<h2><%= fruit %></h2>
	<%
		}
	%>
	
	<table border="1">
	<% 
		for (String fruit : fruitList)
		{
	%>
			<tr>
				<td><%= fruit %></td>
			</tr>
	
	<%
		}
	%>
		
	</table>
	
	<%= result %>
</body>
</html>