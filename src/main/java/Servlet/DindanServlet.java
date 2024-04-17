package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ordersDAO;



@WebServlet("/jsp/DindanServlet")
public class DindanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ordersDAO ordersDAO = new ordersDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		request.setAttribute("list", ordersDAO.selectDindan());
        request.getRequestDispatcher("Dindan.jsp").forward(request, response);
	}
}
