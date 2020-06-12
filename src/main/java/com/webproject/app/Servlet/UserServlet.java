package com.webproject.app.Servlet;

import java.io.IOException; // 예외타입
import java.sql.Connection; // DB 연동 객체
import java.sql.DriverManager; // JDBC driver 검색
import java.sql.ResultSet;
import java.sql.SQLException; // 쿼리문 예외타입
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/session")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super(); // 부모 생성자 실행
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");

		Connection conn = null; // DB 연동할 객체 생성
		Statement stmt = null; // SQL구문을 실
		ResultSet rs = null; // SQL구문의 실행결과를 저장
		  
		String id, pw, name, email, gender;
		int phone;
		  
		try { // jdbc connect j 라이브러리 로딩 예외 처리
			Class.forName("org.mariadb.jdbc.Driver"); // 해당 클래스가 메모리에 로드 및 실행
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException: " + e.getMessage());
		} 

		try { // drive 클래스를 이용해 커넥션 객체에 localhost:3306/DB 와 연동 및 예외처리
			HttpSession session=request.getSession();
			String userID = (String) session.getAttribute("userID");
			String query = "select * from user where id = \"" + userID + "\"";
			
			System.out.println(query);
		
			String url = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
			
			conn = DriverManager.getConnection(url, "root", "test"); // DB 로그인 정보로 연동
			
			stmt = conn.createStatement();

		    // 4. 쿼리 실행
		    rs = stmt.executeQuery(query);

		    // 5. 쿼리 실행 결과 출력
		    while(rs.next())
		    {
		    	id = rs.getString(1);
		    	pw = rs.getString(2);
		    	name = rs.getString(3);
		    	email = rs.getString(4);
		    	phone = rs.getInt(5);
		    	gender = rs.getString(6);

		    	session.setAttribute("userPW", pw);
				session.setAttribute("userName", name);
				session.setAttribute("userEmail", email);
				session.setAttribute("userPhoneNum", phone);
				session.setAttribute("userGender", gender);
				
				
			}

		    System.out.println(session.getAttribute("userName"));
		    System.out.println(session.getAttribute("userEmail"));
		    System.out.println(session.getAttribute("userPhoneNum"));
		    System.out.println(session.getAttribute("userGender"));
		    
		    
		} catch (SQLException e) {
			System.out.println("SQLException: " + e.getMessage());
			System.out.println("SQLState: " + e.getSQLState());
			System.out.println("VendorError: " + e.getErrorCode());
		} finally {
			response.getWriter().append(conn.toString() + "<br/>");
			response.getWriter().append("localhost:3306/a (DateBase 연동 성공)");
	
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				}
		
		}

	// 2. 데이터베이스 커넥션 생성

	// 3. Statement 생성

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
		response.sendRedirect("home.do");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
