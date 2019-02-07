package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Address;
import com.apple.beans.G_order;
import com.apple.beans.Goods;
import com.apple.beans.Order_goods_info;
import com.apple.dao.AddressDao;

public class AddressDaoImpl implements AddressDao{

	@Override
	public boolean addressAdd(Address address) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into Address (u_id,address,postcode,consignee_name,consignee_tel,other) values(?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, address.getU_id());
			ps.setString(2, address.getAddress());
			ps.setString(3, address.getPostcode());
			ps.setString(4, address.getConsignee_name());
			ps.setString(5, address.getConsignee_tel());
			ps.setString(6, address.getOther());
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return false;
	}

	@Override
	public boolean addressDel(Integer add_id) {
		
		return false;
	}

	@Override
	public boolean addressUpdate(Integer add_id,Address address) {
		Connection con = JDBCUtil.getConnection();
		String sql = "update Address set address=?,postcode=?,consignee_name=?,consignee_tel=? where add_id=?  ";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, address.getAddress());
			ps.setString(2, address.getPostcode());
			ps.setString(3, address.getConsignee_name());
			ps.setString(4, address.getConsignee_tel());
			ps.setInt(5, add_id);
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return false;
	}

	@Override
	public List<Address> addressFindAll(Integer u_id) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from Address  where u_id=? and add_del=1";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Address> list = new ArrayList<Address>();
		Address address = null;
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, u_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				address = new Address(rs.getInt(1), rs.getInt(2), rs.getString(3),
						rs.getString(4),rs.getString(5), rs.getString(6),
						rs.getInt(7),rs.getString(8));
				list.add(address);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, ps, con);
		}
		return null;
	}

	@Override
	public boolean g_orderAdd(G_order g_order) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into G_order (orderserial,order_goods_num,order_total_price,ordertime,u_id,add_id) values(?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, g_order.getOrderserial());
			ps.setInt(2,g_order.getOrder_goods_num());
			ps.setDouble(3, g_order.getOrder_total_price());
			ps.setString(4, g_order.getOrdertime());
			ps.setInt(5,g_order.getUserid());
			ps.setInt(6,g_order.getAdd_id());
			System.out.println(g_order);
			//ps.setInt(7,g_order.getOrderstate());
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return false;
	}
	public G_order g_orderFindByorderserial(String orderserial) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from G_order where orderserial=? and order_del=1";
		PreparedStatement ps = null;
		ResultSet rs = null;
		G_order g_order = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, orderserial);
			rs = ps.executeQuery();
			while (rs.next()) {
				g_order = new G_order(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4),rs.getString(5), rs.getInt(6),
						rs.getInt(7),rs.getInt(8),rs.getInt(9));
			}
			return g_order;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, ps, con);
		}
		return null;
	}
	
	
	
	
	
	

	@Override
	public boolean order_goods_infoAdd(Order_goods_info order_goods_info) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into Order_goods_info (order_id,goods_num,g_id,g_name,g_price) values(?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1,order_goods_info.getOrder_id());
			ps.setInt(2,order_goods_info.getGoods_num());
			ps.setInt(3,order_goods_info.getG_id());
			ps.setString(4,order_goods_info.getG_name());
			ps.setDouble(5,order_goods_info.getG_price());
			int i = ps.executeUpdate();
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, ps, con);
		}
		return false;
	}

}
