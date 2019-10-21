package com.cn.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.service.UserService;
import com.cn.vo.Goods;

/**
 * Servlet implementation class DeleteGoodsServlet
 */
@WebServlet("/DeleteGoodsServlet")
public class DeleteGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGoodsServlet() {
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
		int id=(Integer.parseInt(request.getParameter("id")));
		UserService us=new UserService();
		int i=us.DeleteGoods(id);
		if(i>0) {
			List<Goods> list=us.QueryAllGoods();
			request.getSession().setAttribute("List",list);
			response.sendRedirect("ShoppingManager.jsp");
		}else {
			System.out.println("fail");
		}
	}

}
