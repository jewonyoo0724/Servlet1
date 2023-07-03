package com.alpaca.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alpaca.common.MysqlService;

@WebServlet("/db/user/delete_test02")
public class Test02UserDeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String del_query = "DELETE FROM `bookmark` WHERE `id` = " + id;
		
		mysqlService.update(del_query);
		
		response.sendRedirect("/Servlet1/database/test/test02.jsp");
	}
	
}
