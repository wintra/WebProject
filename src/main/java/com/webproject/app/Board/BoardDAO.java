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
		String SQL = "insert into board (id , categoryNum ,tabone , tabtwo, tabthree, tabfour, subject, price, startDate, endDate, progress, maxPeople) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
			
			System.out.println(pstmt);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // db오류
	}

}
