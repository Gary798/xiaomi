package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.addressDAO;

/**
 * Servlet implementation class DizhiServlet
 */
@WebServlet("/jsp/DizhiServlet")
public class DizhiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       addressDAO addressDAO = new addressDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		if (!name.isEmpty() && !tele.isEmpty()) {
			addressDAO.selectDizhi(name, tele, dizhi);
			request.setAttribute("list", addressDAO.executeDizhi());
	        request.getRequestDispatcher("Dizhi.jsp").forward(request, response);
		}else { 
			
				request.setAttribute("list", addressDAO.executeDizhi());
		        request.getRequestDispatcher("Dizhi.jsp").forward(request, response);
		        out.println("<script>alert(收货人或电话为空请重新输入收货地址)</script>");
		}
		
	}

}
