package com.webproject.app.Login;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.webproject.app.Board.Board;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final String DRIVER = "org.mariadb.jdbc.Driver";
	static final String URL = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
	static final String USERNAME = "root";
	static final String PASSWORD = "test";

	public UserDAO() {
		try {

			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	User user = new User();
	Talent talent = new Talent();

	public int login(String userID, String userPassword) {

		String SQL = "SELECT pw FROM user WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					return 1; // 로그인 성공
				else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}

	public int join(User user) {
		String SQL = "insert into user values(?,?,?,?,?,?)";

		String existSQL = "select id from user where id = ?";

		try {
			pstmt = conn.prepareStatement(existSQL);
			pstmt.setString(1, user.getUserID());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return -1;
			}

			else {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user.getUserID());
				pstmt.setString(2, user.getUserPassword());
				pstmt.setString(3, user.getUserName());
				pstmt.setString(4, user.getUserEmail());
				pstmt.setInt(5, user.getUserPhoneNum());
				pstmt.setString(6, user.getUserGender());

				return pstmt.executeUpdate();
			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return -1; // 데이터 베이스 오류
	}

	public int update(User user) {
		String SQL = "update user set pw = ? , name = ? , email = ? , phone = ? , gender = ? where id = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserPassword());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserEmail());
			pstmt.setInt(4, user.getUserPhoneNum());
			pstmt.setString(5, user.getUserGender());
			pstmt.setString(6, user.getUserID());
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int withdrawal(String userID) {
		String SQL = "delete from user where userID = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int updateExpert(Talent talent) {
		String SQL = "update user set nickname = ? ,profield = ? , education = ?,state = ? , major = ?, certificate = ?,certificate_date = ?,certificate_state = ?,accountNum = ?,bank = ?,technology=? where id = ?";

		try {

			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, talent.getId());
			pstmt.setString(2, talent.getNickname());
			pstmt.setString(3, talent.getProfield());
			pstmt.setString(4, talent.getTechnology()); // 보유기술
			pstmt.setString(5, talent.getEducation());
			pstmt.setString(6, talent.getState());
			pstmt.setString(7, talent.getMajor());
			pstmt.setString(8, talent.getCertificate());
			pstmt.setString(9, talent.getCertificateDate());
			pstmt.setString(10, talent.getCertificateState());
			pstmt.setInt(11, talent.getAccountNum());
			pstmt.setString(12, talent.getBank());

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int expertRegister(Talent talent) {
		String SQL = "insert into talent values(?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, talent.getId());
			pstmt.setString(2, talent.getNickname());
			pstmt.setString(3, talent.getProfield());
			pstmt.setString(4, talent.getTechnology()); // 보유기술
			pstmt.setString(5, talent.getEducation());
			pstmt.setString(6, talent.getState());
			pstmt.setString(7, talent.getMajor());
			pstmt.setString(8, talent.getCertificate());
			pstmt.setString(9, talent.getCertificateDate());
			pstmt.setString(10, talent.getCertificateState());
			pstmt.setInt(11, talent.getAccountNum());
			pstmt.setString(12, talent.getBank());

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류
	}

	public int isExpert(String id) {
		String SQL = "select exists (select id from talent where id=?);";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}

			else {
				return 0;
			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return 0;
	}
	
	public User returnUser(String userID) {

		String SQL = "select id, pw, name, email, phone, gender from user where id = \""
				+ userID + "\";";

		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user.setUserID(rs.getString("id"));
				user.setUserPassword(rs.getString("pw"));
				user.setUserName(rs.getString("name"));
				user.setUserEmail(rs.getString("email"));
				user.setUserPhoneNum(rs.getInt("phone"));
				user.setUserGender(rs.getString("gender"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}

	public Talent returnTalent(String userID) {

		String SQL = "select id, nickname, technology, profield, education,  major, state, certificate, certificate_date, certificate_state, accountNum, bank from talent where id = \""
				+ userID + "\";";

		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				talent.setId(rs.getString("id"));
				talent.setNickname(rs.getString("nickname"));
				talent.setTechnology(rs.getString("technology"));
				talent.setProfield(rs.getString("profield"));
				talent.setEducation(rs.getString("education"));
				talent.setMajor(rs.getString("major"));
				talent.setState(rs.getString("state"));
				talent.setCertificate(rs.getString("certificate"));
				talent.setCertificateDate(rs.getString("certificate_date"));
				talent.setCertificateState(rs.getString("certificate_state"));
				talent.setAccountNum(rs.getInt("accountNum"));
				talent.setBank(rs.getString("bank"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return talent;
	}
}