package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.addressDAO;
import dao.ordersDAO;
import dao.orders_detailsDAO;
import entity.images;
import entity.shopping_cart;



@WebServlet("/jsp/DindanServlet")
public class DindanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ordersDAO ordersDAO = new ordersDAO();
	addressDAO addressDAO = new addressDAO();
	orders_detailsDAO orders_detailsDAO = new orders_detailsDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		Integer Yhid = (Integer) session.getAttribute("Yhid");
		
		String dname = request.getParameter("dname");
		String dtele = request.getParameter("dtele");
		String dress = request.getParameter("dress");
	

		String[] img = request.getParameterValues("img")[0].split(",");
		String[] sname = request.getParameterValues("sname")[0].split(",");
		String[] count = request.getParameterValues("count")[0].split(",");
		String[] zj = request.getParameterValues("zj")[0].split(",");
		String zons = request.getParameter("zon");
		int zon;
		zon = Integer.parseInt(zons);
		
		ordersDAO.insertOrder(Yhid, dname, dtele, dress);
		
		for (int i = 0; i < img.length; i++) {
			/*
			 * System.out.println("Path: " + img[i] + ", sname: " + sname[i] + ", count: " +
			 * count[i] + ", zj: " + zj[i]);
			 */
		    ordersDAO.intsorders(Yhid,img[i], sname[i],  zj[i],count[i],zon);
		}
        request.getRequestDispatcher("Dindan2Servlet").forward(request, response);

	}
}
