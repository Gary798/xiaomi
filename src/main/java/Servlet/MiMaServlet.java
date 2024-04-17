package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.usersdao;

/**
 * Servlet implementation class MiMaServlet
 */
@WebServlet("/jsp/MiMaServlet")
public class MiMaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	usersdao usersdao = new usersdao();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String pass=request.getParameter("pass");
		String id=request.getParameter("id");
		request.setAttribute("list", usersdao.MimaXiugai(id, pass));
        request.getRequestDispatcher("Denlu.jsp").forward(request, response);
	}

}
