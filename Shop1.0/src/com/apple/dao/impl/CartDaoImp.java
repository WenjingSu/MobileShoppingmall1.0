package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Cart;
import com.apple.beans.Goods;
import com.apple.beans.dto.Cartdetail;
import com.apple.beans.dto.Order_goods_goodsimg;
import com.apple.dao.CartDao;

public class CartDaoImp implements CartDao {
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
			JDBCUtil.close(rs, stmt, conn);
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
			JDBCUtil.close(rs, stmt, conn);
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

	@Override
	public List<Cartdetail> CartInfoByUid(int uid) {
		Connection conn = JDBCUtil.getConnection();
		List<Cartdetail> list = new ArrayList<Cartdetail>();
		String sql = "select * from v_cart WHERE u_id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, uid);
			ResultSet rs = stmt.executeQuery();

			Cartdetail cartdetail = new Cartdetail();
			while (rs.next()) {
				cartdetail = new Cartdetail(rs.getInt(1), rs.getString(2),
						rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDouble(6), rs.getInt(7), rs.getString(8),rs.getInt(9));
				list.add(cartdetail);
			}
			JDBCUtil.close(rs, stmt, conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;

	}
	
	
	@Override
	public boolean UpdateAmountByCid(int c_id,  int amount) {
		Connection conn = JDBCUtil.getConnection();
		String sql = "UPDATE cart SET goods_count =? where c_id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setInt(1, amount);
			
			stmt.setInt(2, c_id);
			int s = stmt.executeUpdate();
			JDBCUtil.close(null, stmt, conn);
			if (s >= 1) {
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
		/*CartDao cartDao = new CartDaoImp();
		List<Cartdetail> list = cartDao.CartInfoByUid(4001);
		for (Cartdetail c : list) {
			System.out.println(c);
		}*/
//		Date dNow = new Date( );
//	      SimpleDateFormat ft = new SimpleDateFormat (" yyyy-MM-dd HH:mm:ss");
//	      String time=ft.format(dNow);
//	      System.out.println(time);
//		Random rand=new Random();
//        int i=(int)(Math.random()*100000);       //  生成0-100的随机数
//        int j=rand.nextInt(100000);              // 这里是一个方法的重载，参数的内容是指定范围
//        System.out.println("i:"+i+"\nj:"+j);
		CartDao cartDao = new CartDaoImp();
				boolean s=cartDao.deleteCartByCid(31);
				System.out.println(s);

	}

	@Override
	public Cartdetail cartFindByCid(Integer cid) {
		Connection conn = JDBCUtil.getConnection();
		String sql = "select * from v_cart WHERE c_id=?";
		Cartdetail cartdetail=null;
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, cid);
			ResultSet rs = stmt.executeQuery();

		
			while (rs.next()) {
				cartdetail = new Cartdetail(rs.getInt(1), rs.getString(2),
						rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDouble(6), rs.getInt(7), rs.getString(8),rs.getInt(9));
			}
			JDBCUtil.close(rs, stmt, conn);

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return cartdetail ;

	}

	@Override
	public boolean deleteCartByCid(int cid) {
		Connection conn = JDBCUtil.getConnection();
		String sql = "DELETE FROM cart where c_id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);	
			stmt.setInt(1, cid);
			int s = stmt.executeUpdate();
			JDBCUtil.close(null, stmt, conn);
			if (s >= 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;
	}

	

}
