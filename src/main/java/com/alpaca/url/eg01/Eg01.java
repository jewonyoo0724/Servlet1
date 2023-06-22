package com.alpaca.url.eg01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Eg01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		// encoding setting
		response.setCharacterEncoding("UTF-8");
		
		// file type setting (MIME)
		response.setContentType("text/plain");
		
		//today's date and time
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		out.println(now);
		
		//formatting
		// eg) 2023-06-20 19:16:48
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formatDate = formatter.format(now);
		
		out.println(formatDate);
		
		
	}
}
