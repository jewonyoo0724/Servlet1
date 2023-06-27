<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test06</title>
</head>
<body>
	
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
			    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<table border="1">
	<caption>장 목록</caption>
	<tr>
		<th>번호</th>
		<th>품목</th>
	</tr>
	
	<%
		for (int i = 0; i < goodsList.size(); i++)
		{
	%>
			<tr>
				<td><%= i + 1 %></td>
				<td><%= goodsList.get(i) %></td>
			</tr>
	
	<%
		}
	%>
	
	</table>

</body>
</html>