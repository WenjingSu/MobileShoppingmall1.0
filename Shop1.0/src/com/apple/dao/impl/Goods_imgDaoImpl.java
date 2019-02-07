package com.apple.dao.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Goods;
import com.apple.beans.Goods_images;
import com.apple.dao.Goods_imgDao;

public class Goods_imgDaoImpl implements Goods_imgDao{

	@Override
	public boolean addImgById(Goods_images goods_images) {
		Connection con = JDBCUtil.getConnection();
		String sql ="insert into good_images (g_id,imageurl) values(?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, goods_images.getG_id());
			ps.setString(2,goods_images.getImageurl());
			System.out.println(goods_images);
			int i = ps.executeUpdate();
			if(i >0){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCUtil.close(null, ps, con);
		}
		return false;
	}

	@Override
	public Goods_images findById(Integer id) {
		Connection con = JDBCUtil.getConnection();
		String sql ="select*from good_images where g_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods_images goods_images=null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1,id);
			rs = ps.executeQuery();
			while(rs.next()){
				goods_images = new Goods_images(rs.getInt(1),rs.getInt(2),rs.getString(3));
			}
			return goods_images;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCUtil.close(rs, ps, con);
		}
		return null;
	}
	
	
}
