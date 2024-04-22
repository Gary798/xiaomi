package Servlet;

import java.io.IOException;
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
 * Servlet implementation class QueRenServlet
 */
@WebServlet("/jsp/QueRenServlet")
public class QueRenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	usersdao dao = new usersdao();
	 addressDAO addressDAO = new addressDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		
		// 获取当前用户 ID（假设 ID 存储在 session 中）
        HttpSession session = request.getSession();
        Integer Yhid = (Integer) session.getAttribute("Yhid");
		System.out.println(Yhid);
        List<shopping_cart> listgwc =dao.selectgwc(Yhid);
        
        request.setAttribute("uesr", dao.selectyonhu(Yhid));
        request.setAttribute("map", listgwc);
        request.setAttribute("list", addressDAO.executeDizhi());
        request.getRequestDispatcher("Gouwuche.jsp").forward(request, response);
	}

}
