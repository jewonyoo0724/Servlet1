package com.alpaca.servlet.eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/eg02")
public class Eg02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// page that shows sum of 1 to 10
		int sum = 0;
		for (int i = 0; i < 11; i++)
		{
			sum += i;
		}
		
		out.println("<html><head><title>sum</title><head><body>");
		out.println("<h2>" + sum + "</h2></body></html>");
	}
}
