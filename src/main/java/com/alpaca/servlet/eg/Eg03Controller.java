package com.alpaca.servlet.eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/eg03")
public class Eg03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		//response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// get name & birth date, then make a table of name & age
		String name = request.getParameter("name"); // 20020724
		String birthdate = request.getParameter("birthdate");
		
		String birthyear = birthdate.substring(0,4);
		int year = Integer.parseInt(birthyear);
		
		int age = 2023 - year;
		
		/*
		out.println("<html><head><title>ServletEg03</title></head><body>");
		out.println("<table border=1><thead><th>Name</th><th>Age</th></thead>");
		out.println("<tbody><tr><td>" + name + "</td><td>" + age + "</td></tr></tbody></table></body></html>");
		*/
		
		//data into response
		//json
		// name : Harry, age : 21
		//json dictionary
		// {"name":"Harry","age":21}
		//json Array
		//["James","Harry"]
//		[
//		 	{"name":"Harry","age":21},
//		 	{"name":"James","age":21}
//		]
		
		out.println("{\"name\":\"" + name + "\",\"age\":" + age + "}");
		
	}
}
