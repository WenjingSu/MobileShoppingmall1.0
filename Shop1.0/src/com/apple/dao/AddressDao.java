package com.apple.dao;

import java.util.List;

import com.apple.beans.Address;
import com.apple.beans.G_order;
import com.apple.beans.Order_goods_info;

public interface AddressDao {
	/**
	 * 添加新地址
	 */
	public boolean addressAdd(Address address);
	/**
	 * 删除地址
	 */
	public boolean addressDel(Integer add_id);
	/**
	 * 修改地址
	 */
	public boolean addressUpdate(Integer add_id,Address address);
	/**
	 * 根据用户查询全部地址
	 */
	public List<Address> addressFindAll(Integer u_id);
	/**
	 * 添加新订单
	 * @param g_order
	 * @return
	 */
	public boolean g_orderAdd(G_order g_order);
	/**
	 * 添加新订单商品
	 * @param order_goods_info
	 * @return
	 */
	public boolean order_goods_infoAdd(Order_goods_info order_goods_info);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
