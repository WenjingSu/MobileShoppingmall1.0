package com.apple.dao;

import java.util.List;

import com.apple.beans.G_order;
import com.apple.beans.Order_goods_info;
import com.apple.beans.dto.G_Order_User_Address;
import com.apple.beans.dto.OrderDetail;
import com.apple.beans.dto.Order_goods_goodsimg;
import com.apple.beans.dto.Orderlist;

public interface OrderDao {

	/**
	 * ��ѯ���ж���
	 * 
	 * @return
	 */
	public List<G_Order_User_Address> order_formsFindAll();

	/**
	 * ��ѯĳ�û������ж��������û���
	 * 
	 * @param username
	 * @return List<G_Order_User_Address>
	 */
	public List<G_Order_User_Address> order_formFindByUsername(String username);

	/**
	 * ���ݶ����Ų�ѯ��������
	 * 
	 * @param orderserial
	 * @return
	 */
	public G_Order_User_Address order_formFindByOid(Integer orderserial);

	/**
	 * �������ڲ�ѯ����
	 * 
	 * @param otime
	 * @return
	 */
	public List<G_Order_User_Address> order_formsFindByDate(String otime);

	/**
	 * �޸Ķ���״̬
	 * 
	 * @param oid
	 * @return
	 */
	public boolean order_formUpdateStaByOId(Integer orderstate, Integer oid);
	
	
	/**
	 * ���ݶ����Ų�ѯ��������
	 * @param oid
	 * @return List<Order_goods_info> 
	 */
	public List<Order_goods_info > order_formfindOid(Integer oid);
	
/**
 * ���ݶ����Ų�ѯ����״̬�Ķ���
 * @param oid
 * @param orderstate
 * @return List<Order_goods_goodsimg>
 */
	
	public  List<Order_goods_goodsimg> SelectCartStateByState(int uid );
	
	
	/**
	 * ���ݶ���״̬��ѯ���ж���
	 * @param orderstate
	 * @return G_order
	 */
	public List<Orderlist>selectOrderAllByState(int orderstate ,int uid);
	
	public List<Order_goods_goodsimg> UserOrderDetailByoid(Integer oid);
}
