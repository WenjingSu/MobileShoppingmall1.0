package com.apple.dao;

import java.util.List;

import com.apple.beans.Goods;
import com.apple.beans.dto.GoodsDetail;
import com.apple.page.PageList;

public interface GoodsDao {
	/**
	 * 添加商品
	 * @param goods
	 * @return
	 */
	public boolean goodsAdd(Goods goods);
	
	/**
	 * 修改商品 信息    (价格) （下架与上架）
	 * @param gid
	 * @param goods
	 * @return
	 */
	public boolean goodsUpdateById(Integer gid,Goods goods);
//	public boolean goodsUpdatePriById();//修改商品 信息    (价格)
	
	/**
	 * 查询所有商品
	 * @return
	 */
	public List<Goods> goodsFindAll();
	
	
	
	
	/**
	 * 查询单个商品
	 * @param id
	 * @return
	 */
	public Goods goodsFindByGid(Integer id);
//	public boolean goodsDel();//逻辑删除商品
	
	/**
	 * 查找下架的商品
	 * @return
	 */
	public List<Goods> goodsfindbygoodsstate();
	
	
	/**
	 * 商品列表
	 * @param fid
	 * @return
	 */
	public List<GoodsDetail> goodsFindByftid(Integer fid);
	
	/**
	 * 商品详情
	 * @param gtid
	 * @return
	 */
	public List<Goods> goodsFindByGtid(int gtid);
	
	/**
	 * 得到单个商品
	 * @param gid
	 * @return
	 */
	public Goods getgoodsBygid(int gid);
	

	public List<Goods> goodsFindByTypeName(String name);
	
	
	/**
	 * 
	 *查库存
	 * @param gid
	 * @return
	 */
	
      public Integer selectGoodsAmountBygid(int gid);
      
      /**
       * 修改库存
       */
      public boolean UpdateGoodsAmountByGid(int gid,int count);
      
      /**
       * 模糊查询
       */
      public List<Goods> FuzzySelectGoods(String goodsname);
      
     public PageList<Goods> PageFuzzySelectGoods(Goods good,int currentPage, int pageSize);
}
