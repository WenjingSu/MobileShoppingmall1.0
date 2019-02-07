package com.apple.beans.dto;

public class OrderDetail {
	private Integer order_id;//1.Ψһ��ʶ
	private String orderserial;//2.�������к�
	private Integer u_id;
	private String username;
	private Integer order_goods_num;//3.��������Ʒ��������
	private double order_total_price;//4.�����ܼ�
	private String ordertime;//5.����ʱ��
	private String consignee_name;
	private String consignee_tel;
	private String address;
	private Integer orderstate;//8.����״̬��1.��ʾδ֧��2.��ʾ��֧������������3.�ѷ��������ջ���4.������ɣ��ջ�����	
	private Integer order_del;//9.�߼�ɾ����ʶ(1��ʾ��ʾ ��0��ʾ����ʾ)
	private Integer ord_g_info_id;//1.Ψһ��ʶ
	private Integer goods_num;//3.��Ʒ����
	private Integer g_id;//4.��Ʒid
	private String g_name;//5.��Ʒ����
	private double g_price;//6.����ʱ��Ʒ����
	private Integer del;//7.�߼�ɾ����ʶord_g_info_del
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getOrderserial() {
		return orderserial;
	}
	public void setOrderserial(String orderserial) {
		this.orderserial = orderserial;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getOrder_goods_num() {
		return order_goods_num;
	}
	public void setOrder_goods_num(Integer order_goods_num) {
		this.order_goods_num = order_goods_num;
	}
	public double getOrder_total_price() {
		return order_total_price;
	}
	public void setOrder_total_price(double order_total_price) {
		this.order_total_price = order_total_price;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public String getConsignee_name() {
		return consignee_name;
	}
	public void setConsignee_name(String consignee_name) {
		this.consignee_name = consignee_name;
	}
	public String getConsignee_tel() {
		return consignee_tel;
	}
	public void setConsignee_tel(String consignee_tel) {
		this.consignee_tel = consignee_tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(Integer orderstate) {
		this.orderstate = orderstate;
	}
	public Integer getOrder_del() {
		return order_del;
	}
	public void setOrder_del(Integer order_del) {
		this.order_del = order_del;
	}
	public Integer getOrd_g_info_id() {
		return ord_g_info_id;
	}
	public void setOrd_g_info_id(Integer ord_g_info_id) {
		this.ord_g_info_id = ord_g_info_id;
	}
	public Integer getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(Integer goods_num) {
		this.goods_num = goods_num;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public double getG_price() {
		return g_price;
	}
	public void setG_price(double g_price) {
		this.g_price = g_price;
	}
	public Integer getDel() {
		return del;
	}
	public void setDel(Integer del) {
		this.del = del;
	}
	public OrderDetail() {
		super();
	}
	public OrderDetail(Integer order_id, String orderserial, Integer u_id,
			String username, Integer order_goods_num, double order_total_price,
			String ordertime, String consignee_name, String consignee_tel,
			String address, Integer orderstate, Integer order_del,
			Integer ord_g_info_id, Integer goods_num, Integer g_id,
			String g_name, double g_price, Integer del) {
		super();
		this.order_id = order_id;
		this.orderserial = orderserial;
		this.u_id = u_id;
		this.username = username;
		this.order_goods_num = order_goods_num;
		this.order_total_price = order_total_price;
		this.ordertime = ordertime;
		this.consignee_name = consignee_name;
		this.consignee_tel = consignee_tel;
		this.address = address;
		this.orderstate = orderstate;
		this.order_del = order_del;
		this.ord_g_info_id = ord_g_info_id;
		this.goods_num = goods_num;
		this.g_id = g_id;
		this.g_name = g_name;
		this.g_price = g_price;
		this.del = del;
	}
	@Override
	public String toString() {
		return "OrderDetail [order_id=" + order_id + ", orderserial="
				+ orderserial + ", u_id=" + u_id + ", username=" + username
				+ ", order_goods_num=" + order_goods_num
				+ ", order_total_price=" + order_total_price + ", ordertime="
				+ ordertime + ", consignee_name=" + consignee_name
				+ ", consignee_tel=" + consignee_tel + ", address=" + address
				+ ", orderstate=" + orderstate + ", order_del=" + order_del
				+ ", ord_g_info_id=" + ord_g_info_id + ", goods_num="
				+ goods_num + ", g_id=" + g_id + ", g_name=" + g_name
				+ ", g_price=" + g_price + ", del=" + del + "]";
	}
	
	
	
	
}
