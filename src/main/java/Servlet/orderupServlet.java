package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ordersDAO;
@WebServlet("/jsp/orderup")
public class orderupServlet extends HttpServlet{
	ordersDAO dao = new ordersDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  int id = Integer.parseInt(request.getParameter("or_id"));
		  String nameString = request.getParameter("sname");
	      int stateString = Integer.parseInt(request.getParameter("upordstate"));
	      String numString = request.getParameter("upphone");
	      String sheng = request.getParameter("shen");
	      String shi = request.getParameter("shi");
	      String qv = request.getParameter("qu");
	      String addressString=sheng+shi+qv;
	      String note = request.getParameter("note");

	      dao.orderupdate(nameString, numString, stateString, addressString, note, id);
	      
	}
}
