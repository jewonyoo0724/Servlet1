package com.alpaca.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.Math;

@WebServlet("/servlet/test06")
public class Test06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int num1_int = Integer.parseInt(num1);
		int num2_int = Integer.parseInt(num2);
		
		int add = num1_int + num2_int;
		int sub = Math.abs(num1_int - num2_int);
		int mult = num1_int * num2_int;
		double div = num1_int/(double)num2_int;
		
		out.println("{\"addition\":" + add + ",\n\"subtraction\":" + sub + ",\n\"multiplication\":" + mult + ",\n\"division\":" + div + "}");
	}
}
