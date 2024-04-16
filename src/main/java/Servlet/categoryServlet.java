package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDAO;
import dao.usersdao;
import entity.category;
@WebServlet("/view/categorylist")
public class categoryServlet extends HttpServlet{
	private CategoryDAO categorydao = new CategoryDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<category> list = categorydao.queryall();
		request.setAttribute("list", list);
		request.getRequestDispatcher("d.jsp").forward(request, response);
	}
}
