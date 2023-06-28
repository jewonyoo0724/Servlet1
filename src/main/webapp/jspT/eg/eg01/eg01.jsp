<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>current time</title>
</head>
<body>

	<h1>Clock</h1>
	
	<%-- include date.jsp (static)--%>
	<%@ include file="date.jsp" %>
	
	<%--able to use variables in date.jsp --%>
	<%= now %>
	<%-- but can't use same variable name & hard to keep track of code in date.jsp --%>
	<%-- Date now = new Date() gives error --%>
	
</body>
</html>