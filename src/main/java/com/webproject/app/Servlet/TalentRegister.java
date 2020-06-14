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
 * Servlet implementation class TalentRegister
 */
public class TalentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TalentRegister() {
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
		String nickName = request.getParameter("nickName");
		String technology = request.getParameter("technology");
		String profield = request.getParameter("profield");
		String education = request.getParameter("education");
		String major = request.getParameter("major");
		String state = request.getParameter("state");
		String certificate = request.getParameter("certificate");
		String certificate_date = request.getParameter("certificate_date");
		String certificate_state = request.getParameter("certificate_state");
		int accountNum = Integer.parseInt(request.getParameter("accountNum"));
		String bank = request.getParameter("bank");

		
		Talent talent = new Talent();
		talent.setId(userID);
		talent.setNickname(nickName);
		talent.setTechnology(technology);
		talent.setProfield(profield);
		talent.setEducation(education);
		talent.setMajor(major);
		talent.setState(state);
		talent.setCertificate(certificate_state);
		talent.setCertificateDate(certificate_date);
		talent.setCertificateState(certificate_state);
		talent.setAccountNum(accountNum);
		talent.setBank(bank);

		if (userID == null || nickName == null || technology == null
				|| profield == null || education == null
				|| major == null || state == null || certificate == null || certificate_date == null || certificate_state == null || accountNum == 0 || bank == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");

		} else {
			UserDAO userDAO = new UserDAO(); // 인스턴스생성
			int result = userDAO.expertRegister(talent);

			if (result == -1) { //
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('오류')");
				script.println("history.back()");
				script.println("</script>");
			}
			// 가입성공
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('전문가 등록이 되었습니다')");
				response.addHeader("REFRESH"," 0; URL=home.do");
				script.println("</script>");
			}
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
