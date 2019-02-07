package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.DBUtil.PhoneUtil;
import com.apple.beans.User;
import com.apple.dao.UserDao;
import com.apple.dao.impl.UserDaoImp;

public class UserServlet extends BaseServlet {

	public void userfindall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 鏌ユ壘鎵�湁鐢ㄦ埛
		UserDaoImp userDaoImp = new UserDaoImp();
		List<User> users = userDaoImp.userfindall();
		// System.out.println(users);
		request.setAttribute("users", users);

		request.getRequestDispatcher("backmanger/user_list.jsp").forward(
				request, response);
	}

	public void userfindbyuId1(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer u_id = Integer.parseInt(request.getParameter("u_id"));
		// 鏌ユ壘鍗曚釜鐢ㄦ埛
		UserDaoImp userDaoImp = new UserDaoImp();
		User user = userDaoImp.userfindbyuId(u_id);
		// System.out.println(user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("backmanger/user_info.jsp").forward(
				request, response);
	}

	public void userfindbyuId2(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer u_id = Integer.parseInt(request.getParameter("userId"));
		// 鏌ユ壘鍗曚釜鐢ㄦ埛
		UserDaoImp userDaoImp = new UserDaoImp();
		User user = userDaoImp.userfindbyuId(u_id);
		System.out.println(user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("backmanger/user_info2.jsp").forward(
				request, response);

	}

	public void userfindbyuId3(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer u_id = Integer.parseInt(request.getParameter("u_id"));
		// 鏌ユ壘鍗曚釜鐢ㄦ埛
		UserDaoImp userDaoImp = new UserDaoImp();
		User user = userDaoImp.userfindbyuId(u_id);
		// System.out.println(user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("backmanger/edit_user.jsp").forward(
				request, response);
	}

	public void updateUserDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer u_id = Integer.parseInt(request.getParameter("u_id"));
		UserDaoImp userDaoImp = new UserDaoImp();
		User user = userDaoImp.userfindbyuId(u_id);
		boolean flag = userDaoImp.updateUserDel(user);
		if (flag == true) {
			List<User> users = userDaoImp.userfindall();
			request.setAttribute("users", users);
			request.getRequestDispatcher("backmanger/user_list.jsp").forward(
					request, response);
		} else {

		}
	}

	// 验证码验证
	public void userPhone(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String tel = request.getParameter("tel");
		String code1 = request.getParameter("code");
		int code = Integer.parseInt(code1);
		boolean flag = PhoneUtil.phone(tel, code);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}

	// 验证帐号是否存在
	public void userFindbyName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String tel = request.getParameter("tel");
		UserDao dao = new UserDaoImp();
		boolean flag = dao.userFindbyName(tel);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}

	// 用户注册
	public void userRegister(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		// 接收数据
		String username = request.getParameter("Name");
		String password = request.getParameter("Password");
		String tel = request.getParameter("Email");
		User user = new User();
		UserDao dao = new UserDaoImp();
		user.setUsername(username);
		user.setU_password(password);
		user.setU_phone(tel);
		boolean flag = dao.userRegister(user);
		if (flag == true) {
			request.setAttribute("msg", "注册成功，请登录！");
			request.getRequestDispatcher("frontmanger/index.jsp").forward(
					request, response);
		} else {
			request.setAttribute("msg", "注册失败，请重试！");
			request.getRequestDispatcher("frontmanger/index.jsp").forward(
					request, response);
		}
	}

	// 用户登录
	public void userLogin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		// 接收数据
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		User user = new User();
		UserDao dao = new UserDaoImp();
		user.setUsername(username);
		user.setU_password(password);
		User user2 = dao.userLogin(user);
		if (user2.getU_id() == null) {
			request.setAttribute("msg", "帐号或密码错误，请重新输入！");
			request.getRequestDispatcher("frontmanger/index.jsp").forward(
					request, response);
		} else {
			request.getSession().setAttribute("user", user2);
			request.getRequestDispatcher(
					"GoodsTypeFrontServlet?method=goodstypeFindAllLimit")
					.forward(request, response);
		}
	}

	// 安全退出
	public void exit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 移除session中的数据
		request.getSession().removeAttribute("user");
		request.getRequestDispatcher(
				"GoodsTypeFrontServlet?method=goodstypeFindAllLimit").forward(
				request, response);
	}

	// 用户修改密码
	public void userUpdatepsw(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		// 接收数据
		String password = request.getParameter("newpasswprd");
		User user = (User) request.getSession().getAttribute("user");
		UserDao dao = new UserDaoImp();
		user.setU_password(password);
		boolean flag = dao.userUpdatepsw(user);
		if (flag == true) {
			request.getSession().removeAttribute("user");
			request.setAttribute("msg", "密码修改成功，请重新登录！");
			request.getRequestDispatcher(
					"GoodsTypeFrontServlet?method=goodstypeFindAllLimit")
					.forward(request, response);
		} else {
			request.setAttribute("msg", "密码修改失败，请重试！");
			request.getRequestDispatcher(
					"GoodsTypeFrontServlet?method=goodstypeFindAllLimit")
					.forward(request, response);
		}
	}

	// 用户修改绑定手机
	public void userUpdatephone(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		// 接收数据
		String tel = request.getParameter("tel");
		User user = (User) request.getSession().getAttribute("user");
		UserDao dao = new UserDaoImp();
		user.setU_phone(tel);
		boolean flag = dao.userUpdatephone(user);
		if (flag == true) {
			request.setAttribute("msg", "绑定手机修改成功。");
			request.getRequestDispatcher("frontmanger/userphone3.jsp").forward(
					request, response);
		} else {
			request.setAttribute("msg", "修改失败，请重试！");
			request.getRequestDispatcher("frontmanger/userphone3.jsp").forward(
					request, response);
		}
	}
}
