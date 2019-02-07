package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.Manager;
import com.apple.dao.ManagerDao;
import com.apple.dao.impl.ManagerDaoImpl;

public class ManagerServlet extends BaseServlet {
	// 1.��¼
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// ��������
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// ��������
		ManagerDao dao = new ManagerDaoImpl();
		Manager manager = new Manager();
		manager.setM_name(username);
		manager.setM_password(password);
		manager = dao.managerLogin(manager);
		// ������Ӧ
		if (manager == null) {
			request.getRequestDispatcher("backmanger/adminLogin1.jsp").forward(
					request, response);
		} else {
			request.getSession().setAttribute("manager", manager);
			request.getRequestDispatcher("backmanger/index1.jsp").forward(
					request, response);
		}
	}

	// 2.��ȫ�˳�
	public void exit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// �Ƴ�session�е�����
		request.getSession().removeAttribute("manager");
		request.getRequestDispatcher("backmanger/adminLogin.jsp").forward(
				request, response);
	}

	// 3.��֤����
	public void paw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// ��ȡҳ�������
		String password = request.getParameter("oldpassword");
		Manager manager = (Manager) request.getSession()
				.getAttribute("manager");
		manager.setM_password(password);
		ManagerDao dao = new ManagerDaoImpl();
		// �����ݽ��д���
		manager = dao.managerLogin(manager);
		if (manager == null) {
			out.print(2);
		} else {
			out.print(1);
		}
		out.flush();
		out.close();
	}

	// 4.�޸�����
	public void m_paw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// ��ȡҳ�������
		String password = request.getParameter("newpassword");
		Manager manager = (Manager) request.getSession()
				.getAttribute("manager");
		manager.setM_password(password);
		ManagerDao dao = new ManagerDaoImpl();
		boolean flag = dao.managerUpdatePwd(manager);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}

	// 5.����Ա�б�ҳ��
	public void managerFindAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Manager manager = (Manager) request.getSession()
				.getAttribute("manager");
		ManagerDao dao = new ManagerDaoImpl();
		List<Manager> list = dao.managerFindAll(manager.getM_id());
		request.setAttribute("list", list);
		request.getRequestDispatcher("backmanger/admin_list.jsp").forward(
				request, response);
	}

	// 6.��ӹ���Ա
	public void add_manager(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String m_name = request.getParameter("m_name");
		String m_password = request.getParameter("m_password");
		ManagerDao dao = new ManagerDaoImpl();
		Manager manager = new Manager();
		manager.setM_name(m_name);
		manager.setM_password(m_password);
		boolean flag = dao.managerAdd(manager);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}

	// 7.�޸Ĺ���ԱȨ��
	public void revise_manager(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String mid = request.getParameter("m_id");
		int m_id = Integer.parseInt(mid);
		String role = request.getParameter("m_role");
		int m_role = Integer.parseInt(role);
		ManagerDao dao = new ManagerDaoImpl();
		boolean flag = dao.managerUpdate(m_id, m_role);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}
	// 8.ɾ������Ա
	public void del_manager(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String mid = request.getParameter("m_id");
		int m_id = Integer.parseInt(mid);
		ManagerDao dao = new ManagerDaoImpl();
		boolean flag = dao.managerDel(m_id);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}
	//9.ע����֤
	public void m_name(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ���ñ���
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String m_name = request.getParameter("m_name");
		ManagerDao dao = new ManagerDaoImpl();
		boolean flag = dao.managerAddFindOne(m_name);
		if (flag == true) {
			out.print(1);
		} else {
			out.print(2);
		}
		out.flush();
		out.close();
	}
}
