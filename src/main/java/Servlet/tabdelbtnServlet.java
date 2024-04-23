package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.usersdao;
@WebServlet("/jsp/delbtnSer")
public class tabdelbtnServlet extends HttpServlet{
	usersdao dao = new usersdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      Integer id =  Integer.parseInt(request.getParameter("id")) ;
	      dao.admindeleteuser(id);
	}
}
