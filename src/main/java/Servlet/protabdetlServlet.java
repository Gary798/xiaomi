package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.productDAO;
@WebServlet("/jsp/prodelbtnSer")
public class protabdetlServlet extends HttpServlet{
	productDAO dao = new productDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      Integer id =  Integer.parseInt(request.getParameter("id")) ;
	      dao.deleteprospe(id);
	      dao.deleteproimg(id);
	      dao.deleteproadv(id);
	      dao.deletepro(id);
	}
}
