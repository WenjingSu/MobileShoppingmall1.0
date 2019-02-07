package com.apple.beans;
//订单商品表
public class Order_goods_info {
	private Integer ord_g_info_id;//1.唯一标识
	private Integer order_id;//2.订单id
	private Integer goods_num;//3.商品数量
	private Integer g_id;//4.商品id
	private String g_name;//5.商品名称
	private double g_price;//6.购买时商品单价
	private Integer del;//7.逻辑删除标识
	public Order_goods_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order_goods_info(Integer ord_g_info_id, Integer order_id,
			Integer goods_num, Integer g_id, String g_name, double g_price,
			Integer del) {
		super();
		this.ord_g_info_id = ord_g_info_id;
		this.order_id = order_id;
		this.goods_num = goods_num;
		this.g_id = g_id;
		this.g_name = g_name;
		this.g_price = g_price;
		this.del = del;
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
	@Override
	public String toString() {
		return "Order_goods_info [ord_g_info_id=" + ord_g_info_id
				+ ", order_id=" + order_id + ", goods_num=" + goods_num
				+ ", g_id=" + g_id + ", g_name=" + g_name + ", g_price="
				+ g_price + ", del=" + del + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((del == null) ? 0 : del.hashCode());
		result = prime * result + ((g_id == null) ? 0 : g_id.hashCode());
		result = prime * result + ((g_name == null) ? 0 : g_name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(g_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result
				+ ((goods_num == null) ? 0 : goods_num.hashCode());
		result = prime * result
				+ ((ord_g_info_id == null) ? 0 : ord_g_info_id.hashCode());
		result = prime * result
				+ ((order_id == null) ? 0 : order_id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order_goods_info other = (Order_goods_info) obj;
		if (del == null) {
			if (other.del != null)
				return false;
		} else if (!del.equals(other.del))
			return false;
		if (g_id == null) {
			if (other.g_id != null)
				return false;
		} else if (!g_id.equals(other.g_id))
			return false;
		if (g_name == null) {
			if (other.g_name != null)
				return false;
		} else if (!g_name.equals(other.g_name))
			return false;
		if (Double.doubleToLongBits(g_price) != Double
				.doubleToLongBits(other.g_price))
			return false;
		if (goods_num == null) {
			if (other.goods_num != null)
				return false;
		} else if (!goods_num.equals(other.goods_num))
			return false;
		if (ord_g_info_id == null) {
			if (other.ord_g_info_id != null)
				return false;
		} else if (!ord_g_info_id.equals(other.ord_g_info_id))
			return false;
		if (order_id == null) {
			if (other.order_id != null)
				return false;
		} else if (!order_id.equals(other.order_id))
			return false;
		return true;
	}
}
