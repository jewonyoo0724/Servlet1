<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Unit Conversion</h1>
	<form method="post" action="/Servlet1/jsp/test/test05.jsp">
		<input type="text" name="cm"><label> cm</label><br>
		<label>Inch<input type="checkbox" name="unit" value="inch"></label>
		<label>Yard<input type="checkbox" name="unit" value="yard"></label>
		<label>Feet<input type="checkbox" name="unit" value="feet"></label>
		<label>Meter<input type="checkbox" name="unit" value="meter"></label><br>
		<button type="submit">Convert</button>
	</form>
	
</body>
</html>