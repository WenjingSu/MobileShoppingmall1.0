package com.apple.beans.dto;

public class G_Order_User_Address {
	private Integer order_id;//1.唯一标识
	private String orderserial;//2.订单序列号
	private Integer userid;//6.用户id
	private String username;
	private Integer order_goods_num;//3.订单中商品种类数量
	private double order_total_price;//4.订单总价
	private String ordertime;//5.订单时间
	private String consignee_name;
	private String consignee_tel;
	private String address;
	private Integer orderstate;//8.订单状态（1.表示未支付2.表示已支付（待发货）3.已发货（待收货）4.交易完成（收货））	
	private Integer order_del;//9.逻辑删除标识(1表示显示 ，0表示不显示)
	
	
	
	
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public G_Order_User_Address(Integer order_id, String orderserial,
			Integer userid, String username, Integer order_goods_num,
			double order_total_price, String ordertime, String consignee_name,
			String consignee_tel, String address, Integer orderstate,
			Integer order_del) {
		super();
		this.order_id = order_id;
		this.orderserial = orderserial;
		this.userid = userid;
		this.username = username;
		this.order_goods_num = order_goods_num;
		this.order_total_price = order_total_price;
		this.ordertime = ordertime;
		this.consignee_name = consignee_name;
		this.consignee_tel = consignee_tel;
		this.address = address;
		this.orderstate = orderstate;
		this.order_del = order_del;
	}

	public G_Order_User_Address() {
		super();
	}
	
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
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
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

	@Override
	public String toString() {
		return "G_Order_User_Address [order_id=" + order_id + ", orderserial="
				+ orderserial + ", userid=" + userid + ", username=" + username
				+ ", order_goods_num=" + order_goods_num
				+ ", order_total_price=" + order_total_price + ", ordertime="
				+ ordertime + ", consignee_name=" + consignee_name
				+ ", consignee_tel=" + consignee_tel + ", address=" + address
				+ ", orderstate=" + orderstate + ", order_del=" + order_del
				+ "]";
	}
		
	
	
	
}
