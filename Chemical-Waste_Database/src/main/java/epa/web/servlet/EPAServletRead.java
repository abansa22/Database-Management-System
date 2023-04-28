package epa.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity1.dao.Entity1Dao;
import entity1.domain.Entity1;
import epa.dao.EPADao;
import epa.domain.EPA;


/**
 * Servlet implementation class UserServlet
 */

public class EPAServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EPAServletRead() {
        super();
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
		EPA epo = null;
		EPADao epoDao = new EPADao();
		
		try {
			epo = epoDao.findByChemName(request.getParameter("chemical_name"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(epo.getChemName()!=null){
					System.out.println(epo);
					request.setAttribute("epo", epo);
					request.getRequestDispatcher("/jsps/EPO/epo_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "EPA not found");
			request.getRequestDispatcher("/jsps/EPO/epo_read_output.jsp").forward(request, response);
		}
	}
}



