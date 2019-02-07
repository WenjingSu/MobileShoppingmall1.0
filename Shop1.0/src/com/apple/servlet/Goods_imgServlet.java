package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.Goods;
import com.apple.beans.GoodsType;
import com.apple.beans.dto.GoodsDetail;
import com.apple.dao.GoodsDao;
import com.apple.dao.GoodsTypeDao;
import com.apple.dao.impl.GoodsDaoImpl;
import com.apple.dao.impl.GoodsTypeDaoImp;
import com.apple.page.PageList;

public class Goods_imgServlet extends BaseServlet {
	public void productslist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		GoodsDao g=new GoodsDaoImpl();
		GoodsTypeDao gt=new GoodsTypeDaoImp();
		int fid=Integer.parseInt(request.getParameter("ft_id"));
		List<GoodsType> listtype=gt.goodstypefindByFather(fid);
		List<GoodsDetail> list=g.goodsFindByftid(fid);
		
		
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		List<GoodsType> goodstypes01 = goodsTypeDaoImp.goodstypeFindAllLimit();
		request.setAttribute("goodsTypes01", goodstypes01);
		request.setAttribute("listtype",listtype);
		request.setAttribute("list",list);
		request.getRequestDispatcher("frontmanger/products.jsp")
				.forward(request, response);

	}
	
	public void FuzzySelectGoods(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String goodsname=request.getParameter("Search");
		System.out.println(goodsname);
		String curentPageVal = request.getParameter("currentPage");
		GoodsDaoImpl g = new GoodsDaoImpl();
     System.out.println(curentPageVal);
		Goods goods =new Goods();
		
		// 指定当前页数
				int currentPage = 1;
				if (curentPageVal != null && !"".equals(curentPageVal)) {
					currentPage = Integer.parseInt(curentPageVal);
					System.out.println(currentPage + "******");
				}

				// 直接将内页显示的内容的条数定义为5
				int pageSize = 12;
			

				// 查询数据
			goods.setGoodsname(goodsname);
			PageList<Goods>list=g.PageFuzzySelectGoods(goods,currentPage, pageSize);
			//System.out.println(list);
			GoodsTypeDaoImp goodsTypeDaoImp=new GoodsTypeDaoImp();
			List<GoodsType> goodstypes01 = goodsTypeDaoImp.goodstypeFindAllLimit();
			request.setAttribute("goodsTypes01", goodstypes01);
		//System.out.println(goodstypes01.toString());
			request.setAttribute("name", goods);
		request.setAttribute("list", list);
		request.getRequestDispatcher("frontmanger/search_products.jsp")
				.forward(request, response);

	}
	

}
