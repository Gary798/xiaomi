package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.usersDAO;
@WebServlet("/jsp/delbtnSer")
public class tabdelbtnServlet extends HttpServlet{
	usersDAO dao = new usersDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      Integer id =  Integer.parseInt(request.getParameter("id")) ;
	      dao.deleteuser(id);
	}
}
