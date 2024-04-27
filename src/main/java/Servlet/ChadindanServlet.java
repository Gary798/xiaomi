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
 * Servlet implementation class ChadindanServlet
 */
@WebServlet("/jsp/ChadindanServlet")
public class ChadindanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ordersDAO ordersDAO = new ordersDAO();
       orders_detailsDAO orders_detailsDAO = new orders_detailsDAO();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String din = request.getParameter("din");
		int did = Integer.parseInt(din);
		System.out.println(did);
		request.setAttribute("list", orders_detailsDAO.selectxianqin(did));
		request.getRequestDispatcher("Xianqin.jsp").forward(request, response);
	}
}
