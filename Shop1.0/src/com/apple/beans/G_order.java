package com.apple.beans;
//订单表
public class G_order {
	private Integer order_id;//1.唯一标识
	private String orderserial;//2.订单序列号
	private Integer order_goods_num;//3.订单中商品种类数量
	private double order_total_price;//4.订单总价
	private String ordertime;//5.订单时间
	private Integer userid;//6.用户id
	private Integer add_id;//7.地址表唯一标识
	private Integer orderstate;//8.订单状态（1.表示未支付2.表示已支付（待发货）3.已发货（待收货）4.交易完成（收货））	
	private Integer order_del;//9.逻辑删除标识(1表示显示 ，0表示不显示)
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
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getAdd_id() {
		return add_id;
	}
	public void setAdd_id(Integer add_id) {
		this.add_id = add_id;
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
	public G_order(Integer order_id, String orderserial,
			Integer order_goods_num, double order_total_price,
			String ordertime, Integer userid, Integer add_id,
			Integer orderstate, Integer order_del) {
		super();
		this.order_id = order_id;
		this.orderserial = orderserial;
		this.order_goods_num = order_goods_num;
		this.order_total_price = order_total_price;
		this.ordertime = ordertime;
		this.userid = userid;
		this.add_id = add_id;
		this.orderstate = orderstate;
		this.order_del = order_del;
	}
	public G_order() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "G_order [order_id=" + order_id + ", orderserial=" + orderserial
				+ ", order_goods_num=" + order_goods_num
				+ ", order_total_price=" + order_total_price + ", ordertime="
				+ ordertime + ", userid=" + userid + ", add_id=" + add_id
				+ ", orderstate=" + orderstate + ", order_del=" + order_del
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((add_id == null) ? 0 : add_id.hashCode());
		result = prime * result
				+ ((order_del == null) ? 0 : order_del.hashCode());
		result = prime * result
				+ ((order_goods_num == null) ? 0 : order_goods_num.hashCode());
		result = prime * result
				+ ((order_id == null) ? 0 : order_id.hashCode());
		long temp;
		temp = Double.doubleToLongBits(order_total_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result
				+ ((orderserial == null) ? 0 : orderserial.hashCode());
		result = prime * result
				+ ((orderstate == null) ? 0 : orderstate.hashCode());
		result = prime * result
				+ ((ordertime == null) ? 0 : ordertime.hashCode());
		result = prime * result + ((userid == null) ? 0 : userid.hashCode());
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
		G_order other = (G_order) obj;
		if (add_id == null) {
			if (other.add_id != null)
				return false;
		} else if (!add_id.equals(other.add_id))
			return false;
		if (order_del == null) {
			if (other.order_del != null)
				return false;
		} else if (!order_del.equals(other.order_del))
			return false;
		if (order_goods_num == null) {
			if (other.order_goods_num != null)
				return false;
		} else if (!order_goods_num.equals(other.order_goods_num))
			return false;
		if (order_id == null) {
			if (other.order_id != null)
				return false;
		} else if (!order_id.equals(other.order_id))
			return false;
		if (Double.doubleToLongBits(order_total_price) != Double
				.doubleToLongBits(other.order_total_price))
			return false;
		if (orderserial == null) {
			if (other.orderserial != null)
				return false;
		} else if (!orderserial.equals(other.orderserial))
			return false;
		if (orderstate == null) {
			if (other.orderstate != null)
				return false;
		} else if (!orderstate.equals(other.orderstate))
			return false;
		if (ordertime == null) {
			if (other.ordertime != null)
				return false;
		} else if (!ordertime.equals(other.ordertime))
			return false;
		if (userid == null) {
			if (other.userid != null)
				return false;
		} else if (!userid.equals(other.userid))
			return false;
		return true;
	}
}
