package com.apple.dao;

import java.util.List;

import com.apple.beans.GoodsType;

public interface GoodsTypeDao {

	public List<GoodsType> goodstypeFindAll();

	public GoodsType goodstypeFindByGtid(Integer gtid);

	public boolean goodstypeDel(Integer gtid);

	public boolean goodstypeAdd(GoodsType goodstype);

	public boolean goodstypeAddChildren(GoodsType goodstype);

	public boolean goodstypeUpdate(GoodsType gt);

	public List<GoodsType> goodstypefindByFather(Integer gtid);

	public List<GoodsType> goodstypeFindAllLimit();

	public List<GoodsType> goodstypefindByFatherLimit(Integer gtid);

}
