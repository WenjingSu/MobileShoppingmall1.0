package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.G_order;
import com.apple.beans.Order_goods_info;
import com.apple.beans.User;
import com.apple.beans.dto.G_Order_User_Address;
import com.apple.beans.dto.OrderDetail;
import com.apple.beans.dto.Order_goods_goodsimg;
import com.apple.beans.dto.Orderlist;
import com.apple.dao.impl.OrderDaoImp;
import com.apple.page.PageList;

public class OrderServlet extends BaseServlet {

	public void order_list(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		OrderDaoImp o = new OrderDaoImp();
		List<G_Order_User_Address> list = o.order_formsFindAll();
		request.setAttribute("list", list);
		// System.out.println(list.toString());
		request.getRequestDispatcher("backmanger/order_list.jsp").forward(
				request, response);
	}

	public void order_detail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		OrderDaoImp o = new OrderDaoImp();

		List<Order_goods_info > list = o.order_formfindOid(oid);
		 for (Order_goods_info  order: list) {
		 System.out.println(order.toString());
		 }
		G_Order_User_Address add = o.order_formFindByOid(oid);
		request.setAttribute("list", list);
		request.setAttribute("add", add);
		request.getRequestDispatcher("backmanger/order_detail.jsp").forward(
				request, response);
	}

	public void updatesta(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		OrderDaoImp o = new OrderDaoImp();
		
		boolean sin = o.order_formUpdateStaByOId(3, oid);
		PrintWriter out = response.getWriter();
		if (sin) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();

		// request.getRequestDispatcher("backmanger/order_detail.jsp")
		// .forward(request, response);
	}

	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		OrderDaoImp o = new OrderDaoImp();
		//System.out.println(oid);
		List<Order_goods_info> list = o.order_formfindOid(oid);
		 for (Order_goods_info  order: list) {
		 System.out.println(order.toString());
		 }
		G_Order_User_Address add = o.order_formFindByOid(oid);
		request.setAttribute("list", list);
		request.setAttribute("add", add);
		System.out.println(oid);
		request.getRequestDispatcher("backmanger/orderprint.jsp").forward(
				request, response);
		PrintWriter out = response.getWriter();

		out.print(1);
		System.out.println(oid);
		out.flush();

	}

	public void pageOrderList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		OrderDaoImp o = new OrderDaoImp();
		String orderserial = request.getParameter("orderserial");
		 String ordertime=request.getParameter("ordertime");
//		String ordertime = "2017-12-10";
		int orderstate = Integer.parseInt(request.getParameter("orderstate"));
		System.out.println(orderserial + "--" + ordertime + "---" + orderstate);
		G_Order_User_Address address = new G_Order_User_Address();
		String curentPageVal = request.getParameter("currentPage");

		// 指定当前页数
		int currentPage = 1;
		if (curentPageVal != null && !"".equals(curentPageVal)) {
			currentPage = Integer.parseInt(curentPageVal);
			System.out.println(currentPage + "******");
		}

		// 直接将内页显示的内容的条数定义为5
		int pageSize = 10;

		// 查询数据

		address.setOrderserial(orderserial);
		address.setOrdertime(ordertime);
		address.setOrderstate( orderstate);		
		PageList<G_Order_User_Address> list=o.findPage(address,currentPage, pageSize);
	//	System.out.println(list);
		 request.setAttribute("list", list);
		 request.setAttribute("address", address);
////		 request.setAttribute("gender", gender);
//		// 进行转发
//		request.getRequestDispatcher("index1.jsp").forward(request, response);
		 request.getRequestDispatcher("backmanger/order_list.jsp").forward(
					request, response);
	}
	
	public void goToOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("order");
		String arrid=request.getParameter("arrId");
		
		System.out.println(arrid);
		String[] id=arrid.split(",");
		for(int i=0;i<id.length;i++){
			System.out.print(i+"="+id[i]);
			System.out.println("");
		}
		System.out.println("");
		String arrnum=request.getParameter("arrNum");
		String[] num=arrnum.split(",");
		for(int i=0;i<num.length;i++){
			System.out.print(i+"="+num[i]);
			System.out.println("");
		}
		System.out.println("");
		System.out.println(arrnum);
	
	}
	
	
	public void orderState(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		 User u=(User) request.getSession().getAttribute("user");
			request.getSession().getAttribute("user").toString();
			int uid=u.getU_id();
			int orderState=Integer.parseInt(request.getParameter("orderstate"));
			System.out.println(orderState);
			OrderDaoImp o = new OrderDaoImp();
			List<Orderlist> list=o.selectOrderAllByState(orderState,uid);
			 for (Orderlist  order: list) {
			 System.out.println(order.toString());
			 System.out.println(order.getOrder_goodlist());
			 }
			
			request.setAttribute("list", list);
			 request.getRequestDispatcher("frontmanger/user_orderdlist.jsp").forward(
						request, response);
	}
	
	public void  User_order_detail(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		OrderDaoImp o = new OrderDaoImp();
		Integer state = Integer.parseInt(request.getParameter("state"));

		List<Order_goods_goodsimg> list =o.SelectCartStateByState( oid);
		 for( Order_goods_goodsimg order: list) {
		 System.out.println(order.toString());
		 }
		 G_Order_User_Address add = o.order_formFindByOid(oid);
		request.setAttribute("list", list);
		request.setAttribute("add", add);
		request.setAttribute("state",state);
		request.setAttribute("oid",oid);
		request.getRequestDispatcher("frontmanger/orderdetail.jsp").forward(
				request, response);
	}
	
	public void  Review(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		OrderDaoImp o = new OrderDaoImp();

		List<Order_goods_goodsimg> list =o.SelectCartStateByState( oid);
		 for( Order_goods_goodsimg order: list) {
		 System.out.println(order.toString());
		 }
		 G_Order_User_Address add = o.order_formFindByOid(oid);
		request.setAttribute("list", list);
		request.setAttribute("add", add);
		request.getRequestDispatcher("frontmanger/review.jsp").forward(
				request, response);
	}

	
	public void userupdateorder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer oid = Integer.parseInt(request.getParameter("oid"));
		Integer orderstate=Integer.parseInt(request.getParameter("orderstate"));
		OrderDaoImp o = new OrderDaoImp();
		boolean sin = o.order_formUpdateStaByOId(orderstate, oid);
//		PrintWriter out = response.getWriter();
//		if (sin) {
//			out.print(1);
//		} else {
//			out.print(2);
//		}
//		out.flush();
		request.setAttribute("oid",oid);
		 request.getRequestDispatcher("OrderServlet?method=orderState&orderstate=0&oid="+oid)
		 .forward(request, response);
	}
}
