package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.addressDAO;
import dao.ordersDAO;
import dao.orders_detailsDAO;

/**
 * Servlet implementation class Dindan2Servlet
 */
@WebServlet("/jsp/Dindan2Servlet")
public class Dindan2Servlet extends HttpServlet {
	ordersDAO ordersDAO = new ordersDAO();
	addressDAO addressDAO = new addressDAO();
	orders_detailsDAO orders_detailsDAO = new orders_detailsDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("Yhid"));
		Integer Yhid = (Integer) session.getAttribute("Yhid");
	
		request.setAttribute("list", orders_detailsDAO.selectiid(1));
		request.getRequestDispatcher("Dindan.jsp").forward(request, response);
	}
}
