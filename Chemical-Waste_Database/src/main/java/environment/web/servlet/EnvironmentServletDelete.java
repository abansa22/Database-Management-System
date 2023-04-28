package environment.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity1.dao.Entity1Dao;
import entity1.domain.Entity1;
import environment.dao.EnvironmentDao;
import environment.domain.Environment;


/**
 * Servlet implementation class UserServlet
 */

public class EnvironmentServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnvironmentServletDelete() {
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
		String method = request.getParameter("method");
		EnvironmentDao environmentDao = new EnvironmentDao();
		Environment environment = null;
		if(method.equals("search"))
		{
			try {
				environment = environmentDao.findByEnvType(request.getParameter("ID"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(environment.getEnv_type()!=null){
						System.out.println(environment);
						request.setAttribute("environment", environment);
						request.getRequestDispatcher("/jsps/environment/environment_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Environment not found");
				request.getRequestDispatcher("/jsps/environment/environment_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				environmentDao.delete(request.getParameter("ID"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "environment Deleted");
			request.getRequestDispatcher("/jsps/environment/environment_read_output.jsp").forward(request, response);
		}
	}
}



