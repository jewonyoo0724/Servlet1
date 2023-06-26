<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eg03 input</title>
</head>
<body>
	<form method="post" action="/Servlet1/jsp/eg/eg03.jsp">
		<label>nickname: </label><input type="text" name="nickname">
		<br>
		
		<h3>dog, cat, or mouse</h3>
		<label>Dog <input type="radio" name="animal" value="dog"></label>
		<label>Cat <input type="radio" name="animal" value="cat"></label>
		<label>Mouse <input type="radio" name="animal" value="mouse"></label> <!-- group by name="animal" -->
		<br>
		
		<h3>fruit</h3>
		<select name="fruit">
			<option value="red">apple</option>
			<option value="yellow">banana</option>
			<option value="scarlet">pomegranate</option>
		</select>
		
		<h3>pick food (multiple allowed)</h3>
		<label>pizza <input type="checkbox" name="food" value="pizza"></label>
		<label>burger <input type="checkbox" name="food" value="hamburger"></label>
		<label>hotdog <input type="checkbox" name="food" value="corndog"></label>
		
		<button type="submit">deliver</button>
	</form>
</body>
</html>