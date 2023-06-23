<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP basics</title>
</head>
<body>
	<h1>JSP Basics</h1>
	
	<!-- HTML comments -->
	<%-- JSP comments --%> <%--JSP comments & code are not seen in page source --%>
	
	<h2>1. sum</h2>
	<%
		int sum = 0;
		for (int i = 0; i < 11; i++)
		{
			sum += i;
		}
	%>
	
	<p>sum (0 to 10): <%= sum %></p>
	<input type="text" value="<%= sum %>">
	
	<%
		
		//List of animal names
		List<String> animalList = new ArrayList<>();
		
		animalList.add("dog");
		animalList.add("cat");
	%>
	
	<h2>2. Animal names (using Java List)</h2>
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	<h2>3. method</h2>
	
	<%-- method that returns hello world --%>
	
	<%! 
		public String getHelloWorld()
		{
			return "Hello World";
		}
	%>
	
	<p>Computer says: <%=getHelloWorld() %></p>
	
	
</body>
</html>