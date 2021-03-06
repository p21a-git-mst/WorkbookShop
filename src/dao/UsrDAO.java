package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import model.Usr;

public class UsrDAO implements DBConfig {

	static {
		try {
			Class.forName(DRIVER_NAME);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public List<Usr> findAUsr(Usr usr) {
		List<Usr> usrList = new ArrayList<Usr>();

		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			String sql = "SELECT * FROM usr WHERE user_id=? and password=?;";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setString(1, usr.getUser_id());
			pStmt.setString(2, usr.getPassword());

			ResultSet rs = pStmt.executeQuery();

			System.out.println(rs);

			while (rs.next()) {

				String user_id = rs.getString("user_id");
				String password = rs.getString("password");
				String l_name = rs.getString("l_name");
				String f_name = rs.getString("f_name");
				String l_name_kana = rs.getString("l_name_kana");
				String f_name_kana = rs.getString("f_name_kana");
				String prefecture = rs.getString("prefecture");
				String city = rs.getString("city");
				String o_address = rs.getString("o_address");
				String tel = rs.getString("tel");
				String email = rs.getString("email");

				System.out.println(user_id + ";" + password + ";" + l_name + ";");

				Usr usrResult = new Usr(user_id,
										password,
										l_name,
										f_name,
										l_name_kana,
										f_name_kana,
										prefecture,
										city,
										o_address,
										tel,
										email);

				usrList.add(usrResult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return usrList;
	}

	public String getNewID() {
		String newID = "";
		int cnt = 0;

		LocalDateTime date = LocalDateTime.now();
		if (date.getMonthValue() < 10) {
			newID = "C0" + date.getMonthValue();
		} else {
			newID = "C" + date.getMonthValue();
		}

		Random random = new Random();

		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			do {
				for (int i = 0; i < 4; i++) {
					newID = newID + ((Integer) random.nextInt(9)).toString();
				}
				System.out.println(newID);

				String sql = "SELECT count(*) AS cnt  FROM usr where user_id=?;";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1, newID);

				ResultSet rs = pStmt.executeQuery();

				while (rs.next()) {
					cnt = rs.getInt("cnt");
				}
			} while (cnt > 0);

		} catch (SQLException e) {
			e.printStackTrace();
			return newID;
		}
		return newID;
	}

	public String insertUsr(Usr usr) {
		String errorStr = "";

		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			String sql = "INSERT INTO usr(user_id,password,l_name,f_name,l_name_kana,f_name_kana,prefecture,city,o_address,tel,email)"
					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, usr.getUser_id());
			pStmt.setString(2, usr.getPassword());
			pStmt.setString(3, usr.getL_name());
			pStmt.setString(4, usr.getF_name());
			pStmt.setString(5, usr.getL_name_kana());
			pStmt.setString(6, usr.getF_name_kana());
			pStmt.setString(7, usr.getPrefecture());
			pStmt.setString(8, usr.getCity());
			pStmt.setString(9, usr.getO_address());
			pStmt.setString(10, usr.getTel());
			pStmt.setString(11, usr.getEmail());
//			ResultSet rs = pStmt.executeQuery();
			pStmt.executeUpdate();

		} catch (SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
			errorStr = "既に登録されている e-mail です";
		} catch (SQLException e) {
			e.printStackTrace();
			errorStr = "SQLエラーです。";
		}
		return errorStr;
	}
}
