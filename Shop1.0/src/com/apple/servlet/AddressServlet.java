package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.Address;
import com.apple.beans.G_order;
import com.apple.beans.Goods;
import com.apple.beans.Order_goods_info;
import com.apple.beans.User;
import com.apple.beans.dto.Cartdetail;
import com.apple.dao.CartDao;
import com.apple.dao.GoodsDao;
import com.apple.dao.impl.AddressDaoImpl;
import com.apple.dao.impl.CartDaoImp;
import com.apple.dao.impl.GoodsDaoImpl;

public class AddressServlet extends BaseServlet {

	public void order(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AddressDaoImpl address = new AddressDaoImpl();
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Integer gid = Integer.parseInt(request.getParameter("gid"));
		Integer goodsnum = Integer.parseInt(request.getParameter("bynum"));
		User u = (User) request.getSession().getAttribute("user");
		int uid = u.getU_id();
		List<Address> list = address.addressFindAll(uid);
		Goods good = goods.goodsFindByGid(gid);
		request.setAttribute("list", list);
		request.setAttribute("num", goodsnum);
		request.setAttribute("good", good);
		request.getRequestDispatcher("frontmanger/order.jsp").forward(request,
				response);

	}

	public void addorder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("Consignee");
		String addressrel = request.getParameter("address");
		String zipcode = request.getParameter("Zipcode");
		String tel = request.getParameter("tel");
		String tag_name = request.getParameter("tag");
		User u = (User) request.getSession().getAttribute("user");
		int uid = u.getU_id();
		System.out.println(zipcode);
		Address address = new Address();
		address.setU_id(uid);
		address.setConsignee_name(name);
		address.setConsignee_tel(tel);
		address.setAddress(addressrel);
		address.setPostcode(zipcode);
		address.setOther(tag_name);
		AddressDaoImpl addressdao = new AddressDaoImpl();
		addressdao.addressAdd(address);
		List<Address> list = addressdao.addressFindAll(4001);
		System.out.println(list);
		PrintWriter out = response.getWriter();
		out.print(1);
		out.flush();

	}

	public void addorderlist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		G_order g_order = new G_order();
		Integer add_id = Integer.parseInt(request.getParameter("add_id"));
		Integer num = Integer.parseInt(request.getParameter("num"));
		Integer g_id = Integer.parseInt(request.getParameter("g_id"));
		Double goodsprice = Double.parseDouble(request
				.getParameter("good.goodsprice"));

		Random rand = new Random();
		int i = (int) (Math.random() * 100000); // 生成0-100的随机数
		int j = rand.nextInt(100000); // 这里是一个方法的重载，参数的内容是指定范围
		System.out.println("i:" + i + "\nj:" + j);

		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat(" yyyy-MM-dd HH:mm:ss");// 生成日期
		String time = ft.format(dNow);

		String orderserial = time + i;

		User u = (User) request.getSession().getAttribute("user");
		int uid = u.getU_id();
		// int uid=4001;

		g_order.setOrderserial(orderserial);
		g_order.setOrder_goods_num(1);
		g_order.setOrder_total_price(goodsprice);
		g_order.setOrdertime(time);
		g_order.setUserid(uid);
		g_order.setAdd_id(add_id);

		AddressDaoImpl address = new AddressDaoImpl();
		boolean s = address.g_orderAdd(g_order);
		System.out.println(s);
		AddressDaoImpl address1 = new AddressDaoImpl();
		G_order gorder = address1.g_orderFindByorderserial(orderserial);
		Integer order_id = gorder.getOrder_id();

		GoodsDao goods = new GoodsDaoImpl();
		Goods good = goods.goodsFindByGid(g_id);
		Order_goods_info goodorder = new Order_goods_info();

		goodorder.setG_id(g_id);
		goodorder.setG_name(good.getGoodsname());
		goodorder.setOrder_id(order_id);
		goodorder.setGoods_num(num);
		goodorder.setG_price(goodsprice);

		address1.order_goods_infoAdd(goodorder);
		request.setAttribute("oid", order_id);
		System.out.println(goodorder);
		request.getRequestDispatcher("OrderServlet?method=User_order_detail&state=1&oid="+order_id).forward(request,
				response);
	}

	public void addorderlistall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Integer add_id=Integer.parseInt(request.getParameter("add_id"));
		User u = (User) request.getSession().getAttribute("user");
		double totalmoney = Double.parseDouble((String) request.getSession().getAttribute("totalmoney"));
		int uid = u.getU_id();
		String c_id = (String) request.getSession().getAttribute("arrcid");
		String[] c_idArr = c_id.split(",");

		List<Cartdetail> listgood = new ArrayList<Cartdetail>();
		for (int i = 1; i < c_idArr.length; i++) {
			// System.out.println(cid);
			Integer id = Integer.parseInt(c_idArr[i]);
			CartDaoImp goodscart = new CartDaoImp();
			Cartdetail cartdetail = goodscart.cartFindByCid(id);
			
			
			listgood.add(cartdetail);
		}
		AddressDaoImpl address = new AddressDaoImpl();
		List<Address> list = address.addressFindAll(uid);
		System.out.println(listgood);

		request.setAttribute("listgood", listgood);
		request.setAttribute("list", list);
		request.setAttribute("totalmoney", totalmoney);
		
		request.getRequestDispatcher("frontmanger/ordercart.jsp").forward(
				request, response);
	}

	public void addorderlistcart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] g_id = request.getParameterValues("goodgid");
		String[] c_id = request.getParameterValues("goodcid");
		Integer add_id = Integer.parseInt(request.getParameter("add_id"));
		Double totalmoney = Double.parseDouble(request
				.getParameter("totalmoney"));
		G_order g_order = new G_order();// 新建一个订单

		Random rand = new Random();
		int i = (int) (Math.random() * 100000); // 生成0-100000的随机数
		int j = rand.nextInt(100000); // 这里是一个方法的重载，参数的内容是指定范围
		System.out.println("i:" + i + "\nj:" + j);

		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat(" yyyy-MM-dd HH:mm:ss");// 生成日期
		String time = ft.format(dNow);

		String orderserial = time + i;

		User u = (User) request.getSession().getAttribute("user");
		int uid = u.getU_id();
		// int uid=4001;

		int num = 0;
		for (String cid : c_id) {
			num++;
			// Integer id=Integer.parseInt(cid);
			// CartDaoImp goodscart=new CartDaoImp();
			// Cartdetail cartdetail=goodscart.cartFindByCid(id);

		}
		g_order.setOrderserial(orderserial);
		g_order.setOrder_goods_num(num);
		g_order.setOrder_total_price(totalmoney);
		g_order.setOrdertime(time);
		g_order.setUserid(uid);
		g_order.setAdd_id(add_id);

		AddressDaoImpl address = new AddressDaoImpl();
		boolean s = address.g_orderAdd(g_order);// 添加新订单
		System.out.println(s);
		AddressDaoImpl address1 = new AddressDaoImpl();
		G_order gorder = address1.g_orderFindByorderserial(orderserial);
		Integer order_id = gorder.getOrder_id();
		CartDao cart=new CartDaoImp();
		for (String cid : c_id) {
			Order_goods_info goodorder = new Order_goods_info();// 新建商品订单表

			Integer id = Integer.parseInt(cid);
			CartDaoImp goodscart = new CartDaoImp();
			Cartdetail cartdetail = goodscart.cartFindByCid(id);

			goodorder.setG_id(cartdetail.getG_id());
			goodorder.setG_name(cartdetail.getGoodsname());
			goodorder.setOrder_id(order_id);
			goodorder.setGoods_num(cartdetail.getGoods_count());
			goodorder.setG_price(cartdetail.getGoodsprice());
			cart.deleteCartByCid(id);//删除购物车的内容
			
//			减少库存
			GoodsDaoImpl g = new GoodsDaoImpl();
			int amount=g.selectGoodsAmountBygid(cartdetail.getG_id());
			System.out.println("原始库存量"+amount);
			
			boolean change=g.UpdateGoodsAmountByGid(cartdetail.getG_id() ,cartdetail.getGoods_count());
			if(change){
				amount=g.selectGoodsAmountBygid(cartdetail.getG_id());
				System.out.println("改变后库存量"+amount);
			}
			address1.order_goods_infoAdd(goodorder);
			System.out.println(goodorder);
		}
		request.removeAttribute("totalmoney");
		request.removeAttribute("arrcid");
		request.setAttribute("oid", order_id);
		request.getRequestDispatcher("OrderServlet?method=User_order_detail&state=1&oid="+order_id).forward(request,
				response);

	}

	public void setsession(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("231");
		String arrcid = request.getParameter("arrcid");
		String totalmoney = request.getParameter("totalmoney");
		System.out.println(arrcid + "  " + totalmoney);
		request.getSession().setAttribute("arrcid", arrcid);
		request.getSession().setAttribute("totalmoney", totalmoney);
		PrintWriter out = response.getWriter();
		out.print(1);
	}

	public static void main(String[] args) {
		String s = "a,b,c";
		String[] stringArr = s.split(",");
		for (String string : stringArr) {
			System.out.println(string);
		}

	}

}
