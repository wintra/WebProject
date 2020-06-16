package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webproject.app.Login.User;
import com.webproject.app.Login.UserDAO;
import com.webproject.app.Pay.Pay;
import com.webproject.app.Pay.PayDAO;
import com.webproject.app.Board.*;

/**
 * Servlet implementation class paymentRegister
 */
public class paymentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public paymentRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();

		String userID = (String) session.getAttribute("userID");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		BoardDAO boardDAO = new BoardDAO();
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		Board board = boardDAO.returnBoard(boardNum);

		System.out.println(userID);

		Pay pay = new Pay();
		pay.setId(board.getId()); // seller
		pay.setBuyerid(userID);// buyer
		pay.setPrice(board.getPrice()); // 가격연결X
		pay.setBoardNum(boardNum); // 가격연결X

		PayDAO payDAO = new PayDAO(); // 인스턴스생성
		int result = payDAO.insertpay(pay);

		if (result == -1) { // 아이디가 기본키기. 중복되면 오류.
			out.println("<script>");
			out.println("alert('오류')");
			out.println("history.back()");
			out.println("</script>");
		}
		// 가입성공
		else {
			out.println("<script>");
			out.println("alert('결제가 완료되었습니다.')");
			out.println("</script>");

			String str = "";
			str = "<script language='javascript'>";
			str += "opener.window.location.reload();"; // 오프너 새로고침
			str += "self.close();"; // 창닫기
			str += "</script>";
			out.print(str);
			out.close();

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
