package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.dto.EmployeeVO;

/**
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/add.do")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("addEmployee.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		EmployeeVO eVo =new EmployeeVO();
		eVo.setName(request.getParameter("name"));
		eVo.setUserid(request.getParameter("userid"));
		eVo.setPwd(request.getParameter("pwd"));
		eVo.setLev(request.getParameter("lev"));
		
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		eDao.addEmployee(eVo);
		
		request.setAttribute("addUser", eVo);
		request.setAttribute("message", "회원 등록에 성공했습니다.");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("addResult.jsp");
		dispatcher.forward(request, response);
	}

}
