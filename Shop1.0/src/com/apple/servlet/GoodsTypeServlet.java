package com.apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.GoodsType;
import com.apple.dao.impl.GoodsTypeDaoImp;

public class GoodsTypeServlet extends BaseServlet {

	public void goodstypeFindAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAll();
		// System.out.println(goodstypes);
		request.setAttribute("goodsTypes01", goodstypes);
		request.getRequestDispatcher("backmanger/product_category.jsp")
				.forward(request, response);
	}

	public void goodstypefindByFather(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypefindByFather(1);
		request.setAttribute("goodsTypes02", goodstypes);
		request.getRequestDispatcher("backmanger/product_category.jsp")
				.forward(request, response);
	}

	public void goodstypeDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer gt_id = Integer.parseInt(request.getParameter("g_id"));
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		boolean flag = goodsTypeDaoImp.goodstypeDel(gt_id);
		if (flag == true) {

			List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAll();
			request.setAttribute("goodsTypes01", goodstypes);
			request.getRequestDispatcher("backmanger/product_category.jsp")
					.forward(request, response);

		} else {
			request.setAttribute("message", "");
			String targetURL = "/backmanger/p_c_fail.jsp";
			request.getRequestDispatcher(targetURL).forward(request, response);
		}
	}

	public void goodstypeFindAllLimit(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAllLimit();
		System.out.println(goodstypes);
		request.setAttribute("goodsTypes", goodstypes);
		request.getRequestDispatcher("frontmanger/index.jsp").forward(request,
				response);
	}

	public void goodstypeAddSkip(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("backmanger/edit_category1.jsp").forward(
				request, response);
	}

	public void goodstypeAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String gt_typename = request.getParameter("gt_typename");
		String gt_mark = request.getParameter("gt_mark");
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		GoodsType goodstype = new GoodsType();
		goodstype.setGt_typename(gt_typename);
		goodstype.setGt_mark(gt_mark);
		boolean flag = goodsTypeDaoImp.goodstypeAdd(goodstype);
		// System.out.println(flag);
		if (flag == true) {
			List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAll();
			request.setAttribute("goodsTypes01", goodstypes);
			request.getRequestDispatcher("backmanger/product_category.jsp")
					.forward(request, response);
		}
	}

	public void goodstypeUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer gt_id = Integer.parseInt(request.getParameter("g_id"));
		// System.out.println(gt_id);
		String gt_typename = request.getParameter("gt_typename");
		String gt_mark = request.getParameter("gt_mark");
		GoodsType goodstype = new GoodsType();
		goodstype.setGt_id(gt_id);
		goodstype.setGt_typename(gt_typename);
		goodstype.setGt_mark(gt_mark);
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		boolean flag = goodsTypeDaoImp.goodstypeUpdate(goodstype);

		if (flag == true) {
			List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAll();
			request.setAttribute("goodsTypes01", goodstypes);
			request.getRequestDispatcher("backmanger/product_category.jsp")
					.forward(request, response);
		}
	}

	public void goodstypeFatherEdit(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer gt_id = Integer.parseInt(request.getParameter("g_id"));
		// System.out.println(gt_id);
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		GoodsType goodtype = goodsTypeDaoImp.goodstypeFindByGtid(gt_id);
		// System.out.println(goodtype);
		request.setAttribute("goodtype", goodtype);
		request.getRequestDispatcher("backmanger/edit_category2.jsp").forward(
				request, response);
	}

	public void goodstypeAddChildrenSkip(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer gt_id = Integer.parseInt(request.getParameter("g_id"));
		request.setAttribute("g_id", gt_id);
		request.getRequestDispatcher("backmanger/edit_category3.jsp").forward(
				request, response);
	}

	public void goodstypeAddChildren(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer gt_id = Integer.parseInt(request.getParameter("g_id"));
		String gt_typename = request.getParameter("gt_typename");
		String gt_mark = request.getParameter("gt_mark");
		GoodsType goodstype = new GoodsType();
		goodstype.setGt_id(gt_id);
		goodstype.setGt_typename(gt_typename);
		goodstype.setGt_mark(gt_mark);
		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		boolean flag = goodsTypeDaoImp.goodstypeAddChildren(goodstype);
		if (flag == true) {
			List<GoodsType> goodstypes = goodsTypeDaoImp.goodstypeFindAll();
			request.setAttribute("goodsTypes01", goodstypes);
			request.getRequestDispatcher("backmanger/product_category.jsp")
					.forward(request, response);
		}
	}

}
