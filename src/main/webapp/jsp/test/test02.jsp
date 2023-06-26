<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test02</title>
</head>
<body>
	<%
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		int height0 = Integer.parseInt(height);
		int weight0 = Integer.parseInt(weight);
	%>
	
	<%!
		public String calcBMI(int height, int weight)
		{
			double bmi = weight/(Math.pow((height/100.0), 2));
			
			if (bmi <= 20)
			{
				return "underweight";
			}
			else if (bmi >= 21 && bmi <= 25)
			{
				return "normal";
			}
			else if (bmi >= 26 && bmi <= 30)
			{
				return "overweight";
			}
			else
			{
				return "obese";
			}
		}
	%>
	
	
	<h1>BMI Result</h1>
	<p>You are <%= calcBMI(height0, weight0) %></p>
	
</body>
</html>