package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.pricomdao;
@WebServlet("/jsp/spedelbtnSer")
public class specidelServlet extends HttpServlet{
	pricomdao dao = new pricomdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      int sepid = Integer.parseInt(request.getParameter("id"));
	      dao.deletespe(sepid);
	}
}
