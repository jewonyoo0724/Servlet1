package com.alpaca.database.eg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alpaca.common.MysqlService;

@WebServlet("/db/eg01")
public class Eg01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		MysqlService mysqlService = new MysqlService();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// 접속
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `booking`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>bookinglist</title></head><body>");
		try {
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				int headcount = resultSet.getInt("headcount");
				
				out.println("<div> 제목 : " + name + " 가격 : " + headcount + "</div>");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		String insertQuery = "INSERT INTO `booking`\r\n"
				+ "(`name`, `headcount`, `day`, `date`, `phonenumber`, `state`)\r\n"
				+ "VALUE\r\n"
				+ "(Harry, '3', 4, '2023-07-26`, `010-1234-1234`);";
		int count = mysqlService.update(insertQuery);
		
		out.println("<div>rows affected : " + count + "</div>");
		
		out.println("</body></html>");
		
		
		
		
		
		// mysql 접속후 조회 
		// 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/dulumary_0608";
//			String userId = "root";
//			String password = "root";
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고목록</title></head><body>");
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
//				
//			}
//			
//			out.println("</body></html>");
//			
//		} catch (SQLException e) {
//			
//			
//			e.printStackTrace();
//		}
//		
		
		
		
		
		
		
		
	}

}