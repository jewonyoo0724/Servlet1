<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 1. -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		
		for (int i = 0; i < scores.length; i++)
		{
			sum += scores[i];
		}
	
		double average = sum/scores.length;
	%>
	
	<h2>The average score is <%= average %>.</h2>
	
	<!-- 2. -->
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int grade = 100;
		for (String mark: scoreList)
		{
			if (mark.equals("X"))
			{
				grade -= 10;
			}
		}
	%>
	
	<h2>The grade is <%= grade %>.</h2>
	
	<!-- 3 -->
	
	<% int n = 50; %>
	<%!
		public int getSum(int n)
		{
			return (1 + n) * n /2;
		}
	%>
	
	<h2>The sum from 1 to <%= n %> is <%= getSum(50) %>.</h2>
	
	<!-- 4 -->
	
	<%
		String birthDate = "20020724";
		int birthyear = Integer.parseInt(birthDate.substring(0, 4));
		int age = 2023 - birthyear;
	%>
	
	<h2>The age of <%= birthDate %> is <%= age %>.</h2>
	
</body>
</html>