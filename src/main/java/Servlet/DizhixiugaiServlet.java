package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.addressDAO;

/**
 * Servlet implementation class DizhixiugaiServlet
 */
@WebServlet("/jsp/DizhixiugaiServlet")
public class DizhixiugaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       addressDAO addressDAO = new addressDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		System.out.println(id);
		addressDAO.shanchu(id);
		request.getRequestDispatcher("DZselectServlet").forward(request, response);
	}

}
