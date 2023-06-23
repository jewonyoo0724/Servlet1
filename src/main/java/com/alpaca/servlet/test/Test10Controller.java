package com.alpaca.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<html><head><title>test10</title></head><body>");
		
		if (!id.equals(userMap.get("id")))
		{
			out.println("<h2>Id does not match</h2>");
		}
		else if (!pw.equals(userMap.get("password")))
		{
			out.println("<h2>Password does not match</h2>");
		}
		else
		{
			out.println("<h2>Welcome " + userMap.get("name") + "</h2>");
		}
		
		out.println("</body></html>");
		
		
	}
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "alpaca");
	        put("password", "hello");
	        put("name", "Harry");
	    }
	};
}
