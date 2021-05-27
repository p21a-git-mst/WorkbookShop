package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductDAO implements DBConfig {

	static {
		try {
			Class.forName(DRIVER_NAME);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public List<Product> findAllProducts() {

		List<Product> productList = new ArrayList<Product>();

		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			String sql = "SELECT * FROM product ORDER BY p_id;";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

			System.out.println(rs);

			while (rs.next()) {

				String p_id = rs.getString("p_id");
				String p_name = rs.getString("p_name");
				Integer price = rs.getInt("price");

				//System.out.println(p_id+";"+p_name+";"+price+";");

				Product productResult = new Product(p_id ,p_name, price);

				productList.add(productResult);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return productList;
	}

}
