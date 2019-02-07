package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.apple.DBUtil.JDBCUtil;
import com.apple.DBUtil.MD5;
import com.apple.beans.User;
import com.apple.dao.UserDao;

public class UserDaoImp implements UserDao {

	@Override
	public List<User> userfindall() {
		//java.sql.Date date = new java.sql.Date(user.getBirthday().getTime());//进行日期的转换
		String sql = "select u_id,username,u_password,u_img,realname,u_idcard,birthday,u_phone,userinfo,state,regist_time,login_time,u_del,u_sex,u_residence from user where u_del=1";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		List<User> users = new ArrayList<User>();
		try {
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				User u = new User(rs.getInt(1), rs.getString(2),
						MD5.parseStrToMd5(rs.getString(3)), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getDate(7),
						rs.getString(8), rs.getString(9), rs.getInt(10),
						rs.getDate(11), rs.getDate(12), rs.getInt(13),rs.getInt(14),rs.getString(15));
				//System.out.print(u);
				users.add(u);
			}
			return users;
		} catch (SQLException e) {
			System.out.println("==");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	@Override
	public User userfindbyuId(Integer u_id) {
		String sql = "select u_id,username,u_password,u_img,realname,u_idcard,birthday,u_phone,userinfo,state,regist_time,login_time,u_del,u_sex,u_residence from user where u_id=? and u_del=1";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		User u = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, u_id);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				u = new User(rs.getInt(1), rs.getString(2),
						MD5.parseStrToMd5(rs.getString(3)), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getDate(7),
						rs.getString(8), rs.getString(9), rs.getInt(10),
						rs.getDate(11), rs.getDate(12), rs.getInt(13),rs.getInt(14),rs.getString(15));

			}
			return u;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	public boolean updateUserDel(User user) {
		String sql = "update user set u_del=0 where u_id=?";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement stmt = null;
		try {
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, user.getU_id());
			int i = stmt.executeUpdate();
			if (i > 0) {
				System.out.println("娣囶喗鏁奸悽銊﹀煕閻樿埖锟介幋鎰");
				return true;
			} else
				return false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, stmt, con);
		}
		return false;
	}
	//用户注册
	@Override
	public boolean userRegister(User user) {
		Connection con=JDBCUtil.getConnection();
		String str1 = "insert into user(username,u_password,u_phone) values(?,?,?);";
		PreparedStatement pstm = null;
		String password=user.getU_password();
		try {
			pstm = con.prepareStatement(str1);
			pstm.setString(1,user.getUsername());
			pstm.setString(2,password);
			pstm.setString(3,user.getU_phone());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
	//用户登录
	@Override
	public User userLogin(User user) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String str="select u_id,username,u_password,u_img,realname,u_idcard,birthday,u_sex,u_phone,u_residence,userinfo,state,regist_time,login_time,u_del from user where username=?&&u_password=?&&u_del!=0;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,user.getUsername());
			pstm.setString(2,user.getU_password());
			rs = pstm.executeQuery();
			while (rs.next()) {	
				user.setU_id(rs.getInt("u_id"));
				user.setUsername(rs.getString("username"));
				user.setU_password(rs.getString("u_password"));
				user.setU_img(rs.getString("u_img"));
				user.setRealname(rs.getString("realname"));
				user.setU_idcard(rs.getString("u_idcard"));
				user.setBirthday(rs.getDate("birthday"));
				user.setU_sex(rs.getInt("u_sex"));
				user.setU_phone(rs.getString("u_phone"));
				user.setU_residence(rs.getString("u_residence"));
				user.setUserinfo(rs.getString("userinfo"));
				user.setState(rs.getInt("state"));
				user.setRegist_time(rs.getDate("regist_time"));
				user.setLogin_time(rs.getDate("login_time"));
				user.setU_del(rs.getInt("u_del"));				
			}
			return user;
		} catch (SQLException e) {
			System.out.println("数据库错误");
			return null;
		}finally{
			JDBCUtil.close(rs, pstm, con);
		}
	}
	//用户修改个人信息
	@Override
	public boolean userUpdate(User user) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		//新建一个util类型的date
        java.sql.Date date = new java.sql.Date(user.getBirthday().getTime());//进行日期的转换
		String str="update user set realname=?,birthday=?,u_sex=?,u_residence=?,userinfo=? where u_id =?;";
		try {
			pstm = con.prepareStatement(str);
			
			pstm.setString(1,user.getRealname());
			pstm.setDate(2,date);
			pstm.setInt(3,user.getU_sex());
			pstm.setString(4,user.getU_residence());
			pstm.setString(5,user.getUserinfo());
			pstm.setInt(6,user.getU_id());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println("===");
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
	//用户修改头像
		@Override
		public boolean  userHeadShotUpdate(User user) {
			Connection con=JDBCUtil.getConnection();
			PreparedStatement pstm = null;
			
			String str="update user set u_img=? where u_id =?;";
			try {
				pstm = con.prepareStatement(str);
				pstm.setString(1,user.getU_img());
				pstm.setInt(2,user.getU_id());
				pstm.executeUpdate();
				return true;
			} catch (SQLException e) {
				System.out.println("===");
				return false;
			} finally {
				JDBCUtil.close(null, pstm, con);
			}
		}
	//验证帐号
	@Override
	public boolean userFindbyName(String username) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String str="select * from user where username=? or u_phone=?;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,username);
			pstm.setString(2,username);
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
	//用户修改密码
	@Override
	public boolean userUpdatepsw(User user) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		String str="update user set u_password=? where u_id =?;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,user.getU_password());
			pstm.setInt(2,user.getU_id());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
	//用户修改绑定手机号
	@Override
	public boolean userUpdatephone(User user) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		String str="update user set u_phone=? where u_id =?;";
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,user.getU_phone());
			pstm.setInt(2,user.getU_id());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}
}

