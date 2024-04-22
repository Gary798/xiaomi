package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.addressDAO;
import dao.usersdao;
import entity.shopping_cart;

/**
 * Servlet implementation class GouwucheServlet
 */
@WebServlet("/jsp/GouwucheServlet")
public class GouwucheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	usersdao dao = new usersdao();
    addressDAO addressDAO = new addressDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
		String shen=request.getParameter("shen");
		String shi=request.getParameter("shi");
		String qu=request.getParameter("qu");
		String myTextarea=request.getParameter("myTextarea");
		String name=request.getParameter("name");
		String tele=request.getParameter("tele");
		String dizhi = shen+shi+qu+myTextarea;
		
		
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
	    Integer Yhid = (Integer) session.getAttribute("Yhid");
		System.out.println(Yhid);
	    List<shopping_cart> listgwc =dao.selectgwc(Yhid);
	    addressDAO.selectDizhi(name, tele, dizhi,Yhid);    
	    
		request.setAttribute("list", addressDAO.executeDizhi());
		request.setAttribute("map", listgwc);
		request.getRequestDispatcher("Gouwuche.jsp").forward(request, response);
		
}
}
