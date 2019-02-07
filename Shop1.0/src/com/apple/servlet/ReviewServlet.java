package com.apple.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.Review;
import com.apple.beans.User;
import com.apple.dao.ReviewDao;
import com.apple.dao.impl.ReviewDaoImpl;

public class ReviewServlet extends BaseServlet {
	public void reviewAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String gid = request.getParameter("g_id");
		int g_id = Integer.parseInt(gid);
		String goodsname = request.getParameter("goodsname");
		String states = request.getParameter("good");
		int state = Integer.parseInt(states);
		String info = request.getParameter("review");
		User user = (User) request.getSession().getAttribute("user");
		Review review = new Review();
		ReviewDao dao = new ReviewDaoImpl();
		review.setGoods_id(g_id);
		review.setGoodsname(goodsname);
		review.setUser_id(user.getU_id());
		review.setContent(info);
		review.setState(state);
		review.setReview_time(new Date());
		boolean flag = dao.reviewAdd(review);
		if (flag==true) {
			request.setAttribute("msg", "评论成功，5s后返回原页面！");
			request.getRequestDispatcher("frontmanger/review1.jsp").forward(
					request, response);
		} else {
			request.setAttribute("msg", "评论失败，5s后返回原页面！");
			request.getRequestDispatcher("frontmanger/review1.jsp").forward(
					request, response);
		}
	}
}
