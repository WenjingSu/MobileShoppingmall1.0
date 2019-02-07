package com.apple.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyFilter implements Filter{

	@Override
	public void destroy() {
		System.out.println("destroy");
	}

	@Override
	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse,
			FilterChain chain) throws IOException, ServletException {
		//给所有的请求设置编码
		servletrequest.setCharacterEncoding("UTF-8");
		servletresponse.setCharacterEncoding("UTF-8");
		//获取session中的对象
		HttpServletRequest request=(HttpServletRequest)servletrequest;
		HttpServletResponse response=(HttpServletResponse)servletresponse;
		if (request.getSession().getAttribute("manager")==null) {
			request.getRequestDispatcher(
					"adminLogin.jsp")
					.forward(request, response);
		} else {
			chain.doFilter(servletrequest, servletresponse);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("init");
	}	
}
