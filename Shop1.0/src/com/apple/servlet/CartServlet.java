package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.CartDaotest;

import com.apple.beans.Goods;
import com.apple.beans.GoodsType;
import com.apple.beans.User;
import com.apple.beans.dto.Cartdetail;
import com.apple.dao.CartDao;
import com.apple.dao.GoodsDao;
import com.apple.dao.impl.CartDaoImp;
import com.apple.dao.impl.GoodsDaoImpl;
import com.apple.dao.impl.GoodsTypeDaoImp;

public class CartServlet extends BaseServlet {

	public void goodCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		if(request.getSession().getAttribute("user")==null){
			out.print(2);
		}else{
			 User u=(User) request.getSession().getAttribute("user");
				request.getSession().getAttribute("user").toString();
			CartDao g=new CartDaoImp();
			int gid=Integer.parseInt(request.getParameter("gid"));
			int count=Integer.parseInt(request.getParameter("count"));
			int uid=u.getU_id();
			System.out.println(uid+"-----"+gid+"---"+count);
			
		
			if (g.cartHasCont(uid, gid)) {
				boolean i = g.UpdateGoodIntoCart(uid, gid, count);
				System.out.println(i);
			} else {
				boolean i = g.addshopIntoCart(uid, gid, count);
				System.out.println(i);

			}
			
			
			out.print(1);
		
		}
		
		out.flush();
//		List<Cartdetail> list = g.CartInfoByUid(uid);
//		System.out.println(list);
//		request.setAttribute("list", list);
//		request.getRequestDispatcher("frontmanger/cart.jsp").forward(request, response);
		
	}
	
	public void gotoCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		CartDao g=new CartDaoImp();
		 User u=(User) request.getSession().getAttribute("user");
			request.getSession().getAttribute("user").toString();
			int uid=u.getU_id();
		List<Cartdetail> list = g.CartInfoByUid(uid);
		System.out.println(list);
		for(Cartdetail c:list){
			System.out.println(c);
		}
		request.setAttribute("list", list);
		
		GoodsTypeDaoImp goodsTypeDaoImp=new GoodsTypeDaoImp();
		List<GoodsType> goodstypes01 = goodsTypeDaoImp.goodstypeFindAllLimit();
		request.setAttribute("goodsTypes01", goodstypes01);
		System.out.println(goodstypes01);
		
		request.getRequestDispatcher("frontmanger/cart.jsp").forward(request, response);
		
	}

	
	public void UpdateAmountInCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		CartDao cartDao = new CartDaoImp();
			int cid=Integer.parseInt(request.getParameter("c_id"));
			int count=Integer.parseInt(request.getParameter("amount"));
			
			System.out.println(cid+"---"+count);
			boolean s=cartDao.UpdateAmountByCid(cid, count);
			System.out.println(s);
			if(s==true){
				out.print(1);
				
			}
			else{
				out.print(2);
			}
			
			
			out.flush();
		}
		
		
	
	public void deleteCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		CartDao cartDao = new CartDaoImp();
		System.out.println("de");
			int cid=Integer.parseInt(request.getParameter("c_id"));
			boolean s=cartDao.deleteCartByCid(cid);
			System.out.println(s);
			if(s==true){
				out.print(1);
			}
			else{
				out.print(2);
			}
			
			
			out.flush();
		}
		
		

}
