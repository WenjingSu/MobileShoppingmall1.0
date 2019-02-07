package com.apple.frontServlet;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.io.BufferedWriter;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apple.beans.User;
import com.apple.dao.UserDao;
import com.apple.dao.impl.UserDaoImp;
import com.apple.servlet.BaseServlet;

import java.io.FileWriter;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class UserInfoServlet extends BaseServlet {
	private ServletConfig config;
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config = config;
		super.init(config);
	}
    //用户修改个人信息
	public void userInfoUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException, ParseException {
		// 设置编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html");
		User user=new User();
		Integer u_id = Integer.parseInt(request.getParameter("u_id"));
		user.setU_id(u_id);
		
				String userrealname = request.getParameter("userrealname");
				//System.out.println(userrealname);
				String usersex = request.getParameter("usersex");
				//System.out.println(usersex);
				String year = request.getParameter("year");
				//System.out.println(year);
				String month =request.getParameter("month");
				//System.out.println(month);
				String day = request.getParameter("day");
				//System.out.println(day);
				String s_province = request.getParameter("s_province");
				System.out.println(s_province);
				String s_city = request.getParameter("s_city");
				//System.out.println(s_city);
				String s_county= request.getParameter("s_county");
				//System.out.println(s_county);
				String userInfo= request.getParameter("userInfo");
				//System.out.println(userInfo);
				user.setRealname(userrealname);
				if(usersex.equals("男"))
				{user.setU_sex(1);}
				else
				{user.setU_sex(0);}
				String birthday=year+"-"+month+"-"+day;
				//System.out.println(birthday);
				java.util.Date d = parseDate(birthday);//将字符串转换成date类型
	            //System.out.println(d);
				user.setBirthday(d);
				String address=s_province+"/"+s_city+"/"+s_county;
				user.setU_residence(address);
				user.setUserinfo(userInfo);
				//System.out.println(user.toString());
				UserDaoImp userDaoImp=new UserDaoImp();
				boolean flag=userDaoImp.userUpdate(user);
				if(flag==true)
				{
					request.setAttribute("InfoMessage", "修改成功");
					String targetURL = "/frontmanger/userInfoSuccess.jsp";
					request.getRequestDispatcher(targetURL).forward(request, response);
				}
				else
				{
					request.setAttribute("InfoMessage", "修改失败");
					String targetURL = "/frontmanger/userInfoFail.jsp";
					request.getRequestDispatcher(targetURL).forward(request, response);
				}
				
			}
	//用户修改头像
		public void userHeadShotUpdate(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException, ParseException {
			// 设置编码
			
			System.out.println("111");
			
			response.setContentType("text/html");
			System.out.println("222");
			User user=new User();
			Integer u_id = Integer.parseInt(request.getParameter("u_id"));
			user.setU_id(u_id);
			// 接收数据
			SmartUpload upload = new SmartUpload();
			upload.initialize(config, request, response);
					try {
						
						// 准备上传
						upload.upload();
						// 得到文件
						File file = upload.getFiles().getFile(0);
						String realPath = this.getServletContext().getRealPath("/");
						String filePath = realPath + "images\\userImg\\"+u_id+"\\";
						java.io.File filesave=new java.io.File(filePath);
						if(!filesave.exists()){
							filesave.mkdir();
						}

						@SuppressWarnings("deprecation")
						String fileName = file.getFileName();
						String destFilePathName = filesave +"\\"+ fileName;
						//System.out.println(destFilePathName);
						String rpath ="userImg\\"+u_id+"\\"+fileName;
						user.setU_img(rpath);
						file.saveAs(destFilePathName);// 保存
						
						//request.getSession().setAttribute("fileName", fileName);
						//response.sendRedirect(request.getContextPath() + "/message.jsp");
					} catch (SmartUploadException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					UserDaoImp userDaoImp=new UserDaoImp();
					boolean flag=userDaoImp.userHeadShotUpdate(user);
					if(flag==true)
					{
						System.out.println("修改成功");
						request.setAttribute("headMessage", "修改成功");
						String targetURL = "/frontmanger/userHeadShotSuccess.jsp";
						request.getRequestDispatcher(targetURL).forward(request, response);
					}
					else
					{
						request.setAttribute("headMessage", "修改失败");
						String targetURL = "/frontmanger/userHeadShotFail.jsp";
						request.getRequestDispatcher(targetURL).forward(request, response);
					}
				}

		
	    static public java.util.Date parseDate(String s) throws ParseException { 
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
        return format.parse(s); 

    }
		
		
		
		
		
		
		
		
//		String realname = request.getParameter("userrealname");
//		String u_sex = request.getParameter("u_sex");
//		String birthday =request.getParameter("birthday");
//		String u_residence =request.getParameter("u_residence");
//		System.out.println("aa");
		
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");  
	   // Date date = (Date) sdf.parse(birthday);
		//User user = new User();
		//UserDao dao = new UserDaoImp();
		
		//user.setU_img(u_img);
		//user.setUsername(username);
		//user.setRealname(realname);
		//user.setU_sex(u_sex);
		//user.setBirthday(date);
		//user.setU_residence(u_residence);
		//boolean flag = dao.userRegister(user);
		//if (flag==true) {
			//request.setAttribute("msg","修改成功！");
			//request.getRequestDispatcher("frontmanger/userInfo.jsp").forward(
			//		request, response);
		//} else {
			//request.setAttribute("msg","修改失败，请重试！");
			//request.getRequestDispatcher("frontmanger/userInfo.jsp").forward(
				//	request, response);
		//}
			}


