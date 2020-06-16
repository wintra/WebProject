package com.webproject.app.Board;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {

   private Connection conn;
   private PreparedStatement pstmt;
   private ResultSet rs;

   static final String DRIVER = "org.mariadb.jdbc.Driver";
   static final String URL = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
   static final String USERNAME = "root";
   static final String PASSWORD = "test";
   
   public CommentDAO() {
      try {

         Class.forName(DRIVER);
         conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   public int writeComment(Comment comment) {
      String SQL = "INSERT INTO comment (boardNum , buyerid , comment , commentscore) values (?, ?, ?, ?);";

      try {
         pstmt = conn.prepareStatement(SQL);
         pstmt.setInt(1, comment.getBoardNum());
         pstmt.setString(2, comment.getBuyerid());
         pstmt.setString(3, comment.getComment());
         pstmt.setInt(4, comment.getCommentScore());
         
         return pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // db 삤瑜 
   }

   public Comment returnComment(int commentNum) {
      Comment comment = new Comment();
      
      String SQL = "select boardNum,  buyerid , comment , commentscore from comment where commentNum ="
            + commentNum + ";";

      try {
         pstmt = conn.prepareStatement(SQL);
         rs = pstmt.executeQuery();
         while (rs.next()) {
            comment.setBoardNum(rs.getInt("boardNum"));
            comment.setBuyerid(rs.getString("buyerid"));
            comment.setComment(rs.getString("comment"));
            comment.setCommentScore(rs.getInt("commentscore"));
            
         }

      } catch (Exception e) {
         e.printStackTrace();
      }

      return comment;
   }
}