<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Collections" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		//Stirng food = request.getParamter("food") only gives one value
		//String[] foods = request.getParameterValues("foods");
		List<String> foods = Arrays.asList(request.getParameterValues("food"));
	%>
	
	
	<h3>nickname: <%= nickname %></h3>
	<h3>animal: <%= animal %></h3>
	<h3>fruit: <%= fruit %></h3>
	<h3>favorite foods: <%= foods.toString() %></h3>
</body>
</html>