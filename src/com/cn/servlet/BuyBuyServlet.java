package com.cn.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.service.UserService;
import com.cn.vo.Indent;

/**
 * Servlet implementation class BuyBuyServlet
 */
@WebServlet("/BuyBuyServlet")
public class BuyBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyBuyServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		//String id=request.getParameter("id");
		String username=request.getParameter("username");
		String address=request.getParameter("address");
		String orderSum=request.getParameter("orderSum");
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd");
		String dealtime=sdf.format(date);
		String status="ÒÑ¸¶¿î";
		String order_id=UUID.randomUUID().toString();
		System.out.println(order_id);
		
		Indent indent=new Indent();
		indent.setAddress(address);
		indent.setDealDate(dealtime);
		indent.setStatus(status);
		
		indent.setOrderSum(Float.parseFloat(orderSum));
		indent.setUsername(username);
		indent.setOrder_id(order_id);
		
		UserService us=new UserService();
		int i=us.AddIndent(indent);
		if(i>0) {
			List<Indent> indentlist=us.QueryOrder();
			request.getSession().setAttribute("indentlist", indentlist);
			response.sendRedirect("findorder.jsp");
		}
		
	}

}
