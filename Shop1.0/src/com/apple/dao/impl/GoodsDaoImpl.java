package com.apple.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.apple.DBUtil.JDBCUtil;
import com.apple.beans.Goods;
import com.apple.beans.dto.G_Order_User_Address;
import com.apple.beans.dto.GoodsDetail;
import com.apple.dao.GoodsDao;
import com.apple.page.PageList;

public class GoodsDaoImpl implements GoodsDao {
	@Override
	public boolean goodsAdd(Goods goods) {
		Connection con = JDBCUtil.getConnection();
		String sql = "insert into Goods (goodsname,gt_id,purchasing_price,original_price,goodsprice,good_imgurl,goodsinfo,amount) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, goods.getGoodsname());
			ps.setInt(2, goods.getGt_id());
			ps.setDouble(3, goods.getPurchasing_price());
			ps.setDouble(4, goods.getOriginal_price());
			ps.setDouble(5, goods.getGoodsprice());
			ps.setString(6, goods.getGood_imgurl());
			ps.setString(7, goods.getGoodsinfo());
			ps.setInt(8, goods.getAmount());
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
	public boolean goodsUpdateById(Integer gid, Goods goods) {
		Connection con = JDBCUtil.getConnection();
		String sql = "update goods set goodsname=?,gt_id=?,purchasing_price=?,original_price=?,goodsprice=?,good_imgurl=?,goodsinfo=?,amount=?,g_del=?,goods_state=?  where g_id = ?";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);

			ps.setString(1, goods.getGoodsname());
			ps.setInt(2, goods.getGt_id());
			ps.setDouble(3, goods.getPurchasing_price());
			ps.setDouble(4, goods.getOriginal_price());
			ps.setDouble(5, goods.getGoodsprice());
			ps.setString(6, goods.getGood_imgurl());
			ps.setString(7, goods.getGoodsinfo());
			ps.setInt(8, goods.getAmount());
			ps.setInt(9, goods.getG_del());
			ps.setInt(10, goods.getGoods_state());
			ps.setInt(11, gid);
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
	public List<Goods> goodsFindAll() {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goods where g_del!=0 order by g_id desc";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				goods = new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4), rs.getDouble(5), rs.getDouble(6),
						rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getString(10), rs.getInt(11), rs.getInt(12));
				list.add(goods);
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
	public Goods goodsFindByGid(Integer id) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goods where g_id = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				goods = new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4), rs.getDouble(5), rs.getDouble(6),
						rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getString(10), rs.getInt(11), rs.getInt(12));
			}
			return goods;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, ps, con);
		}
		return null;
	}

	@Override
	public List<Goods> goodsfindbygoodsstate() {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goods where g_del=0";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				goods = new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4), rs.getDouble(5), rs.getDouble(6),
						rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getString(10), rs.getInt(11), rs.getInt(12));
				list.add(goods);
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
	public List<GoodsDetail> goodsFindByftid(Integer fid) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goodstetail WHERE ft_id=? AND goods_state=2;";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<GoodsDetail> list = new ArrayList<GoodsDetail>();
		GoodsDetail goods = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, fid);
			rs = ps.executeQuery();

			while (rs.next()) {
				goods = new GoodsDetail(rs.getInt(1), rs.getString(2),
						rs.getInt(3), rs.getDouble(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7), rs.getString(8),
						rs.getInt(9), rs.getString(10), rs.getInt(11),
						rs.getInt(12), rs.getInt(13), rs.getString(14),
						rs.getString(15), rs.getInt(16));
				list.add(goods);
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
	public List<Goods> goodsFindByGtid(int gtid) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goods WHERE gt_id=? AND goods_state=2;";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, gtid);
			rs = ps.executeQuery();

			while (rs.next()) {
				goods =new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12));
				list.add(goods);
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
	public Goods getgoodsBygid(int gid) {
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from goods WHERE g_id=?";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, gid);
			rs = ps.executeQuery();
			while (rs.next()) {
				goods = new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4), rs.getDouble(5), rs.getDouble(6),
						rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getString(10), rs.getInt(11), rs.getInt(12));
				
			}
			return goods;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, ps, con);
		}
		return null;
		
		
		
		
		
		
		
		
		
		
	}
	@Override
	public List<Goods> goodsFindByTypeName(String name) {

		Connection con = JDBCUtil.getConnection();
		String sql = "select* from goods WHERE goodsname like ? AND g_del=1 ORDER BY PUTAWAY_TIME LIMIT 3";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods goods = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%" + name + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				goods = new Goods(rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getDouble(4), rs.getDouble(5), rs.getDouble(6),
						rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getString(10), rs.getInt(11), rs.getInt(12));
				list.add(goods);
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
	public Integer selectGoodsAmountBygid(int gid) {
		String sql="SELECT amount FROM goods where g_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = JDBCUtil.getConnection();
		int amount=0;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, gid);
			 rs=ps.executeQuery();
			 while(rs.next()){
				 amount=rs.getInt(1); 
			 }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return amount;
	}

	@Override
	 public boolean UpdateGoodsAmountByGid(int gid ,int count){
		GoodsDaoImpl g = new GoodsDaoImpl();
		int amount=g.selectGoodsAmountBygid(gid);
		String sql="UPDATE  goods set amount =? WHERE g_id=?;";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = JDBCUtil.getConnection();
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1,amount-count);
			ps.setInt(2, gid);
			int s=ps.executeUpdate();
			if(s>0){
				return true;
				
			}
			else{
				return false;
			}
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	
	}

	@Override
	public List<Goods> FuzzySelectGoods(String goodsname) {
		String sql="select * from goods where goodsname like ?";
		Connection con = JDBCUtil.getConnection();
		List<Goods> list=new ArrayList<Goods>();
		Goods good=new Goods();
		try {
		PreparedStatement ptmt=	con.prepareStatement(sql);
		goodsname="%"+goodsname+"%";
		ptmt.setString(1, goodsname);
		ResultSet rs=ptmt.executeQuery();
		while(rs.next()){
			good=new Goods(rs.getInt("g_id"), rs.getString("goodsname"), rs.getInt("gt_id"), rs.getDouble("purchasing_price"),rs.getDouble("original_price"), rs.getDouble("goodsprice"), rs.getString("good_imgurl"), rs.getString("putaway_time"),rs.getInt("goods_state"), rs.getString("goodsinfo"), rs.getInt("amount"), rs.getInt("g_del"));
			list.add(good);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@Override
	public PageList<Goods> PageFuzzySelectGoods(Goods good, int currentPage, int pageSize) {

		PageList<Goods> page = null;// �����ٷ��ؽ����ʱ�����ʵ����
		
		List<Object> paramList = new ArrayList<Object>();
		
		// ��ȡ����----������д�������Ĳ���
		String goodsname=good.getGoodsname();
		
		
		//��������sql��䣺�����ѯ����  
		StringBuffer sql=new StringBuffer("select * from goods where 1=1");
		//����ͳ������
		StringBuffer countSql=new StringBuffer("select count(g_id)  as totalRecord from goods where 1=1");
		//������Ʒ����ѯ
		if(goodsname!=null&&!"".equals(goodsname)){//��ʾ������������Ϊ��
			sql.append(" and goodsname like ?");//����ѯ�����в�����ƴ��
			countSql.append(" and goodsname like ?");//��ͳ�������в�����ƴ��
			paramList.add("%"+goodsname+"%");//ʵ�ʲ���
		}
		sql.append(" and g_del=1  order By g_id DESC");
		System.out.println(sql);
		System.out.println(countSql);
		// ��ѯ����ʼ����
		int fromIndex = pageSize * (currentPage - 1);

		// ʹ��limit�ؼ���ʵ�ַ�ҳ
		sql.append(" limit " + fromIndex + "," + pageSize);
		
		// ����һ�����ϴ�����в�ѯ�����Ķ���
		List<Goods> goodsList = new ArrayList<Goods>();
		
		// ʵ�������ݿ��ѯ�Ķ���
				JDBCUtil jdbcUtil = new JDBCUtil();
				
				try {
					//��ȡ�ܵļ�¼
					 List<Map<String, Object>> countResult=jdbcUtil.findResults(countSql.toString(), paramList);
					 int totalRecord=Integer.parseInt(countResult.get(0).get("totalRecord").toString());
					 System.out.println(totalRecord);
					//��ȡ��ѯ�Ķ����Ķ���ļ���
					 List<Map<String,Object>> goodsResult=jdbcUtil.findResults(sql.toString(), paramList);
					 //System.out.println(goodsResult);
					if (goodsResult != null) {
						for (Map<String, Object> map : goodsResult) {// ��Map�б��������ת����Student����
							Goods goods =new Goods();
							goods.setG_id(Integer.parseInt(map.get("g_id").toString()));
							goods.setGoodsname(map.get("goodsname").toString());
							goods.setGt_id(Integer.parseInt(map.get("gt_id").toString()));
							goods.setPurchasing_price(Double.parseDouble(map.get("purchasing_price").toString()));
							goods.setOriginal_price(Double.parseDouble(map.get("original_price").toString()));
							goods.setGoodsprice(Double.parseDouble(map.get("goodsprice").toString()));
							goods.setGood_imgurl(map.get("good_imgurl").toString());
							goods.setPutaway_time((map.get("putaway_time").toString()));
							goods.setGoods_state(Integer.parseInt(map.get("goods_state").toString()));
							goods.setGoodsinfo(map.get("goodsinfo").toString());
							goods.setAmount(Integer.parseInt(map.get("amount").toString()));
							goods.setG_del(Integer.parseInt(map.get("g_del").toString()));
							goodsList.add(goods);
						}
					}
					//��ȡ�ܵ�ҳ��
					 int totalPage=totalRecord/pageSize;
					 if(totalRecord%pageSize!=0){
						 totalPage+=1;//��ҳ����1
					 }
					//����Page�������װ
					 page=new PageList<Goods>(pageSize, currentPage, totalRecord, totalPage, goodsList);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		return  page;
	}

	public boolean addall(Map<Integer,List<String>> map){
		String sql="insert into Goods (goodsname,gt_id,purchasing_price,original_price,goodsprice,good_imgurl,goodsinfo,amount) values(?,?,?,?,?,?,?,?) ";
		int count=0;
		Connection con = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(sql);
			for (Map.Entry<Integer, List<String>> list1 : map.entrySet()) {
				String aa = list1.getValue().toString();
				String s = aa.substring(1, aa.length() - 1);
				String[] ss = s.split(",");
				System.out.println(ss);
			System.out.println(aa);
			System.out.println(s);
			ps.setString(1, ss[0]);
			ps.setInt(2,Integer.parseInt(ss[1].trim()));
			ps.setDouble(3,Double.parseDouble(ss[2]));
			ps.setDouble(4,Double.parseDouble(ss[3]));
			ps.setDouble(5,Double.parseDouble(ss[4]));
			ps.setString(6,ss[5]);
			ps.setString(7,ss[6]);
			ps.setInt(8,Integer.parseInt(ss[7].trim()));
			ps.addBatch();
			count++;
			}
			int[] i = ps.executeBatch(); // ִ����������
			con.commit(); // �ύ
			System.out.println("All down : " + count);
			if (i.length > 0) {
				return true;
			} 
		}
			catch (SQLException e) {
			// TODO Auto-generated catch block
			try {  
                con.rollback(); //��������ع�  
                System.out.println("��������ʧ��");
            } catch (SQLException ex) {   
            }
		}
		return false;
	}
	
	
	
	
	
	
	
	public static void main(String[] args) {
		GoodsDaoImpl g = new GoodsDaoImpl();
//		List<Goods> list = g.goodsFindByGtid(11);
//
//		for (Goods goods : list) {
//			System.out.println(goods);
//
//		}
		
//		Goods goods=g.getgoodsBygid(1);
//		System.out.println(goods);
//		int amount=g.selectGoodsAmountBygid(4);
//		System.out.println(amount);
//		boolean s=g.UpdateGoodsAmountByGid(4 ,1);
//		amount=g.selectGoodsAmountBygid(4);
//		System.out.println(amount);
//		List<Goods> list=g.FuzzySelectGoods("iphone");
//		System.out.println(list);
		
		Goods goods =new Goods();
		goods.setGoodsname("iphone");
		PageList<Goods>list=g.PageFuzzySelectGoods(goods, 1,10);
				System.out.println(list);
	}
}
