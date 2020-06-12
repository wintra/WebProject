package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webproject.app.Login.*;
/**
 * Servlet implementation class UserJoin
 */
public class UserJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserJoin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		int userPhoneNum = Integer.parseInt(request.getParameter("userPhoneNum"));
		String userGender = request.getParameter("userGender");
		
		User user = new User();
		user.setUserID(userID);
		user.setUserPassword(userPassword);
		user.setUserName(userName);
		user.setUserEmail(userEmail);
		user.setUserPhoneNum(userPhoneNum);
		user.setUserGender(userGender);
		

		if (userID == null || userPassword == null || userName == null || userEmail == null || userPhoneNum == 0) {
			out.println("<script>");
			out.println("alert('입력이 안 된 사항이 있습니다.')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			UserDAO userDAO = new UserDAO(); //인스턴스생성
			int result = userDAO.join(user);
			
			if (result == -1) { // 아이디가 기본키기. 중복되면 오류.
				out.println("<script>");
				out.println("alert('이미 존재하는 아이디 입니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			//가입성공
			else {
				out.println("<script>");
				out.println("alert('회원가입 되었습니다')");
				out.println("</script>");
				response.addHeader("REFRESH"," 0; URL=home.do");
		
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
