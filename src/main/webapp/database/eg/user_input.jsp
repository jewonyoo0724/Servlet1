<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user input</title>
</head>
<body>
	<h1>user input page</h1>
	<form method="post" action="/Servlet1/db/user/insert"><br>
		<label>name: </label><input type="text" name="name"><br>
		<label>birthday: </label><input type="text" name="birthDate"><br>
		<label>email: </label><input type="text" name="email"><br>
		<label>introduction: </label><br>
		<textarea rows="5" cols="50" name="intro"></textarea><br>
		<button type="submit">submit</button>
	</form>
</body>
</html>