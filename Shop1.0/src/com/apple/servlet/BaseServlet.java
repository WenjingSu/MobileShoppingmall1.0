package com.apple.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 区分发送的是什么请求
				String m = request.getParameter("method");// method=add
				Method method = null;
				// 请求参数名必须和方法名一致
				try {
					method = this.getClass().getMethod(m, HttpServletRequest.class,
							HttpServletResponse.class);
					method.invoke(this, request, response);

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	}
}
