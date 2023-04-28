package chemical.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chemical.dao.ChemicalDao;
import chemical.domain.Chemical;



/**
 * Servlet implementation class UserServlet
 */

public class ChemicalServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChemicalServletRead() {
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
		Chemical chemical = null;
		ChemicalDao chemicalDao = new ChemicalDao();
		
		try {
			chemical = chemicalDao.findById(Integer.parseInt(request.getParameter("ID")));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(chemical.getId()!=null){
					System.out.println(chemical);
					request.setAttribute("chemical", chemical);
					request.getRequestDispatcher("/jsps/chemical/chemical_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "chemical not found");
			request.getRequestDispatcher("/jsps/chemical/chemical_read_output.jsp").forward(request, response);
		}
	}
}



