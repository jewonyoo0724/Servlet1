<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03</title>
</head>
<body>

	<%
		String date_time = null;
		String type = request.getParameter("type");
		SimpleDateFormat date_formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat time_formatter = new SimpleDateFormat("HH시 mm분 ss초");
		
	%>
	
	<%!
		public String dateorTime(String type, SimpleDateFormat date_formatter, SimpleDateFormat time_formatter)
		{
			Date now = new Date();
			if (type.equals("time"))
			{
				return "오늘 날짜 " + date_formatter.format(now);
			}
			else if (type.equals("date"))
			{
				return "현재 시간 " + time_formatter.format(now);
			}
			else
			{
				return "Error";
			}
		}
	%>
	
	<h1><%= dateorTime(type, date_formatter, time_formatter) %></h1>
	
</body>
</html>