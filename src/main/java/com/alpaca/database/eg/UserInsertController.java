package com.alpaca.database.eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alpaca.common.MysqlService;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		//insert name, birthday, email, introduction
		String name = request.getParameter("name");
		String birthDate = request.getParameter("birthDate");
		String email = request.getParameter("email");
		String intro = request.getParameter("intro");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();		
		
		String query = "INSERT INTO `new_user`\r\n"
					+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
					+ "VALUE\r\n"
					+ "('" + name + "', '" + birthDate + "', '" + email + "', '" + intro + "');";
		
		int count = mysqlService.update(query);
		
		//out.println(count + " users added(rows affected)");
		
		//go to list page
		//Redirect
		response.sendRedirect("/Servlet1/database/eg/eg02.jsp");
		
	}
	
}
