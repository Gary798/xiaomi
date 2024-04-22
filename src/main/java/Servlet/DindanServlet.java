package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.addressDAO;
import dao.ordersDAO;
import dao.usersdao;
import entity.shopping_cart;



@WebServlet("/jsp/DindanServlet")
public class DindanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ordersDAO ordersDAO = new ordersDAO();
	addressDAO addressDAO = new addressDAO();
	usersdao dao = new usersdao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Integer Yhid = (Integer) session.getAttribute("Yhid");
		
		String dname = request.getParameter("dname");
		String dtele = request.getParameter("dtele");
		String dress = request.getParameter("dress");
		ordersDAO.insrtorders(Yhid, dname, dtele, dress);
		
		request.setAttribute("list", ordersDAO.selectDindan(Yhid));
        request.getRequestDispatcher("Dindan.jsp").forward(request, response);
	}
}
