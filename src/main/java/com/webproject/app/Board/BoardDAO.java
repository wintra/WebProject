package com.webproject.app.Board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webproject.app.Board.*;

public class BoardDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final String DRIVER = "org.mariadb.jdbc.Driver";
	static final String URL = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
	static final String USERNAME = "root";
	static final String PASSWORD = "test";

	public BoardDAO() {
		try {

			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int writeContent(String id, Board board) {
		String SQL = "insert into board (id , categoryNum ,tabone , tabtwo, tabthree, tabfour, subject, price, startDate, endDate, progress, maxPeople, score) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0)";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setInt(2, board.getCategoryNum());
			pstmt.setString(3, board.getTabone());
			pstmt.setString(4, board.getTabtwo());
			pstmt.setString(5, board.getTabthree());
			pstmt.setString(6, board.getTabfour());
			pstmt.setString(7, board.getSubject());
			pstmt.setInt(8, board.getPrice());
			pstmt.setString(9, board.getStartDate());
			pstmt.setString(10, board.getEndDate());
			pstmt.setString(11, board.getProgress());
			pstmt.setInt(12, board.getMaxPeople());



			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // db오류
	}

	public int reviseContent(int boardNum, Board board) {
		String SQL = "update board set categoryNum =? ,tabone =? , tabtwo =? , tabthree =? , tabfour =? , subject =? , price =? , startDate =? , endDate =? , progress =? , maxPeople =? where boardNum=?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, board.getCategoryNum());
			pstmt.setString(2, board.getTabone());
			pstmt.setString(3, board.getTabtwo());
			pstmt.setString(4, board.getTabthree());
			pstmt.setString(5, board.getTabfour());
			pstmt.setString(6, board.getSubject());
			pstmt.setInt(7, board.getPrice());
			pstmt.setString(8, board.getStartDate());
			pstmt.setString(9, board.getEndDate());
			pstmt.setString(10, board.getProgress());
			pstmt.setInt(11, board.getMaxPeople());
			pstmt.setInt(12, boardNum);

			

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // db오류
	}

	public int deleteContent(int boardNum) {
		String SQL = "delte from board where boardNum=?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, boardNum);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // db오류
	}
	
	
	public Board returnBoard(int boardNum) {  
		Board board = new Board();
		String SQL = "select categoryNum ,tabone , tabtwo, tabthree, tabfour, subject, price, startDate, endDate, progress, maxPeople from board where boardNum ="
				+ boardNum + ";";

		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				board.setCategoryNum(rs.getInt("categoryNum"));
				board.setTabone(rs.getString("tabone"));
				board.setTabtwo(rs.getString("tabtwo"));
				board.setTabthree(rs.getString("tabthree"));
				board.setTabfour(rs.getString("tabfour"));		
				board.setSubject(rs.getString("subject"));
				board.setPrice(rs.getInt("price"));
				board.setStartDate(rs.getString("startDate"));
				board.setEndDate(rs.getString("endDate"));
				board.setProgress(rs.getString("progress"));
				board.setMaxPeople(rs.getInt("maxPeople"));

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return board;
	}

}
