package com.cn.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.service.UserService;
import com.cn.vo.Type;

/**
 * Servlet implementation class AddTypeServlet
 */
@WebServlet("/AddTypeServlet")
public class AddTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTypeServlet() {
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
		String typename=request.getParameter("typename");
		String typedesc=request.getParameter("typedesc");
		UserService us=new UserService();
		Type type=new Type();
		type.setType_desc(typedesc);
		type.setType_name(typename);
		
		int i=us.AddType(type);
		if(i>0) {
			List<Type> list=us.QueryAllType();
			request.getSession().setAttribute("ListType",list);
			response.sendRedirect("StoreBeforeManager.jsp");
		}else {
			System.out.println("fail");
		}
		
	}

}
