package com.webproject.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.webproject.app.Board.Comment;
import com.webproject.app.Board.CommentDAO;
import com.webproject.app.Login.User;
import com.webproject.app.Login.UserDAO;
/**
 * Servlet implementation class CommentUpdate
 */
@WebServlet("/CommentUpdate")
public class CommentUpdate extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      int boardNum = Integer.parseInt(request.getParameter("boardNum1"));
      String buyerid = request.getParameter("buyerid");
      String g_comment = request.getParameter("comment");
      int commentscore = Integer.parseInt(request.getParameter("commentscore"));
      
      Comment comment = new Comment();
      comment.setBoardNum(boardNum);
      comment.setBuyerid(buyerid);
      comment.setComment(g_comment);
      comment.setCommentScore(commentscore);
      
      if (boardNum == 0 || buyerid == null || g_comment == null || commentscore == 0) {
         out.println("<script>");
         out.println("alert('입력이 안 된 사항이 있습니다.')");
         out.println("history.back()");
         out.println("</script>");
      } else {
         CommentDAO commentDAO = new CommentDAO();
         int result = commentDAO.writeComment(comment);
         
         if (result == -1) { // 아이디가 기본키기. 중복되면 오류.
            out.println("<script>");
            out.println("alert('중복오류 리뷰입니다')");
            out.println("history.back()");
            out.println("</script>");
         }
         //가입성공
         else {
            out.println("<script>");
            out.println("alert('리뷰가 등록되었습니다.')");
            out.println("window.close()");
            out.println("</script>");
            
            
            
      
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