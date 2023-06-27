<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07 input</title>
</head>
<body>
	<h1>Menu Search</h1>
	<form method="post" action="/Servlet1/jsp/test/test07.jsp">
		<input type="text" name="search">
		<label><input type="checkbox" name="four-star"> Exclude 4 stars or lower</label><br><br>
		<button type="submit">Search</button>
	</form>
</body>
</html>