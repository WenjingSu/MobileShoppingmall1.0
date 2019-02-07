package test;

import java.io.Serializable;
import java.util.HashMap;

import java.util.Map;
import java.util.Set;

import com.apple.beans.Goods;

import com.apple.dao.GoodsDao;
import com.apple.dao.impl.GoodsDaoImpl;

public class ShopCarttest implements Serializable {
	private Map<Goods, Integer> shops;
	private double totalprice;

	public ShopCarttest() {
		this.shops = new HashMap<Goods, Integer>();
		totalprice = 0;
	}

	public Map<Goods, Integer> getShops() {
		return shops;
	}

	public void setShops(Map<Goods, Integer> shops) {
		this.shops = shops;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public ShopCarttest(Map<Goods, Integer> shops, double totalprice) {
		super();
		this.shops = shops;
		this.totalprice = totalprice;
	}
	

	@Override
	public String toString() {
		return "ShopCart [shops=" + shops + ", totalprice=" + totalprice + "]";
	}

	/**
	 * 向购物车添加商品
	 * 
	 * @param cartdetail
	 * @param num
	 */
	public void addShopIntoCart(Goods Goods, Integer num) {
		if (this.shops.containsKey(Goods)) {
			this.shops.put(Goods, this.shops.get(shops) + num);
		} else {
			this.shops.put(Goods, num);
		}
		CaltotalPrice();
	}

	/**
	 * 删除购物车商品
	 * 
	 * @param cartdetail
	 */
	public void delshopIntoCart(Goods goods) {
		this.shops.remove(goods);
		CaltotalPrice();
	}

	public double CaltotalPrice() {
		this.totalprice = 0.0d;
		Set<Goods> set = this.shops.keySet();
		for (Goods Goods : set) {
			this.totalprice += this.shops.get(Goods) * Goods.getGoodsprice();

		}
		return this.totalprice;
	}

	public static void main(String[] args) {
		GoodsDao g=new GoodsDaoImpl();
//		List<Goods>list= g.goodsFindAll();
//		for(Goods goods:list){
//			System.out.println(goods.toString());
//		}
		Goods good=g.goodsFindByGid(1);
//		System.out.println(good.toString());
//		ShopCarttest shopCart=new ShopCarttest();
//		shopCart.addShopIntoCart(g.goodsFindByGid(1), 2);
//		shopCart.addShopIntoCart(g.goodsFindByGid(2), 1);
//		System.out.println(shopCart.getShops().values());
		CartDaotest cartDaotest=new CartDaotest();
		cartDaotest.addshopIntoCart(4001,2,2);
	}

	
}
