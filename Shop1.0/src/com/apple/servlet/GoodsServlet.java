package com.apple.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.Test;

import net.sf.json.JSONObject;

import com.apple.beans.Goods;
import com.apple.beans.GoodsType;
import com.apple.beans.Goods_images;
import com.apple.beans.dto.Review_User;
import com.apple.dao.GoodsTypeDao;
import com.apple.dao.ReviewDao;
import com.apple.dao.impl.GoodsDaoImpl;
import com.apple.dao.impl.GoodsTypeDaoImp;
import com.apple.dao.impl.Goods_imgDaoImpl;
import com.apple.dao.impl.ReviewDaoImpl;
import com.apple.page.PageList;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class GoodsServlet extends BaseServlet {
	private ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config = config;
		super.init(config);
	}

	public void product_list(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Goods goods = new Goods();
		// List<Goods> list = goods.goodsFindAll();
		String goodsname = request.getParameter("search");
		System.out.println(goodsname);
		String curentPageVal = request.getParameter("currentPage");
		GoodsDaoImpl g = new GoodsDaoImpl();
		System.out.println(curentPageVal);

		// Ö¸¶¨µ±Ç°Ò³Êý
		int currentPage = 1;
		if (curentPageVal != null && !"".equals(curentPageVal)) {
			currentPage = Integer.parseInt(curentPageVal);
			System.out.println(currentPage + "******");
		}

		// Ö±½Ó½«ÄÚÒ³ÏÔÊ¾µÄÄÚÈÝµÄÌõÊý¶¨ÒåÎª5
		int pageSize = 12;

		// ²éÑ¯Êý¾Ý
		goods.setGoodsname(goodsname);
		PageList<Goods> list = g.PageFuzzySelectGoods(goods, currentPage,
				pageSize);
		System.out.println(list);

		request.setAttribute("list", list);
		request.getRequestDispatcher("backmanger/product_list.jsp").forward(
				request, response);
	}

	public void edit_product(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		GoodsTypeDaoImp goodstype = new GoodsTypeDaoImp();
		List<GoodsType> listtype = goodstype.goodstypeFindAll();
		request.setAttribute("listtype", listtype);
		request.getRequestDispatcher("backmanger/edit_product.jsp").forward(
				request, response);
	}

	public void edit_productupdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer id = Integer.parseInt(request.getParameter("id"));
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Goods good = goods.goodsFindByGid(id);
		GoodsTypeDaoImp goodstype = new GoodsTypeDaoImp();
		List<GoodsType> listtype = goodstype.goodstypeFindAll();
		// Goods_imgDaoImpl goodsimg = new Goods_imgDaoImpl();
		// Goods_images goodimg = goodsimg.findById(id);
		// String[] img = goodimg.getImageurl().split(",");

		// String.split();
		// request.setAttribute("goodimg", img);
		request.setAttribute("good", good);
		request.setAttribute("listtype", listtype);
		request.getRequestDispatcher("backmanger/edit_product1.jsp").forward(
				request, response);
	}

	public void editproduct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer id = Integer.parseInt(request.getParameter("id"));
		SmartUpload upload = new SmartUpload();
		upload.initialize(config, request, response);
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Goods_imgDaoImpl goodsimg = new Goods_imgDaoImpl();
		Goods good = null;
		Goods_images goods_images = null;
		if (id == 0) {
			good = new Goods();
			goods_images = new Goods_images();
		} else if (id == 1) {
			good = goods.goodsFindByGid(id);
		}
		String img = null;
		try {
			// upload.setMaxFileSize(10*1024);
			upload.setAllowedFilesList("jpg,png"); // ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½ï¿½ï¿½ï¿½Ä¼ï¿½ï¿½ï¿½ï¿½Í¡ï¿½
			upload.upload();// ï¿½Ä¼ï¿½ï¿½Ï´ï¿½
			for (int i = 0; i < upload.getFiles().getCount(); i++) {
				File file = upload.getFiles().getFile(i);

				if (file.getSize() != 0) {
					if (i == 0) {
						good.setGood_imgurl(file.getFileName());
					} else {
						img = img + "," + file.getFileName();
					}
					String path = this.getServletContext().getRealPath("/img");
					// String fileName = path+"/"+file.getFileName();
					String fileName = path + "/" + file.getFileName();
					file.saveAs(fileName);
				}
			}
			// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Í¨ï¿½ï¿½ï¿½ï¿½
			String goodsname = upload.getRequest().getParameter("goodsname");
			Integer gt_id = Integer.parseInt(upload.getRequest().getParameter(
					"gt_id"));
			Double purchasing_price = Double.parseDouble(upload.getRequest()
					.getParameter("purchasing_price"));
			Double original_price = Double.parseDouble(upload.getRequest()
					.getParameter("original_price"));
			Double goodsprice = Double.parseDouble(upload.getRequest()
					.getParameter("goodsprice"));
			String goodsinfo = upload.getRequest().getParameter("goodsinfo");
			Integer amount = Integer.parseInt(upload.getRequest().getParameter(
					"amount"));

			good.setGoodsname(goodsname);
			good.setGt_id(gt_id);
			good.setPurchasing_price(purchasing_price);
			good.setOriginal_price(original_price);
			good.setGoodsprice(goodsprice);
			good.setGoodsinfo(goodsinfo);
			good.setAmount(amount);
			System.out.println(good);
			if (id == 0) {
				goods.goodsAdd(good);
				List<Goods> list = goods.goodsFindAll();
				Goods good1 = list.get(0);
				System.out.println(good1.getG_id());
				goods_images.setG_id(good1.getG_id());
				goods_images.setImageurl(img);
				goodsimg.addImgById(goods_images);
			} else if (id == 1) {
				Integer g_id = Integer.parseInt(upload.getRequest()
						.getParameter("g_id"));
				goods.goodsUpdateById(g_id, good);
			}
			// response.sendRedirect("ListFileServlet");
		} catch (SecurityException e) {

			e.printStackTrace();
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.product_list(request, response);

	}

	public void recycle_bin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		GoodsDaoImpl goods = new GoodsDaoImpl();
		List<Goods> list = goods.goodsfindbygoodsstate();
		request.setAttribute("list", list);
		request.getRequestDispatcher("backmanger/recycle_bin.jsp").forward(
				request, response);
	}

	public void del(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer id = Integer.parseInt(request.getParameter("id"));
		Integer id1 = Integer.parseInt(request.getParameter("id1"));
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Goods good = goods.goodsFindByGid(id);
		if (id1 == 0) {
			good.setG_del(0);
			goods.goodsUpdateById(id, good);

			this.product_list(request, response);
		} else if (id1 == 1) {
			good.setG_del(1);
			goods.goodsUpdateById(id, good);

			this.recycle_bin(request, response);
		}
	}

	public void delAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String string = request.getParameter("deleid");
		System.out.println(string);
		String[] id = string.split(",");

		for (int i = 1; i < id.length; i++) {
			GoodsDaoImpl goods = new GoodsDaoImpl();
			Goods good = goods.goodsFindByGid(Integer.parseInt(id[i]));
			good.setG_del(0);
			goods.goodsUpdateById(Integer.parseInt(id[i]), good);

		}
		this.product_list(request, response);
	}

	public void state(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("66666");
		Integer id = Integer.parseInt(request.getParameter("id"));
		Integer id1 = Integer.parseInt(request.getParameter("id1"));
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Goods good = goods.goodsFindByGid(id);
		if (id1 == 1) {
			good.setGoods_state(1);
			goods.goodsUpdateById(id, good);
			System.out.println("nihao");
			this.product_list(request, response);
		} else if (id1 == 2) {
			good.setGoods_state(2);
			goods.goodsUpdateById(id, good);
			System.out.println("nihao");
			this.product_list(request, response);
		}
	}

	public void goodsdetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		GoodsTypeDaoImp goodsTypeDaoImp = new GoodsTypeDaoImp();
		List<GoodsType> goodstypes01 = goodsTypeDaoImp.goodstypeFindAllLimit();
		request.setAttribute("goodsTypes01", goodstypes01);
		ReviewDao dao = new ReviewDaoImpl();
		int gtid = Integer.parseInt(request.getParameter("gtid"));
		// System.out.println(gtid);
		GoodsDaoImpl g = new GoodsDaoImpl();
		List<Goods> listdetail = g.goodsFindByGtid(gtid);
		List<Review_User> list = dao.reviewFindAll(gtid);
		// for(Goods goods:listdetail){
		// System.out.println(goods.toString());
		// }
		GoodsTypeDao goodstype = new GoodsTypeDaoImp();
		GoodsType type = goodstype.goodstypeFindByGtid(gtid);
		request.setAttribute("type", type);
		request.setAttribute("listdetail", listdetail);
		request.setAttribute("list", list);
		request.getRequestDispatcher("frontmanger/single.jsp").forward(request,
				response);
	}

	public void goodsGetInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int gid = Integer.parseInt(request.getParameter("gid"));
		GoodsDaoImpl g = new GoodsDaoImpl();
		System.out.println(gid);
		Goods goods = g.getgoodsBygid(gid);
		System.out.println(goods);
		Map<String, String> map = new HashMap<String, String>();

		map.put("goodprice", String.valueOf(goods.getGoodsprice()));
		map.put("amount", String.valueOf(goods.getAmount()));
		JSONObject json = JSONObject.fromObject(goods);
		System.out.println(json.toString());
		PrintWriter out = response.getWriter();
		out.println(json.toString());
		out.flush();

	}

	public void goodsAddAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Integer id = Integer.parseInt(request.getParameter("id"));
		SmartUpload upload = new SmartUpload();
		upload.initialize(config, request, response);
		GoodsDaoImpl goods = new GoodsDaoImpl();
		Goods_imgDaoImpl goodsimg = new Goods_imgDaoImpl();
		Goods good = null;
		Goods_images goods_images = null;
		String img = null;
		String fileName = null;
		try {
			// upload.setMaxFileSize(10*1024);
			upload.setAllowedFilesList("xls");
			upload.upload();
			for (int i = 0; i < upload.getFiles().getCount(); i++) {
				File file = upload.getFiles().getFile(i);

				String path = this.getServletContext().getRealPath("/images");
				// String fileName = path+"/"+file.getFileName();
				fileName = path + "/" + file.getFileName();
				file.saveAs(fileName);
			}
			Test test = new Test();
			Map<Integer, List<String>> map = test.read(fileName);
			GoodsDaoImpl goodAll = new GoodsDaoImpl();
			goodAll.addall(map);
		} catch (SecurityException e) {

			e.printStackTrace();
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.product_list(request, response);

	}

}
