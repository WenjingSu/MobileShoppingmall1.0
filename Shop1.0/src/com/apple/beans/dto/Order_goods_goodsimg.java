package com.apple.beans.dto;

public class Order_goods_goodsimg {
	private Integer ord_g_info_id;//1.Ψһ��ʶ
	private Integer order_id;//2.����id
	private Integer goods_num;//3.��Ʒ����
	private Integer g_id;//4.��Ʒid
	private String g_name;//5.��Ʒ����
	private double g_price;//6.����ʱ��Ʒ����
	private Integer del;//7.�߼�ɾ����ʶ
	private String good_imgurl;//7.��ƷͼƬ·��
	
	public Order_goods_goodsimg() {
		super();
	}
	public Order_goods_goodsimg(Integer ord_g_info_id, Integer order_id,
			Integer goods_num, Integer g_id, String g_name, double g_price,
			Integer del, String good_imgurl) {
		super();
		this.ord_g_info_id = ord_g_info_id;
		this.order_id = order_id;
		this.goods_num = goods_num;
		this.g_id = g_id;
		this.g_name = g_name;
		this.g_price = g_price;
		this.del = del;
		this.good_imgurl = good_imgurl;
		
	}
	public Integer getOrd_g_info_id() {
		return ord_g_info_id;
	}
	public void setOrd_g_info_id(Integer ord_g_info_id) {
		this.ord_g_info_id = ord_g_info_id;
	}
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
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
	public String getGood_imgurl() {
		return good_imgurl;
	}
	public void setGood_imgurl(String good_imgurl) {
		this.good_imgurl = good_imgurl;
	}

	@Override
	public String toString() {
		return "Order_goods_goodsimg [ord_g_info_id=" + ord_g_info_id
				+ ", order_id=" + order_id + ", goods_num=" + goods_num
				+ ", g_id=" + g_id + ", g_name=" + g_name + ", g_price="
				+ g_price + ", del=" + del + ", good_imgurl=" + good_imgurl
				+  "]";
	}
	
}
