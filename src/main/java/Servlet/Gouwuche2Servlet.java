package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gouwuche2Servlet
 */
@WebServlet("/jsp/Gouwuche2Servlet")
public class Gouwuche2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dname=request.getParameter("dname");
		String dtele=request.getParameter("dtele");
		String dress=request.getParameter("dress");
		
		request.getSession().setAttribute("dname", dname);
		request.getSession().setAttribute("dtele", dtele);
		request.getSession().setAttribute("dress", dress);
		request.getRequestDispatcher("DindanServlet").forward(request, response);
	}

}
