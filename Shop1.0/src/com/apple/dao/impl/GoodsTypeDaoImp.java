package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.GoodsType;
import com.apple.dao.GoodsTypeDao;

public class GoodsTypeDaoImp implements GoodsTypeDao {

	@Override
	public List<GoodsType> goodstypeFindAll() {
		String sql = "select gt_id,gt_typename,ft_id,gt_mark,gt_del from goodtype where gt_del=1 and ft_id is Null order by gt_id";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		// 瀹氫箟涓�釜闆嗗悎鏉ュ瓨鍌ㄥ璞�
		List<GoodsType> fathers = new ArrayList<GoodsType>();
		try {
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				GoodsType gt = new GoodsType();
				gt.setGt_id(rs.getInt(1));
				gt.setGt_typename(rs.getString(2));
				gt.setGt_mark(rs.getString(4));
				gt.setGt_del(rs.getInt(5));
				fathers.add(gt);
			}
			// System.out.println(fathers);
			for (GoodsType father : fathers) {
				// 鏌ヨ鍑哄綋鍓嶇埗鍒嗙被鐨勬墍鏈夊瓙鍒嗙被
				List<GoodsType> children = goodstypefindByFather(father
						.getGt_id());
				// 璁剧疆缁欑埗鍒嗙被
				father.setChildren(children);
			}
			// System.out.println(fathers);
			return fathers;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	@SuppressWarnings("null")
	@Override
	public GoodsType goodstypeFindByGtid(Integer gtid) {
		String sql = "select gt_id,gt_typename,ft_id,gt_mark,gt_del from goodtype where gt_id=? and gt_del=1";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		GoodsType gt = new GoodsType();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, gtid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				gt.setGt_id(gtid);
				gt.setGt_typename(rs.getString(2));
				gt.setGt_mark(rs.getString(4));
				gt.setGt_del(rs.getInt(5));

			}
			return gt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	@Override
	public boolean goodstypeDel(Integer gtid) {
		List<GoodsType> children = goodstypefindByFather(gtid);
		System.out.println(children);
		if (children == null || children.isEmpty()) {
			String sql = "update goodtype set gt_del=0 where gt_id=?";
			Connection con = JDBCUtil.getConnection();
			PreparedStatement stmt = null;
			try {
				stmt = con.prepareStatement(sql);
				stmt.setInt(1, gtid);
				int i = stmt.executeUpdate();
				if (i > 0) {
					System.out.println("鍒犻櫎鎴愬姛");
					return true;
				} else {
					System.out.println("NO no");
					return false;
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			} finally {
				JDBCUtil.close(null, stmt, con);
			}

		} else {
			System.out.println("鎮ㄩ�鎷╃殑鍟嗗搧瀛愮洰褰曚笅涓嶄负绌猴紝涓嶈兘鍒犻櫎锛�");
			return false;
		}
	}

	@Override
	public List<GoodsType> goodstypefindByFather(Integer gtid) {
		String sql = "select gt_id,gt_typename,gt_mark,gt_del from goodtype where ft_id=? and gt_del=1";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		List<GoodsType> children = new ArrayList<GoodsType>();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, gtid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				GoodsType g = new GoodsType();
				g.setGt_id(rs.getInt(1));
				g.setGt_typename(rs.getString(2));
				g.setGt_mark(rs.getString(3));
				g.setGt_del(rs.getInt(4));
				children.add(g);
				// System.out.println(children);
			}
			return children;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	@Override
	public boolean goodstypeAdd(GoodsType goodstype) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into goodType (gt_typename,gt_mark) values(?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, goodstype.getGt_typename());
			ps.setString(2, goodstype.getGt_mark());
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

	public boolean goodstypeAddChildren(GoodsType goodstype) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into goodType (gt_typename,ft_id,gt_mark) values(?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, goodstype.getGt_typename());
			ps.setInt(2, goodstype.getGt_id());
			ps.setString(3, goodstype.getGt_mark());

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
	public boolean goodstypeUpdate(GoodsType goodstype) {
		Connection con = JDBCUtil.getConnection();
		String sql = "update goodType set gt_typename=?,gt_mark=? where gt_id=?";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, goodstype.getGt_typename());
			ps.setString(2, goodstype.getGt_mark());
			ps.setInt(3, goodstype.getGt_id());
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
	public List<GoodsType> goodstypeFindAllLimit() {
		String sql = "select gt_id,gt_typename,ft_id,gt_mark,gt_del from goodtype where gt_del=1 and ft_id is Null order by gt_id limit 4";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		List<GoodsType> fathers = new ArrayList<GoodsType>();
		try {
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				GoodsType gt = new GoodsType();
				gt.setGt_id(rs.getInt(1));
				gt.setGt_typename(rs.getString(2));
				gt.setGt_mark(rs.getString(4));
				gt.setGt_del(rs.getInt(5));
				fathers.add(gt);
			}
			// System.out.println(fathers);
			for (GoodsType father : fathers) {

				List<GoodsType> children = goodstypefindByFatherLimit(father
						.getGt_id());
				// 璁剧疆缁欑埗鍒嗙被
				father.setChildren(children);
			}

			return fathers;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}

	@Override
	public List<GoodsType> goodstypefindByFatherLimit(Integer gtid) {
		String sql = "select gt_id,gt_typename,gt_mark,gt_del from goodtype where ft_id=? and gt_del=1 order by gt_id  limit 4";
		Connection con = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		List<GoodsType> children = new ArrayList<GoodsType>();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, gtid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				GoodsType g = new GoodsType();
				g.setGt_id(rs.getInt(1));
				g.setGt_typename(rs.getString(2));
				g.setGt_mark(rs.getString(3));
				g.setGt_del(rs.getInt(4));
				children.add(g);
				// System.out.println(children);
			}
			return children;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, con);
		}
		return null;
	}
	
	public static void main(String[] args) {
		GoodsTypeDao  goodstype =new GoodsTypeDaoImp();
		GoodsType type=goodstype.goodstypeFindByGtid(16);
		System.out.println(type);
	}

}
