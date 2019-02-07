package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Manager;
import com.apple.dao.ManagerDao;

public class ManagerDaoImpl implements ManagerDao{
	//1.添加管理员
	@Override
	public boolean managerAdd(Manager manager) {
		Connection con=JDBCUtil.getConnection();
		String str1 = "insert into manager(m_name,m_password) values(?,?);";
		PreparedStatement pstm = null;
		try {
			pstm = con.prepareStatement(str1);
			pstm.setString(1,manager.getM_name());
			pstm.setString(2,manager.getM_password());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
	//2.修改管理员角色
	@Override
	public boolean managerUpdate(int id,int role) {
		if (id==1001) {
			return false;
		} else {
			Connection con=JDBCUtil.getConnection();
			String str1 = "update manager set role=? where m_id =?;";
			PreparedStatement pstm = null;
			try {
				pstm = con.prepareStatement(str1);
				pstm.setInt(1,role);
				pstm.setInt(2,id);
				pstm.executeUpdate();
				return true;
			} catch (SQLException e) {
				return false;
			} finally {
				JDBCUtil.close(null, pstm, con);
			}
		}
	}
	//3.删除管理员
	@Override
	public boolean managerDel(int id) {
		if (id==1001) {
			return false;
		} else {
			Connection con=JDBCUtil.getConnection();
			String str1 = "update manager set m_del=0 where m_id=?;";
			PreparedStatement pstm = null;
			try {
				pstm = con.prepareStatement(str1);
				pstm.setInt(1,id);
				pstm.executeUpdate();
				return true;
			} catch (SQLException e) {
				return false;
			} finally {
				JDBCUtil.close(null, pstm, con);
			}
		}
	}
	//4.查询管理员
	@Override
	public List<Manager> managerFindAll(int id) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Manager manager =new Manager();
		int role=0;
		String str="select role from manager where m_id=?;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setInt(1,id);
			rs = pstm.executeQuery();
			while (rs.next()) {
				role = rs.getInt(1);
			}
		} catch (SQLException e) {
			
		}
		List<Manager> list = new ArrayList<Manager>();
		if (role==2) {
			String str1 = "select m_id,m_name,m_password,role,m_del from manager where m_del!=0;";
			try {
				pstm = con.prepareStatement(str1);
				rs = pstm.executeQuery();
				while (rs.next()) {
					manager=new Manager(rs.getInt("m_id"),rs.getString("m_name"),rs.getString("m_password"),rs.getInt("role"),rs.getInt("m_del"));
					list.add(manager);
				}
			} catch (SQLException e) {

			} finally {
				JDBCUtil.close(rs, pstm, con);
			}
		}else if (role==1) {
			String str1 = "select m_id,m_name,m_password,role,m_del from manager where m_id=?;";
			try {
				pstm = con.prepareStatement(str1);
				pstm.setInt(1,id);
				rs = pstm.executeQuery();
				while (rs.next()) {
					manager=new Manager(rs.getInt("m_id"),rs.getString("m_name"),rs.getString("m_password"),rs.getInt("role"),rs.getInt("m_del"));
					
					list.add(manager);
				}
			} catch (SQLException e) {

			} finally {
				JDBCUtil.close(rs, pstm, con);
			}
		} 		
		return list;
	}
	
	
	
	
	//5.管理员登录
	@Override
	public Manager managerLogin(Manager manager) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String str="select m_name,m_password from manager where m_name=?&&m_del!=0;";
		String m_name = null;
		String m_password = null;
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,manager.getM_name());
			rs = pstm.executeQuery();
			while (rs.next()) {
				m_name=rs.getString("m_name");
				m_password=rs.getString("m_password");
			}
		} catch (SQLException e) {
			
		}
		if (manager.getM_name().equals(m_name)&&manager.getM_password().equals(m_password)) {
			String str1="select m_id,role,m_del from manager where m_name=?&&m_del!=0;";
			try {
				pstm = con.prepareStatement(str1);
				pstm.setString(1,manager.getM_name());
				rs = pstm.executeQuery();
				while (rs.next()) {
					manager.setM_id(rs.getInt("m_id"));
					manager.setRole(rs.getInt("role"));
					manager.setM_del(rs.getInt("m_del"));
				}
			} catch (SQLException e) {
				
			} finally {
				JDBCUtil.close(rs, pstm, con);
			}
			return manager;
		}else {
			return null;
		}	
	}
	//6.管理员修改密码
	@Override
	public boolean managerUpdatePwd(Manager manager) {
		Connection con=JDBCUtil.getConnection();
		String str1 = "update manager set m_password=? where m_id =?&&m_del!=0;";
		PreparedStatement pstm = null;
		try {
			pstm = con.prepareStatement(str1);
			pstm.setString(1,manager.getM_password());
			pstm.setInt(2,manager.getM_id());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
	//7.管理员注册帐号验证
	@Override
	public boolean managerAddFindOne(String m_name) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String str="select * from manager where m_name=?;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,m_name);
			rs = pstm.executeQuery();
			if (rs.next()) {
				return false;
			} else {
				return true;
			}
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(rs, pstm, con);
		}
	}
}
