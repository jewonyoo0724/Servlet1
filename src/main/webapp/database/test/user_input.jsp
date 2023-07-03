<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user input bookmark</title>
</head>
<body>

	<h1>Add Bookmark</h1>
	
	<form method="post" action="/Servlet1/db/user/insert_test02">
		<label>Website:</label><br>
		<input type="text" name="website"><br>
		<label>Address:</label><br>
		<input type="text" name="address"><br>
		<button type="submit">Add</button>
	</form>

</body>
</html>