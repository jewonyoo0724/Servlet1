<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test02 input page</title>
</head>
<body>
	<h1>Enter Height & Weight</h1>
	<form method="get" action="/Servlet1/jsp/test/test02.jsp">
		<input type="text" name="height"><label> cm</label>
		<input type="text" name="weight"><label> kg</label>
		<button type="submit">Calculate</button>
	</form>
</body>
</html>