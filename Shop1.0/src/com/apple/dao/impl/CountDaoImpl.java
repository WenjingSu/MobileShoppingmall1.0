package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.dto.Ordercount;
import com.apple.dao.CountDao;

public class CountDaoImpl implements CountDao {

	@Override
	public int[] tablechart(String year) {
		Connection con = JDBCUtil.getConnection();
		String sql = "SELECT count(*) ,substr(ordertime,1,7) AS date FROM g_order WHERE ordertime LIKE  ? and order_del=1 GROUP BY substr(ordertime,1,7) ";
		int a[] = new int[12];
		int i = 0;
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, year + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				a[i] = rs.getInt(1);
				i++;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return a;
	}

	public static void main(String[] args) {
		CountDao c = new CountDaoImpl();
//		int a[] = c.tablechart("2018");
//		for (int i = 0; i < a.length; i++) {
//			System.out.println(a[i]);
//		}
		Ordercount ordercount=new Ordercount();
		 ordercount = c.count_number();
		 System.out.println( ordercount);
	}

	@Override
	public Ordercount count_number() {

		String sql1 = "SELECT count(order_id) FROM g_order WHERE g_order.orderstate=2 and  order_del=1";

		String sql2 = "SELECT count(order_id) FROM g_order WHERE g_order.orderstate=3 and  order_del=1";
		String sql3 = "SELECT count(order_id) FROM g_order WHERE g_order.orderstate=4 and  order_del=1";
		String sql4 = "SELECT count(order_id) FROM g_order WHERE order_del=1";
		String sql5 = "SELECT count(order_id) FROM g_order where g_order.orderstate=1 and  order_del=1";
		String sql6 = "select count(u_id) from `user` where u_del=1";
		Ordercount ordercount = new Ordercount();
		Connection con = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql1);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setOrder_notput(rs.getInt(1));

			}

			ps = con.prepareStatement(sql2);

			rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setOrder_notreceive(rs.getInt(1));

			}
			ps = con.prepareStatement(sql3);

			rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setOrder_success(rs.getInt(1));

			}
			ps = con.prepareStatement(sql4);

			rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setOrderamount(rs.getInt(1));

			}
			ps = con.prepareStatement(sql5);

			rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setOrder_notpay(rs.getInt(1));

			}
			
			ps = con.prepareStatement(sql6);

			rs = ps.executeQuery();
			while (rs.next()) {
				ordercount.setUser_amount(rs.getInt(1));

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return ordercount;
	}
}
