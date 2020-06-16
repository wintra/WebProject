package com.webproject.app.Pay;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.webproject.app.Board.Board;

public class PayDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final String DRIVER = "org.mariadb.jdbc.Driver";
	static final String URL = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
	static final String USERNAME = "root";
	static final String PASSWORD = "test";

	public PayDAO() {
		try {

			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Pay> returnPay(String userID) {
		String SQL = "SELECT * FROM pay WHERE buyerid =\"" + userID + "\";";
		ArrayList<Pay> list = new ArrayList<Pay>();

		try {

			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				Pay pay = new Pay();
				pay.setBuyid(rs.getInt("buyid"));
				pay.setBoardNum(rs.getInt("boardNum"));
				pay.setId(rs.getString("id"));
				pay.setPrice(rs.getInt("price"));
				pay.setBuyerid(rs.getString("buyerid"));

				list.add(pay);

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return list;
	}

	public int insertpay(Pay pay) {
		String SQL = "insert into pay(boardNum,id,price,buyerid) values(?,?,?,?)";
		System.out.println(pay.getBoardNum());
		System.out.println(pay.getId());

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, pay.getBoardNum()); // boardNum
			pstmt.setString(2, pay.getId()); // sellerid
			pstmt.setInt(3, pay.getPrice()); // price
			pstmt.setString(4, pay.getBuyerid()); // buyerid

			return pstmt.executeUpdate();

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return -1; // 데이터 베이스 오류
	}

	public int countPay(int boardNum) {
		String SQL = "SELECT COUNT(*) FROM pay WHERE boardNum = " + boardNum + ";";
		int count = 0;
		try {
			
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				count = rs.getInt(1);

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return count;

	}
}
