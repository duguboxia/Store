package com.cn.servlet;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.cn.service.UserService;
import com.cn.vo.Goods;

/**
 * Servlet implementation class addGoods
 */
@MultipartConfig
@WebServlet(name = "AddGoodsServlet", urlPatterns = {"/AddGoodsServlet"})
public class AddGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private String contextPath;
     
    public AddGoodsServlet() {
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
        contextPath = getServletContext().getRealPath("/");
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("utf-8");
		   String  goods_name=request.getParameter("goods_name");
			String  type_id=request.getParameter("type_id");
			String  goods_price=request.getParameter("goods_price");
			String  goods_desc=request.getParameter("goods_desc");
		/* String qty=request.getParameter("qty"); */
			
			Part part = request.getPart("file");
		    String fileName = getFileName(part);//��ȡ�ļ���
	        writeTo(fileName, part);
	        //forward����ʾ
	        
	        Goods goods = new Goods();
			goods.setGoods_name(goods_name);
			goods.setType_id(Integer.parseInt(type_id));
			goods.setGoods_price(Float.parseFloat(goods_price));
			goods.setGoods_desc(goods_desc);
		/* goods.setQty(Integer.parseInt(qty)); */
			goods.setGoods_pic(fileName);
	        
	        int i;
			UserService goodsService = new UserService();
			i=goodsService.AddGoods(goods);
			System.out.println(goods+"sfsfd");
	        if(i>0) {
	        	List<Goods> list=goodsService.QueryAllGoods();
	    		request.getSession().setAttribute("List",list);
	        	response.sendRedirect("ShoppingManager.jsp");
	        }else {
	        	request.getRequestDispatcher("fail.jsp").forward(request, response);
	        }
	    }
	  
	    //ȡ���ϴ��ļ���
	    private String getFileName(Part part) {
	        String header = part.getHeader("Content-Disposition");
	        String fileName = header.substring(header.indexOf("filename=\"") + 10,
	                header.lastIndexOf("\""));
	        return fileName;
   }

	    private void writeTo(String fileName, Part part) throws IOException, FileNotFoundException {
	        InputStream in = part.getInputStream();
	        OutputStream out = new FileOutputStream(contextPath + fileName);
	        byte[] buffer = new byte[1024];
	        int length = -1;
	        while ((length = in.read(buffer)) != -1) {
	            out.write(buffer, 0, length);
	        }
	        in.close();
	        out.close();
	    }
	    }
