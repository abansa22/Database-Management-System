package chemical.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chemical.dao.ChemicalDao;
import chemical.domain.Chemical;
import entity1.dao.Entity1Dao;
import entity1.domain.Entity1;

/**
 * Servlet implementation class UserServlet
 */

public class ChemicalServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChemicalServletUpdate() {
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
		ChemicalDao entity1dao = new ChemicalDao();
		Chemical entity1 = null;

		if(method.equals("search"))
		{
			try {
				entity1 = entity1dao.findById(Integer.parseInt(request.getParameter("id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(entity1.getId()!=null){
				request.setAttribute("chemical", entity1);
				request.getRequestDispatcher("/jsps/chemical/chemical_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "chemical not found");
				request.getRequestDispatcher("/jsps/chemical/chemical_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Chemical form = new Chemical();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			form.setId(Integer.parseInt(info.get(2)));
			form.setType(info.get(3));
			form.setName(request.getParameter("name"));
			form.setQuantity(request.getParameter("quantity"));
			

			try {
				entity1dao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "chemical Updated");
			request.getRequestDispatcher("/jsps/chemical/chemical_read_output.jsp").forward(request, response);
		}
	}
}



