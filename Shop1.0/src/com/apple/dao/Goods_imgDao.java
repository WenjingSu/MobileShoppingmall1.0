package com.apple.dao;

import com.apple.beans.Goods_images;

public interface Goods_imgDao {
	public boolean addImgById(Goods_images goods_images);
	public Goods_images findById(Integer id);
}
