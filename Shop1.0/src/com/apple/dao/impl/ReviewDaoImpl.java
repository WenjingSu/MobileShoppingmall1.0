package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Review;
import com.apple.beans.dto.Review_User;
import com.apple.dao.ReviewDao;

public class ReviewDaoImpl implements ReviewDao{
	//Ìí¼ÓÆÀÂÛ
	@Override
	public boolean reviewAdd(Review review) {
		java.sql.Date date = new java.sql.Date(review.getReview_time().getTime());
		Connection con=JDBCUtil.getConnection();
		String str1 = "insert into review(g_id,goodsname,u_id,review_time,content,state) values(?,?,?,?,?,?);";
		PreparedStatement pstm = null;
		try {
			pstm = con.prepareStatement(str1);
			pstm.setInt(1,review.getGoods_id());
			pstm.setString(2,review.getGoodsname());
			pstm.setInt(3,review.getUser_id());
			pstm.setDate(4,date);
			pstm.setString(5,review.getContent());
			pstm.setInt(6,review.getState());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			JDBCUtil.close(null, pstm, con);
		}
	}

	@Override
	public boolean reviewDel(Review review) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Review_User> reviewFindAll(int gt_id) {
		Connection con=JDBCUtil.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String str1 = "select gt_typename from goodtype where gt_id=?";
		String g_name = null;
		try {
			pstm = con.prepareStatement(str1);
			pstm.setInt(1,gt_id);
			rs = pstm.executeQuery();
			while (rs.next()) {
				g_name = rs.getString("gt_typename");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		String str="SELECT review_id,review_time,content,review.state,user.u_id,username,u_img from review LEFT JOIN user ON review .u_id=user.u_id WHERE goodsname like ?&&review_del!=0 order by review_id desc limit 0,5;";
		List<Review_User> list = new ArrayList<Review_User>();
		try {
			pstm = con.prepareStatement(str);
			pstm.setString(1,g_name+"%");
			rs = pstm.executeQuery();
			while (rs.next()) {
				Review_User review_User = new Review_User(rs.getInt("review_id"),rs.getDate("review_time"),rs.getString("content"),rs.getInt("review.state"),rs.getInt("user.u_id"),rs.getString("username"),rs.getString("u_img"));
				list.add(review_User);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstm, con);
		}
		return list;
	}
}
