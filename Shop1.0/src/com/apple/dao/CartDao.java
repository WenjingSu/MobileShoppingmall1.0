package com.apple.dao;

import java.util.List;

import com.apple.beans.Cart;
import com.apple.beans.Goods;
import com.apple.beans.dto.Cartdetail;
import com.apple.beans.dto.Order_goods_goodsimg;

public interface CartDao {
	
	public boolean addshopIntoCart(int uid,int gid,int goodscount);
	public boolean UpdateGoodIntoCart(Integer uid, Integer gid, Integer amount);
	public boolean cartHasCont(Integer uid, Integer gid);
	public Cartdetail cartFindByCid(Integer cid);
	public List<Cartdetail> CartInfoByUid(int uid);
	boolean UpdateAmountByCid(int c_id, int amount);
	public boolean deleteCartByCid(int cid);
	
}
