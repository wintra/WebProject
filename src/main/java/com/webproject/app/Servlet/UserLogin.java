package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webproject.app.Login.*;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/loginActionTest")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		HttpSession session=request.getSession();
		
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPassword");
		PrintWriter out = response.getWriter();
		
		System.out.println(userID + userPW);
		if(userID != null){
			out.println("<script type=\\\"text/javascript\\\">");
			out.println("alert('이미로그인이 되어있습니다.');");
			out.println("history.back()");
			out.println("</script>");
		}
		
		UserDAO userDAO = new UserDAO();
		
		
		
		int result= userDAO.login(userID, userPW);
		

		if(result == 1){
			session.setAttribute("userID", userID);
			out.println("<script>");
			out.println("</script>");
			response.sendRedirect("setSession");			
		}else if(result == 0){
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다.');");
			out.println("history.back()");
			out.println("</script>");
		}else if(result == -1){
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디 입니다.');");
			out.println("history.back()");
			out.println("</script>");

		}else if(result == -1){
			out.println("<script>");
			out.println("alert('데이터베이스 오류가 발생했습니다.');");
			out.println("history.back()");
			out.println("</script>");
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
