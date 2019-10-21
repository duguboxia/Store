package com.cn.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cn.service.UserService;
import com.cn.vo.User;

/**
 * Servlet implementation class LoginServet
 */
@WebServlet("/RegisterServet")
public class RegisterServet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServet() {
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
		String username=request.getParameter("username");
		String realname=request.getParameter("realname");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		String hobbies=request.getParameter("hobbies");
		String note=request.getParameter("note");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		User u=new User();
		u.setUsername(username);
		u.setRealname(realname);
		u.setPassword(password);
		u.setSex(sex);
		u.setPhone(phone);
		u.setEamil(email);
		u.setNote(note);
		u.setHobbies(hobbies);
		
		UserService us=new UserService();
		int i=us.register(u);
		if(i>0) {
			response.sendRedirect("Login.jsp");
		}
	}
}
