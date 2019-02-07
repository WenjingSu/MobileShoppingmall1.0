package com.apple.beans.dto;

public class GoodsDetail {
	private Integer g_id;//1.Ψһ��ʶ
	private String goodsname;//2.��Ʒ����
	private Integer gt_id;//3.��Ʒ���
	private double purchasing_price;//4.����
	private double original_price;//5.ԭ��
	private double goodsprice;//6.�ۼ�
	private String good_imgurl;//7.��ƷͼƬ·��
	private String putaway_time;//8.��Ʒ�ϼ�ʱ��
	private Integer goods_state;//9.��Ʒ״̬��1.�ϼܣ�2.�¼ܣ�
	private String goodsinfo;//10.��Ʒ�ļ��
	private Integer amount;//11.���
	private Integer g_del;//12.�߼�ɾ����ʶ(1��ʾ��ʾ ��0��ʾ����ʾ)
	private Integer ft_id;
	private String gt_typename;  //��������
	private String gt_mark;//������������
	private Integer gt_del;//�����߼�ɾ��

	
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
