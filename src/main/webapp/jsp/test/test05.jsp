<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05</title>
</head>
<body>
	
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
	
		String[] units = request.getParameterValues("unit");
		double convert = 0.0;
		
		String result = "";
		
		for (int i = 0; i < units.length; i++)
		{
			if (units[i].equals("inch"))
			{
				convert = cm * 0.39;
				result += convert + " in<br>";
			}
			else if (units[i].equals("yard"))
			{
				convert = cm * 0.010936133;
				result += convert + " yd<br>";
			}
			else if (units[i].equals("feet"))
			{
				convert = cm * 0.032808399;
				result += convert + " ft<br>";
			}
			else if (units[i].equals("meter"))
			{
				convert = cm / 100.0;
				result += convert + " m<br>";
			}
		}
	%>
	
	<h1>Conversion result</h1>
	<h3><%= cm%> cm</h3>
	<hr>
	
	<h3><%= result %></h3>
	
	
	
</body>
</html>