package com.alpaca.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String payment = request.getParameter("payment");
		int cost = Integer.parseInt(request.getParameter("cost"));
		
		
		out.println("<html><head><title>test07</title></head><body>");
		
		if (!address.contains("서울시"))
		{
			out.println("<h1>배달불가 지역입니다</h1>");
		}
		else if (payment.equals("신한카드"))
		{
			out.println("<h1>결제 불가 카드입니다</h1>");
		}
		else
		{
			out.println("<h3>" + address + "로 배달 준비중</h3><hr><p>결제금액: " + cost + "</p>");
		}
		out.println("</body></html>");
	}
}
