package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.EmployeeDAO;
import com.dto.EmployeeVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "login.jsp";
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser") != null) {
			url = "main.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String lev = request.getParameter("lev");
		String url = null;
		
		int result = -1;
		
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		result = eDao.loginCheck(userid, pwd, lev);
		
		if(result == 2 || result == 3) {
			url = "main.jsp";
			EmployeeVO eVo = new EmployeeVO();
			HttpSession session = request.getSession();
			eVo = eDao.getEmployee(userid);
			
			session.setAttribute("loginUser", eVo);
			session.setAttribute("result", result);
			
		}else {
			url = "login.jsp";
			if(result == 1) {
				request.setAttribute("message", "레벨설정이 틀렸습니다.");
			}
			if(result == 0) {
				request.setAttribute("message", "비밀번호가 틀렸습니다.");
			}
			if(result == -1) {
				request.setAttribute("message", "아이디가 존재하지 않습니다.");
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
