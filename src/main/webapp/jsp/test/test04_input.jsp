<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04 input</title>
</head>
<body>
	<h1>Arithmetic</h1>
	<form method="post" action="/Servlet1/jsp/test/test04.jsp">
		<input type="text" name="number1">
		<select name="arith">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="X">X</option>
			<option value="/">/</option>
		</select>
		<input type="text" name="number2">
		<button type="submit">Calculate</button>
	</form>
</body>
</html>