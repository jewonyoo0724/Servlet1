<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07</title>
</head>
<body>
	<% 
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
    %>
    
    <table border="1">
    	<caption>Search Results</caption>
    	<tr>
    		<th>Menu</th>
    		<th>Store</th>
    		<th>Point(s)</th>
    	</tr>
    
    <%
    	String search =  request.getParameter("search");
    	
    	double flag;
    	
    	if (request.getParameter("four-star") == null)
		{
			flag = 0.0;
		}
		//if (request.getParameter("four-star").equals("on"))
		else
    	{
    		flag = 4.0;
    	}
    	
    	for (Map<String, Object> store : list)
    	{
    		if (flag <= Double.parseDouble(store.get("point").toString()) && store.get("menu").equals(search))
    		{
    %>
    
    			<tr>
    				<td><%= store.get("menu") %></td>
    				<td><%= store.get("name") %></td>
    				<td><%= store.get("point") %></td>
    			</tr>
    
    <% 
    		}
    	}
    %>
    
   	</table>
    
</body>
</html>