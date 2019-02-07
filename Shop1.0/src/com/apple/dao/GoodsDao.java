package com.apple.dao;

import java.util.List;

import com.apple.beans.Goods;
import com.apple.beans.dto.GoodsDetail;
import com.apple.page.PageList;

public interface GoodsDao {
	/**
	 * �����Ʒ
	 * @param goods
	 * @return
	 */
	public boolean goodsAdd(Goods goods);
	
	/**
	 * �޸���Ʒ ��Ϣ    (�۸�) ���¼����ϼܣ�
	 * @param gid
	 * @param goods
	 * @return
	 */
	public boolean goodsUpdateById(Integer gid,Goods goods);
//	public boolean goodsUpdatePriById();//�޸���Ʒ ��Ϣ    (�۸�)
	
	/**
	 * ��ѯ������Ʒ
	 * @return
	 */
	public List<Goods> goodsFindAll();
	
	
	
	
	/**
	 * ��ѯ������Ʒ
	 * @param id
	 * @return
	 */
	public Goods goodsFindByGid(Integer id);
//	public boolean goodsDel();//�߼�ɾ����Ʒ
	
	/**
	 * �����¼ܵ���Ʒ
	 * @return
	 */
	public List<Goods> goodsfindbygoodsstate();
	
	
	/**
	 * ��Ʒ�б�
	 * @param fid
	 * @return
	 */
	public List<GoodsDetail> goodsFindByftid(Integer fid);
	
	/**
	 * ��Ʒ����
	 * @param gtid
	 * @return
	 */
	public List<Goods> goodsFindByGtid(int gtid);
	
	/**
	 * �õ�������Ʒ
	 * @param gid
	 * @return
	 */
	public Goods getgoodsBygid(int gid);
	

	public List<Goods> goodsFindByTypeName(String name);
	
	
	/**
	 * 
	 *����
	 * @param gid
	 * @return
	 */
	
      public Integer selectGoodsAmountBygid(int gid);
      
      /**
       * �޸Ŀ��
       */
      public boolean UpdateGoodsAmountByGid(int gid,int count);
      
      /**
       * ģ����ѯ
       */
      public List<Goods> FuzzySelectGoods(String goodsname);
      
     public PageList<Goods> PageFuzzySelectGoods(Goods good,int currentPage, int pageSize);
}
