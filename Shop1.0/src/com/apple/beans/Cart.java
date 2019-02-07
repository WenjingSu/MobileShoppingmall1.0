package com.apple.beans;
//购物车表
public class Cart {
	private Integer c_id;//1.唯一标识
	private Integer u_id;//2.用户id
	private Integer g_id;//3.购物车中的商品id
	private Integer goods_count;//4.数量
	public Cart(Integer c_id, Integer u_id, Integer g_id, Integer goods_count) {
		super();
		this.c_id = c_id;
		this.u_id = u_id;
		this.g_id = g_id;
		this.goods_count = goods_count;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(Integer goods_count) {
		this.goods_count = goods_count;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((c_id == null) ? 0 : c_id.hashCode());
		result = prime * result + ((g_id == null) ? 0 : g_id.hashCode());
		result = prime * result
				+ ((goods_count == null) ? 0 : goods_count.hashCode());
		result = prime * result + ((u_id == null) ? 0 : u_id.hashCode());
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
		Cart other = (Cart) obj;
		if (c_id == null) {
			if (other.c_id != null)
				return false;
		} else if (!c_id.equals(other.c_id))
			return false;
		if (g_id == null) {
			if (other.g_id != null)
				return false;
		} else if (!g_id.equals(other.g_id))
			return false;
		if (goods_count == null) {
			if (other.goods_count != null)
				return false;
		} else if (!goods_count.equals(other.goods_count))
			return false;
		if (u_id == null) {
			if (other.u_id != null)
				return false;
		} else if (!u_id.equals(other.u_id))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Cart [c_id=" + c_id + ", u_id=" + u_id + ", g_id=" + g_id
				+ ", goods_count=" + goods_count + "]";
	}
}
