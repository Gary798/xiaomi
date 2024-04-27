package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ordersDAO;
import dao.orders_detailsDAO;

/**
 * Servlet implementation class XiugaidindanServlet
 */
@WebServlet("/jsp/XiugaidindanServlet")
public class XiugaidindanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ordersDAO ordersDAO = new ordersDAO();
       orders_detailsDAO orders_detailsDAO = new orders_detailsDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String din = request.getParameter("din");
		 int did = Integer.parseInt(din);
		System.out.println(did);
		ordersDAO.Xiugaidindan(did);
		HttpSession session = request.getSession();
		
		Integer Yhid = (Integer) session.getAttribute("Yhid");
		
	
		request.setAttribute("list", orders_detailsDAO.selectiid(Yhid));
		request.getRequestDispatcher("Dindan2Servlet").forward(request, response);
	}
}
