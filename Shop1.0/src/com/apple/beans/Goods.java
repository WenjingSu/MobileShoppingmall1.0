package com.apple.beans;
//商品表
public class Goods {
	private Integer g_id;//1.唯一标识
	private String goodsname;//2.商品名称
	private Integer gt_id;//3.商品类别
	private double purchasing_price;//4.进价
	private double original_price;//5.原价
	private double goodsprice;//6.售价
	private String good_imgurl;//7.商品图片路径
	private String putaway_time;//8.商品上架时间
	private Integer goods_state;//9.商品状态（1.上架，2.下架）
	private String goodsinfo;//10.商品的简介
	private Integer amount;//11.库存
	private Integer g_del;//12.逻辑删除标识(1表示显示 ，0表示不显示)
	
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(Integer g_id, String goodsname, Integer gt_id,
			double purchasing_price, double original_price, double goodsprice,
			String good_imgurl, String putaway_time, Integer goods_state,
			String goodsinfo, Integer amount, Integer g_del) {
		super();
		this.g_id = g_id;
		this.goodsname = goodsname;
		this.gt_id = gt_id;
		this.purchasing_price = purchasing_price;
		this.original_price = original_price;
		this.goodsprice = goodsprice;
		this.good_imgurl = good_imgurl;
		this.putaway_time = putaway_time;
		this.goods_state = goods_state;
		this.goodsinfo = goodsinfo;
		this.amount = amount;
		this.g_del = g_del;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public Integer getGt_id() {
		return gt_id;
	}
	public void setGt_id(Integer gt_id) {
		this.gt_id = gt_id;
	}
	public double getPurchasing_price() {
		return purchasing_price;
	}
	public void setPurchasing_price(double purchasing_price) {
		this.purchasing_price = purchasing_price;
	}
	public double getOriginal_price() {
		return original_price;
	}
	public void setOriginal_price(double original_price) {
		this.original_price = original_price;
	}
	public double getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(double goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getGood_imgurl() {
		return good_imgurl;
	}
	public void setGood_imgurl(String good_imgurl) {
		this.good_imgurl = good_imgurl;
	}
	public String getPutaway_time() {
		return putaway_time;
	}
	public void setPutaway_time(String putaway_time) {
		this.putaway_time = putaway_time;
	}
	public Integer getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(Integer goods_state) {
		this.goods_state = goods_state;
	}
	public String getGoodsinfo() {
		return goodsinfo;
	}
	public void setGoodsinfo(String goodsinfo) {
		this.goodsinfo = goodsinfo;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getG_del() {
		return g_del;
	}
	public void setG_del(Integer g_del) {
		this.g_del = g_del;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((amount == null) ? 0 : amount.hashCode());
		result = prime * result + ((g_del == null) ? 0 : g_del.hashCode());
		result = prime * result + ((g_id == null) ? 0 : g_id.hashCode());
		result = prime * result
				+ ((good_imgurl == null) ? 0 : good_imgurl.hashCode());
		result = prime * result
				+ ((goods_state == null) ? 0 : goods_state.hashCode());
		result = prime * result
				+ ((goodsinfo == null) ? 0 : goodsinfo.hashCode());
		result = prime * result
				+ ((goodsname == null) ? 0 : goodsname.hashCode());
		long temp;
		temp = Double.doubleToLongBits(goodsprice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((gt_id == null) ? 0 : gt_id.hashCode());
		temp = Double.doubleToLongBits(original_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(purchasing_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result
				+ ((putaway_time == null) ? 0 : putaway_time.hashCode());
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
		Goods other = (Goods) obj;
		if (amount == null) {
			if (other.amount != null)
				return false;
		} else if (!amount.equals(other.amount))
			return false;
		if (g_del == null) {
			if (other.g_del != null)
				return false;
		} else if (!g_del.equals(other.g_del))
			return false;
		if (g_id == null) {
			if (other.g_id != null)
				return false;
		} else if (!g_id.equals(other.g_id))
			return false;
		if (good_imgurl == null) {
			if (other.good_imgurl != null)
				return false;
		} else if (!good_imgurl.equals(other.good_imgurl))
			return false;
		if (goods_state == null) {
			if (other.goods_state != null)
				return false;
		} else if (!goods_state.equals(other.goods_state))
			return false;
		if (goodsinfo == null) {
			if (other.goodsinfo != null)
				return false;
		} else if (!goodsinfo.equals(other.goodsinfo))
			return false;
		if (goodsname == null) {
			if (other.goodsname != null)
				return false;
		} else if (!goodsname.equals(other.goodsname))
			return false;
		if (Double.doubleToLongBits(goodsprice) != Double
				.doubleToLongBits(other.goodsprice))
			return false;
		if (gt_id == null) {
			if (other.gt_id != null)
				return false;
		} else if (!gt_id.equals(other.gt_id))
			return false;
		if (Double.doubleToLongBits(original_price) != Double
				.doubleToLongBits(other.original_price))
			return false;
		if (Double.doubleToLongBits(purchasing_price) != Double
				.doubleToLongBits(other.purchasing_price))
			return false;
		if (putaway_time == null) {
			if (other.putaway_time != null)
				return false;
		} else if (!putaway_time.equals(other.putaway_time))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Goods [g_id=" + g_id + ", goodsname=" + goodsname + ", gt_id="
				+ gt_id + ", purchasing_price=" + purchasing_price
				+ ", original_price=" + original_price + ", goodsprice="
				+ goodsprice + ", good_imgurl=" + good_imgurl
				+ ", putaway_time=" + putaway_time + ", goods_state="
				+ goods_state + ", goodsinfo=" + goodsinfo + ", amount="
				+ amount + ", g_del=" + g_del + "]";
	}
}
