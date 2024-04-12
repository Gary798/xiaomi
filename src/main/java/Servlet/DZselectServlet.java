package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.addressDAO;

/**
 * Servlet implementation class DZselectServlet
 */
@WebServlet("/jsp/DZselectServlet")
public class DZselectServlet extends HttpServlet {
		addressDAO addressDAO = new addressDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addressDAO.executeDizhi();
		request.setAttribute("list", addressDAO.executeDizhi());
        request.getRequestDispatcher("Dizhi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addressDAO.executeDizhi();
		request.setAttribute("list", addressDAO.executeDizhi());
        request.getRequestDispatcher("Dizhi.jsp").forward(request, response);
	}
}
