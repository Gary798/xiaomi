package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.usersdao;
import entity.shopping_cart;
@WebServlet("/jsp/GwServlet")
public class GwServlet extends HttpServlet{
	usersdao dao = new usersdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取当前用户 ID（假设 ID 存储在 session 中）
        HttpSession session = request.getSession();
        Integer Yhid = (Integer) session.getAttribute("userId");
		System.out.println(Yhid);
        List<shopping_cart> listgwc =dao.selectgwc(Yhid);
        session.setAttribute("listgwc", listgwc);
        request.getRequestDispatcher("gwc.jsp").forward(request, response);
	}
}
