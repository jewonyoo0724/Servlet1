package com.alpaca.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alpaca.common.MysqlService;

@WebServlet("/db/user/insert_test02")
public class Test02UserInsertController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String website = request.getParameter("website");
		String address = request.getParameter("address");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String insert_query = "INSERT INTO `bookmark`\r\n"
							+ "(`name`, `url`)\r\n"
							+ "VALUE\r\n"
							+ "('" + website + "', '" + address + "');";
		
		int count = mysqlService.update(insert_query);
		
		response.sendRedirect("/Servlet1/database/test/test02.jsp");
	}
}
