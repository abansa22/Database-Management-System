package epa.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

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

public class EPAServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EPAServletUpdate() {
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
		EPADao entity1dao = new EPADao();
		EPA entity1 = null;

		if(method.equals("search"))
		{
			try {
				entity1 = entity1dao.findByChemName(request.getParameter("username"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(entity1.getChemName()!=null){
				request.setAttribute("EPA", entity1);
				request.getRequestDispatcher("/jsps/EPO/epo_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "EPA not found");
				request.getRequestDispatcher("/jsps/EPO/epo_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			EPA form = new EPA();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			form.setInd_id(Integer.parseInt(info.get(2)));
			form.setEnvType(info.get(3));
			form.setChemName(request.getParameter("username"));

			try {
				entity1dao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "EPA Updated");
			request.getRequestDispatcher("/jsps/EPO/epo_read_output.jsp").forward(request, response);
		}
	}
}



