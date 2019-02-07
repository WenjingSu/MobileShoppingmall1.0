package com.apple.beans.dto;

public class Cartdetail {
	private Integer u_id;
	private String username;
	private Integer c_id;
	private Integer g_id;//1.唯一标识

	private String goodsname;//2.商品名称
	private double goodsprice;//6.售价
	private Integer goods_count;//4.数量
	private String good_imgurl;//7.商品图片路径
	private Integer amount;//11.库存
	public Cartdetail() {
		super();
	}
	
	

	public Integer getC_id() {
		return c_id;
	}



	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}



	public Integer getAmount() {
		return amount;
	}



	public void setAmount(Integer amount) {
		this.amount = amount;
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
	public double getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(double goodsprice) {
		this.goodsprice = goodsprice;
	}
	public Integer getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(Integer goods_count) {
		this.goods_count = goods_count;
	}
	public String getGood_imgurl() {
		return good_imgurl;
	}
	public void setGood_imgurl(String good_imgurl) {
		this.good_imgurl = good_imgurl;
	}



	public Cartdetail(Integer u_id, String username, Integer c_id,
			Integer g_id, String goodsname, double goodsprice,
			Integer goods_count, String good_imgurl, Integer amount) {
		super();
		this.u_id = u_id;
		this.username = username;
		this.c_id = c_id;
		this.g_id = g_id;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.goods_count = goods_count;
		this.good_imgurl = good_imgurl;
		this.amount = amount;
	}



	@Override
	public String toString() {
		return "Cartdetail [u_id=" + u_id + ", username=" + username
				+ ", c_id=" + c_id + ", g_id=" + g_id + ", goodsname="
				+ goodsname + ", goodsprice=" + goodsprice + ", goods_count="
				+ goods_count + ", good_imgurl=" + good_imgurl + ", amount="
				+ amount + "]";
	}



	



	
	
	
	
	
}
