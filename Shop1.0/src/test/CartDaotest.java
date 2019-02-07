package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.apple.DBUtil.JDBCUtil;

public class CartDaotest {

	public boolean addshopIntoCart(int uid, int gid, int goodscount) {

		Connection conn = JDBCUtil.getConnection();

		String sql = "INSERT INTO cart (u_id,g_id,goods_count) values (?,?,?);";
		boolean op = false;
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, uid);
			stmt.setInt(2, gid);
			stmt.setInt(3, goodscount);
			int i = stmt.executeUpdate();
			if (i > 0) {
				op = true;
			} else {
				op = false;
			}

			JDBCUtil.close(null, stmt, conn);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return op;

	}

	public boolean cartHasCont(Integer uid, Integer gid) {
		Connection conn = JDBCUtil.getConnection();

		String sql = "select g_id from v_cart where u_id=? and g_id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, uid);
			stmt.setInt(2, gid);
			ResultSet rs = stmt.executeQuery();
			List<Integer> list = new ArrayList<Integer>();
			while (rs.next()) {
				list.add(rs.getInt(1));
			}
			JDBCUtil.close(null, stmt, conn);
			if (list.contains(gid)) {
				return true;
			} else
				return false;

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;

	}

	public boolean UpdateGoodIntoCart(Integer uid, Integer gid, Integer amount) {

		Connection conn = JDBCUtil.getConnection();
		String str = "select goods_count from cart where u_id=? and g_id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(str);
			stmt.setInt(1, uid);
			stmt.setInt(2, gid);
			ResultSet rs = stmt.executeQuery();
			int oldamount = 0;
			while (rs.next()) {
				oldamount = rs.getInt(1);
			}
			System.out.println(oldamount);
			String sql = "UPDATE cart set goods_count=? where u_id=? and g_id=?;";
			PreparedStatement stmt1 = conn.prepareStatement(sql);
			int goods_count = oldamount + amount;
			stmt1.setInt(1, goods_count);
			stmt1.setInt(2, uid);
			stmt1.setInt(3, gid);
			int s = stmt1.executeUpdate();
			JDBCUtil.close(null, stmt, conn);
			if (s > 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;

	}

	
	
	
	public static void main(String[] args) {
		CartDaotest c = new CartDaotest();
		boolean g = c.cartHasCont(4001, 18);
		int uid = 4001;
		int gid = 18;
		int amount = 100;
		if (c.cartHasCont(uid, gid)) {
			boolean i = c.UpdateGoodIntoCart(uid, gid, amount);
			System.out.println(i);
		} else {
			boolean i = c.addshopIntoCart(uid, gid, amount);
			System.out.println(i);

		}
	}
}
