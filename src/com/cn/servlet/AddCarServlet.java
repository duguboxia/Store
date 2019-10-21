package com.cn.servlet;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.service.UserService;
import com.cn.vo.Order_detail;
import com.cn.vo.User;

/**
 * Servlet implementation class AddCarServlet
 */
@WebServlet("/AddCarServlet")
public class AddCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String order_id=UUID.randomUUID().toString();
		System.out.println(order_id);
		int num = 0;
		
		Order_detail o = new Order_detail();
		o.setQty(num);
		o.setOrder_id(order_id);
		
		o.setGoods_name(name);
		o.setGoods_price(price);
		
		UserService us=new UserService();
		int i=us.AddCar(o);
		if(i>0) {
			List<Order_detail> list=us.QueryOrder_();
			request.getSession().setAttribute("ListOrder_",list);
			System.out.println("加入购物车成功");
			response.sendRedirect("aftermain.jsp");
		}
	}

}
