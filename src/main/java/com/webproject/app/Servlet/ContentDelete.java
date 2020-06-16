package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webproject.app.Board.*;
/**
 * Servlet implementation class ContentDelete
 */
public class ContentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		BoardDAO boardDAO = new BoardDAO();
		int boardNum;
		System.out.println(request.getParameter("boardNum"));
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
		
		System.out.println(boardNum);
		int result = boardDAO.deleteContent(boardNum);
		System.out.println(result);
		out.println("<script>");
		out.println("alert('게시글이 삭제되었습니다')");
		out.println("</script>");
		response.addHeader("REFRESH"," 0; URL=soldList.do?pg=1");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
