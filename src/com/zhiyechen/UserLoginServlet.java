package com.zhiyechen;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import javafx.scene.chart.PieChart.Data;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if (cookie.getName().equals("user")) {
				String user = cookie.getValue();
				response.sendRedirect(request.getContextPath() + "/blogs");
				return;
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] values = request.getParameterValues("remember-me");
		if (values!=null && !values[0].isEmpty()) {
			Cookie c = new Cookie("user", values[0]);
			c.setMaxAge(7 * 24 * 60 * 60); 
			response.addCookie(c);
		}
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = Data.getUserByName(username);
		if(user!=null && user.getPassword().equals(password)) {
			request.getSession().setAttribute("currentUser", user);
			
			String nextLink = request.getParameter("next");
			if (nextLink!=null && !nextLink.isEmpty()) {
				response.sendRedirect(nextLink);
			}
			else {
				response.sendRedirect(request.getContextPath() + "/blogs");
			}	
		}
		else {
			request.setAttribute("message", "登录失败原因");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
			dispatcher.forward(request, response);
		}
	}

}
