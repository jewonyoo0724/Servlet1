package com.alpaca.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number"));
		//int numberInt = Integer.parseInt(number);
		
		out.println("<html><head><title>test05</title></head><body><ul>");
		
		for (int i = 1; i < 10; i++)
		{
			//String index = Integer.toString(i);
			//String result = Integer.toString(numberInt * i);
			int result = number * i;
			out.println("<li>" + number + " X " + i + " = " + result + "</li>");
		}
		
		out.println("</ul></body></html>");
		
		
	}
}
