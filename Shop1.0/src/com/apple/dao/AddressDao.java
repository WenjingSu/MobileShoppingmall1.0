package com.apple.dao;

import java.util.List;

import com.apple.beans.Address;
import com.apple.beans.G_order;
import com.apple.beans.Order_goods_info;

public interface AddressDao {
	/**
	 * ����µ�ַ
	 */
	public boolean addressAdd(Address address);
	/**
	 * ɾ����ַ
	 */
	public boolean addressDel(Integer add_id);
	/**
	 * �޸ĵ�ַ
	 */
	public boolean addressUpdate(Integer add_id,Address address);
	/**
	 * �����û���ѯȫ����ַ
	 */
	public List<Address> addressFindAll(Integer u_id);
	/**
	 * ����¶���
	 * @param g_order
	 * @return
	 */
	public boolean g_orderAdd(G_order g_order);
	/**
	 * ����¶�����Ʒ
	 * @param order_goods_info
	 * @return
	 */
	public boolean order_goods_infoAdd(Order_goods_info order_goods_info);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
