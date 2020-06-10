package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webproject.app.Login.*;

/**
 * Servlet implementation class UserUpdate
 */
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO(); //인스턴스생성
		
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		int userPhoneNum = Integer.parseInt(request.getParameter("userPhoneNum"));
		String userGender = request.getParameter("userGender");
		
		
		User user = new User();
		user.setUserPassword(userPassword);
		user.setUserName(userName);
		user.setUserEmail(userEmail);
		user.setUserPhoneNum(userPhoneNum);
		user.setUserGender(userGender);
		
		int result = userDAO.update(user);

		if (result == -1) { // 잘못된 입력
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 입력이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//가입성공
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('개인정보 수정 완료.')");
			script.println("location.href = 'mypage.do'");
			script.println("</script>");
		}
		
		response.sendRedirect("mypage.do");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
