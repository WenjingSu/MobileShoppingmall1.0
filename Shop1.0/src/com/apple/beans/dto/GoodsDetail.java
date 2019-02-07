package com.apple.beans.dto;

public class GoodsDetail {
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
	private Integer ft_id;
	private String gt_typename;  //类型名字
	private String gt_mark;//父级类型描述
	private Integer gt_del;//父级逻辑删除

	
	public GoodsDetail(Integer g_id, String goodsname, Integer gt_id,
			double purchasing_price, double original_price, double goodsprice,
			String good_imgurl, String putaway_time, Integer goods_state,
			String goodsinfo, Integer amount, Integer g_del, Integer ft_id,
			String gt_typename, String gt_mark, Integer gt_del) {
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
		this.ft_id = ft_id;
		this.gt_typename = gt_typename;
		this.gt_mark = gt_mark;
		this.gt_del = gt_del;
	}
	public GoodsDetail() {
		super();
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
	public String getGt_mark() {
		return gt_mark;
	}
	public void setGt_mark(String gt_mark) {
		this.gt_mark = gt_mark;
	}
	public Integer getGt_del() {
		return gt_del;
	}
	public void setGt_del(Integer gt_del) {
		this.gt_del = gt_del;
	}
	public String getGt_typename() {
		return gt_typename;
	}
	public void setGt_typename(String gt_typename) {
		this.gt_typename = gt_typename;
	}
	@Override
	public String toString() {
		return "GoodsDetail [g_id=" + g_id + ", goodsname=" + goodsname
				+ ", gt_id=" + gt_id + ", purchasing_price=" + purchasing_price
				+ ", original_price=" + original_price + ", goodsprice="
				+ goodsprice + ", good_imgurl=" + good_imgurl
				+ ", putaway_time=" + putaway_time + ", goods_state="
				+ goods_state + ", goodsinfo=" + goodsinfo + ", amount="
				+ amount + ", g_del=" + g_del + ", gt_mark=" + gt_mark
				+ ", gt_del=" + gt_del + ", gt_typename=" + gt_typename + "]";
	}
	
	
	
	
	
}
