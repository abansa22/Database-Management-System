package industry.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity1.dao.Entity1Dao;
import entity1.domain.Entity1;
import industry.dao.IndustryDao;
import industry.domain.Industry;


/**
 * Servlet implementation class UserServlet
 */

public class IndustryServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndustryServletRead() {
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
		Industry industry = null;
		IndustryDao industryDao = new IndustryDao();
		
		try {
			industry = industryDao.findById(Integer.parseInt(request.getParameter("ID")));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(industry.getId()!=null){
					System.out.println(industry);
					request.setAttribute("industry", industry);
					request.getRequestDispatcher("/jsps/industry/industry_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Industry not found");
			request.getRequestDispatcher("/jsps/industry/industry_read_output.jsp").forward(request, response);
		}
	}
}



