package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.orders_detailsDAO;

/**
 * Servlet implementation class ShanchuServlet
 */
@WebServlet("/jsp/ShanchuServlet")
public class ShanchuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       orders_detailsDAO orders_detailsDAO = new orders_detailsDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String din = request.getParameter("din");
		int did = Integer.parseInt(din);
		
		orders_detailsDAO.shanchu1(did);
		orders_detailsDAO.shanchu2(did);
		
		request.getRequestDispatcher("Dindan2Servlet").forward(request, response);
	}
}
