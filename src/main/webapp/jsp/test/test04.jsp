<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04</title>
</head>
<body>

	<%
		String arith = request.getParameter("arith");
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int result = 0;
		
		if (arith.equals("+"))
		{
			result = number1 + number2;
		}
		else if (arith.equals("-"))
		{
			result = number1 - number2;
		}
		else if (arith.equals("X"))
		{
			result = number1 * number2;
		}
		else if (arith.equals("/"))
		{
			result = number1/number2;
		}
	%>
	
	<h1>Calculation Result</h1>
	<h2><%= number1 + " " + arith + " " + number2 + " = " + result%></h2>
</body>
</html>