package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.dto.Ordercount;
import com.apple.dao.CountDao;
import com.apple.dao.impl.CountDaoImpl;

public class CountServlet extends BaseServlet {

	public void CountYear(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String year = request.getParameter("year");
		//System.out.println(year);
		CountDao c = new CountDaoImpl();
		int a[] = c.tablechart(year);
		PrintWriter out = response.getWriter();
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < a.length; i++){
		 sb. append(","+a[i]);
		}
		String s = sb.toString();
//		System.out.println(s);
//		String str=null;
//		
//		for (int i = 0; i < a.length; i++) {
//			str+=","+a[i];
//		}
//		System.out.println(str);
		out.print(s);
//		request.setAttribute("yeararr", a);
//		request.getRequestDispatcher("tableChat.jsp").forward(request, response);
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();

	}

	
	public void CountOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		CountDao c = new CountDaoImpl();
		Ordercount ordercount=new Ordercount();
		 ordercount = c.count_number();
		 System.out.println( ordercount);
		 request.setAttribute("ordercount", ordercount);
		 request.getRequestDispatcher("backmanger/main.jsp").forward(request, response);
		 

	}

}
