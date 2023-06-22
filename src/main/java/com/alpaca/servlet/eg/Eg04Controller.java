package com.alpaca.servlet.eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/eg04")
public class Eg04Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// recieve name & birthdate, show name and age
		
		String name = request.getParameter("name");
		String birthdate = request.getParameter("birthdate");
		
		int birthyear = Integer.parseInt(birthdate.substring(0,4));
		int age = 2023 - birthyear;
		
		out.println("<html><head><title>eg04</title></head><body><h2>name: " + name + "</h2><h2>age: " + age + "</h2></body>");
	}
}
