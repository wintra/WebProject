package com.webproject.app.Pay;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	
	public ArrayList<Pay> returnPay(String userID){
		String SQL = "SELECT * FROM pay WHERE buyerid =" + userID + ";";
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
	
	
}
