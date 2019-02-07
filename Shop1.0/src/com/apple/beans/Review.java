package com.apple.beans;

import java.util.Date;

//商品评论表
public class Review {
	private Integer id;//1.唯一标识
	private Integer goods_id;//2.商品id
	private String goodsname;//商品名称
	private Integer user_id;//3.用户id
	private Date review_time;//4.评论时间
	private String content;//5.评论内容
	private Integer state;//6.评论等级（好 1  中 2  差 3）
	private Integer del;//7.逻辑删除标识(1表示显示 ，0表示不显示)
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(Integer id, Integer goods_id, String goodsname,Integer user_id,
			Date review_time, String content, Integer state, Integer del) {
		super();
		this.id = id;
		this.goods_id = goods_id;
		this.goodsname = goodsname;
		this.user_id = user_id;
		this.review_time = review_time;
		this.content = content;
		this.state = state;
		this.del = del;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Date getReview_time() {
		return review_time;
	}
	public void setReview_time(Date review_time) {
		this.review_time = review_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getDel() {
		return del;
	}
	public void setDel(Integer del) {
		this.del = del;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	@Override
	public String toString() {
		return "Review [id=" + id + ", goods_id=" + goods_id + ", goodsname="
				+ goodsname + ", user_id=" + user_id + ", review_time="
				+ review_time + ", content=" + content + ", state=" + state
				+ ", del=" + del + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((del == null) ? 0 : del.hashCode());
		result = prime * result
				+ ((goods_id == null) ? 0 : goods_id.hashCode());
		result = prime * result
				+ ((goodsname == null) ? 0 : goodsname.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((review_time == null) ? 0 : review_time.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
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
		Review other = (Review) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (del == null) {
			if (other.del != null)
				return false;
		} else if (!del.equals(other.del))
			return false;
		if (goods_id == null) {
			if (other.goods_id != null)
				return false;
		} else if (!goods_id.equals(other.goods_id))
			return false;
		if (goodsname == null) {
			if (other.goodsname != null)
				return false;
		} else if (!goodsname.equals(other.goodsname))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (review_time == null) {
			if (other.review_time != null)
				return false;
		} else if (!review_time.equals(other.review_time))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		return true;
	}
}
