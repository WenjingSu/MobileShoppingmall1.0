package com.apple.frontServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.GoodsType;
import com.apple.dao.impl.GoodsDaoImpl;
import com.apple.dao.impl.GoodsTypeDaoImp;
import com.apple.servlet.BaseServlet;

public class GoodsTypeFrontServlet extends BaseServlet {
	public void goodstypeFindAllLimit(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		// GoodsDaoImpl goodsDaoImpl = new GoodsDaoImpl();
		List<GoodsType> goodstypes01 = goodsTypeDaoImp.goodstypeFindAllLimit();
		// System.out.println(goodstypes01);
		List<GoodsType> goodstypes02 = goodsTypeDaoImp.goodstypeFindAll();
		System.out.println(goodstypes02);

		request.setAttribute("goodsTypes01", goodstypes01);
		request.setAttribute("goodsTypes02", goodstypes02);

		List<Object> list1 = new ArrayList<Object>();
		for (GoodsType g : goodstypes02) {
			System.out.println(g.getGt_typename());
			GoodsDaoImpl gd = new GoodsDaoImpl();
			list1.add(gd.goodsFindByTypeName(g.getGt_typename()));

		}
		request.setAttribute("list", list1);

		request.getRequestDispatcher("frontmanger/index.jsp").forward(request,
				response);
	}

}
