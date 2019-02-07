package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder.In;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.G_order;
import com.apple.beans.Order_goods_info;
import com.apple.beans.dto.G_Order_User_Address;
import com.apple.beans.dto.OrderDetail;
import com.apple.beans.dto.Order_goods_goodsimg;
import com.apple.beans.dto.Orderlist;
import com.apple.dao.OrderDao;
import com.apple.page.PageList;

public class OrderDaoImp implements OrderDao {

	@Override
	public List<G_Order_User_Address> order_formsFindAll() {
		Connection conn = JDBCUtil.getConnection();
		String sql = "select order_id, orderserial, u_id,username,order_goods_num,order_total_price,ordertime,consignee_name,consignee_tel,address ,orderstate,order_del from v_order_user_address ";
		List<G_Order_User_Address> g_orderlist = new ArrayList<G_Order_User_Address>();
		double total_price = 0;
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				g_orderlist.add(new G_Order_User_Address(rs.getInt(1), rs
						.getString(2), rs.getInt(3), rs.getString(4), rs
						.getInt(5), rs.getDouble(6), rs.getString(7), rs
						.getString(8), rs.getString(9), rs.getString(10), rs
						.getInt(11), rs.getInt(12)));
			}
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return g_orderlist;
	}

	@Override
	public List<G_Order_User_Address> order_formFindByUsername(String username) {
		Connection conn = JDBCUtil.getConnection();
		String sql = "select order_id, orderserial, u_id,username,order_goods_num,order_total_price,ordertime,consignee_name,consignee_tel,address ,orderstate,order_del from v_order_user_address where username=?";
		List<G_Order_User_Address> order_u_alist = new ArrayList<G_Order_User_Address>();
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
			G_Order_User_Address order_u_a = new G_Order_User_Address();
			while (rs.next()) {
				order_u_a = new G_Order_User_Address(rs.getInt(1),
						rs.getString(2), rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getDouble(6), rs.getString(7),
						rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getInt(12));
				order_u_alist.add(order_u_a);
			}
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return order_u_alist;

	}

	@Override
	public G_Order_User_Address order_formFindByOid(Integer oid) {
		String sql = "select order_id, orderserial, u_id,username,order_goods_num,order_total_price,ordertime,consignee_name,consignee_tel,address ,orderstate,order_del from v_order_user_address where order_id=?";
		Connection conn = JDBCUtil.getConnection();
		G_Order_User_Address order_u_a = new G_Order_User_Address();
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, oid);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				order_u_a = new G_Order_User_Address(rs.getInt(1),
						rs.getString(2), rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getDouble(6), rs.getString(7),
						rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getInt(12));
			}
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order_u_a;

	}

	@Override
	public List<G_Order_User_Address> order_formsFindByDate(String otime) {
		String sql = "select order_id, orderserial, u_id,username,order_goods_num,order_total_price,ordertime,consignee_name,consignee_tel,address ,orderstate,order_del from v_order_user_address where ordertime LIKE ?";
		Connection conn = JDBCUtil.getConnection();
		List<G_Order_User_Address> order_u_alist = new ArrayList<G_Order_User_Address>();
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			otime = otime + "%";
			stmt.setString(1, otime);
			ResultSet rs = stmt.executeQuery();
			G_Order_User_Address order_u_a = new G_Order_User_Address();
			while (rs.next()) {
				order_u_a = new G_Order_User_Address(rs.getInt(1),
						rs.getString(2), rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getDouble(6), rs.getString(7),
						rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getInt(12));
				order_u_alist.add(order_u_a);
			}
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return order_u_alist;

	}

	@Override
	public boolean order_formUpdateStaByOId(Integer orderstate, Integer oid) {
		String sql = "update g_order SET orderstate=? where order_id=? ";
		Connection conn = JDBCUtil.getConnection();
		boolean op = false;
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, orderstate);
			stmt.setInt(2, oid);
			int i = stmt.executeUpdate();

			System.out.println(i);
			if (i > 0) {
				op = true;
			} else {
				op = false;
			}
			JDBCUtil.close(null, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return op;
	}

	@Override
	public List<Order_goods_info > order_formfindOid(Integer oid) {
		String sql = "SELECT * from order_goods_info WHERE order_id=?";
		Connection conn = JDBCUtil.getConnection();
		List<Order_goods_info > order = new ArrayList<Order_goods_info >();
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, oid);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				order.add(new Order_goods_info(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDouble(6), rs.getInt(7)));
			}
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order;
	}

	
	
	
	// 根据订单编号&&订单时间&&交易状态查询
	public PageList<G_Order_User_Address> findPage(G_Order_User_Address address, int currentPage, int pageSize) {
		
		PageList<G_Order_User_Address> page = null;// 待会再返回结果的时候进行实例化
		// 存放参数的集合

		List<Object> paramList = new ArrayList<Object>();
		// 获取参数----输入框中传输过来的参数
		String orderserial = address.getOrderserial();
		String otime = address.getOrdertime();
		int ostate = address.getOrderstate();

		// 定义两个sql语句：一个负责查询数据 一个负责统计数据
		StringBuffer sql = new StringBuffer(
				"SELECT * FROM v_order_user_address where true=true");
		StringBuffer countSql = new StringBuffer(
				"SELECT count(order_id) as totalRecord FROM  v_order_user_address where 1=1");

		// 将参数拼接到sql语句中
		if (orderserial != null && !"".equals(orderserial)) {// 表示姓名这个参数不为空
			sql.append(" and orderserial like ?");// 给查询语句进行参数的拼接
			countSql.append(" and orderserial like ?");// 给统计语句进行参数的拼接
			paramList.add("%" + orderserial + "%");// 实际参数
		}

		if (otime != null && !"".equals(otime)) {// 表示姓名这个参数不为空
			sql.append(" and  ordertime like ?");// 给查询语句进行参数的拼接
			countSql.append(" and ordertime  like ?");// 给统计语句进行参数的拼接
			paramList.add("%" + otime + "%");// 实际参数
		}
		if (ostate!=0) {// 代表有性别这个参数
			sql.append(" and orderstate = ?");
			countSql.append(" and orderstate = ?");
			paramList.add(ostate);
		}
		sql.append("  ORDER BY order_id DESC");
		// 查询的起始索引
		int fromIndex = pageSize * (currentPage - 1);

		// 使用limit关键字实现分页
		sql.append(" limit " + fromIndex + "," + pageSize);

		// 定义一个集合存放所有查询出来的对象
		List<G_Order_User_Address> orderList = new ArrayList<G_Order_User_Address>();

		// 实例化数据库查询的对象
		JDBCUtil jdbcUtil = new JDBCUtil();
		try {
			List<Map<String, Object>> countResult = jdbcUtil.findResults(
					countSql.toString(), paramList);
			int totalRecord = Integer.parseInt(countResult.get(0)
					.get("totalRecord").toString());
			// 获取查询的学生的对象的集合
			List<Map<String, Object>> orderResult = jdbcUtil.findResults(
					sql.toString(), paramList);

			if (orderResult != null) {
				for (Map<String, Object> map : orderResult) {// 将Map中保存的数据转换成Student对象
					G_Order_User_Address g_Order_User_Address = new G_Order_User_Address();
					g_Order_User_Address.setOrder_id(Integer.parseInt(map.get("order_id").toString()));
					g_Order_User_Address.setOrderserial(map.get("orderserial").toString());
					g_Order_User_Address.setUserid(Integer.parseInt(map.get("u_id").toString()));
					g_Order_User_Address.setUsername(map.get("username").toString());
					
					g_Order_User_Address.setOrder_goods_num(Integer.parseInt(map.get("order_goods_num").toString()));
					g_Order_User_Address.setOrder_total_price(Double.parseDouble(map.get("order_total_price").toString()));
					g_Order_User_Address.setOrdertime(map.get("ordertime").toString());
					g_Order_User_Address.setConsignee_name(map.get("consignee_name").toString());
					g_Order_User_Address.setConsignee_tel(map.get("consignee_tel").toString());
					g_Order_User_Address.setAddress(map.get("address").toString());
					g_Order_User_Address.setOrderstate(Integer.parseInt(map.get("orderstate").toString()));
					g_Order_User_Address.setOrder_del(Integer.parseInt(map.get("order_del").toString()));
					 orderList .add(g_Order_User_Address);
				}
			}
			//获取总的页数
			 int totalPage=totalRecord/pageSize;
			 if(totalRecord%pageSize!=0){
				 totalPage+=1;//总页数加1
			 }
			 
			 //进行Page对象的组装
			 page=new PageList<G_Order_User_Address>(pageSize, currentPage, totalRecord, totalPage, orderList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return page;

	}

	
	
	
	@Override
	public List<Order_goods_goodsimg> SelectCartStateByState(int oid){
	String sql="select * FROM v_order_goods WHERE order_id=?";
    Connection conn = JDBCUtil.getConnection();
		List<Order_goods_goodsimg> list = new ArrayList<Order_goods_goodsimg>();
		
		
		Order_goods_goodsimg  goods_goodsimg=new Order_goods_goodsimg();
		
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, oid);
			ResultSet rs = stmt.executeQuery();
			System.out.println(sql);
			
			while (rs.next()) {
				 goods_goodsimg=new Order_goods_goodsimg(rs.getInt("ord_g_info_id"), rs.getInt("order_id"), rs.getInt("goods_num"),rs.getInt("g_id"),rs.getString("g_name"), rs.getDouble("g_price"), rs.getInt("ord_g_info_del"), rs.getString("good_imgurl"));
				 
				 
				 list.add(goods_goodsimg);
			}
			
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	@Override
	public List<Orderlist> selectOrderAllByState(int orderstate ,int uid) {
     String sql="select * from  g_order where 1=1 and u_id=? ";
     PreparedStatement stmt = null;
     
     
     Connection conn = JDBCUtil.getConnection();
		List<Orderlist> list = new ArrayList<Orderlist>();
		Orderlist orderlist =new Orderlist();
		
		
		try {
		if(orderstate>0){
		    	 sql+=" "+"and orderstate=?"+" ORDER BY ordertime DESC";
		    	  stmt = conn.prepareStatement(sql);
		    	  stmt.setInt(1, uid);
					stmt.setInt(2, orderstate);
		     }else{
		    	 sql+=" ORDER BY ordertime DESC";
		    	 stmt = conn.prepareStatement(sql);
		    	 stmt.setInt(1, uid);
		     }
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				
				orderlist=new Orderlist(rs.getInt("order_id"), rs.getString("orderserial"), rs.getInt("order_goods_num"), rs.getDouble("order_total_price"), rs.getString("ordertime"), rs.getInt("u_id"), rs.getInt("add_id"), rs.getInt("orderstate"), rs.getInt("order_del"));
				
				List<Order_goods_goodsimg>order_goodlist= SelectCartStateByState(rs.getInt("order_id")) ;
				orderlist.setOrder_goodlist(order_goodlist);
				list.add(orderlist);
			}
			
			JDBCUtil.close(rs, stmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	
	public static void main(String[] args) {
		OrderDaoImp o = new OrderDaoImp();
		// List<G_Order_User_Address>
//		// // list=o.order_formsFindByDate("2018-01-17");
//		List<Orderlist> list=o. selectOrderAllByState(0,4003);
//		 for (Orderlist  order: list) {
//		 System.out.println(order.toString());
//		 System.out.println(order.getOrder_goodlist());
//		 }

		 
//		 List<Order_goods_goodsimg> l=o.SelectCartStateByState(5);
//		 System.out.println(l);
		// boolean op = o.order_formUpdateStaByOId(1, 1);
		// System.out.println(op);
		G_Order_User_Address address =new G_Order_User_Address();
		address.setOrderserial("");
		address.setOrdertime("");
		address.setOrderstate(0);
		
		PageList<G_Order_User_Address> list=o.findPage(address,1,5);
		System.out.println(list.toString());
		System.out.println(list.getDataList());
		System.out.println(list.getDataList().size());
		for(G_Order_User_Address a:list.getDataList()){
			System.out.println(a.toString());
		}

	}

	@Override
	public List<Order_goods_goodsimg> UserOrderDetailByoid(Integer oid) {
		
		return null;
	}

	

}
