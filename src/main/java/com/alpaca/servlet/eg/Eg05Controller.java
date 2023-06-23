package com.alpaca.servlet.eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/eg05")
public class Eg05Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthdate = request.getParameter("birthdate");
		
		int year = Integer.parseInt(birthdate.substring(0,4));
		
		int age = 2023 - year + 1;
		
		out.println("<html><head><title>eg05</title></head><body>");
		out.println("<h2>name: " + name + "</h2><h2>age: " + age + "</h2></body></html>");
		
	}
}
