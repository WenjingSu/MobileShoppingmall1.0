package com.apple.beans;
//商品介绍图片表
public class Goods_images {
	private Integer gimg_id;//1.唯一标识
	private Integer g_id;//2.商品编号
	private String imageurl;//3.图片路径
	public Goods_images() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods_images(Integer gimg_id, Integer g_id, String imageurl) {
		super();
		this.gimg_id = gimg_id;
		this.g_id = g_id;
		this.imageurl = imageurl;
	}
	public Integer getGimg_id() {
		return gimg_id;
	}
	public void setGimg_id(Integer gimg_id) {
		this.gimg_id = gimg_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	@Override
	public String toString() {
		return "Goods_images [gimg_id=" + gimg_id + ", g_id=" + g_id
				+ ", imageurl=" + imageurl + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((g_id == null) ? 0 : g_id.hashCode());
		result = prime * result + ((gimg_id == null) ? 0 : gimg_id.hashCode());
		result = prime * result
				+ ((imageurl == null) ? 0 : imageurl.hashCode());
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
		Goods_images other = (Goods_images) obj;
		if (g_id == null) {
			if (other.g_id != null)
				return false;
		} else if (!g_id.equals(other.g_id))
			return false;
		if (gimg_id == null) {
			if (other.gimg_id != null)
				return false;
		} else if (!gimg_id.equals(other.gimg_id))
			return false;
		if (imageurl == null) {
			if (other.imageurl != null)
				return false;
		} else if (!imageurl.equals(other.imageurl))
			return false;
		return true;
	}
}
